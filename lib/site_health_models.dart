// Proto 数据模型 - 基于 site_health_service.proto
// 这个文件包含了所有的枚举和数据类定义

enum HealthStatus {
  unknown,
  normal,      // 正常
  warning,     // 警告
  error,       // 错误
  critical,    // 严重
}

enum MarkerIssueType {
  none,
  damaged,         // 污损
  misaligned,      // 贴歪
  wrongCode,       // 贴错
  lowConfidence,   // 置信度低
}

enum GroundIssueType {
  none,
  uneven,          // 不平整
  obstacle,        // 有障碍物
  slope,           // 有坡度
}

enum GoodsSlotIssueType {
  none,
  heightMismatch,  // 高度不匹配
  positionError,   // 位置错误
  damaged,         // 损坏
}

enum ExceptionCategory {
  unknown,
  marker,          // 二维码相关
  ground,          // 地面相关
  goodsSlot,       // 货架相关
}

// 位置数据
class PositionData {
  final int x;
  final int y;

  PositionData({required this.x, required this.y});

  Map<String, dynamic> toJson() => {'x': x, 'y': y};
  factory PositionData.fromJson(Map<String, dynamic> json) =>
      PositionData(x: json['x'] ?? 0, y: json['y'] ?? 0);
}

// 位置偏差数据
class NodeDeviationData {
  final double xDeviation;
  final double yDeviation;
  final double angleDeviation;

  NodeDeviationData({
    required this.xDeviation,
    required this.yDeviation,
    required this.angleDeviation,
  });

  Map<String, dynamic> toJson() => {
    'x_deviation': xDeviation,
    'y_deviation': yDeviation,
    'angle_deviation': angleDeviation,
  };

  factory NodeDeviationData.fromJson(Map<String, dynamic> json) =>
      NodeDeviationData(
        xDeviation: json['x_deviation'] ?? 0.0,
        yDeviation: json['y_deviation'] ?? 0.0,
        angleDeviation: json['angle_deviation'] ?? 0.0,
      );
}

// ==================== 健康信息相关 ====================

/// 二维码健康信息
class MarkerHealthInfo {
  final int carId;
  final int nodeId;
  final PositionData? nodeLogicLocation;
  final String exceptionType;
  final String detectedMarkerCode;
  final double decodeSuccessRate;
  final NodeDeviationData? deviation;
  final MarkerIssueType issueType;
  final HealthStatus healthStatus;
  final String description;
  final DateTime timestamp;

  MarkerHealthInfo({
    required this.carId,
    required this.nodeId,
    this.nodeLogicLocation,
    required this.exceptionType,
    required this.detectedMarkerCode,
    required this.decodeSuccessRate,
    this.deviation,
    required this.issueType,
    required this.healthStatus,
    required this.description,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'node_id': nodeId,
    'node_logic_location': nodeLogicLocation?.toJson(),
    'exception_type': exceptionType,
    'detected_marker_code': detectedMarkerCode,
    'decode_success_rate': decodeSuccessRate,
    'deviation': deviation?.toJson(),
    'issue_type': issueType.name,
    'health_status': healthStatus.name,
    'description': description,
    'timestamp': timestamp.toIso8601String(),
  };

  factory MarkerHealthInfo.fromJson(Map<String, dynamic> json) =>
      MarkerHealthInfo(
        carId: json['car_id'] ?? 0,
        nodeId: json['node_id'] ?? 0,
        nodeLogicLocation: json['node_logic_location'] != null
            ? PositionData.fromJson(json['node_logic_location'])
            : null,
        exceptionType: json['exception_type'] ?? '',
        detectedMarkerCode: json['detected_marker_code'] ?? '',
        decodeSuccessRate: (json['decode_success_rate'] ?? 0.0).toDouble(),
        deviation: json['deviation'] != null
            ? NodeDeviationData.fromJson(json['deviation'])
            : null,
        issueType: MarkerIssueType.values
            .firstWhere((e) => e.name == json['issue_type'], orElse: () => MarkerIssueType.none),
        healthStatus: HealthStatus.values
            .firstWhere((e) => e.name == json['health_status'], orElse: () => HealthStatus.unknown),
        description: json['description'] ?? '',
        timestamp: DateTime.parse(json['timestamp'] ?? DateTime.now().toIso8601String()),
      );
}

/// 地面健康信息
class GroundHealthInfo {
  final int carId;
  final PositionData? startNode;
  final PositionData? endNode;
  final double floorFlatness;
  final double maxDeviation;
  final double averageDeviation;
  final GroundIssueType issueType;
  final HealthStatus healthStatus;
  final String description;
  final DateTime timestamp;

  GroundHealthInfo({
    required this.carId,
    this.startNode,
    this.endNode,
    required this.floorFlatness,
    required this.maxDeviation,
    required this.averageDeviation,
    required this.issueType,
    required this.healthStatus,
    required this.description,
    required this.timestamp,
  });

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'start_node': startNode?.toJson(),
    'end_node': endNode?.toJson(),
    'floor_flatness': floorFlatness,
    'max_deviation': maxDeviation,
    'average_deviation': averageDeviation,
    'issue_type': issueType.name,
    'health_status': healthStatus.name,
    'description': description,
    'timestamp': timestamp.toIso8601String(),
  };

  factory GroundHealthInfo.fromJson(Map<String, dynamic> json) =>
      GroundHealthInfo(
        carId: json['car_id'] ?? 0,
        startNode: json['start_node'] != null
            ? PositionData.fromJson(json['start_node'])
            : null,
        endNode: json['end_node'] != null
            ? PositionData.fromJson(json['end_node'])
            : null,
        floorFlatness: (json['floor_flatness'] ?? 0.0).toDouble(),
        maxDeviation: (json['max_deviation'] ?? 0.0).toDouble(),
        averageDeviation: (json['average_deviation'] ?? 0.0).toDouble(),
        issueType: GroundIssueType.values
            .firstWhere((e) => e.name == json['issue_type'], orElse: () => GroundIssueType.none),
        healthStatus: HealthStatus.values
            .firstWhere((e) => e.name == json['health_status'], orElse: () => HealthStatus.unknown),
        description: json['description'] ?? '',
        timestamp: DateTime.parse(json['timestamp'] ?? DateTime.now().toIso8601String()),
      );
}

/// 货架健康信息
class GoodsSlotHealthInfo {
  final int carId;
  final int goodsSlotId;
  final int expectedHeight;
  final int detectedHeight;
  final int heightDifference;
  final GoodsSlotIssueType issueType;
  final HealthStatus healthStatus;
  final String description;
  final DateTime timestamp;
  // 保留字段
  final int goodsSlotDirection;
  final int goodsSlotJackHeight;
  final int goodsSlotDistanceToStation;
  final int goodsSlotPalletFeatureHeight;
  final int goodsSlotTypeId;
  final int detectedGoodsSlotBeamLineDistance;
  final int detectedGoodsSlotBeamLineAngle;
  final int detectedGoodsSlotPalletDistance;
  final double detectedGoodsSlotPalletAngle;
  final int detectedGoodsSlotUprightDistance;
  final double detectedGoodsSlotAndCarAngle;
  final int detectedGoodsSlotPalletEntryHeight;
  final int detectedGoodsSlotRawHeight;
  final int detectedGoodsSlotBeamLineRawDistance;
  final int detectedGoodsSlotPalletRawDistance;
  final int detectedGoodsSlotUprightRawDistance;

  GoodsSlotHealthInfo({
    required this.carId,
    required this.goodsSlotId,
    required this.expectedHeight,
    required this.detectedHeight,
    required this.heightDifference,
    required this.issueType,
    required this.healthStatus,
    required this.description,
    required this.timestamp,
    this.goodsSlotDirection = 0,
    this.goodsSlotJackHeight = 0,
    this.goodsSlotDistanceToStation = 0,
    this.goodsSlotPalletFeatureHeight = 0,
    this.goodsSlotTypeId = 0,
    this.detectedGoodsSlotBeamLineDistance = 0,
    this.detectedGoodsSlotBeamLineAngle = 0,
    this.detectedGoodsSlotPalletDistance = 0,
    this.detectedGoodsSlotPalletAngle = 0.0,
    this.detectedGoodsSlotUprightDistance = 0,
    this.detectedGoodsSlotAndCarAngle = 0.0,
    this.detectedGoodsSlotPalletEntryHeight = 0,
    this.detectedGoodsSlotRawHeight = 0,
    this.detectedGoodsSlotBeamLineRawDistance = 0,
    this.detectedGoodsSlotPalletRawDistance = 0,
    this.detectedGoodsSlotUprightRawDistance = 0,
  });

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'goods_slot_id': goodsSlotId,
    'expected_height': expectedHeight,
    'detected_height': detectedHeight,
    'height_difference': heightDifference,
    'issue_type': issueType.name,
    'health_status': healthStatus.name,
    'description': description,
    'timestamp': timestamp.toIso8601String(),
    'goods_slot_direction': goodsSlotDirection,
    'goods_slot_jack_height': goodsSlotJackHeight,
    'goods_slot_distance_to_station': goodsSlotDistanceToStation,
    'goods_slot_pallet_feature_height': goodsSlotPalletFeatureHeight,
    'goods_slot_type_id': goodsSlotTypeId,
    'detected_goods_slot_beam_line_distance': detectedGoodsSlotBeamLineDistance,
    'detected_goods_slot_beam_line_angle': detectedGoodsSlotBeamLineAngle,
    'detected_goods_slot_pallet_distance': detectedGoodsSlotPalletDistance,
    'detected_goods_slot_pallet_angle': detectedGoodsSlotPalletAngle,
    'detected_goods_slot_upright_distance': detectedGoodsSlotUprightDistance,
    'detected_goods_slot_and_car_angle': detectedGoodsSlotAndCarAngle,
    'detected_goods_slot_pallet_entry_height': detectedGoodsSlotPalletEntryHeight,
    'detected_goods_slot_raw_height': detectedGoodsSlotRawHeight,
    'detected_goods_slot_beam_line_raw_distance': detectedGoodsSlotBeamLineRawDistance,
    'detected_goods_slot_pallet_raw_distance': detectedGoodsSlotPalletRawDistance,
    'detected_goods_slot_upright_raw_distance': detectedGoodsSlotUprightRawDistance,
  };

  factory GoodsSlotHealthInfo.fromJson(Map<String, dynamic> json) =>
      GoodsSlotHealthInfo(
        carId: json['car_id'] ?? 0,
        goodsSlotId: json['goods_slot_id'] ?? 0,
        expectedHeight: json['expected_height'] ?? 0,
        detectedHeight: json['detected_height'] ?? 0,
        heightDifference: json['height_difference'] ?? 0,
        issueType: GoodsSlotIssueType.values
            .firstWhere((e) => e.name == json['issue_type'], orElse: () => GoodsSlotIssueType.none),
        healthStatus: HealthStatus.values
            .firstWhere((e) => e.name == json['health_status'], orElse: () => HealthStatus.unknown),
        description: json['description'] ?? '',
        timestamp: DateTime.parse(json['timestamp'] ?? DateTime.now().toIso8601String()),
        goodsSlotDirection: json['goods_slot_direction'] ?? 0,
        goodsSlotJackHeight: json['goods_slot_jack_height'] ?? 0,
        goodsSlotDistanceToStation: json['goods_slot_distance_to_station'] ?? 0,
        goodsSlotPalletFeatureHeight: json['goods_slot_pallet_feature_height'] ?? 0,
        goodsSlotTypeId: json['goods_slot_type_id'] ?? 0,
        detectedGoodsSlotBeamLineDistance: json['detected_goods_slot_beam_line_distance'] ?? 0,
        detectedGoodsSlotBeamLineAngle: json['detected_goods_slot_beam_line_angle'] ?? 0,
        detectedGoodsSlotPalletDistance: json['detected_goods_slot_pallet_distance'] ?? 0,
        detectedGoodsSlotPalletAngle: (json['detected_goods_slot_pallet_angle'] ?? 0.0).toDouble(),
        detectedGoodsSlotUprightDistance: json['detected_goods_slot_upright_distance'] ?? 0,
        detectedGoodsSlotAndCarAngle: (json['detected_goods_slot_and_car_angle'] ?? 0.0).toDouble(),
        detectedGoodsSlotPalletEntryHeight: json['detected_goods_slot_pallet_entry_height'] ?? 0,
        detectedGoodsSlotRawHeight: json['detected_goods_slot_raw_height'] ?? 0,
        detectedGoodsSlotBeamLineRawDistance: json['detected_goods_slot_beam_line_raw_distance'] ?? 0,
        detectedGoodsSlotPalletRawDistance: json['detected_goods_slot_pallet_raw_distance'] ?? 0,
        detectedGoodsSlotUprightRawDistance: json['detected_goods_slot_upright_raw_distance'] ?? 0,
      );
}

// ==================== 查询相关 ====================

/// 健康信息查询请求
class HealthInfoQueryRequest {
  final int? nodeId;
  final PositionData? logicLocation;
  final int? goodsSlotId;
  final HealthStatus? minStatus;
  final DateTime? startTime;
  final DateTime? endTime;

  HealthInfoQueryRequest({
    this.nodeId,
    this.logicLocation,
    this.goodsSlotId,
    this.minStatus,
    this.startTime,
    this.endTime,
  });

  Map<String, dynamic> toJson() => {
    'node_id': nodeId,
    'logic_location': logicLocation?.toJson(),
    'goods_slot_id': goodsSlotId,
    'min_status': minStatus?.name,
    'start_time': startTime?.toIso8601String(),
    'end_time': endTime?.toIso8601String(),
  };
}

/// 健康信息查询响应
class HealthInfoQueryResponse {
  final List<MarkerHealthInfo> markerHealths;
  final List<GroundHealthInfo> groundHealths;
  final List<GoodsSlotHealthInfo> goodsSlotHealths;

  HealthInfoQueryResponse({
    required this.markerHealths,
    required this.groundHealths,
    required this.goodsSlotHealths,
  });

  Map<String, dynamic> toJson() => {
    'marker_healths': markerHealths.map((e) => e.toJson()).toList(),
    'ground_healths': groundHealths.map((e) => e.toJson()).toList(),
    'goods_slot_healths': goodsSlotHealths.map((e) => e.toJson()).toList(),
  };

  factory HealthInfoQueryResponse.fromJson(Map<String, dynamic> json) =>
      HealthInfoQueryResponse(
        markerHealths: (json['marker_healths'] as List?)
            ?.map((e) => MarkerHealthInfo.fromJson(e))
            .toList() ?? [],
        groundHealths: (json['ground_healths'] as List?)
            ?.map((e) => GroundHealthInfo.fromJson(e))
            .toList() ?? [],
        goodsSlotHealths: (json['goods_slot_healths'] as List?)
            ?.map((e) => GoodsSlotHealthInfo.fromJson(e))
            .toList() ?? [],
      );
}

// ==================== 统计相关 ====================

/// 每台车的异常计数摘要
class CarExceptionSummary {
  final int carId;
  final int exceptionCount;

  CarExceptionSummary({required this.carId, required this.exceptionCount});

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'exception_count': exceptionCount,
  };

  factory CarExceptionSummary.fromJson(Map<String, dynamic> json) =>
      CarExceptionSummary(
        carId: json['car_id'] ?? 0,
        exceptionCount: json['exception_count'] ?? 0,
      );
}

/// 健康统计信息
class HealthStatistics {
  final int totalNodes;
  final int normalNodes;
  final int warningNodes;
  final int errorNodes;
  final int criticalNodes;
  final int totalGoodsSlots;
  final int normalGoodsSlots;
  final int warningGoodsSlots;
  final int errorGoodsSlots;
  final double overallHealthScore;
  final List<CarExceptionSummary> perCarExceptionCounts;

  HealthStatistics({
    required this.totalNodes,
    required this.normalNodes,
    required this.warningNodes,
    required this.errorNodes,
    required this.criticalNodes,
    required this.totalGoodsSlots,
    required this.normalGoodsSlots,
    required this.warningGoodsSlots,
    required this.errorGoodsSlots,
    required this.overallHealthScore,
    required this.perCarExceptionCounts,
  });

  Map<String, dynamic> toJson() => {
    'total_nodes': totalNodes,
    'normal_nodes': normalNodes,
    'warning_nodes': warningNodes,
    'error_nodes': errorNodes,
    'critical_nodes': criticalNodes,
    'total_goods_slots': totalGoodsSlots,
    'normal_goods_slots': normalGoodsSlots,
    'warning_goods_slots': warningGoodsSlots,
    'error_goods_slots': errorGoodsSlots,
    'overall_health_score': overallHealthScore,
    'per_car_exception_counts': perCarExceptionCounts.map((e) => e.toJson()).toList(),
  };

  factory HealthStatistics.fromJson(Map<String, dynamic> json) =>
      HealthStatistics(
        totalNodes: json['total_nodes'] ?? 0,
        normalNodes: json['normal_nodes'] ?? 0,
        warningNodes: json['warning_nodes'] ?? 0,
        errorNodes: json['error_nodes'] ?? 0,
        criticalNodes: json['critical_nodes'] ?? 0,
        totalGoodsSlots: json['total_goods_slots'] ?? 0,
        normalGoodsSlots: json['normal_goods_slots'] ?? 0,
        warningGoodsSlots: json['warning_goods_slots'] ?? 0,
        errorGoodsSlots: json['error_goods_slots'] ?? 0,
        overallHealthScore: (json['overall_health_score'] ?? 0.0).toDouble(),
        perCarExceptionCounts: (json['per_car_exception_counts'] as List?)
            ?.map((e) => CarExceptionSummary.fromJson(e))
            .toList() ?? [],
      );
}

// ==================== 异常分析相关 ====================

/// 位置异常概率分析请求
class LocationExceptionAnalysisRequest {
  final int nodeId;
  final PositionData logicLocation;
  final ExceptionCategory category;
  final DateTime? startTime;
  final DateTime? endTime;
  final String? markerCode;

  LocationExceptionAnalysisRequest({
    required this.nodeId,
    required this.logicLocation,
    required this.category,
    this.startTime,
    this.endTime,
    this.markerCode,
  });

  Map<String, dynamic> toJson() => {
    'node_id': nodeId,
    'logic_location': logicLocation.toJson(),
    'category': category.name,
    'start_time': startTime?.toIso8601String(),
    'end_time': endTime?.toIso8601String(),
    'marker_code': markerCode,
  };
}

/// 位置异常概率分析响应
class LocationExceptionAnalysisResponse {
  final int nodeId;
  final ExceptionCategory category;
  final int totalDetections;
  final int exceptionCount;
  final double exceptionRate;
  final int uniqueCarCount;
  final int totalCarCount;
  final bool isLocationRelated;
  final List<int> affectedCarIds;
  final DateTime lastExceptionTime;

  LocationExceptionAnalysisResponse({
    required this.nodeId,
    required this.category,
    required this.totalDetections,
    required this.exceptionCount,
    required this.exceptionRate,
    required this.uniqueCarCount,
    required this.totalCarCount,
    required this.isLocationRelated,
    required this.affectedCarIds,
    required this.lastExceptionTime,
  });

  Map<String, dynamic> toJson() => {
    'node_id': nodeId,
    'category': category.name,
    'total_detections': totalDetections,
    'exception_count': exceptionCount,
    'exception_rate': exceptionRate,
    'unique_car_count': uniqueCarCount,
    'total_car_count': totalCarCount,
    'is_location_related': isLocationRelated,
    'affected_car_ids': affectedCarIds,
    'last_exception_time': lastExceptionTime.toIso8601String(),
  };

  factory LocationExceptionAnalysisResponse.fromJson(Map<String, dynamic> json) =>
      LocationExceptionAnalysisResponse(
        nodeId: json['node_id'] ?? 0,
        category: ExceptionCategory.values
            .firstWhere((e) => e.name == json['category'], orElse: () => ExceptionCategory.unknown),
        totalDetections: json['total_detections'] ?? 0,
        exceptionCount: json['exception_count'] ?? 0,
        exceptionRate: (json['exception_rate'] ?? 0.0).toDouble(),
        uniqueCarCount: json['unique_car_count'] ?? 0,
        totalCarCount: json['total_car_count'] ?? 0,
        isLocationRelated: json['is_location_related'] ?? false,
        affectedCarIds: List<int>.from(json['affected_car_ids'] ?? []),
        lastExceptionTime: DateTime.parse(json['last_exception_time'] ?? DateTime.now().toIso8601String()),
      );
}

/// 单车异常概率分析请求
class CarExceptionAnalysisRequest {
  final int carId;
  final ExceptionCategory category;
  final MarkerIssueType? markerIssueType;
  final GroundIssueType? groundIssueType;
  final GoodsSlotIssueType? goodsSlotIssueType;
  final DateTime? startTime;
  final DateTime? endTime;

  CarExceptionAnalysisRequest({
    required this.carId,
    required this.category,
    this.markerIssueType,
    this.groundIssueType,
    this.goodsSlotIssueType,
    this.startTime,
    this.endTime,
  });

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'category': category.name,
    'marker_issue_type': markerIssueType?.name,
    'ground_issue_type': groundIssueType?.name,
    'goods_slot_issue_type': goodsSlotIssueType?.name,
    'start_time': startTime?.toIso8601String(),
    'end_time': endTime?.toIso8601String(),
  };
}

/// 单车异常概率分析响应
class CarExceptionAnalysisResponse {
  final int carId;
  final ExceptionCategory category;
  final int totalDetections;
  final int exceptionCount;
  final double exceptionRate;
  final int affectedLocationCount;
  final bool isCarRelated;
  final List<int> affectedNodeIds;
  final DateTime lastExceptionTime;

  CarExceptionAnalysisResponse({
    required this.carId,
    required this.category,
    required this.totalDetections,
    required this.exceptionCount,
    required this.exceptionRate,
    required this.affectedLocationCount,
    required this.isCarRelated,
    required this.affectedNodeIds,
    required this.lastExceptionTime,
  });

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'category': category.name,
    'total_detections': totalDetections,
    'exception_count': exceptionCount,
    'exception_rate': exceptionRate,
    'affected_location_count': affectedLocationCount,
    'is_car_related': isCarRelated,
    'affected_node_ids': affectedNodeIds,
    'last_exception_time': lastExceptionTime.toIso8601String(),
  };

  factory CarExceptionAnalysisResponse.fromJson(Map<String, dynamic> json) =>
      CarExceptionAnalysisResponse(
        carId: json['car_id'] ?? 0,
        category: ExceptionCategory.values
            .firstWhere((e) => e.name == json['category'], orElse: () => ExceptionCategory.unknown),
        totalDetections: json['total_detections'] ?? 0,
        exceptionCount: json['exception_count'] ?? 0,
        exceptionRate: (json['exception_rate'] ?? 0.0).toDouble(),
        affectedLocationCount: json['affected_location_count'] ?? 0,
        isCarRelated: json['is_car_related'] ?? false,
        affectedNodeIds: List<int>.from(json['affected_node_ids'] ?? []),
        lastExceptionTime: DateTime.parse(json['last_exception_time'] ?? DateTime.now().toIso8601String()),
      );
}

// ==================== 数据清理相关 ====================

/// 数据清理/更新请求
class DataCleanupRequest {
  final ExceptionCategory category;
  final int? nodeId;
  final PositionData? logicLocation;
  final String? markerCode;
  final DateTime? beforeTime;
  final bool clearAll;

  DataCleanupRequest({
    required this.category,
    this.nodeId,
    this.logicLocation,
    this.markerCode,
    this.beforeTime,
    this.clearAll = false,
  });

  Map<String, dynamic> toJson() => {
    'category': category.name,
    'node_id': nodeId,
    'logic_location': logicLocation?.toJson(),
    'marker_code': markerCode,
    'before_time': beforeTime?.toIso8601String(),
    'clear_all': clearAll,
  };
}

/// 数据清理/更新响应
class DataCleanupResponse {
  final int cleanedCount;
  final bool success;
  final String message;

  DataCleanupResponse({
    required this.cleanedCount,
    required this.success,
    required this.message,
  });

  Map<String, dynamic> toJson() => {
    'cleaned_count': cleanedCount,
    'success': success,
    'message': message,
  };

  factory DataCleanupResponse.fromJson(Map<String, dynamic> json) =>
      DataCleanupResponse(
        cleanedCount: json['cleaned_count'] ?? 0,
        success: json['success'] ?? false,
        message: json['message'] ?? '',
      );
}
