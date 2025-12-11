import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'package:protobuf/protobuf.dart' as $pb;
import 'site_health_models.dart';

/// 真实的 gRPC 客户端，用于连接后端服务并获取场地健康数据
class SiteHealthGrpcClient {
  late ClientChannel _channel;
  late pb.SiteHealthServiceClient _stub;
  bool _isConnected = false;

  StreamSubscription? _healthStatusSubscription;

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
      _stub = SiteHealthServiceClient(_channel);
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
      await _channel.shutdown();
      _isConnected = false;
      print('gRPC 连接已关闭');
    }
  }

  bool get isConnected => _isConnected;

  // ==================== 健康服务接口 ====================

  /// 上报场地健康信息
  Future<void> reportSiteHealthInfo(SiteHealthInfo healthInfo) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      await _stub.reportSiteHealthInfo(healthInfo);
      print('✓ 上报健康信息成功');
    } catch (e) {
      print('✗ 上报健康信息失败: $e');
      rethrow;
    }
  }

  /// 批量上报场地健康信息（流式）
  Future<void> batchReportSiteHealthInfo(
    Stream<SiteHealthInfo> healthInfoStream,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      await _stub.batchReportSiteHealthInfo(healthInfoStream);
      print('✓ 批量上报健康信息成功');
    } catch (e) {
      print('✗ 批量上报健康信息失败: $e');
      rethrow;
    }
  }

  /// 查询健康信息
  Future<HealthInfoQueryResponse> queryHealthInfo(
    HealthInfoQueryRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.queryHealthInfo(request);
      print('✓ 查询健康信息成功: ${response.markerHealths.length} 条二维码数据');
      return response;
    } catch (e) {
      print('✗ 查询健康信息失败: $e');
      rethrow;
    }
  }

  /// 获取健康统计信息
  Future<HealthStatistics> getHealthStatistics() async {
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

  /// 订阅健康状态变化（流式，实时推送）
  Stream<SiteHealthInfo> subscribeHealthStatus() {
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

  /// 位置异常概率分析（判断是否为场地问题）
  Future<LocationExceptionAnalysisResponse> analyzeLocationException(
    LocationExceptionAnalysisRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.analyzeLocationException(request);
      print(
        '✓ 位置异常分析成功: 异常率 ${(response.exceptionRate * 100).toStringAsFixed(1)}%',
      );
      return response;
    } catch (e) {
      print('✗ 位置异常分析失败: $e');
      rethrow;
    }
  }

  /// 单车异常概率分析（判断是否为车辆问题）
  Future<CarExceptionAnalysisResponse> analyzeCarException(
    CarExceptionAnalysisRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.analyzeCarException(request);
      print(
        '✓ 车辆异常分析成功: 异常率 ${(response.exceptionRate * 100).toStringAsFixed(1)}%',
      );
      return response;
    } catch (e) {
      print('✗ 车辆异常分析失败: $e');
      rethrow;
    }
  }

  /// 数据清理（如二维码更换后清理旧数据）
  Future<DataCleanupResponse> cleanupData(DataCleanupRequest request) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.cleanupData(request);
      print('✓ 数据清理成功: ${response.cleanedCount} 条');
      return response;
    } catch (e) {
      print('✗ 数据清理失败: $e');
      rethrow;
    }
  }

  /// 查询车辆在某个位置的统计
  Future<CarLocationStatsResponse> getCarLocationStats(
    CarLocationStatsRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.getCarLocationStats(request);
      print('✓ 获取车辆位置统计成功: 总计 ${response.totalCount} 次检测');
      return response;
    } catch (e) {
      print('✗ 获取车辆位置统计失败: $e');
      rethrow;
    }
  }

  // ==================== 数据转换辅助方法 ====================

  /// 将 gRPC HealthStatistics 转换为前端显示需要的实时指标
  Map<String, int> convertHealthStatisticsToMetrics(HealthStatistics stats) {
    // 计算正常和异常车辆数量（基于每车异常计数）
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

  /// 将 gRPC HealthStatistics 转换为车辆状态数据
  List<VehicleStatusData> convertHealthStatisticsToVehicles(
    HealthStatistics stats,
  ) {
    List<VehicleStatusData> vehicles = [];

    for (var carSummary in stats.perCarExceptionCounts) {
      final carId = 'AGV-${carSummary.carId.toString().padLeft(2, '0')}';
      final exceptionCount = carSummary.exceptionCount;

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
          'S-${(carSummary.carId % 20).toString().padLeft(2, '0')}',
          exception,
        ),
      );
    }

    return vehicles;
  }

  /// 将 gRPC MarkerHealthInfo 转换为告警信息
  Map<String, dynamic> convertMarkerHealthToAlert(MarkerHealthInfo marker) {
    String level;
    switch (marker.healthStatus) {
      case HealthStatus.HEALTH_STATUS_CRITICAL:
        level = 'high';
        break;
      case HealthStatus.HEALTH_STATUS_ERROR:
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

  String _getMarkerIssueTypeName(MarkerIssueType type) {
    switch (type) {
      case MarkerIssueType.MARKER_ISSUE_DAMAGED:
        return '二维码污损';
      case MarkerIssueType.MARKER_ISSUE_MISALIGNED:
        return '二维码间距不对';
      case MarkerIssueType.MARKER_ISSUE_WRONG_CODE:
        return '二维码贴错';
      case MarkerIssueType.MARKER_ISSUE_LOW_CONFIDENCE:
        return '识别置信度低';
      default:
        return '未知异常';
    }
  }

  String _formatTimestamp(Timestamp timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      timestamp.seconds.toInt() * 1000 + timestamp.nanos ~/ 1000000,
    );
    return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
  }
}
