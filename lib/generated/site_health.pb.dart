//
//  Generated code. Do not modify.
//  source: site_health.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $8;
import 'site_health.pbenum.dart';
import 'types.pb.dart' as $7;

export 'site_health.pbenum.dart';

/// 二维码健康信息
class MarkerHealthInfo extends $pb.GeneratedMessage {
  factory MarkerHealthInfo({
    $fixnum.Int64? carId,
    $fixnum.Int64? nodeId,
    $7.PositionData_t? nodeLogicLocation,
    $core.String? exceptionType,
    $core.String? detectedMarkerCode,
    $core.double? decodeSuccessRate,
    $7.NodeDeviationData? deviation,
    MarkerIssueType? issueType,
    HealthStatus? healthStatus,
    $core.String? description,
    $8.Timestamp? timestamp,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (nodeLogicLocation != null) {
      $result.nodeLogicLocation = nodeLogicLocation;
    }
    if (exceptionType != null) {
      $result.exceptionType = exceptionType;
    }
    if (detectedMarkerCode != null) {
      $result.detectedMarkerCode = detectedMarkerCode;
    }
    if (decodeSuccessRate != null) {
      $result.decodeSuccessRate = decodeSuccessRate;
    }
    if (deviation != null) {
      $result.deviation = deviation;
    }
    if (issueType != null) {
      $result.issueType = issueType;
    }
    if (healthStatus != null) {
      $result.healthStatus = healthStatus;
    }
    if (description != null) {
      $result.description = description;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  MarkerHealthInfo._() : super();
  factory MarkerHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MarkerHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MarkerHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$7.PositionData_t>(3, _omitFieldNames ? '' : 'nodeLogicLocation', subBuilder: $7.PositionData_t.create)
    ..aOS(4, _omitFieldNames ? '' : 'exceptionType')
    ..aOS(5, _omitFieldNames ? '' : 'detectedMarkerCode')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'decodeSuccessRate', $pb.PbFieldType.OD)
    ..aOM<$7.NodeDeviationData>(7, _omitFieldNames ? '' : 'deviation', subBuilder: $7.NodeDeviationData.create)
    ..e<MarkerIssueType>(8, _omitFieldNames ? '' : 'issueType', $pb.PbFieldType.OE, defaultOrMaker: MarkerIssueType.MARKER_ISSUE_NONE, valueOf: MarkerIssueType.valueOf, enumValues: MarkerIssueType.values)
    ..e<HealthStatus>(9, _omitFieldNames ? '' : 'healthStatus', $pb.PbFieldType.OE, defaultOrMaker: HealthStatus.HEALTH_STATUS_UNKNOWN, valueOf: HealthStatus.valueOf, enumValues: HealthStatus.values)
    ..aOS(10, _omitFieldNames ? '' : 'description')
    ..aOM<$8.Timestamp>(11, _omitFieldNames ? '' : 'timestamp', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MarkerHealthInfo clone() => MarkerHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MarkerHealthInfo copyWith(void Function(MarkerHealthInfo) updates) => super.copyWith((message) => updates(message as MarkerHealthInfo)) as MarkerHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkerHealthInfo create() => MarkerHealthInfo._();
  MarkerHealthInfo createEmptyInstance() => create();
  static $pb.PbList<MarkerHealthInfo> createRepeated() => $pb.PbList<MarkerHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static MarkerHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MarkerHealthInfo>(create);
  static MarkerHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => clearField(2);

  @$pb.TagNumber(3)
  $7.PositionData_t get nodeLogicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set nodeLogicLocation($7.PositionData_t v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeLogicLocation() => clearField(3);
  @$pb.TagNumber(3)
  $7.PositionData_t ensureNodeLogicLocation() => $_ensure(2);

  /// 出现的异常类型（或历史上期望的二维码码值）。此处从语义上表示“异常类型/原因”，
  /// 保持为 string 以兼容现有客户端；如需严格区分，可在后续 proto 版本中拆分字段。
  @$pb.TagNumber(4)
  $core.String get exceptionType => $_getSZ(3);
  @$pb.TagNumber(4)
  set exceptionType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExceptionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get detectedMarkerCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set detectedMarkerCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetectedMarkerCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetectedMarkerCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get decodeSuccessRate => $_getN(5);
  @$pb.TagNumber(6)
  set decodeSuccessRate($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDecodeSuccessRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDecodeSuccessRate() => clearField(6);

  @$pb.TagNumber(7)
  $7.NodeDeviationData get deviation => $_getN(6);
  @$pb.TagNumber(7)
  set deviation($7.NodeDeviationData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviation() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeviation() => clearField(7);
  @$pb.TagNumber(7)
  $7.NodeDeviationData ensureDeviation() => $_ensure(6);

  @$pb.TagNumber(8)
  MarkerIssueType get issueType => $_getN(7);
  @$pb.TagNumber(8)
  set issueType(MarkerIssueType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasIssueType() => $_has(7);
  @$pb.TagNumber(8)
  void clearIssueType() => clearField(8);

  @$pb.TagNumber(9)
  HealthStatus get healthStatus => $_getN(8);
  @$pb.TagNumber(9)
  set healthStatus(HealthStatus v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasHealthStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearHealthStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get description => $_getSZ(9);
  @$pb.TagNumber(10)
  set description($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDescription() => $_has(9);
  @$pb.TagNumber(10)
  void clearDescription() => clearField(10);

  @$pb.TagNumber(11)
  $8.Timestamp get timestamp => $_getN(10);
  @$pb.TagNumber(11)
  set timestamp($8.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasTimestamp() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimestamp() => clearField(11);
  @$pb.TagNumber(11)
  $8.Timestamp ensureTimestamp() => $_ensure(10);
}

/// 地面健康信息
class GroundHealthInfo extends $pb.GeneratedMessage {
  factory GroundHealthInfo({
    $fixnum.Int64? carId,
    $7.PositionData_t? startNode,
    $7.PositionData_t? endNode,
    $core.double? floorFlatness,
    $core.double? maxDeviation,
    $core.double? averageDeviation,
    GroundIssueType? issueType,
    HealthStatus? healthStatus,
    $core.String? description,
    $8.Timestamp? timestamp,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (startNode != null) {
      $result.startNode = startNode;
    }
    if (endNode != null) {
      $result.endNode = endNode;
    }
    if (floorFlatness != null) {
      $result.floorFlatness = floorFlatness;
    }
    if (maxDeviation != null) {
      $result.maxDeviation = maxDeviation;
    }
    if (averageDeviation != null) {
      $result.averageDeviation = averageDeviation;
    }
    if (issueType != null) {
      $result.issueType = issueType;
    }
    if (healthStatus != null) {
      $result.healthStatus = healthStatus;
    }
    if (description != null) {
      $result.description = description;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    return $result;
  }
  GroundHealthInfo._() : super();
  factory GroundHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroundHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroundHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$7.PositionData_t>(2, _omitFieldNames ? '' : 'startNode', subBuilder: $7.PositionData_t.create)
    ..aOM<$7.PositionData_t>(3, _omitFieldNames ? '' : 'endNode', subBuilder: $7.PositionData_t.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'floorFlatness', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'maxDeviation', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'averageDeviation', $pb.PbFieldType.OD)
    ..e<GroundIssueType>(7, _omitFieldNames ? '' : 'issueType', $pb.PbFieldType.OE, defaultOrMaker: GroundIssueType.GROUND_ISSUE_NONE, valueOf: GroundIssueType.valueOf, enumValues: GroundIssueType.values)
    ..e<HealthStatus>(8, _omitFieldNames ? '' : 'healthStatus', $pb.PbFieldType.OE, defaultOrMaker: HealthStatus.HEALTH_STATUS_UNKNOWN, valueOf: HealthStatus.valueOf, enumValues: HealthStatus.values)
    ..aOS(9, _omitFieldNames ? '' : 'description')
    ..aOM<$8.Timestamp>(10, _omitFieldNames ? '' : 'timestamp', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroundHealthInfo clone() => GroundHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroundHealthInfo copyWith(void Function(GroundHealthInfo) updates) => super.copyWith((message) => updates(message as GroundHealthInfo)) as GroundHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroundHealthInfo create() => GroundHealthInfo._();
  GroundHealthInfo createEmptyInstance() => create();
  static $pb.PbList<GroundHealthInfo> createRepeated() => $pb.PbList<GroundHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static GroundHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroundHealthInfo>(create);
  static GroundHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PositionData_t get startNode => $_getN(1);
  @$pb.TagNumber(2)
  set startNode($7.PositionData_t v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartNode() => clearField(2);
  @$pb.TagNumber(2)
  $7.PositionData_t ensureStartNode() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.PositionData_t get endNode => $_getN(2);
  @$pb.TagNumber(3)
  set endNode($7.PositionData_t v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndNode() => clearField(3);
  @$pb.TagNumber(3)
  $7.PositionData_t ensureEndNode() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get floorFlatness => $_getN(3);
  @$pb.TagNumber(4)
  set floorFlatness($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFloorFlatness() => $_has(3);
  @$pb.TagNumber(4)
  void clearFloorFlatness() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get maxDeviation => $_getN(4);
  @$pb.TagNumber(5)
  set maxDeviation($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxDeviation() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxDeviation() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get averageDeviation => $_getN(5);
  @$pb.TagNumber(6)
  set averageDeviation($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAverageDeviation() => $_has(5);
  @$pb.TagNumber(6)
  void clearAverageDeviation() => clearField(6);

  @$pb.TagNumber(7)
  GroundIssueType get issueType => $_getN(6);
  @$pb.TagNumber(7)
  set issueType(GroundIssueType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasIssueType() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssueType() => clearField(7);

  @$pb.TagNumber(8)
  HealthStatus get healthStatus => $_getN(7);
  @$pb.TagNumber(8)
  set healthStatus(HealthStatus v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasHealthStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearHealthStatus() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(8);
  @$pb.TagNumber(9)
  set description($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearDescription() => clearField(9);

  @$pb.TagNumber(10)
  $8.Timestamp get timestamp => $_getN(9);
  @$pb.TagNumber(10)
  set timestamp($8.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearTimestamp() => clearField(10);
  @$pb.TagNumber(10)
  $8.Timestamp ensureTimestamp() => $_ensure(9);
}

/// 货架健康信息
class GoodsSlotHealthInfo extends $pb.GeneratedMessage {
  factory GoodsSlotHealthInfo({
    $fixnum.Int64? carId,
    $fixnum.Int64? goodsSlotId,
    $fixnum.Int64? expectedHeight,
    $fixnum.Int64? detectedHeight,
    $fixnum.Int64? heightDifference,
    GoodsSlotIssueType? issueType,
    HealthStatus? healthStatus,
    $core.String? description,
    $8.Timestamp? timestamp,
    $fixnum.Int64? goodsSlotDirection,
    $fixnum.Int64? goodsSlotJackHeight,
    $fixnum.Int64? goodsSlotDistanceToStation,
    $fixnum.Int64? goodsSlotPalletFeatureHeight,
    $fixnum.Int64? goodsSlotTypeId,
    $fixnum.Int64? detectedGoodsSlotBeamLineDistance,
    $fixnum.Int64? detectedGoodsSlotBeamLineAngle,
    $fixnum.Int64? detectedGoodsSlotPalletDistance,
    $core.double? detectedGoodsSlotPalletAngle,
    $fixnum.Int64? detectedGoodsSlotUprightDistance,
    $core.double? detectedGoodsSlotAndCarAngle,
    $fixnum.Int64? detectedGoodsSlotPalletEntryHeight,
    $fixnum.Int64? detectedGoodsSlotRawHeight,
    $fixnum.Int64? detectedGoodsSlotBeamLineRawDistance,
    $fixnum.Int64? detectedGoodsSlotPalletRawDistance,
    $fixnum.Int64? detectedGoodsSlotUprightRawDistance,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (goodsSlotId != null) {
      $result.goodsSlotId = goodsSlotId;
    }
    if (expectedHeight != null) {
      $result.expectedHeight = expectedHeight;
    }
    if (detectedHeight != null) {
      $result.detectedHeight = detectedHeight;
    }
    if (heightDifference != null) {
      $result.heightDifference = heightDifference;
    }
    if (issueType != null) {
      $result.issueType = issueType;
    }
    if (healthStatus != null) {
      $result.healthStatus = healthStatus;
    }
    if (description != null) {
      $result.description = description;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (goodsSlotDirection != null) {
      $result.goodsSlotDirection = goodsSlotDirection;
    }
    if (goodsSlotJackHeight != null) {
      $result.goodsSlotJackHeight = goodsSlotJackHeight;
    }
    if (goodsSlotDistanceToStation != null) {
      $result.goodsSlotDistanceToStation = goodsSlotDistanceToStation;
    }
    if (goodsSlotPalletFeatureHeight != null) {
      $result.goodsSlotPalletFeatureHeight = goodsSlotPalletFeatureHeight;
    }
    if (goodsSlotTypeId != null) {
      $result.goodsSlotTypeId = goodsSlotTypeId;
    }
    if (detectedGoodsSlotBeamLineDistance != null) {
      $result.detectedGoodsSlotBeamLineDistance = detectedGoodsSlotBeamLineDistance;
    }
    if (detectedGoodsSlotBeamLineAngle != null) {
      $result.detectedGoodsSlotBeamLineAngle = detectedGoodsSlotBeamLineAngle;
    }
    if (detectedGoodsSlotPalletDistance != null) {
      $result.detectedGoodsSlotPalletDistance = detectedGoodsSlotPalletDistance;
    }
    if (detectedGoodsSlotPalletAngle != null) {
      $result.detectedGoodsSlotPalletAngle = detectedGoodsSlotPalletAngle;
    }
    if (detectedGoodsSlotUprightDistance != null) {
      $result.detectedGoodsSlotUprightDistance = detectedGoodsSlotUprightDistance;
    }
    if (detectedGoodsSlotAndCarAngle != null) {
      $result.detectedGoodsSlotAndCarAngle = detectedGoodsSlotAndCarAngle;
    }
    if (detectedGoodsSlotPalletEntryHeight != null) {
      $result.detectedGoodsSlotPalletEntryHeight = detectedGoodsSlotPalletEntryHeight;
    }
    if (detectedGoodsSlotRawHeight != null) {
      $result.detectedGoodsSlotRawHeight = detectedGoodsSlotRawHeight;
    }
    if (detectedGoodsSlotBeamLineRawDistance != null) {
      $result.detectedGoodsSlotBeamLineRawDistance = detectedGoodsSlotBeamLineRawDistance;
    }
    if (detectedGoodsSlotPalletRawDistance != null) {
      $result.detectedGoodsSlotPalletRawDistance = detectedGoodsSlotPalletRawDistance;
    }
    if (detectedGoodsSlotUprightRawDistance != null) {
      $result.detectedGoodsSlotUprightRawDistance = detectedGoodsSlotUprightRawDistance;
    }
    return $result;
  }
  GoodsSlotHealthInfo._() : super();
  factory GoodsSlotHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsSlotHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsSlotHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'goodsSlotId')
    ..aInt64(3, _omitFieldNames ? '' : 'expectedHeight')
    ..aInt64(4, _omitFieldNames ? '' : 'detectedHeight')
    ..aInt64(5, _omitFieldNames ? '' : 'heightDifference')
    ..e<GoodsSlotIssueType>(6, _omitFieldNames ? '' : 'issueType', $pb.PbFieldType.OE, defaultOrMaker: GoodsSlotIssueType.GOODS_SLOT_ISSUE_NONE, valueOf: GoodsSlotIssueType.valueOf, enumValues: GoodsSlotIssueType.values)
    ..e<HealthStatus>(7, _omitFieldNames ? '' : 'healthStatus', $pb.PbFieldType.OE, defaultOrMaker: HealthStatus.HEALTH_STATUS_UNKNOWN, valueOf: HealthStatus.valueOf, enumValues: HealthStatus.values)
    ..aOS(8, _omitFieldNames ? '' : 'description')
    ..aOM<$8.Timestamp>(9, _omitFieldNames ? '' : 'timestamp', subBuilder: $8.Timestamp.create)
    ..aInt64(10, _omitFieldNames ? '' : 'goodsSlotDirection')
    ..aInt64(11, _omitFieldNames ? '' : 'goodsSlotJackHeight')
    ..aInt64(12, _omitFieldNames ? '' : 'goodsSlotDistanceToStation')
    ..aInt64(13, _omitFieldNames ? '' : 'goodsSlotPalletFeatureHeight')
    ..aInt64(14, _omitFieldNames ? '' : 'goodsSlotTypeId')
    ..aInt64(15, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineDistance')
    ..aInt64(16, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineAngle')
    ..aInt64(17, _omitFieldNames ? '' : 'detectedGoodsSlotPalletDistance')
    ..a<$core.double>(18, _omitFieldNames ? '' : 'detectedGoodsSlotPalletAngle', $pb.PbFieldType.OD)
    ..aInt64(19, _omitFieldNames ? '' : 'detectedGoodsSlotUprightDistance')
    ..a<$core.double>(20, _omitFieldNames ? '' : 'detectedGoodsSlotAndCarAngle', $pb.PbFieldType.OD)
    ..aInt64(21, _omitFieldNames ? '' : 'detectedGoodsSlotPalletEntryHeight')
    ..aInt64(22, _omitFieldNames ? '' : 'detectedGoodsSlotRawHeight')
    ..aInt64(23, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineRawDistance')
    ..aInt64(24, _omitFieldNames ? '' : 'detectedGoodsSlotPalletRawDistance')
    ..aInt64(25, _omitFieldNames ? '' : 'detectedGoodsSlotUprightRawDistance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsSlotHealthInfo clone() => GoodsSlotHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsSlotHealthInfo copyWith(void Function(GoodsSlotHealthInfo) updates) => super.copyWith((message) => updates(message as GoodsSlotHealthInfo)) as GoodsSlotHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlotHealthInfo create() => GoodsSlotHealthInfo._();
  GoodsSlotHealthInfo createEmptyInstance() => create();
  static $pb.PbList<GoodsSlotHealthInfo> createRepeated() => $pb.PbList<GoodsSlotHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static GoodsSlotHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSlotHealthInfo>(create);
  static GoodsSlotHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get goodsSlotId => $_getI64(1);
  @$pb.TagNumber(2)
  set goodsSlotId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGoodsSlotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsSlotId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expectedHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set expectedHeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpectedHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedHeight() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get detectedHeight => $_getI64(3);
  @$pb.TagNumber(4)
  set detectedHeight($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDetectedHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetectedHeight() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get heightDifference => $_getI64(4);
  @$pb.TagNumber(5)
  set heightDifference($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHeightDifference() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeightDifference() => clearField(5);

  @$pb.TagNumber(6)
  GoodsSlotIssueType get issueType => $_getN(5);
  @$pb.TagNumber(6)
  set issueType(GoodsSlotIssueType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasIssueType() => $_has(5);
  @$pb.TagNumber(6)
  void clearIssueType() => clearField(6);

  @$pb.TagNumber(7)
  HealthStatus get healthStatus => $_getN(6);
  @$pb.TagNumber(7)
  set healthStatus(HealthStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasHealthStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearHealthStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => clearField(8);

  @$pb.TagNumber(9)
  $8.Timestamp get timestamp => $_getN(8);
  @$pb.TagNumber(9)
  set timestamp($8.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => clearField(9);
  @$pb.TagNumber(9)
  $8.Timestamp ensureTimestamp() => $_ensure(8);

  /// 保留原有字段以兼容
  @$pb.TagNumber(10)
  $fixnum.Int64 get goodsSlotDirection => $_getI64(9);
  @$pb.TagNumber(10)
  set goodsSlotDirection($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGoodsSlotDirection() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsSlotDirection() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get goodsSlotJackHeight => $_getI64(10);
  @$pb.TagNumber(11)
  set goodsSlotJackHeight($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGoodsSlotJackHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsSlotJackHeight() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get goodsSlotDistanceToStation => $_getI64(11);
  @$pb.TagNumber(12)
  set goodsSlotDistanceToStation($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGoodsSlotDistanceToStation() => $_has(11);
  @$pb.TagNumber(12)
  void clearGoodsSlotDistanceToStation() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get goodsSlotPalletFeatureHeight => $_getI64(12);
  @$pb.TagNumber(13)
  set goodsSlotPalletFeatureHeight($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGoodsSlotPalletFeatureHeight() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsSlotPalletFeatureHeight() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get goodsSlotTypeId => $_getI64(13);
  @$pb.TagNumber(14)
  set goodsSlotTypeId($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGoodsSlotTypeId() => $_has(13);
  @$pb.TagNumber(14)
  void clearGoodsSlotTypeId() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get detectedGoodsSlotBeamLineDistance => $_getI64(14);
  @$pb.TagNumber(15)
  set detectedGoodsSlotBeamLineDistance($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDetectedGoodsSlotBeamLineDistance() => $_has(14);
  @$pb.TagNumber(15)
  void clearDetectedGoodsSlotBeamLineDistance() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get detectedGoodsSlotBeamLineAngle => $_getI64(15);
  @$pb.TagNumber(16)
  set detectedGoodsSlotBeamLineAngle($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasDetectedGoodsSlotBeamLineAngle() => $_has(15);
  @$pb.TagNumber(16)
  void clearDetectedGoodsSlotBeamLineAngle() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get detectedGoodsSlotPalletDistance => $_getI64(16);
  @$pb.TagNumber(17)
  set detectedGoodsSlotPalletDistance($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasDetectedGoodsSlotPalletDistance() => $_has(16);
  @$pb.TagNumber(17)
  void clearDetectedGoodsSlotPalletDistance() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get detectedGoodsSlotPalletAngle => $_getN(17);
  @$pb.TagNumber(18)
  set detectedGoodsSlotPalletAngle($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasDetectedGoodsSlotPalletAngle() => $_has(17);
  @$pb.TagNumber(18)
  void clearDetectedGoodsSlotPalletAngle() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get detectedGoodsSlotUprightDistance => $_getI64(18);
  @$pb.TagNumber(19)
  set detectedGoodsSlotUprightDistance($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasDetectedGoodsSlotUprightDistance() => $_has(18);
  @$pb.TagNumber(19)
  void clearDetectedGoodsSlotUprightDistance() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get detectedGoodsSlotAndCarAngle => $_getN(19);
  @$pb.TagNumber(20)
  set detectedGoodsSlotAndCarAngle($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasDetectedGoodsSlotAndCarAngle() => $_has(19);
  @$pb.TagNumber(20)
  void clearDetectedGoodsSlotAndCarAngle() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get detectedGoodsSlotPalletEntryHeight => $_getI64(20);
  @$pb.TagNumber(21)
  set detectedGoodsSlotPalletEntryHeight($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasDetectedGoodsSlotPalletEntryHeight() => $_has(20);
  @$pb.TagNumber(21)
  void clearDetectedGoodsSlotPalletEntryHeight() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get detectedGoodsSlotRawHeight => $_getI64(21);
  @$pb.TagNumber(22)
  set detectedGoodsSlotRawHeight($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasDetectedGoodsSlotRawHeight() => $_has(21);
  @$pb.TagNumber(22)
  void clearDetectedGoodsSlotRawHeight() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get detectedGoodsSlotBeamLineRawDistance => $_getI64(22);
  @$pb.TagNumber(23)
  set detectedGoodsSlotBeamLineRawDistance($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasDetectedGoodsSlotBeamLineRawDistance() => $_has(22);
  @$pb.TagNumber(23)
  void clearDetectedGoodsSlotBeamLineRawDistance() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get detectedGoodsSlotPalletRawDistance => $_getI64(23);
  @$pb.TagNumber(24)
  set detectedGoodsSlotPalletRawDistance($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasDetectedGoodsSlotPalletRawDistance() => $_has(23);
  @$pb.TagNumber(24)
  void clearDetectedGoodsSlotPalletRawDistance() => clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get detectedGoodsSlotUprightRawDistance => $_getI64(24);
  @$pb.TagNumber(25)
  set detectedGoodsSlotUprightRawDistance($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasDetectedGoodsSlotUprightRawDistance() => $_has(24);
  @$pb.TagNumber(25)
  void clearDetectedGoodsSlotUprightRawDistance() => clearField(25);
}

enum SiteHealthInfo_HealthInfo {
  markerHealth, 
  groundHealth, 
  goodsSlotHealth, 
  notSet
}

/// 场地健康信息（统一上报）
class SiteHealthInfo extends $pb.GeneratedMessage {
  factory SiteHealthInfo({
    MarkerHealthInfo? markerHealth,
    GroundHealthInfo? groundHealth,
    GoodsSlotHealthInfo? goodsSlotHealth,
  }) {
    final $result = create();
    if (markerHealth != null) {
      $result.markerHealth = markerHealth;
    }
    if (groundHealth != null) {
      $result.groundHealth = groundHealth;
    }
    if (goodsSlotHealth != null) {
      $result.goodsSlotHealth = goodsSlotHealth;
    }
    return $result;
  }
  SiteHealthInfo._() : super();
  factory SiteHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SiteHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SiteHealthInfo_HealthInfo> _SiteHealthInfo_HealthInfoByTag = {
    1 : SiteHealthInfo_HealthInfo.markerHealth,
    2 : SiteHealthInfo_HealthInfo.groundHealth,
    3 : SiteHealthInfo_HealthInfo.goodsSlotHealth,
    0 : SiteHealthInfo_HealthInfo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SiteHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<MarkerHealthInfo>(1, _omitFieldNames ? '' : 'markerHealth', subBuilder: MarkerHealthInfo.create)
    ..aOM<GroundHealthInfo>(2, _omitFieldNames ? '' : 'groundHealth', subBuilder: GroundHealthInfo.create)
    ..aOM<GoodsSlotHealthInfo>(3, _omitFieldNames ? '' : 'goodsSlotHealth', subBuilder: GoodsSlotHealthInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SiteHealthInfo clone() => SiteHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SiteHealthInfo copyWith(void Function(SiteHealthInfo) updates) => super.copyWith((message) => updates(message as SiteHealthInfo)) as SiteHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SiteHealthInfo create() => SiteHealthInfo._();
  SiteHealthInfo createEmptyInstance() => create();
  static $pb.PbList<SiteHealthInfo> createRepeated() => $pb.PbList<SiteHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static SiteHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SiteHealthInfo>(create);
  static SiteHealthInfo? _defaultInstance;

  SiteHealthInfo_HealthInfo whichHealthInfo() => _SiteHealthInfo_HealthInfoByTag[$_whichOneof(0)]!;
  void clearHealthInfo() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MarkerHealthInfo get markerHealth => $_getN(0);
  @$pb.TagNumber(1)
  set markerHealth(MarkerHealthInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMarkerHealth() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarkerHealth() => clearField(1);
  @$pb.TagNumber(1)
  MarkerHealthInfo ensureMarkerHealth() => $_ensure(0);

  @$pb.TagNumber(2)
  GroundHealthInfo get groundHealth => $_getN(1);
  @$pb.TagNumber(2)
  set groundHealth(GroundHealthInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroundHealth() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroundHealth() => clearField(2);
  @$pb.TagNumber(2)
  GroundHealthInfo ensureGroundHealth() => $_ensure(1);

  @$pb.TagNumber(3)
  GoodsSlotHealthInfo get goodsSlotHealth => $_getN(2);
  @$pb.TagNumber(3)
  set goodsSlotHealth(GoodsSlotHealthInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsSlotHealth() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsSlotHealth() => clearField(3);
  @$pb.TagNumber(3)
  GoodsSlotHealthInfo ensureGoodsSlotHealth() => $_ensure(2);
}

/// 健康信息查询请求
class HealthInfoQueryRequest extends $pb.GeneratedMessage {
  factory HealthInfoQueryRequest({
    $fixnum.Int64? nodeId,
    $7.PositionData_t? logicLocation,
    $fixnum.Int64? goodsSlotId,
    HealthStatus? minStatus,
    $8.Timestamp? startTime,
    $8.Timestamp? endTime,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (goodsSlotId != null) {
      $result.goodsSlotId = goodsSlotId;
    }
    if (minStatus != null) {
      $result.minStatus = minStatus;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  HealthInfoQueryRequest._() : super();
  factory HealthInfoQueryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthInfoQueryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthInfoQueryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$7.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation', subBuilder: $7.PositionData_t.create)
    ..aInt64(3, _omitFieldNames ? '' : 'goodsSlotId')
    ..e<HealthStatus>(4, _omitFieldNames ? '' : 'minStatus', $pb.PbFieldType.OE, defaultOrMaker: HealthStatus.HEALTH_STATUS_UNKNOWN, valueOf: HealthStatus.valueOf, enumValues: HealthStatus.values)
    ..aOM<$8.Timestamp>(5, _omitFieldNames ? '' : 'startTime', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(6, _omitFieldNames ? '' : 'endTime', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthInfoQueryRequest clone() => HealthInfoQueryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthInfoQueryRequest copyWith(void Function(HealthInfoQueryRequest) updates) => super.copyWith((message) => updates(message as HealthInfoQueryRequest)) as HealthInfoQueryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryRequest create() => HealthInfoQueryRequest._();
  HealthInfoQueryRequest createEmptyInstance() => create();
  static $pb.PbList<HealthInfoQueryRequest> createRepeated() => $pb.PbList<HealthInfoQueryRequest>();
  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthInfoQueryRequest>(create);
  static HealthInfoQueryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($7.PositionData_t v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => clearField(2);
  @$pb.TagNumber(2)
  $7.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get goodsSlotId => $_getI64(2);
  @$pb.TagNumber(3)
  set goodsSlotId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsSlotId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsSlotId() => clearField(3);

  @$pb.TagNumber(4)
  HealthStatus get minStatus => $_getN(3);
  @$pb.TagNumber(4)
  set minStatus(HealthStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinStatus() => clearField(4);

  @$pb.TagNumber(5)
  $8.Timestamp get startTime => $_getN(4);
  @$pb.TagNumber(5)
  set startTime($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTime() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureStartTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $8.Timestamp get endTime => $_getN(5);
  @$pb.TagNumber(6)
  set endTime($8.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTime() => clearField(6);
  @$pb.TagNumber(6)
  $8.Timestamp ensureEndTime() => $_ensure(5);
}

/// 健康信息查询响应
class HealthInfoQueryResponse extends $pb.GeneratedMessage {
  factory HealthInfoQueryResponse({
    $core.Iterable<MarkerHealthInfo>? markerHealths,
    $core.Iterable<GroundHealthInfo>? groundHealths,
    $core.Iterable<GoodsSlotHealthInfo>? goodsSlotHealths,
  }) {
    final $result = create();
    if (markerHealths != null) {
      $result.markerHealths.addAll(markerHealths);
    }
    if (groundHealths != null) {
      $result.groundHealths.addAll(groundHealths);
    }
    if (goodsSlotHealths != null) {
      $result.goodsSlotHealths.addAll(goodsSlotHealths);
    }
    return $result;
  }
  HealthInfoQueryResponse._() : super();
  factory HealthInfoQueryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthInfoQueryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthInfoQueryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..pc<MarkerHealthInfo>(1, _omitFieldNames ? '' : 'markerHealths', $pb.PbFieldType.PM, subBuilder: MarkerHealthInfo.create)
    ..pc<GroundHealthInfo>(2, _omitFieldNames ? '' : 'groundHealths', $pb.PbFieldType.PM, subBuilder: GroundHealthInfo.create)
    ..pc<GoodsSlotHealthInfo>(3, _omitFieldNames ? '' : 'goodsSlotHealths', $pb.PbFieldType.PM, subBuilder: GoodsSlotHealthInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthInfoQueryResponse clone() => HealthInfoQueryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthInfoQueryResponse copyWith(void Function(HealthInfoQueryResponse) updates) => super.copyWith((message) => updates(message as HealthInfoQueryResponse)) as HealthInfoQueryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryResponse create() => HealthInfoQueryResponse._();
  HealthInfoQueryResponse createEmptyInstance() => create();
  static $pb.PbList<HealthInfoQueryResponse> createRepeated() => $pb.PbList<HealthInfoQueryResponse>();
  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthInfoQueryResponse>(create);
  static HealthInfoQueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MarkerHealthInfo> get markerHealths => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<GroundHealthInfo> get groundHealths => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<GoodsSlotHealthInfo> get goodsSlotHealths => $_getList(2);
}

/// 健康统计信息
class HealthStatistics extends $pb.GeneratedMessage {
  factory HealthStatistics({
    $fixnum.Int64? totalNodes,
    $fixnum.Int64? normalNodes,
    $fixnum.Int64? warningNodes,
    $fixnum.Int64? errorNodes,
    $fixnum.Int64? criticalNodes,
    $fixnum.Int64? totalGoodsSlots,
    $fixnum.Int64? normalGoodsSlots,
    $fixnum.Int64? warningGoodsSlots,
    $fixnum.Int64? errorGoodsSlots,
    $core.double? overallHealthScore,
    $core.Iterable<CarExceptionSummary>? perCarExceptionCounts,
    $fixnum.Int64? totalGroundAreas,
    $fixnum.Int64? normalGroundAreas,
    $fixnum.Int64? warningGroundAreas,
    $fixnum.Int64? errorGroundAreas,
    $fixnum.Int64? criticalGroundAreas,
  }) {
    final $result = create();
    if (totalNodes != null) {
      $result.totalNodes = totalNodes;
    }
    if (normalNodes != null) {
      $result.normalNodes = normalNodes;
    }
    if (warningNodes != null) {
      $result.warningNodes = warningNodes;
    }
    if (errorNodes != null) {
      $result.errorNodes = errorNodes;
    }
    if (criticalNodes != null) {
      $result.criticalNodes = criticalNodes;
    }
    if (totalGoodsSlots != null) {
      $result.totalGoodsSlots = totalGoodsSlots;
    }
    if (normalGoodsSlots != null) {
      $result.normalGoodsSlots = normalGoodsSlots;
    }
    if (warningGoodsSlots != null) {
      $result.warningGoodsSlots = warningGoodsSlots;
    }
    if (errorGoodsSlots != null) {
      $result.errorGoodsSlots = errorGoodsSlots;
    }
    if (overallHealthScore != null) {
      $result.overallHealthScore = overallHealthScore;
    }
    if (perCarExceptionCounts != null) {
      $result.perCarExceptionCounts.addAll(perCarExceptionCounts);
    }
    if (totalGroundAreas != null) {
      $result.totalGroundAreas = totalGroundAreas;
    }
    if (normalGroundAreas != null) {
      $result.normalGroundAreas = normalGroundAreas;
    }
    if (warningGroundAreas != null) {
      $result.warningGroundAreas = warningGroundAreas;
    }
    if (errorGroundAreas != null) {
      $result.errorGroundAreas = errorGroundAreas;
    }
    if (criticalGroundAreas != null) {
      $result.criticalGroundAreas = criticalGroundAreas;
    }
    return $result;
  }
  HealthStatistics._() : super();
  factory HealthStatistics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HealthStatistics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HealthStatistics', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'totalNodes')
    ..aInt64(2, _omitFieldNames ? '' : 'normalNodes')
    ..aInt64(3, _omitFieldNames ? '' : 'warningNodes')
    ..aInt64(4, _omitFieldNames ? '' : 'errorNodes')
    ..aInt64(5, _omitFieldNames ? '' : 'criticalNodes')
    ..aInt64(6, _omitFieldNames ? '' : 'totalGoodsSlots')
    ..aInt64(7, _omitFieldNames ? '' : 'normalGoodsSlots')
    ..aInt64(8, _omitFieldNames ? '' : 'warningGoodsSlots')
    ..aInt64(9, _omitFieldNames ? '' : 'errorGoodsSlots')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'overallHealthScore', $pb.PbFieldType.OD)
    ..pc<CarExceptionSummary>(11, _omitFieldNames ? '' : 'perCarExceptionCounts', $pb.PbFieldType.PM, subBuilder: CarExceptionSummary.create)
    ..aInt64(12, _omitFieldNames ? '' : 'totalGroundAreas')
    ..aInt64(13, _omitFieldNames ? '' : 'normalGroundAreas')
    ..aInt64(14, _omitFieldNames ? '' : 'warningGroundAreas')
    ..aInt64(15, _omitFieldNames ? '' : 'errorGroundAreas')
    ..aInt64(16, _omitFieldNames ? '' : 'criticalGroundAreas')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HealthStatistics clone() => HealthStatistics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HealthStatistics copyWith(void Function(HealthStatistics) updates) => super.copyWith((message) => updates(message as HealthStatistics)) as HealthStatistics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthStatistics create() => HealthStatistics._();
  HealthStatistics createEmptyInstance() => create();
  static $pb.PbList<HealthStatistics> createRepeated() => $pb.PbList<HealthStatistics>();
  @$core.pragma('dart2js:noInline')
  static HealthStatistics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HealthStatistics>(create);
  static HealthStatistics? _defaultInstance;

  /// 二维码节点统计
  @$pb.TagNumber(1)
  $fixnum.Int64 get totalNodes => $_getI64(0);
  @$pb.TagNumber(1)
  set totalNodes($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalNodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalNodes() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get normalNodes => $_getI64(1);
  @$pb.TagNumber(2)
  set normalNodes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNormalNodes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNormalNodes() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get warningNodes => $_getI64(2);
  @$pb.TagNumber(3)
  set warningNodes($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWarningNodes() => $_has(2);
  @$pb.TagNumber(3)
  void clearWarningNodes() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get errorNodes => $_getI64(3);
  @$pb.TagNumber(4)
  set errorNodes($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasErrorNodes() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrorNodes() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get criticalNodes => $_getI64(4);
  @$pb.TagNumber(5)
  set criticalNodes($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCriticalNodes() => $_has(4);
  @$pb.TagNumber(5)
  void clearCriticalNodes() => clearField(5);

  /// 货架统计
  @$pb.TagNumber(6)
  $fixnum.Int64 get totalGoodsSlots => $_getI64(5);
  @$pb.TagNumber(6)
  set totalGoodsSlots($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalGoodsSlots() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalGoodsSlots() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get normalGoodsSlots => $_getI64(6);
  @$pb.TagNumber(7)
  set normalGoodsSlots($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNormalGoodsSlots() => $_has(6);
  @$pb.TagNumber(7)
  void clearNormalGoodsSlots() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get warningGoodsSlots => $_getI64(7);
  @$pb.TagNumber(8)
  set warningGoodsSlots($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWarningGoodsSlots() => $_has(7);
  @$pb.TagNumber(8)
  void clearWarningGoodsSlots() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get errorGoodsSlots => $_getI64(8);
  @$pb.TagNumber(9)
  set errorGoodsSlots($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasErrorGoodsSlots() => $_has(8);
  @$pb.TagNumber(9)
  void clearErrorGoodsSlots() => clearField(9);

  /// 综合健康分数
  @$pb.TagNumber(10)
  $core.double get overallHealthScore => $_getN(9);
  @$pb.TagNumber(10)
  set overallHealthScore($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasOverallHealthScore() => $_has(9);
  @$pb.TagNumber(10)
  void clearOverallHealthScore() => clearField(10);

  /// 每台车当前的异常计数列表（参考顶层消息 CarExceptionSummary）
  @$pb.TagNumber(11)
  $core.List<CarExceptionSummary> get perCarExceptionCounts => $_getList(10);

  /// 地面区域统计
  @$pb.TagNumber(12)
  $fixnum.Int64 get totalGroundAreas => $_getI64(11);
  @$pb.TagNumber(12)
  set totalGroundAreas($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalGroundAreas() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalGroundAreas() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get normalGroundAreas => $_getI64(12);
  @$pb.TagNumber(13)
  set normalGroundAreas($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasNormalGroundAreas() => $_has(12);
  @$pb.TagNumber(13)
  void clearNormalGroundAreas() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get warningGroundAreas => $_getI64(13);
  @$pb.TagNumber(14)
  set warningGroundAreas($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasWarningGroundAreas() => $_has(13);
  @$pb.TagNumber(14)
  void clearWarningGroundAreas() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get errorGroundAreas => $_getI64(14);
  @$pb.TagNumber(15)
  set errorGroundAreas($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasErrorGroundAreas() => $_has(14);
  @$pb.TagNumber(15)
  void clearErrorGroundAreas() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get criticalGroundAreas => $_getI64(15);
  @$pb.TagNumber(16)
  set criticalGroundAreas($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCriticalGroundAreas() => $_has(15);
  @$pb.TagNumber(16)
  void clearCriticalGroundAreas() => clearField(16);
}

/// 每台车的异常计数摘要
class CarExceptionSummary extends $pb.GeneratedMessage {
  factory CarExceptionSummary({
    $fixnum.Int64? carId,
    $fixnum.Int64? exceptionCount,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (exceptionCount != null) {
      $result.exceptionCount = exceptionCount;
    }
    return $result;
  }
  CarExceptionSummary._() : super();
  factory CarExceptionSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarExceptionSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarExceptionSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'exceptionCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarExceptionSummary clone() => CarExceptionSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarExceptionSummary copyWith(void Function(CarExceptionSummary) updates) => super.copyWith((message) => updates(message as CarExceptionSummary)) as CarExceptionSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionSummary create() => CarExceptionSummary._();
  CarExceptionSummary createEmptyInstance() => create();
  static $pb.PbList<CarExceptionSummary> createRepeated() => $pb.PbList<CarExceptionSummary>();
  @$core.pragma('dart2js:noInline')
  static CarExceptionSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarExceptionSummary>(create);
  static CarExceptionSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get exceptionCount => $_getI64(1);
  @$pb.TagNumber(2)
  set exceptionCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExceptionCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearExceptionCount() => clearField(2);
}

/// 位置异常概率分析请求
class LocationExceptionAnalysisRequest extends $pb.GeneratedMessage {
  factory LocationExceptionAnalysisRequest({
    $fixnum.Int64? nodeId,
    $7.PositionData_t? logicLocation,
    ExceptionCategory? category,
    $8.Timestamp? startTime,
    $8.Timestamp? endTime,
    $core.String? markerCode,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (category != null) {
      $result.category = category;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    return $result;
  }
  LocationExceptionAnalysisRequest._() : super();
  factory LocationExceptionAnalysisRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationExceptionAnalysisRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationExceptionAnalysisRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$7.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation', subBuilder: $7.PositionData_t.create)
    ..e<ExceptionCategory>(3, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExceptionCategory.EXCEPTION_CATEGORY_UNKNOWN, valueOf: ExceptionCategory.valueOf, enumValues: ExceptionCategory.values)
    ..aOM<$8.Timestamp>(4, _omitFieldNames ? '' : 'startTime', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(5, _omitFieldNames ? '' : 'endTime', subBuilder: $8.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationExceptionAnalysisRequest clone() => LocationExceptionAnalysisRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationExceptionAnalysisRequest copyWith(void Function(LocationExceptionAnalysisRequest) updates) => super.copyWith((message) => updates(message as LocationExceptionAnalysisRequest)) as LocationExceptionAnalysisRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisRequest create() => LocationExceptionAnalysisRequest._();
  LocationExceptionAnalysisRequest createEmptyInstance() => create();
  static $pb.PbList<LocationExceptionAnalysisRequest> createRepeated() => $pb.PbList<LocationExceptionAnalysisRequest>();
  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationExceptionAnalysisRequest>(create);
  static LocationExceptionAnalysisRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($7.PositionData_t v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => clearField(2);
  @$pb.TagNumber(2)
  $7.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  ExceptionCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ExceptionCategory v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => clearField(3);

  @$pb.TagNumber(4)
  $8.Timestamp get startTime => $_getN(3);
  @$pb.TagNumber(4)
  set startTime($8.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => clearField(4);
  @$pb.TagNumber(4)
  $8.Timestamp ensureStartTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $8.Timestamp get endTime => $_getN(4);
  @$pb.TagNumber(5)
  set endTime($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureEndTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get markerCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set markerCode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMarkerCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearMarkerCode() => clearField(6);
}

/// 位置异常概率分析响应
class LocationExceptionAnalysisResponse extends $pb.GeneratedMessage {
  factory LocationExceptionAnalysisResponse({
    $fixnum.Int64? nodeId,
    ExceptionCategory? category,
    $fixnum.Int64? totalDetections,
    $fixnum.Int64? exceptionCount,
    $core.double? exceptionRate,
    $fixnum.Int64? uniqueCarCount,
    $fixnum.Int64? totalCarCount,
    $core.bool? isLocationRelated,
    $core.Iterable<$fixnum.Int64>? affectedCarIds,
    $8.Timestamp? lastExceptionTime,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (category != null) {
      $result.category = category;
    }
    if (totalDetections != null) {
      $result.totalDetections = totalDetections;
    }
    if (exceptionCount != null) {
      $result.exceptionCount = exceptionCount;
    }
    if (exceptionRate != null) {
      $result.exceptionRate = exceptionRate;
    }
    if (uniqueCarCount != null) {
      $result.uniqueCarCount = uniqueCarCount;
    }
    if (totalCarCount != null) {
      $result.totalCarCount = totalCarCount;
    }
    if (isLocationRelated != null) {
      $result.isLocationRelated = isLocationRelated;
    }
    if (affectedCarIds != null) {
      $result.affectedCarIds.addAll(affectedCarIds);
    }
    if (lastExceptionTime != null) {
      $result.lastExceptionTime = lastExceptionTime;
    }
    return $result;
  }
  LocationExceptionAnalysisResponse._() : super();
  factory LocationExceptionAnalysisResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocationExceptionAnalysisResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocationExceptionAnalysisResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..e<ExceptionCategory>(2, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExceptionCategory.EXCEPTION_CATEGORY_UNKNOWN, valueOf: ExceptionCategory.valueOf, enumValues: ExceptionCategory.values)
    ..aInt64(3, _omitFieldNames ? '' : 'totalDetections')
    ..aInt64(4, _omitFieldNames ? '' : 'exceptionCount')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'exceptionRate', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'uniqueCarCount')
    ..aInt64(7, _omitFieldNames ? '' : 'totalCarCount')
    ..aOB(8, _omitFieldNames ? '' : 'isLocationRelated')
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'affectedCarIds', $pb.PbFieldType.K6)
    ..aOM<$8.Timestamp>(10, _omitFieldNames ? '' : 'lastExceptionTime', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocationExceptionAnalysisResponse clone() => LocationExceptionAnalysisResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocationExceptionAnalysisResponse copyWith(void Function(LocationExceptionAnalysisResponse) updates) => super.copyWith((message) => updates(message as LocationExceptionAnalysisResponse)) as LocationExceptionAnalysisResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisResponse create() => LocationExceptionAnalysisResponse._();
  LocationExceptionAnalysisResponse createEmptyInstance() => create();
  static $pb.PbList<LocationExceptionAnalysisResponse> createRepeated() => $pb.PbList<LocationExceptionAnalysisResponse>();
  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocationExceptionAnalysisResponse>(create);
  static LocationExceptionAnalysisResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalDetections => $_getI64(2);
  @$pb.TagNumber(3)
  set totalDetections($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalDetections() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalDetections() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exceptionCount => $_getI64(3);
  @$pb.TagNumber(4)
  set exceptionCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExceptionCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get exceptionRate => $_getN(4);
  @$pb.TagNumber(5)
  set exceptionRate($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExceptionRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExceptionRate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get uniqueCarCount => $_getI64(5);
  @$pb.TagNumber(6)
  set uniqueCarCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUniqueCarCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearUniqueCarCount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get totalCarCount => $_getI64(6);
  @$pb.TagNumber(7)
  set totalCarCount($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalCarCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalCarCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isLocationRelated => $_getBF(7);
  @$pb.TagNumber(8)
  set isLocationRelated($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsLocationRelated() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsLocationRelated() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get affectedCarIds => $_getList(8);

  @$pb.TagNumber(10)
  $8.Timestamp get lastExceptionTime => $_getN(9);
  @$pb.TagNumber(10)
  set lastExceptionTime($8.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLastExceptionTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastExceptionTime() => clearField(10);
  @$pb.TagNumber(10)
  $8.Timestamp ensureLastExceptionTime() => $_ensure(9);
}

/// 单车异常概率分析请求
class CarExceptionAnalysisRequest extends $pb.GeneratedMessage {
  factory CarExceptionAnalysisRequest({
    $fixnum.Int64? carId,
    ExceptionCategory? category,
    MarkerIssueType? markerIssueType,
    GroundIssueType? groundIssueType,
    GoodsSlotIssueType? goodsSlotIssueType,
    $8.Timestamp? startTime,
    $8.Timestamp? endTime,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (category != null) {
      $result.category = category;
    }
    if (markerIssueType != null) {
      $result.markerIssueType = markerIssueType;
    }
    if (groundIssueType != null) {
      $result.groundIssueType = groundIssueType;
    }
    if (goodsSlotIssueType != null) {
      $result.goodsSlotIssueType = goodsSlotIssueType;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    if (endTime != null) {
      $result.endTime = endTime;
    }
    return $result;
  }
  CarExceptionAnalysisRequest._() : super();
  factory CarExceptionAnalysisRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarExceptionAnalysisRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarExceptionAnalysisRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..e<ExceptionCategory>(2, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExceptionCategory.EXCEPTION_CATEGORY_UNKNOWN, valueOf: ExceptionCategory.valueOf, enumValues: ExceptionCategory.values)
    ..e<MarkerIssueType>(3, _omitFieldNames ? '' : 'markerIssueType', $pb.PbFieldType.OE, defaultOrMaker: MarkerIssueType.MARKER_ISSUE_NONE, valueOf: MarkerIssueType.valueOf, enumValues: MarkerIssueType.values)
    ..e<GroundIssueType>(4, _omitFieldNames ? '' : 'groundIssueType', $pb.PbFieldType.OE, defaultOrMaker: GroundIssueType.GROUND_ISSUE_NONE, valueOf: GroundIssueType.valueOf, enumValues: GroundIssueType.values)
    ..e<GoodsSlotIssueType>(5, _omitFieldNames ? '' : 'goodsSlotIssueType', $pb.PbFieldType.OE, defaultOrMaker: GoodsSlotIssueType.GOODS_SLOT_ISSUE_NONE, valueOf: GoodsSlotIssueType.valueOf, enumValues: GoodsSlotIssueType.values)
    ..aOM<$8.Timestamp>(6, _omitFieldNames ? '' : 'startTime', subBuilder: $8.Timestamp.create)
    ..aOM<$8.Timestamp>(7, _omitFieldNames ? '' : 'endTime', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarExceptionAnalysisRequest clone() => CarExceptionAnalysisRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarExceptionAnalysisRequest copyWith(void Function(CarExceptionAnalysisRequest) updates) => super.copyWith((message) => updates(message as CarExceptionAnalysisRequest)) as CarExceptionAnalysisRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisRequest create() => CarExceptionAnalysisRequest._();
  CarExceptionAnalysisRequest createEmptyInstance() => create();
  static $pb.PbList<CarExceptionAnalysisRequest> createRepeated() => $pb.PbList<CarExceptionAnalysisRequest>();
  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarExceptionAnalysisRequest>(create);
  static CarExceptionAnalysisRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  MarkerIssueType get markerIssueType => $_getN(2);
  @$pb.TagNumber(3)
  set markerIssueType(MarkerIssueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarkerIssueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerIssueType() => clearField(3);

  @$pb.TagNumber(4)
  GroundIssueType get groundIssueType => $_getN(3);
  @$pb.TagNumber(4)
  set groundIssueType(GroundIssueType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGroundIssueType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroundIssueType() => clearField(4);

  @$pb.TagNumber(5)
  GoodsSlotIssueType get goodsSlotIssueType => $_getN(4);
  @$pb.TagNumber(5)
  set goodsSlotIssueType(GoodsSlotIssueType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoodsSlotIssueType() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsSlotIssueType() => clearField(5);

  @$pb.TagNumber(6)
  $8.Timestamp get startTime => $_getN(5);
  @$pb.TagNumber(6)
  set startTime($8.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasStartTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartTime() => clearField(6);
  @$pb.TagNumber(6)
  $8.Timestamp ensureStartTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $8.Timestamp get endTime => $_getN(6);
  @$pb.TagNumber(7)
  set endTime($8.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndTime() => clearField(7);
  @$pb.TagNumber(7)
  $8.Timestamp ensureEndTime() => $_ensure(6);
}

/// 单车异常概率分析响应
class CarExceptionAnalysisResponse extends $pb.GeneratedMessage {
  factory CarExceptionAnalysisResponse({
    $fixnum.Int64? carId,
    ExceptionCategory? category,
    $fixnum.Int64? totalDetections,
    $fixnum.Int64? exceptionCount,
    $core.double? exceptionRate,
    $fixnum.Int64? affectedLocationCount,
    $core.bool? isCarRelated,
    $core.Iterable<$fixnum.Int64>? affectedNodeIds,
    $8.Timestamp? lastExceptionTime,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (category != null) {
      $result.category = category;
    }
    if (totalDetections != null) {
      $result.totalDetections = totalDetections;
    }
    if (exceptionCount != null) {
      $result.exceptionCount = exceptionCount;
    }
    if (exceptionRate != null) {
      $result.exceptionRate = exceptionRate;
    }
    if (affectedLocationCount != null) {
      $result.affectedLocationCount = affectedLocationCount;
    }
    if (isCarRelated != null) {
      $result.isCarRelated = isCarRelated;
    }
    if (affectedNodeIds != null) {
      $result.affectedNodeIds.addAll(affectedNodeIds);
    }
    if (lastExceptionTime != null) {
      $result.lastExceptionTime = lastExceptionTime;
    }
    return $result;
  }
  CarExceptionAnalysisResponse._() : super();
  factory CarExceptionAnalysisResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarExceptionAnalysisResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarExceptionAnalysisResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..e<ExceptionCategory>(2, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExceptionCategory.EXCEPTION_CATEGORY_UNKNOWN, valueOf: ExceptionCategory.valueOf, enumValues: ExceptionCategory.values)
    ..aInt64(3, _omitFieldNames ? '' : 'totalDetections')
    ..aInt64(4, _omitFieldNames ? '' : 'exceptionCount')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'exceptionRate', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'affectedLocationCount')
    ..aOB(7, _omitFieldNames ? '' : 'isCarRelated')
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'affectedNodeIds', $pb.PbFieldType.K6)
    ..aOM<$8.Timestamp>(9, _omitFieldNames ? '' : 'lastExceptionTime', subBuilder: $8.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarExceptionAnalysisResponse clone() => CarExceptionAnalysisResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarExceptionAnalysisResponse copyWith(void Function(CarExceptionAnalysisResponse) updates) => super.copyWith((message) => updates(message as CarExceptionAnalysisResponse)) as CarExceptionAnalysisResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisResponse create() => CarExceptionAnalysisResponse._();
  CarExceptionAnalysisResponse createEmptyInstance() => create();
  static $pb.PbList<CarExceptionAnalysisResponse> createRepeated() => $pb.PbList<CarExceptionAnalysisResponse>();
  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarExceptionAnalysisResponse>(create);
  static CarExceptionAnalysisResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalDetections => $_getI64(2);
  @$pb.TagNumber(3)
  set totalDetections($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalDetections() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalDetections() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exceptionCount => $_getI64(3);
  @$pb.TagNumber(4)
  set exceptionCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExceptionCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionCount() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get exceptionRate => $_getN(4);
  @$pb.TagNumber(5)
  set exceptionRate($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExceptionRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExceptionRate() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get affectedLocationCount => $_getI64(5);
  @$pb.TagNumber(6)
  set affectedLocationCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAffectedLocationCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAffectedLocationCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isCarRelated => $_getBF(6);
  @$pb.TagNumber(7)
  set isCarRelated($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsCarRelated() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsCarRelated() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get affectedNodeIds => $_getList(7);

  @$pb.TagNumber(9)
  $8.Timestamp get lastExceptionTime => $_getN(8);
  @$pb.TagNumber(9)
  set lastExceptionTime($8.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastExceptionTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastExceptionTime() => clearField(9);
  @$pb.TagNumber(9)
  $8.Timestamp ensureLastExceptionTime() => $_ensure(8);
}

/// 数据清理/更新请求
class DataCleanupRequest extends $pb.GeneratedMessage {
  factory DataCleanupRequest({
    ExceptionCategory? category,
    $fixnum.Int64? nodeId,
    $7.PositionData_t? logicLocation,
    $core.String? markerCode,
    $8.Timestamp? beforeTime,
    $core.bool? clearAll,
  }) {
    final $result = create();
    if (category != null) {
      $result.category = category;
    }
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    if (beforeTime != null) {
      $result.beforeTime = beforeTime;
    }
    if (clearAll != null) {
      $result.clearAll = clearAll;
    }
    return $result;
  }
  DataCleanupRequest._() : super();
  factory DataCleanupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataCleanupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataCleanupRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..e<ExceptionCategory>(1, _omitFieldNames ? '' : 'category', $pb.PbFieldType.OE, defaultOrMaker: ExceptionCategory.EXCEPTION_CATEGORY_UNKNOWN, valueOf: ExceptionCategory.valueOf, enumValues: ExceptionCategory.values)
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$7.PositionData_t>(3, _omitFieldNames ? '' : 'logicLocation', subBuilder: $7.PositionData_t.create)
    ..aOS(4, _omitFieldNames ? '' : 'markerCode')
    ..aOM<$8.Timestamp>(5, _omitFieldNames ? '' : 'beforeTime', subBuilder: $8.Timestamp.create)
    ..aOB(6, _omitFieldNames ? '' : 'clearAll')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataCleanupRequest clone() => DataCleanupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataCleanupRequest copyWith(void Function(DataCleanupRequest) updates) => super.copyWith((message) => updates(message as DataCleanupRequest)) as DataCleanupRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataCleanupRequest create() => DataCleanupRequest._();
  DataCleanupRequest createEmptyInstance() => create();
  static $pb.PbList<DataCleanupRequest> createRepeated() => $pb.PbList<DataCleanupRequest>();
  @$core.pragma('dart2js:noInline')
  static DataCleanupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataCleanupRequest>(create);
  static DataCleanupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ExceptionCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ExceptionCategory v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => clearField(2);

  @$pb.TagNumber(3)
  $7.PositionData_t get logicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set logicLocation($7.PositionData_t v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogicLocation() => clearField(3);
  @$pb.TagNumber(3)
  $7.PositionData_t ensureLogicLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get markerCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set markerCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarkerCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarkerCode() => clearField(4);

  @$pb.TagNumber(5)
  $8.Timestamp get beforeTime => $_getN(4);
  @$pb.TagNumber(5)
  set beforeTime($8.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBeforeTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearBeforeTime() => clearField(5);
  @$pb.TagNumber(5)
  $8.Timestamp ensureBeforeTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get clearAll => $_getBF(5);
  @$pb.TagNumber(6)
  set clearAll($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasClearAll() => $_has(5);
  @$pb.TagNumber(6)
  void clearClearAll() => clearField(6);
}

/// 数据清理/更新响应
class DataCleanupResponse extends $pb.GeneratedMessage {
  factory DataCleanupResponse({
    $fixnum.Int64? cleanedCount,
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (cleanedCount != null) {
      $result.cleanedCount = cleanedCount;
    }
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  DataCleanupResponse._() : super();
  factory DataCleanupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataCleanupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataCleanupResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'cleanedCount')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataCleanupResponse clone() => DataCleanupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataCleanupResponse copyWith(void Function(DataCleanupResponse) updates) => super.copyWith((message) => updates(message as DataCleanupResponse)) as DataCleanupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataCleanupResponse create() => DataCleanupResponse._();
  DataCleanupResponse createEmptyInstance() => create();
  static $pb.PbList<DataCleanupResponse> createRepeated() => $pb.PbList<DataCleanupResponse>();
  @$core.pragma('dart2js:noInline')
  static DataCleanupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataCleanupResponse>(create);
  static DataCleanupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cleanedCount => $_getI64(0);
  @$pb.TagNumber(1)
  set cleanedCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCleanedCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCleanedCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

/// 查询车辆在某个位置的统计请求
class CarLocationStatsRequest extends $pb.GeneratedMessage {
  factory CarLocationStatsRequest({
    $fixnum.Int64? carId,
    $7.PositionData_t? logicLocation,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    return $result;
  }
  CarLocationStatsRequest._() : super();
  factory CarLocationStatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarLocationStatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarLocationStatsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$7.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation', subBuilder: $7.PositionData_t.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarLocationStatsRequest clone() => CarLocationStatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarLocationStatsRequest copyWith(void Function(CarLocationStatsRequest) updates) => super.copyWith((message) => updates(message as CarLocationStatsRequest)) as CarLocationStatsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarLocationStatsRequest create() => CarLocationStatsRequest._();
  CarLocationStatsRequest createEmptyInstance() => create();
  static $pb.PbList<CarLocationStatsRequest> createRepeated() => $pb.PbList<CarLocationStatsRequest>();
  @$core.pragma('dart2js:noInline')
  static CarLocationStatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarLocationStatsRequest>(create);
  static CarLocationStatsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($7.PositionData_t v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => clearField(2);
  @$pb.TagNumber(2)
  $7.PositionData_t ensureLogicLocation() => $_ensure(1);
}

/// 车辆位置统计响应
class CarLocationStatsResponse extends $pb.GeneratedMessage {
  factory CarLocationStatsResponse({
    $fixnum.Int64? carId,
    $7.PositionData_t? logicLocation,
    $fixnum.Int64? totalCount,
    $fixnum.Int64? normalCount,
    $fixnum.Int64? warningCount,
    $fixnum.Int64? errorCount,
    $fixnum.Int64? criticalCount,
    $core.double? normalRate,
    $core.double? warningRate,
    $core.double? errorRate,
    $core.double? criticalRate,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    if (normalCount != null) {
      $result.normalCount = normalCount;
    }
    if (warningCount != null) {
      $result.warningCount = warningCount;
    }
    if (errorCount != null) {
      $result.errorCount = errorCount;
    }
    if (criticalCount != null) {
      $result.criticalCount = criticalCount;
    }
    if (normalRate != null) {
      $result.normalRate = normalRate;
    }
    if (warningRate != null) {
      $result.warningRate = warningRate;
    }
    if (errorRate != null) {
      $result.errorRate = errorRate;
    }
    if (criticalRate != null) {
      $result.criticalRate = criticalRate;
    }
    return $result;
  }
  CarLocationStatsResponse._() : super();
  factory CarLocationStatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarLocationStatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarLocationStatsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$7.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation', subBuilder: $7.PositionData_t.create)
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount')
    ..aInt64(4, _omitFieldNames ? '' : 'normalCount')
    ..aInt64(5, _omitFieldNames ? '' : 'warningCount')
    ..aInt64(6, _omitFieldNames ? '' : 'errorCount')
    ..aInt64(7, _omitFieldNames ? '' : 'criticalCount')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'normalRate', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'warningRate', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'errorRate', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'criticalRate', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarLocationStatsResponse clone() => CarLocationStatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarLocationStatsResponse copyWith(void Function(CarLocationStatsResponse) updates) => super.copyWith((message) => updates(message as CarLocationStatsResponse)) as CarLocationStatsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarLocationStatsResponse create() => CarLocationStatsResponse._();
  CarLocationStatsResponse createEmptyInstance() => create();
  static $pb.PbList<CarLocationStatsResponse> createRepeated() => $pb.PbList<CarLocationStatsResponse>();
  @$core.pragma('dart2js:noInline')
  static CarLocationStatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarLocationStatsResponse>(create);
  static CarLocationStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => clearField(1);

  @$pb.TagNumber(2)
  $7.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($7.PositionData_t v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => clearField(2);
  @$pb.TagNumber(2)
  $7.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get normalCount => $_getI64(3);
  @$pb.TagNumber(4)
  set normalCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNormalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearNormalCount() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get warningCount => $_getI64(4);
  @$pb.TagNumber(5)
  set warningCount($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWarningCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearWarningCount() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get errorCount => $_getI64(5);
  @$pb.TagNumber(6)
  set errorCount($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasErrorCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorCount() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get criticalCount => $_getI64(6);
  @$pb.TagNumber(7)
  set criticalCount($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCriticalCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCriticalCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get normalRate => $_getN(7);
  @$pb.TagNumber(8)
  set normalRate($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNormalRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearNormalRate() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get warningRate => $_getN(8);
  @$pb.TagNumber(9)
  set warningRate($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWarningRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearWarningRate() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get errorRate => $_getN(9);
  @$pb.TagNumber(10)
  set errorRate($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasErrorRate() => $_has(9);
  @$pb.TagNumber(10)
  void clearErrorRate() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get criticalRate => $_getN(10);
  @$pb.TagNumber(11)
  set criticalRate($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCriticalRate() => $_has(10);
  @$pb.TagNumber(11)
  void clearCriticalRate() => clearField(11);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
