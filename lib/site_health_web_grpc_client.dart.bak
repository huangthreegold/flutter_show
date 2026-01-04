import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'generated/types.pb.dart' as types;
import 'generated/google/protobuf/empty.pb.dart';
import 'generated/google/protobuf/timestamp.pb.dart';
import 'site_health_grpc_service.dart' show VehicleStatusData;

/// 真实的 gRPC 客户端服务，连接到后端并获取场地健康数据
class SiteHealthRealGrpcService {
  late ClientChannel _channel;
  late pb.SiteHealthServiceClient _stub;
  bool _isConnected = false;

  StreamSubscription? _healthStatusSubscription;
  Timer? _statsTimer;

  /// 连接到 gRPC 服务器
  Future<void> connect(String host, int port) async {
    try {
      _channel = ClientChannel(
        host,
        port: port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );

      // 验证连接
      await _channel.getConnection().timeout(
        const Duration(seconds: 5),
        onTimeout: () {
          throw TimeoutException('连接超时');
        },
      );

      // 创建 gRPC stub
      _stub = pb.SiteHealthServiceClient(_channel);
      _isConnected = true;

      print('✓ gRPC 连接成功: $host:$port');
    } catch (e) {
      _isConnected = false;
      print('✗ gRPC 连接失败: $e');
      rethrow;
    }
  }

  /// 断开连接
  Future<void> disconnect() async {
    if (_isConnected) {
      await _healthStatusSubscription?.cancel();
      _statsTimer?.cancel();
      await _channel.shutdown();
      _isConnected = false;
      print('gRPC 连接已关闭');
    }
  }

  bool get isConnected => _isConnected;

  // ==================== 核心数据获取接口 ====================

  /// 获取健康统计信息（用于概览页面）
  Future<pb.HealthStatistics> getHealthStatistics() async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.getHealthStatistics(Empty());
      print('✓ 获取健康统计成功: 总节点 ${response.totalNodes}');
      return response;
    } catch (e) {
      print('✗ 获取健康统计失败: $e');
      rethrow;
    }
  }

  /// 订阅健康状态变化（实时流式数据）
  Stream<pb.SiteHealthInfo> subscribeHealthStatus() {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final stream = _stub.subscribeHealthStatus(Empty());
      print('✓ 开始订阅健康状态变化');
      return stream;
    } catch (e) {
      print('✗ 订阅健康状态失败: $e');
      rethrow;
    }
  }

  /// 查询健康信息（支持过滤）
  Future<pb.HealthInfoQueryResponse> queryHealthInfo({
    Int64? nodeId,
    types.PositionData_t? logicLocation,
    Int64? goodsSlotId,
    pb.HealthStatus? minStatus,
    DateTime? startTime,
    DateTime? endTime,
  }) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.HealthInfoQueryRequest();
      if (nodeId != null) request.nodeId = nodeId;
      if (logicLocation != null) request.logicLocation = logicLocation;
      if (goodsSlotId != null) request.goodsSlotId = goodsSlotId;
      if (minStatus != null) request.minStatus = minStatus;
      if (startTime != null) {
        request.startTime = Timestamp()
          ..seconds = Int64(startTime.millisecondsSinceEpoch ~/ 1000)
          ..nanos = (startTime.millisecondsSinceEpoch % 1000) * 1000000;
      }
      if (endTime != null) {
        request.endTime = Timestamp()
          ..seconds = Int64(endTime.millisecondsSinceEpoch ~/ 1000)
          ..nanos = (endTime.millisecondsSinceEpoch % 1000) * 1000000;
      }

      final response = await _stub.queryHealthInfo(request);
      print('✓ 查询健康信息成功: ${response.markerHealths.length} 条二维码数据');
      return response;
    } catch (e) {
      print('✗ 查询健康信息失败: $e');
      rethrow;
    }
  }

  // ==================== 实时数据流（用于UI更新）====================

  /// 获取实时指标流（定时从服务器拉取统计数据）
  Stream<Map<String, int>> getRealtimeMetrics() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，指标数据流已停止');
      return;
    }

    while (_isConnected) {
      try {
        final stats = await getHealthStatistics();
        yield _convertHealthStatisticsToMetrics(stats);
        await Future.delayed(const Duration(seconds: 2));
      } catch (e) {
        print('获取实时指标失败: $e');
        await Future.delayed(const Duration(seconds: 5));
      }
    }
  }

  /// 获取实时车辆状态流
  Stream<List<VehicleStatusData>> getRealtimeVehicleStatus() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，车辆状态流已停止');
      return;
    }

    while (_isConnected) {
      try {
        final stats = await getHealthStatistics();
        yield _convertHealthStatisticsToVehicles(stats);
        await Future.delayed(const Duration(seconds: 3));
      } catch (e) {
        print('获取实时车辆状态失败: $e');
        await Future.delayed(const Duration(seconds: 5));
      }
    }
  }

  /// 获取实时告警流（从健康状态订阅中提取）
  Stream<Map<String, dynamic>> getRealtimeAlerts() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，实时告警流已停止');
      return;
    }

    try {
      await for (final healthInfo in subscribeHealthStatus()) {
        if (healthInfo.hasMarkerHealth()) {
          final marker = healthInfo.markerHealth;
          if (marker.healthStatus != pb.HealthStatus.HEALTH_STATUS_NORMAL) {
            yield _convertMarkerHealthToAlert(marker);
          }
        } else if (healthInfo.hasGroundHealth()) {
          final ground = healthInfo.groundHealth;
          if (ground.healthStatus != pb.HealthStatus.HEALTH_STATUS_NORMAL) {
            yield _convertGroundHealthToAlert(ground);
          }
        }
      }
    } catch (e) {
      print('获取实时告警失败: $e');
    }
  }

  // ==================== 数据转换辅助方法 ====================

  /// 将 proto HealthStatistics 转换为前端 metrics 格式
  Map<String, int> _convertHealthStatisticsToMetrics(
    pb.HealthStatistics stats,
  ) {
    // 计算正常和异常车辆数量
    int normalVehicles = 0;
    int abnormalVehicles = 0;

    for (var carSummary in stats.perCarExceptionCounts) {
      if (carSummary.exceptionCount == 0) {
        normalVehicles++;
      } else {
        abnormalVehicles++;
      }
    }

    return {
      'normalVehicles': normalVehicles,
      'abnormalVehicles': abnormalVehicles,
      'qrCodeAnomalies': stats.errorNodes.toInt() + stats.criticalNodes.toInt(),
      'groundAnomalies':
          stats.errorGroundAreas.toInt() + stats.criticalGroundAreas.toInt(),
    };
  }

  /// 将 proto HealthStatistics 转换为车辆状态列表
  List<VehicleStatusData> _convertHealthStatisticsToVehicles(
    pb.HealthStatistics stats,
  ) {
    List<VehicleStatusData> vehicles = [];

    for (var carSummary in stats.perCarExceptionCounts) {
      final carId = 'AGV-${carSummary.carId.toString().padLeft(2, '0')}';
      final exceptionCount = carSummary.exceptionCount.toInt();

      String status;
      String condition;
      int healthScore;
      String exception;

      if (exceptionCount == 0) {
        status = '运行中';
        condition = '正常';
        healthScore = 95;
        exception = '无异常';
      } else if (exceptionCount < 3) {
        status = '警告';
        condition = '二维码异常';
        healthScore = 75;
        exception = 'kFalseResultMightBeDamagedOrDirty';
      } else {
        status = '异常';
        condition = '地面不平';
        healthScore = 65;
        exception = 'kUnderpanExceptionalVibration';
      }

      vehicles.add(
        VehicleStatusData(
          carId,
          status,
          condition,
          healthScore,
          'S-${(carSummary.carId.toInt() % 20).toString().padLeft(2, '0')}',
          exception,
        ),
      );
    }

    return vehicles;
  }

  /// 将 proto MarkerHealthInfo 转换为告警格式
  Map<String, dynamic> _convertMarkerHealthToAlert(pb.MarkerHealthInfo marker) {
    String level;
    switch (marker.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        level = 'high';
        break;
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        level = 'medium';
        break;
      default:
        level = 'low';
    }

    return {
      'time': _formatTimestamp(marker.timestamp),
      'type': _getMarkerIssueTypeName(marker.issueType),
      'location': '节点-${marker.nodeId}',
      'vehicles': 'AGV-${marker.carId.toString().padLeft(2, '0')}',
      'level': level,
    };
  }

  /// 将 proto GroundHealthInfo 转换为告警格式
  Map<String, dynamic> _convertGroundHealthToAlert(pb.GroundHealthInfo ground) {
    String level;
    switch (ground.healthStatus) {
      case pb.HealthStatus.HEALTH_STATUS_CRITICAL:
        level = 'high';
        break;
      case pb.HealthStatus.HEALTH_STATUS_ERROR:
        level = 'medium';
        break;
      default:
        level = 'low';
    }

    return {
      'time': _formatTimestamp(ground.timestamp),
      'type': _getGroundIssueTypeName(ground.issueType),
      'location': '路径 ${ground.startNode}-${ground.endNode}',
      'vehicles': 'AGV-${ground.carId.toString().padLeft(2, '0')}',
      'level': level,
    };
  }

  String _getMarkerIssueTypeName(pb.MarkerIssueType type) {
    switch (type) {
      case pb.MarkerIssueType.MARKER_ISSUE_DAMAGED:
        return '二维码污损';
      case pb.MarkerIssueType.MARKER_ISSUE_MISALIGNED:
        return '二维码间距错误';
      case pb.MarkerIssueType.MARKER_ISSUE_ANGLE_DEVIATION:
        return '二维码角度不准';
      case pb.MarkerIssueType.MARKER_ISSUE_WRONG_CODE:
        return '二维码贴错';
      default:
        return '未知异常';
    }
  }

  String _getGroundIssueTypeName(pb.GroundIssueType type) {
    switch (type) {
      case pb.GroundIssueType.GROUND_ISSUE_UNEVEN:
        return '地面不平';
      case pb.GroundIssueType.GROUND_ISSUE_OBSTACLE:
        return '有障碍物';
      case pb.GroundIssueType.GROUND_ISSUE_SLOPE:
        return '有坡度';
      default:
        return '地面异常';
    }
  }

  String _formatTimestamp(Timestamp timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      timestamp.seconds.toInt() * 1000 + timestamp.nanos ~/ 1000000,
    );
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
