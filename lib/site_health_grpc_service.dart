import 'dart:async';
import 'package:grpc/grpc.dart';
import 'site_health_models.dart';
import 'generated/types.pb.dart' as types;

// 简化的gRPC服务类，用于获取实时数据
class SiteHealthGrpcService {
  late ClientChannel _channel;
  bool _isConnected = false;

  // 模拟的数据存储
  final List<MarkerHealthInfo> _markerHealthData = [];
  final List<GroundHealthInfo> _groundHealthData = [];
  final List<GoodsSlotHealthInfo> _goodsSlotHealthData = [];

  // 初始化gRPC连接
  Future<void> connect(String host, int port) async {
    try {
      _channel = ClientChannel(
        host,
        port: port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );

      // 使用超时验证连接
      final connection = Future.delayed(const Duration(seconds: 3), () {
        throw TimeoutException('连接超时');
      });

      await Future.any([_channel.getConnection(), connection]).timeout(
        const Duration(seconds: 3),
        onTimeout: () {
          throw Exception('无法连接到 gRPC 服务器');
        },
      );

      _isConnected = true;
      print('✓ gRPC连接成功: $host:$port');
    } catch (e) {
      _isConnected = false;
      print('✗ gRPC连接失败: $e (将使用本地模拟数据)');
      rethrow;
    }
  }

  // 获取实时告警流
  Stream<Map<String, dynamic>> getRealtimeAlerts() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，实时告警流已停止');
      // 返回空流，不生成任何数据
      return;
    }

    // TODO: 实现真实的gRPC调用
    // 这里暂时使用模拟数据
    yield* _getMockAlertStream();
  }

  // 模拟实时告警数据流
  Stream<Map<String, dynamic>> _getMockAlertStream() async* {
    final random = DateTime.now().millisecond % 4;
    final alerts = [
      {
        'time': _getCurrentTime(),
        'type': '地面不平',
        'location': '路径P-${12 + random}',
        'vehicles': 'AGV-${03 + random}, AGV-${07 + random}',
        'level': 'high',
      },
      {
        'time': _getCurrentTime(),
        'type': '二维码污损',
        'location': '站点S-${08 + random}',
        'vehicles': 'AGV-${05 + random}',
        'level': 'medium',
      },
      {
        'time': _getCurrentTime(),
        'type': '间距不准',
        'location': '走廊C区',
        'vehicles': 'AGV-${02 + random}',
        'level': 'low',
      },
    ];

    while (true) {
      await Future.delayed(const Duration(seconds: 5));
      yield alerts[DateTime.now().second % alerts.length];
    }
  }

  // 获取实时车辆状态
  Stream<List<VehicleStatusData>> getRealtimeVehicleStatus() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，车辆状态流已停止');
      // 返回空流，不生成任何数据
      return;
    }

    // TODO: 实现真实的gRPC调用
    yield* _getMockVehicleStream();
  }

  // 模拟车辆状态数据流
  Stream<List<VehicleStatusData>> _getMockVehicleStream() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      yield _generateMockVehicles();
    }
  }

  // 获取实时指标数据
  Stream<Map<String, int>> getRealtimeMetrics() async* {
    if (!_isConnected) {
      print('⚠️  gRPC未连接，指标数据流已停止');
      // 返回空流，不生成任何数据
      return;
    }

    // TODO: 实现真实的gRPC调用
    yield* _getMockMetricsStream();
  }

  // 模拟实时指标数据流
  Stream<Map<String, int>> _getMockMetricsStream() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      final time = DateTime.now().second;
      yield {
        'normalVehicles': 12 + (time % 3),
        'abnormalVehicles': 3 - (time % 3),
        'qrCodeAnomalies': 8 + (time % 5),
        'groundAnomalies': 3 + (time % 2),
      };
    }
  }

  // 生成模拟车辆数据
  List<VehicleStatusData> _generateMockVehicles() {
    final time = DateTime.now().second;
    return [
      VehicleStatusData('AGV-01', '运行中', '正常', 95 + (time % 5), 'S-12', '无异常'),
      VehicleStatusData('AGV-02', '运行中', '正常', 88 + (time % 8), 'P-08', '无异常'),
      VehicleStatusData(
        'AGV-03',
        time % 10 < 5 ? '异常' : '运行中',
        '地面不平',
        65 + (time % 10),
        '维修中',
        'kUnderpanExceptionalVibration',
      ),
      VehicleStatusData('AGV-04', '运行中', '正常', 92 + (time % 3), 'S-15', '无异常'),
      VehicleStatusData(
        'AGV-05',
        time % 8 < 3 ? '警告' : '运行中',
        '二维码异常',
        75 + (time % 10),
        'C-03',
        time % 8 < 3 ? 'kFalseResultMightBeDamagedOrDirty' : '无异常',
      ),
      VehicleStatusData('AGV-06', '运行中', '正常', 96 + (time % 4), 'S-08', '无异常'),
      VehicleStatusData(
        'AGV-07',
        '异常',
        '地面不平',
        70 + (time % 5),
        '待检查',
        'kUnderpanExceptionalVibration',
      ),
      VehicleStatusData('AGV-08', '运行中', '正常', 90 + (time % 6), 'P-12', '无异常'),
    ];
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';
  }

  // 关闭连接
  Future<void> disconnect() async {
    if (_isConnected) {
      await _channel.shutdown();
      _isConnected = false;
      print('gRPC连接已关闭');
    }
  }

  bool get isConnected => _isConnected;

  // ==================== 新增的健康服务接口 ====================

  /// 上报场地健康数据
  Future<void> reportSiteHealthInfo(
    MarkerHealthInfo? markerHealth,
    GroundHealthInfo? groundHealth,
    GoodsSlotHealthInfo? goodsSlotHealth,
  ) async {
    try {
      if (!_isConnected) {
        print('gRPC未连接，使用本地存储');
        _storeHealthInfo(markerHealth, groundHealth, goodsSlotHealth);
        return;
      }

      // TODO: 实现真实的gRPC调用
      print('上报健康数据:');
      if (markerHealth != null) print('  - 二维码信息: ${markerHealth.nodeId}');
      if (groundHealth != null) print('  - 地面信息: 位置 ${groundHealth.carId}');
      if (goodsSlotHealth != null)
        print('  - 货架信息: ${goodsSlotHealth.goodsSlotId}');
    } catch (e) {
      print('上报失败: $e');
    }
  }

  /// 批量上报健康数据
  Future<void> batchReportSiteHealthInfo(
    List<MarkerHealthInfo> markerHealths,
    List<GroundHealthInfo> groundHealths,
    List<GoodsSlotHealthInfo> goodsSlotHealths,
  ) async {
    try {
      print('批量上报健康数据');
      print('  - 二维码信息: ${markerHealths.length}条');
      print('  - 地面信息: ${groundHealths.length}条');
      print('  - 货架信息: ${goodsSlotHealths.length}条');

      for (var marker in markerHealths) {
        _markerHealthData.add(marker);
      }
      for (var ground in groundHealths) {
        _groundHealthData.add(ground);
      }
      for (var goods in goodsSlotHealths) {
        _goodsSlotHealthData.add(goods);
      }
    } catch (e) {
      print('批量上报失败: $e');
    }
  }

  /// 查询健康信息
  Future<HealthInfoQueryResponse> queryHealthInfo({
    int? nodeId,
    PositionData? logicLocation,
    int? goodsSlotId,
    HealthStatus? minStatus,
    DateTime? startTime,
    DateTime? endTime,
  }) async {
    try {
      if (!_isConnected) {
        return _queryLocalHealthInfo(
          nodeId: nodeId,
          logicLocation: logicLocation,
          goodsSlotId: goodsSlotId,
          minStatus: minStatus,
          startTime: startTime,
          endTime: endTime,
        );
      }

      // TODO: 实现真实的gRPC调用
      print('查询健康信息');
      return _queryMockHealthInfo();
    } catch (e) {
      print('查询失败: $e');
      return HealthInfoQueryResponse(
        markerHealths: [],
        groundHealths: [],
        goodsSlotHealths: [],
      );
    }
  }

  /// 获取健康统计信息
  Future<HealthStatistics> getHealthStatistics() async {
    try {
      if (!_isConnected) {
        return _calculateLocalHealthStatistics();
      }

      // TODO: 实现真实的gRPC调用
      return _generateMockHealthStatistics();
    } catch (e) {
      print('获取统计信息失败: $e');
      return HealthStatistics(
        totalNodes: 0,
        normalNodes: 0,
        warningNodes: 0,
        errorNodes: 0,
        criticalNodes: 0,
        totalGoodsSlots: 0,
        normalGoodsSlots: 0,
        warningGoodsSlots: 0,
        errorGoodsSlots: 0,
        overallHealthScore: 0.0,
        perCarExceptionCounts: [],
      );
    }
  }

  /// 订阅健康状态变化流
  Stream<Map<String, dynamic>> subscribeHealthStatus() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));

      final healthInfo = {
        'timestamp': DateTime.now().toIso8601String(),
        'marker_issues': _generateRandomMarkerIssue(),
        'ground_issues': _generateRandomGroundIssue(),
        'goods_slot_issues': _generateRandomGoodsSlotIssue(),
      };

      yield healthInfo;
    }
  }

  /// 位置异常概率分析
  Future<LocationExceptionAnalysisResponse> analyzeLocationException({
    required int nodeId,
    required PositionData logicLocation,
    required ExceptionCategory category,
    DateTime? startTime,
    DateTime? endTime,
    String? markerCode,
  }) async {
    try {
      if (!_isConnected) {
        return _analyzeLocalLocationException(
          nodeId: nodeId,
          category: category,
        );
      }

      // TODO: 实现真实的gRPC调用
      print('分析位置异常: 节点$nodeId, 类别${category.name}');
      return _generateMockLocationExceptionAnalysis(nodeId, category);
    } catch (e) {
      print('位置异常分析失败: $e');
      return LocationExceptionAnalysisResponse(
        nodeId: nodeId,
        category: category,
        totalDetections: 0,
        exceptionCount: 0,
        exceptionRate: 0.0,
        uniqueCarCount: 0,
        totalCarCount: 0,
        isLocationRelated: false,
        affectedCarIds: [],
        lastExceptionTime: DateTime.now(),
      );
    }
  }

  /// 单车异常概率分析
  Future<CarExceptionAnalysisResponse> analyzeCarException({
    required int carId,
    required ExceptionCategory category,
    MarkerIssueType? markerIssueType,
    GroundIssueType? groundIssueType,
    GoodsSlotIssueType? goodsSlotIssueType,
    DateTime? startTime,
    DateTime? endTime,
  }) async {
    try {
      if (!_isConnected) {
        return _analyzeLocalCarException(carId, category);
      }

      // TODO: 实现真实的gRPC调用
      print('分析单车异常: 车辆$carId, 类别${category.name}');
      return _generateMockCarExceptionAnalysis(carId, category);
    } catch (e) {
      print('单车异常分析失败: $e');
      return CarExceptionAnalysisResponse(
        carId: carId,
        category: category,
        totalDetections: 0,
        exceptionCount: 0,
        exceptionRate: 0.0,
        affectedLocationCount: 0,
        isCarRelated: false,
        affectedNodeIds: [],
        lastExceptionTime: DateTime.now(),
      );
    }
  }

  /// 数据清理/更新
  Future<DataCleanupResponse> cleanupData({
    required ExceptionCategory category,
    int? nodeId,
    PositionData? logicLocation,
    String? markerCode,
    DateTime? beforeTime,
    bool clearAll = false,
  }) async {
    try {
      if (!_isConnected) {
        return _cleanupLocalData(
          category: category,
          nodeId: nodeId,
          clearAll: clearAll,
        );
      }

      // TODO: 实现真实的gRPC调用
      print('清理数据: ${category.name}');
      return DataCleanupResponse(
        cleanedCount: 10,
        success: true,
        message: '数据清理成功',
      );
    } catch (e) {
      print('数据清理失败: $e');
      return DataCleanupResponse(
        cleanedCount: 0,
        success: false,
        message: '清理失败: $e',
      );
    }
  }

  // ==================== 本地模拟数据方法 ====================

  void _storeHealthInfo(
    MarkerHealthInfo? markerHealth,
    GroundHealthInfo? groundHealth,
    GoodsSlotHealthInfo? goodsSlotHealth,
  ) {
    if (markerHealth != null) _markerHealthData.add(markerHealth);
    if (groundHealth != null) _groundHealthData.add(groundHealth);
    if (goodsSlotHealth != null) _goodsSlotHealthData.add(goodsSlotHealth);
  }

  HealthInfoQueryResponse _queryLocalHealthInfo({
    int? nodeId,
    PositionData? logicLocation,
    int? goodsSlotId,
    HealthStatus? minStatus,
    DateTime? startTime,
    DateTime? endTime,
  }) {
    var markers = _markerHealthData;
    var grounds = _groundHealthData;
    var goodsSlots = _goodsSlotHealthData;

    if (nodeId != null) {
      markers = markers.where((m) => m.nodeId == nodeId).toList();
    }
    if (goodsSlotId != null) {
      goodsSlots = goodsSlots
          .where((g) => g.goodsSlotId == goodsSlotId)
          .toList();
    }

    return HealthInfoQueryResponse(
      markerHealths: markers,
      groundHealths: grounds,
      goodsSlotHealths: goodsSlots,
    );
  }

  HealthInfoQueryResponse _queryMockHealthInfo() {
    return HealthInfoQueryResponse(
      markerHealths: [
        MarkerHealthInfo(
          carId: 1,
          nodeId: 101,
          exceptionType: '污损',
          detectedMarkerCode: 'MRK_2024_101',
          decodeSuccessRate: 0.85,
          issueType: MarkerIssueType.damaged,
          healthStatus: HealthStatus.warning,
          description: '二维码污损，识别困难',
          timestamp: DateTime.now(),
        ),
      ],
      groundHealths: [
        GroundHealthInfo(
          carId: 1,
          floorFlatness: 0.92,
          maxDeviation: 5.5,
          averageDeviation: 2.3,
          issueType: GroundIssueType.uneven,
          healthStatus: HealthStatus.normal,
          description: '地面平整度良好',
          timestamp: DateTime.now(),
        ),
      ],
      goodsSlotHealths: [
        GoodsSlotHealthInfo(
          carId: 1,
          goodsSlotId: 501,
          expectedHeight: 800,
          detectedHeight: 805,
          heightDifference: 5,
          issueType: GoodsSlotIssueType.none,
          healthStatus: HealthStatus.normal,
          description: '货架状态正常',
          timestamp: DateTime.now(),
        ),
      ],
    );
  }

  HealthStatistics _calculateLocalHealthStatistics() {
    final totalMarkers = _markerHealthData.length;
    final totalGrounds = _groundHealthData.length;
    final totalGoods = _goodsSlotHealthData.length;

    final normalMarkers = _markerHealthData
        .where((m) => m.healthStatus == HealthStatus.normal)
        .length;
    final warningMarkers = _markerHealthData
        .where((m) => m.healthStatus == HealthStatus.warning)
        .length;

    return HealthStatistics(
      totalNodes: totalMarkers + totalGrounds,
      normalNodes: normalMarkers,
      warningNodes: warningMarkers,
      errorNodes: 0,
      criticalNodes: 0,
      totalGoodsSlots: totalGoods,
      normalGoodsSlots: _goodsSlotHealthData
          .where((g) => g.healthStatus == HealthStatus.normal)
          .length,
      warningGoodsSlots: _goodsSlotHealthData
          .where((g) => g.healthStatus == HealthStatus.warning)
          .length,
      errorGoodsSlots: 0,
      overallHealthScore: totalMarkers > 0 ? normalMarkers / totalMarkers : 1.0,
      perCarExceptionCounts: [],
    );
  }

  HealthStatistics _generateMockHealthStatistics() {
    return HealthStatistics(
      totalNodes: 156,
      normalNodes: 148,
      warningNodes: 6,
      errorNodes: 2,
      criticalNodes: 0,
      totalGoodsSlots: 48,
      normalGoodsSlots: 45,
      warningGoodsSlots: 3,
      errorGoodsSlots: 0,
      overallHealthScore: 0.95,
      perCarExceptionCounts: [
        CarExceptionSummary(carId: 1, exceptionCount: 2),
        CarExceptionSummary(carId: 3, exceptionCount: 1),
        CarExceptionSummary(carId: 7, exceptionCount: 3),
      ],
    );
  }

  LocationExceptionAnalysisResponse _analyzeLocalLocationException({
    required int nodeId,
    required ExceptionCategory category,
  }) {
    List<int> affectedCars = [];
    int exceptionCount = 0;

    if (category == ExceptionCategory.marker) {
      final markers = _markerHealthData
          .where((m) => m.nodeId == nodeId)
          .toList();
      affectedCars = markers.map((m) => m.carId).toSet().toList();
      exceptionCount = markers.length;
    } else if (category == ExceptionCategory.ground) {
      final grounds = _groundHealthData
          .where((g) => g.carId == nodeId)
          .toList();
      affectedCars = grounds.map((g) => g.carId).toSet().toList();
      exceptionCount = grounds.length;
    }

    return LocationExceptionAnalysisResponse(
      nodeId: nodeId,
      category: category,
      totalDetections: exceptionCount + 5,
      exceptionCount: exceptionCount,
      exceptionRate: exceptionCount / (exceptionCount + 5),
      uniqueCarCount: affectedCars.length,
      totalCarCount: 8,
      isLocationRelated: exceptionCount > 2,
      affectedCarIds: affectedCars,
      lastExceptionTime: DateTime.now(),
    );
  }

  LocationExceptionAnalysisResponse _generateMockLocationExceptionAnalysis(
    int nodeId,
    ExceptionCategory category,
  ) {
    return LocationExceptionAnalysisResponse(
      nodeId: nodeId,
      category: category,
      totalDetections: 24,
      exceptionCount: 6,
      exceptionRate: 0.25,
      uniqueCarCount: 3,
      totalCarCount: 8,
      isLocationRelated: true,
      affectedCarIds: [1, 3, 5],
      lastExceptionTime: DateTime.now().subtract(const Duration(minutes: 5)),
    );
  }

  CarExceptionAnalysisResponse _analyzeLocalCarException(
    int carId,
    ExceptionCategory category,
  ) {
    List<int> affectedNodes = [];
    int exceptionCount = 0;

    if (category == ExceptionCategory.marker) {
      final markers = _markerHealthData.where((m) => m.carId == carId).toList();
      affectedNodes = markers.map((m) => m.nodeId).toSet().toList();
      exceptionCount = markers.length;
    }

    return CarExceptionAnalysisResponse(
      carId: carId,
      category: category,
      totalDetections: exceptionCount + 20,
      exceptionCount: exceptionCount,
      exceptionRate: exceptionCount / (exceptionCount + 20),
      affectedLocationCount: affectedNodes.length,
      isCarRelated: affectedNodes.length > 2,
      affectedNodeIds: affectedNodes,
      lastExceptionTime: DateTime.now(),
    );
  }

  CarExceptionAnalysisResponse _generateMockCarExceptionAnalysis(
    int carId,
    ExceptionCategory category,
  ) {
    return CarExceptionAnalysisResponse(
      carId: carId,
      category: category,
      totalDetections: 32,
      exceptionCount: 5,
      exceptionRate: 0.156,
      affectedLocationCount: 3,
      isCarRelated: true,
      affectedNodeIds: [101, 102, 105],
      lastExceptionTime: DateTime.now().subtract(const Duration(hours: 1)),
    );
  }

  DataCleanupResponse _cleanupLocalData({
    required ExceptionCategory category,
    int? nodeId,
    bool clearAll = false,
  }) {
    int count = 0;

    if (category == ExceptionCategory.marker || clearAll) {
      if (nodeId != null) {
        final toRemove = _markerHealthData
            .where((m) => m.nodeId == nodeId)
            .length;
        _markerHealthData.removeWhere((m) => m.nodeId == nodeId);
        count += toRemove;
      } else {
        count += _markerHealthData.length;
        _markerHealthData.clear();
      }
    }

    if (category == ExceptionCategory.ground || clearAll) {
      if (nodeId != null) {
        final toRemove = _groundHealthData
            .where((g) => g.carId == nodeId)
            .length;
        _groundHealthData.removeWhere((g) => g.carId == nodeId);
        count += toRemove;
      } else {
        count += _groundHealthData.length;
        _groundHealthData.clear();
      }
    }

    if (category == ExceptionCategory.goodsSlot || clearAll) {
      if (nodeId != null) {
        final toRemove = _goodsSlotHealthData
            .where((g) => g.goodsSlotId == nodeId)
            .length;
        _goodsSlotHealthData.removeWhere((g) => g.goodsSlotId == nodeId);
        count += toRemove;
      } else {
        count += _goodsSlotHealthData.length;
        _goodsSlotHealthData.clear();
      }
    }

    return DataCleanupResponse(
      cleanedCount: count,
      success: true,
      message: '已清理 $count 条数据',
    );
  }

  Map<String, dynamic> _generateRandomMarkerIssue() {
    final random = DateTime.now().millisecond % 4;
    final types = ['污损', '贴歪', '贴错', '置信度低'];
    final levels = [
      HealthStatus.normal,
      HealthStatus.warning,
      HealthStatus.error,
      HealthStatus.critical,
    ];

    return {
      'type': types[random],
      'level': levels[random].name,
      'count': random + 1,
    };
  }

  Map<String, dynamic> _generateRandomGroundIssue() {
    final random = DateTime.now().millisecond % 3;
    final types = ['不平整', '有障碍物', '有坡度'];

    return {'type': types[random], 'count': random + 1};
  }

  Map<String, dynamic> _generateRandomGoodsSlotIssue() {
    final random = DateTime.now().millisecond % 3;
    final types = ['高度不匹配', '位置错误', '损坏'];

    return {'type': types[random], 'count': random + 1};
  }
}

// 车辆状态数据模型
class VehicleStatusData {
  final String id;
  final String status;
  final String condition;
  final int healthScore;
  final String location;
  final String exception;

  VehicleStatusData(
    this.id,
    this.status,
    this.condition,
    this.healthScore,
    this.location,
    this.exception,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'status': status,
    'condition': condition,
    'healthScore': healthScore,
    'location': location,
    'exception': exception,
  };

  factory VehicleStatusData.fromJson(Map<String, dynamic> json) {
    return VehicleStatusData(
      json['id'] as String,
      json['status'] as String,
      json['condition'] as String,
      json['healthScore'] as int,
      json['location'] as String,
      json['exception'] as String,
    );
  }

  /// 重置位置健康数据（模拟实现）
  Future<void> resetLocationHealthData({
    types.PositionData_t? logicLocation,
  }) async {
    // 模拟延迟
    await Future.delayed(const Duration(milliseconds: 500));
    print('✓ 模拟重置位置 (${logicLocation?.localX}, ${logicLocation?.localY}) 健康数据');
  }
}
