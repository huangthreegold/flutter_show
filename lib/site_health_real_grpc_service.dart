import 'dart:async';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:grpc/grpc_web.dart';
import 'package:fixnum/fixnum.dart';
import 'generated/site_health.pbgrpc.dart' as pb;
import 'generated/types.pb.dart' as types;
import 'package:protobuf/protobuf.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart';
import 'site_health_grpc_service.dart' show VehicleStatusData;

/// 车辆健康详情辅助类
class _CarHealthDetail {
  int totalDetections = 0;
  List<pb.MarkerHealthInfo> markerIssues = [];
  List<pb.GroundHealthInfo> groundIssues = [];
  Set<String> issueTypes = {};
  String? lastLocation;
}

/// 真实的 gRPC 客户端服务，连接到后端并获取场地健康数据
/// 自动支持 Web 平台（使用 gRPC-Web）和原生平台（使用标准 gRPC）
class SiteHealthRealGrpcService {
  late ClientChannelBase _channel;
  late pb.SiteHealthServiceClient _stub;
  bool _isConnected = false;

  StreamSubscription? _healthStatusSubscription;
  Timer? _statsTimer;

  // 性能优化：数据缓存
  pb.HealthStatistics? _cachedStats;
  DateTime? _statsCacheTime;
  static const Duration _cacheDuration = Duration(seconds: 3);

  /// 连接到 gRPC 服务器
  Future<void> connect(String host, int port) async {
    try {
      if (kIsWeb) {
        // Web 平台：使用 gRPC-Web（通过 Envoy 代理，端口 8080）
        print('🌐 Web 平台：连接到 gRPC-Web 代理 http://$host:8080');
        _channel = GrpcWebClientChannel.xhr(Uri.parse('http://$host:8080'));
      } else {
        // 原生平台：使用标准 gRPC
        print('📱 原生平台：连接到 gRPC 服务器 $host:$port');
        _channel = ClientChannel(
          host,
          port: port,
          options: const ChannelOptions(
            credentials: ChannelCredentials.insecure(),
          ),
        );
      }

      // 创建 gRPC stub
      _stub = pb.SiteHealthServiceClient(_channel);
      _isConnected = true;

      print('✓ gRPC 连接成功');
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

  /// 获取健康统计信息（用于概览页面，带缓存）
  Future<pb.HealthStatistics> getHealthStatistics() async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    // 检查缓存是否有效
    if (_cachedStats != null &&
        _statsCacheTime != null &&
        DateTime.now().difference(_statsCacheTime!) < _cacheDuration) {
      print(
        '✓ 使用缓存数据（${DateTime.now().difference(_statsCacheTime!).inSeconds}秒前）',
      );
      return _cachedStats!;
    }

    // 缓存过期或不存在，重新获取
    try {
      final stopwatch = Stopwatch()..start();
      final response = await _stub.getHealthStatistics(Empty());
      stopwatch.stop();

      // 更新缓存
      _cachedStats = response;
      _statsCacheTime = DateTime.now();

      print(
        '✓ 获取健康统计成功: 总节点 ${response.totalNodes}（耗时 ${stopwatch.elapsedMilliseconds}ms）',
      );
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
        await Future.delayed(const Duration(seconds: 5)); // 优化：从2秒增加到5秒
      } catch (e) {
        print('获取实时指标失败: $e');
        await Future.delayed(const Duration(seconds: 5));
      }
    }
  }

  /// 获取实时车辆状态流（优化：只使用统计数据，避免耗时查询）
  Stream<List<VehicleStatusData>> getRealtimeVehicleStatus() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，车辆状态流已停止');
      return;
    }

    while (_isConnected) {
      try {
        // 只获取统计信息（快速），不调用详细查询
        final stats = await getHealthStatistics();

        yield _convertHealthStatisticsToVehiclesSimple(stats);
        await Future.delayed(const Duration(seconds: 5)); // 优化：从3秒增加到5秒
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

  /// 将 proto HealthStatistics 转换为车辆状态列表（简化版，性能优化）
  List<VehicleStatusData> _convertHealthStatisticsToVehiclesSimple(
    pb.HealthStatistics stats,
  ) {
    List<VehicleStatusData> vehicles = [];

    // 使用统计数据生成车辆列表
    for (var carSummary in stats.perCarExceptionCounts) {
      final carId = carSummary.carId.toInt();
      String status;
      String condition;
      double healthScore;

      if (carSummary.exceptionCount == 0) {
        status = '运行中';
        condition = '正常';
        healthScore = 95.0 + (carId % 5);
      } else if (carSummary.exceptionCount < 3) {
        status = '警告';
        condition = '需关注';
        healthScore = 75.0 + (carId % 10);
      } else {
        status = '异常';
        condition = '需检查';
        healthScore = 60.0 + (carId % 8);
      }

      vehicles.add(
        VehicleStatusData(
          'AGV-${carId.toString().padLeft(2, '0')}',
          status,
          condition,
          healthScore.toInt(),
          'S-${(carId % 20 + 1).toString().padLeft(2, '0')}',
          carSummary.exceptionCount > 0
              ? '检测到 ${carSummary.exceptionCount} 个异常'
              : '无异常',
        ),
      );
    }

    return vehicles;
  }

  /// 将 proto HealthStatistics 转换为车辆状态列表（使用真实数据，保留原方法用于详细页面）
  List<VehicleStatusData> _convertHealthStatisticsToVehicles(
    pb.HealthStatistics stats,
    pb.HealthInfoQueryResponse healthInfo,
  ) {
    List<VehicleStatusData> vehicles = [];

    // 创建每台车的异常详情映射
    Map<int, _CarHealthDetail> carHealthDetails = {};

    // 从 marker health 数据中提取每台车的异常信息
    for (var marker in healthInfo.markerHealths) {
      final carId = marker.carId.toInt();
      if (!carHealthDetails.containsKey(carId)) {
        carHealthDetails[carId] = _CarHealthDetail();
      }

      final detail = carHealthDetails[carId]!;
      detail.totalDetections++;

      if (marker.healthStatus != pb.HealthStatus.HEALTH_STATUS_NORMAL) {
        detail.markerIssues.add(marker);

        // 根据问题类型分类
        switch (marker.issueType) {
          case pb.MarkerIssueType.MARKER_ISSUE_DAMAGED:
            detail.issueTypes.add('二维码污损');
            break;
          case pb.MarkerIssueType.MARKER_ISSUE_MISALIGNED:
            detail.issueTypes.add('二维码间距不对');
            break;
          case pb.MarkerIssueType.MARKER_ISSUE_ANGLE_DEVIATION:
            detail.issueTypes.add('二维码角度不准');
            break;
          case pb.MarkerIssueType.MARKER_ISSUE_WRONG_CODE:
            detail.issueTypes.add('二维码贴错');
            break;
          default:
            break;
        }
      }

      // 记录最近的位置
      if (marker.hasNodeLogicLocation()) {
        detail.lastLocation = 'Node-${marker.nodeId}';
      }
    }

    // 从 ground health 数据中提取地面异常信息
    for (var ground in healthInfo.groundHealths) {
      final carId = ground.carId.toInt();
      if (!carHealthDetails.containsKey(carId)) {
        carHealthDetails[carId] = _CarHealthDetail();
      }

      final detail = carHealthDetails[carId]!;

      if (ground.healthStatus != pb.HealthStatus.HEALTH_STATUS_NORMAL) {
        detail.groundIssues.add(ground);

        // 根据地面问题类型分类
        switch (ground.issueType) {
          case pb.GroundIssueType.GROUND_ISSUE_UNEVEN:
            detail.issueTypes.add('地面不平');
            break;
          case pb.GroundIssueType.GROUND_ISSUE_OBSTACLE:
            detail.issueTypes.add('地面有障碍');
            break;
          case pb.GroundIssueType.GROUND_ISSUE_SLOPE:
            detail.issueTypes.add('地面有坡度');
            break;
          default:
            break;
        }
      }
    }

    // 为每台车创建 VehicleStatusData
    for (var carSummary in stats.perCarExceptionCounts) {
      final carId = carSummary.carId.toInt();
      final carIdStr = 'AGV-${carId.toString().padLeft(2, '0')}';
      final exceptionCount = carSummary.exceptionCount.toInt();
      final detail = carHealthDetails[carId] ?? _CarHealthDetail();

      String status;
      String condition;
      int healthScore;
      String exception;
      String location;

      if (exceptionCount == 0) {
        status = '运行中';
        condition = '正常';
        healthScore = 95 + (carId % 5); // 基于车辆ID的变化
        exception = '无异常';
        location =
            detail.lastLocation ??
            'S-${(carId % 20).toString().padLeft(2, '0')}';
      } else {
        // 计算健康分数 (100 - 异常数 * 5，最低50)
        healthScore = (100 - exceptionCount * 5).clamp(50, 95);

        // 确定最严重的问题类型
        bool hasCritical =
            detail.markerIssues.any(
              (m) => m.healthStatus == pb.HealthStatus.HEALTH_STATUS_CRITICAL,
            ) ||
            detail.groundIssues.any(
              (g) => g.healthStatus == pb.HealthStatus.HEALTH_STATUS_CRITICAL,
            );

        bool hasError =
            detail.markerIssues.any(
              (m) => m.healthStatus == pb.HealthStatus.HEALTH_STATUS_ERROR,
            ) ||
            detail.groundIssues.any(
              (g) => g.healthStatus == pb.HealthStatus.HEALTH_STATUS_ERROR,
            );

        if (hasCritical) {
          status = '异常';
        } else if (hasError) {
          status = '异常';
        } else {
          status = '警告';
        }

        // 获取主要异常类型描述
        if (detail.issueTypes.isNotEmpty) {
          condition = detail.issueTypes.first;

          // 生成异常代码
          if (condition.contains('二维码')) {
            exception = 'kFalseResultMightBeDamagedOrDirty';
          } else if (condition.contains('地面')) {
            exception = 'kUnderpanExceptionalVibration';
          } else {
            exception = 'kUnknownException';
          }
        } else {
          condition = '未知异常';
          exception = 'kUnknownException';
        }

        location = detail.lastLocation ?? '待检查';
      }

      vehicles.add(
        VehicleStatusData(
          carIdStr,
          status,
          condition,
          healthScore,
          location,
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

  // ==================== 角度学习接口 ====================

  /// 获取角度学习统计信息
  Future<pb.AngleLearningStatistics> getAngleLearningStatistics() async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.getAngleLearningStatistics(Empty());
      print('✓ 获取角度学习统计成功');
      return response;
    } catch (e) {
      print('✗ 获取角度学习统计失败: $e');
      rethrow;
    }
  }

  /// 批量查询角度学习结果
  Future<pb.BatchQueryAngleLearningResponse> batchQueryAngleLearning(
    pb.BatchQueryAngleLearningRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.batchQueryAngleLearning(request);
      print('✓ 批量查询角度学习成功');
      return response;
    } catch (e) {
      print('✗ 批量查询角度学习失败: $e');
      rethrow;
    }
  }

  /// 获取所有角度学习位置
  Future<pb.AngleLearningLocationsResponse>
  getAllAngleLearningLocations() async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.getAllAngleLearningLocations(Empty());
      print('✓ 获取所有角度学习位置成功: ${response.totalCount} 个位置');
      return response;
    } catch (e) {
      print('✗ 获取所有角度学习位置失败: $e');
      rethrow;
    }
  }

  /// 查询单个位置的角度学习结果
  Future<pb.QueryAngleLearningResponse> queryAngleLearning(
    pb.QueryAngleLearningRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.queryAngleLearning(request);
      print('✓ 查询角度学习成功');
      return response;
    } catch (e) {
      print('✗ 查询角度学习失败: $e');
      rethrow;
    }
  }

  /// 添加手动角度样本
  Future<void> addManualAngleSample(pb.AngleSample sample) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      await _stub.addManualAngleSample(sample);
      print('✓ 添加角度样本成功');
    } catch (e) {
      print('✗ 添加角度样本失败: $e');
      rethrow;
    }
  }

  /// 重置角度学习数据
  Future<pb.ResetAngleLearningResponse> resetAngleLearning(
    pb.ResetAngleLearningRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.resetAngleLearning(request);
      print('✓ 重置角度学习成功: ${response.message}');
      return response;
    } catch (e) {
      print('✗ 重置角度学习失败: $e');
      rethrow;
    }
  }

  /// 清除角度学习数据
  Future<pb.CleanupAngleLearningResponse> cleanupAngleLearning(
    pb.CleanupAngleLearningRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.cleanupAngleLearning(request);
      print('✓ 清除角度学习成功: ${response.message}');
      return response;
    } catch (e) {
      print('✗ 清除角度学习失败: $e');
      rethrow;
    }
  }

  /// 上报角度学习数据
  Future<pb.ReportAngleLearningResponse> reportAngleLearning(
    pb.ReportAngleLearningRequest request,
  ) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final response = await _stub.reportAngleLearning(request);
      print('✓ 上报角度学习成功');
      return response;
    } catch (e) {
      print('✗ 上报角度学习失败: $e');
      rethrow;
    }
  }

  /// 订阅角度学习状态变化
  Stream<pb.GlobalAngleLearningResult> subscribeAngleLearningStatus() {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      print('📡 开始订阅角度学习状态流...');
      return _stub.subscribeAngleLearningStatus(Empty());
    } catch (e) {
      print('✗ 订阅角度学习状态失败: $e');
      rethrow;
    }
  }

  /// 重置位置健康数据（将二维码状态重置为正常）
  Future<pb.DataCleanupResponse> resetLocationHealthData({
    Int64? nodeId,
    types.PositionData_t? logicLocation,
  }) async {
    if (!_isConnected) {
      throw Exception('gRPC 未连接');
    }

    try {
      final request = pb.HealthInfoQueryRequest();
      if (nodeId != null) request.nodeId = nodeId;
      if (logicLocation != null) request.logicLocation = logicLocation;

      final response = await _stub.resetLocationHealthData(request);
      print('✓ 重置位置健康数据成功: ${response.message}');
      return response;
    } catch (e) {
      print('✗ 重置位置健康数据失败: $e');
      rethrow;
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
