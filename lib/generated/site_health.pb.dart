// This is a generated file - do not edit.
//
// Generated from site_health.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $3;

import 'site_health.pbenum.dart';
import 'types.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'site_health.pbenum.dart';

/// 二维码健康信息
class MarkerHealthInfo extends $pb.GeneratedMessage {
  factory MarkerHealthInfo({
    $fixnum.Int64? carId,
    $fixnum.Int64? nodeId,
    $2.PositionData_t? nodeLogicLocation,
    $core.String? exceptionType,
    $core.String? detectedMarkerCode,
    $core.double? decodeSuccessRate,
    $2.NodeDeviationData? deviation,
    MarkerIssueType? issueType,
    HealthStatus? healthStatus,
    $core.String? description,
    $3.Timestamp? timestamp,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (nodeId != null) result.nodeId = nodeId;
    if (nodeLogicLocation != null) result.nodeLogicLocation = nodeLogicLocation;
    if (exceptionType != null) result.exceptionType = exceptionType;
    if (detectedMarkerCode != null)
      result.detectedMarkerCode = detectedMarkerCode;
    if (decodeSuccessRate != null) result.decodeSuccessRate = decodeSuccessRate;
    if (deviation != null) result.deviation = deviation;
    if (issueType != null) result.issueType = issueType;
    if (healthStatus != null) result.healthStatus = healthStatus;
    if (description != null) result.description = description;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  MarkerHealthInfo._();

  factory MarkerHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkerHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkerHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$2.PositionData_t>(3, _omitFieldNames ? '' : 'nodeLogicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aOS(4, _omitFieldNames ? '' : 'exceptionType')
    ..aOS(5, _omitFieldNames ? '' : 'detectedMarkerCode')
    ..aD(6, _omitFieldNames ? '' : 'decodeSuccessRate')
    ..aOM<$2.NodeDeviationData>(7, _omitFieldNames ? '' : 'deviation',
        subBuilder: $2.NodeDeviationData.create)
    ..aE<MarkerIssueType>(8, _omitFieldNames ? '' : 'issueType',
        enumValues: MarkerIssueType.values)
    ..aE<HealthStatus>(9, _omitFieldNames ? '' : 'healthStatus',
        enumValues: HealthStatus.values)
    ..aOS(10, _omitFieldNames ? '' : 'description')
    ..aOM<$3.Timestamp>(11, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkerHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkerHealthInfo copyWith(void Function(MarkerHealthInfo) updates) =>
      super.copyWith((message) => updates(message as MarkerHealthInfo))
          as MarkerHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkerHealthInfo create() => MarkerHealthInfo._();
  @$core.override
  MarkerHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarkerHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkerHealthInfo>(create);
  static MarkerHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.PositionData_t get nodeLogicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set nodeLogicLocation($2.PositionData_t value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasNodeLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeLogicLocation() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.PositionData_t ensureNodeLogicLocation() => $_ensure(2);

  /// 出现的异常类型（或历史上期望的二维码码值）。此处从语义上表示“异常类型/原因”，
  /// 保持为 string 以兼容现有客户端；如需严格区分，可在后续 proto 版本中拆分字段。
  @$pb.TagNumber(4)
  $core.String get exceptionType => $_getSZ(3);
  @$pb.TagNumber(4)
  set exceptionType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExceptionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get detectedMarkerCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set detectedMarkerCode($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDetectedMarkerCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetectedMarkerCode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get decodeSuccessRate => $_getN(5);
  @$pb.TagNumber(6)
  set decodeSuccessRate($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDecodeSuccessRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDecodeSuccessRate() => $_clearField(6);

  @$pb.TagNumber(7)
  $2.NodeDeviationData get deviation => $_getN(6);
  @$pb.TagNumber(7)
  set deviation($2.NodeDeviationData value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDeviation() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeviation() => $_clearField(7);
  @$pb.TagNumber(7)
  $2.NodeDeviationData ensureDeviation() => $_ensure(6);

  @$pb.TagNumber(8)
  MarkerIssueType get issueType => $_getN(7);
  @$pb.TagNumber(8)
  set issueType(MarkerIssueType value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasIssueType() => $_has(7);
  @$pb.TagNumber(8)
  void clearIssueType() => $_clearField(8);

  @$pb.TagNumber(9)
  HealthStatus get healthStatus => $_getN(8);
  @$pb.TagNumber(9)
  set healthStatus(HealthStatus value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasHealthStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearHealthStatus() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get description => $_getSZ(9);
  @$pb.TagNumber(10)
  set description($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDescription() => $_has(9);
  @$pb.TagNumber(10)
  void clearDescription() => $_clearField(10);

  @$pb.TagNumber(11)
  $3.Timestamp get timestamp => $_getN(10);
  @$pb.TagNumber(11)
  set timestamp($3.Timestamp value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasTimestamp() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimestamp() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.Timestamp ensureTimestamp() => $_ensure(10);
}

/// 地面健康信息
class GroundHealthInfo extends $pb.GeneratedMessage {
  factory GroundHealthInfo({
    $fixnum.Int64? carId,
    $2.PositionData_t? startNode,
    $2.PositionData_t? endNode,
    $core.double? floorFlatness,
    $core.double? maxDeviation,
    $core.double? averageDeviation,
    GroundIssueType? issueType,
    HealthStatus? healthStatus,
    $core.String? description,
    $3.Timestamp? timestamp,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (startNode != null) result.startNode = startNode;
    if (endNode != null) result.endNode = endNode;
    if (floorFlatness != null) result.floorFlatness = floorFlatness;
    if (maxDeviation != null) result.maxDeviation = maxDeviation;
    if (averageDeviation != null) result.averageDeviation = averageDeviation;
    if (issueType != null) result.issueType = issueType;
    if (healthStatus != null) result.healthStatus = healthStatus;
    if (description != null) result.description = description;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  GroundHealthInfo._();

  factory GroundHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroundHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroundHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'startNode',
        subBuilder: $2.PositionData_t.create)
    ..aOM<$2.PositionData_t>(3, _omitFieldNames ? '' : 'endNode',
        subBuilder: $2.PositionData_t.create)
    ..aD(4, _omitFieldNames ? '' : 'floorFlatness')
    ..aD(5, _omitFieldNames ? '' : 'maxDeviation')
    ..aD(6, _omitFieldNames ? '' : 'averageDeviation')
    ..aE<GroundIssueType>(7, _omitFieldNames ? '' : 'issueType',
        enumValues: GroundIssueType.values)
    ..aE<HealthStatus>(8, _omitFieldNames ? '' : 'healthStatus',
        enumValues: HealthStatus.values)
    ..aOS(9, _omitFieldNames ? '' : 'description')
    ..aOM<$3.Timestamp>(10, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroundHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroundHealthInfo copyWith(void Function(GroundHealthInfo) updates) =>
      super.copyWith((message) => updates(message as GroundHealthInfo))
          as GroundHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroundHealthInfo create() => GroundHealthInfo._();
  @$core.override
  GroundHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroundHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroundHealthInfo>(create);
  static GroundHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get startNode => $_getN(1);
  @$pb.TagNumber(2)
  set startNode($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStartNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartNode() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureStartNode() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.PositionData_t get endNode => $_getN(2);
  @$pb.TagNumber(3)
  set endNode($2.PositionData_t value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndNode() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.PositionData_t ensureEndNode() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get floorFlatness => $_getN(3);
  @$pb.TagNumber(4)
  set floorFlatness($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFloorFlatness() => $_has(3);
  @$pb.TagNumber(4)
  void clearFloorFlatness() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get maxDeviation => $_getN(4);
  @$pb.TagNumber(5)
  set maxDeviation($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxDeviation() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxDeviation() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get averageDeviation => $_getN(5);
  @$pb.TagNumber(6)
  set averageDeviation($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAverageDeviation() => $_has(5);
  @$pb.TagNumber(6)
  void clearAverageDeviation() => $_clearField(6);

  @$pb.TagNumber(7)
  GroundIssueType get issueType => $_getN(6);
  @$pb.TagNumber(7)
  set issueType(GroundIssueType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasIssueType() => $_has(6);
  @$pb.TagNumber(7)
  void clearIssueType() => $_clearField(7);

  @$pb.TagNumber(8)
  HealthStatus get healthStatus => $_getN(7);
  @$pb.TagNumber(8)
  set healthStatus(HealthStatus value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHealthStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearHealthStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get description => $_getSZ(8);
  @$pb.TagNumber(9)
  set description($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDescription() => $_has(8);
  @$pb.TagNumber(9)
  void clearDescription() => $_clearField(9);

  @$pb.TagNumber(10)
  $3.Timestamp get timestamp => $_getN(9);
  @$pb.TagNumber(10)
  set timestamp($3.Timestamp value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTimestamp() => $_has(9);
  @$pb.TagNumber(10)
  void clearTimestamp() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.Timestamp ensureTimestamp() => $_ensure(9);
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
    $3.Timestamp? timestamp,
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
    final result = create();
    if (carId != null) result.carId = carId;
    if (goodsSlotId != null) result.goodsSlotId = goodsSlotId;
    if (expectedHeight != null) result.expectedHeight = expectedHeight;
    if (detectedHeight != null) result.detectedHeight = detectedHeight;
    if (heightDifference != null) result.heightDifference = heightDifference;
    if (issueType != null) result.issueType = issueType;
    if (healthStatus != null) result.healthStatus = healthStatus;
    if (description != null) result.description = description;
    if (timestamp != null) result.timestamp = timestamp;
    if (goodsSlotDirection != null)
      result.goodsSlotDirection = goodsSlotDirection;
    if (goodsSlotJackHeight != null)
      result.goodsSlotJackHeight = goodsSlotJackHeight;
    if (goodsSlotDistanceToStation != null)
      result.goodsSlotDistanceToStation = goodsSlotDistanceToStation;
    if (goodsSlotPalletFeatureHeight != null)
      result.goodsSlotPalletFeatureHeight = goodsSlotPalletFeatureHeight;
    if (goodsSlotTypeId != null) result.goodsSlotTypeId = goodsSlotTypeId;
    if (detectedGoodsSlotBeamLineDistance != null)
      result.detectedGoodsSlotBeamLineDistance =
          detectedGoodsSlotBeamLineDistance;
    if (detectedGoodsSlotBeamLineAngle != null)
      result.detectedGoodsSlotBeamLineAngle = detectedGoodsSlotBeamLineAngle;
    if (detectedGoodsSlotPalletDistance != null)
      result.detectedGoodsSlotPalletDistance = detectedGoodsSlotPalletDistance;
    if (detectedGoodsSlotPalletAngle != null)
      result.detectedGoodsSlotPalletAngle = detectedGoodsSlotPalletAngle;
    if (detectedGoodsSlotUprightDistance != null)
      result.detectedGoodsSlotUprightDistance =
          detectedGoodsSlotUprightDistance;
    if (detectedGoodsSlotAndCarAngle != null)
      result.detectedGoodsSlotAndCarAngle = detectedGoodsSlotAndCarAngle;
    if (detectedGoodsSlotPalletEntryHeight != null)
      result.detectedGoodsSlotPalletEntryHeight =
          detectedGoodsSlotPalletEntryHeight;
    if (detectedGoodsSlotRawHeight != null)
      result.detectedGoodsSlotRawHeight = detectedGoodsSlotRawHeight;
    if (detectedGoodsSlotBeamLineRawDistance != null)
      result.detectedGoodsSlotBeamLineRawDistance =
          detectedGoodsSlotBeamLineRawDistance;
    if (detectedGoodsSlotPalletRawDistance != null)
      result.detectedGoodsSlotPalletRawDistance =
          detectedGoodsSlotPalletRawDistance;
    if (detectedGoodsSlotUprightRawDistance != null)
      result.detectedGoodsSlotUprightRawDistance =
          detectedGoodsSlotUprightRawDistance;
    return result;
  }

  GoodsSlotHealthInfo._();

  factory GoodsSlotHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsSlotHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsSlotHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'goodsSlotId')
    ..aInt64(3, _omitFieldNames ? '' : 'expectedHeight')
    ..aInt64(4, _omitFieldNames ? '' : 'detectedHeight')
    ..aInt64(5, _omitFieldNames ? '' : 'heightDifference')
    ..aE<GoodsSlotIssueType>(6, _omitFieldNames ? '' : 'issueType',
        enumValues: GoodsSlotIssueType.values)
    ..aE<HealthStatus>(7, _omitFieldNames ? '' : 'healthStatus',
        enumValues: HealthStatus.values)
    ..aOS(8, _omitFieldNames ? '' : 'description')
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $3.Timestamp.create)
    ..aInt64(10, _omitFieldNames ? '' : 'goodsSlotDirection')
    ..aInt64(11, _omitFieldNames ? '' : 'goodsSlotJackHeight')
    ..aInt64(12, _omitFieldNames ? '' : 'goodsSlotDistanceToStation')
    ..aInt64(13, _omitFieldNames ? '' : 'goodsSlotPalletFeatureHeight')
    ..aInt64(14, _omitFieldNames ? '' : 'goodsSlotTypeId')
    ..aInt64(15, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineDistance')
    ..aInt64(16, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineAngle')
    ..aInt64(17, _omitFieldNames ? '' : 'detectedGoodsSlotPalletDistance')
    ..aD(18, _omitFieldNames ? '' : 'detectedGoodsSlotPalletAngle')
    ..aInt64(19, _omitFieldNames ? '' : 'detectedGoodsSlotUprightDistance')
    ..aD(20, _omitFieldNames ? '' : 'detectedGoodsSlotAndCarAngle')
    ..aInt64(21, _omitFieldNames ? '' : 'detectedGoodsSlotPalletEntryHeight')
    ..aInt64(22, _omitFieldNames ? '' : 'detectedGoodsSlotRawHeight')
    ..aInt64(23, _omitFieldNames ? '' : 'detectedGoodsSlotBeamLineRawDistance')
    ..aInt64(24, _omitFieldNames ? '' : 'detectedGoodsSlotPalletRawDistance')
    ..aInt64(25, _omitFieldNames ? '' : 'detectedGoodsSlotUprightRawDistance')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlotHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlotHealthInfo copyWith(void Function(GoodsSlotHealthInfo) updates) =>
      super.copyWith((message) => updates(message as GoodsSlotHealthInfo))
          as GoodsSlotHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlotHealthInfo create() => GoodsSlotHealthInfo._();
  @$core.override
  GoodsSlotHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsSlotHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoodsSlotHealthInfo>(create);
  static GoodsSlotHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get goodsSlotId => $_getI64(1);
  @$pb.TagNumber(2)
  set goodsSlotId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGoodsSlotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGoodsSlotId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expectedHeight => $_getI64(2);
  @$pb.TagNumber(3)
  set expectedHeight($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedHeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get detectedHeight => $_getI64(3);
  @$pb.TagNumber(4)
  set detectedHeight($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDetectedHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetectedHeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get heightDifference => $_getI64(4);
  @$pb.TagNumber(5)
  set heightDifference($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHeightDifference() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeightDifference() => $_clearField(5);

  @$pb.TagNumber(6)
  GoodsSlotIssueType get issueType => $_getN(5);
  @$pb.TagNumber(6)
  set issueType(GoodsSlotIssueType value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasIssueType() => $_has(5);
  @$pb.TagNumber(6)
  void clearIssueType() => $_clearField(6);

  @$pb.TagNumber(7)
  HealthStatus get healthStatus => $_getN(6);
  @$pb.TagNumber(7)
  set healthStatus(HealthStatus value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasHealthStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearHealthStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => $_clearField(8);

  @$pb.TagNumber(9)
  $3.Timestamp get timestamp => $_getN(8);
  @$pb.TagNumber(9)
  set timestamp($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureTimestamp() => $_ensure(8);

  /// 保留原有字段以兼容
  @$pb.TagNumber(10)
  $fixnum.Int64 get goodsSlotDirection => $_getI64(9);
  @$pb.TagNumber(10)
  set goodsSlotDirection($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasGoodsSlotDirection() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsSlotDirection() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get goodsSlotJackHeight => $_getI64(10);
  @$pb.TagNumber(11)
  set goodsSlotJackHeight($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasGoodsSlotJackHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsSlotJackHeight() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get goodsSlotDistanceToStation => $_getI64(11);
  @$pb.TagNumber(12)
  set goodsSlotDistanceToStation($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasGoodsSlotDistanceToStation() => $_has(11);
  @$pb.TagNumber(12)
  void clearGoodsSlotDistanceToStation() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get goodsSlotPalletFeatureHeight => $_getI64(12);
  @$pb.TagNumber(13)
  set goodsSlotPalletFeatureHeight($fixnum.Int64 value) =>
      $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasGoodsSlotPalletFeatureHeight() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsSlotPalletFeatureHeight() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get goodsSlotTypeId => $_getI64(13);
  @$pb.TagNumber(14)
  set goodsSlotTypeId($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasGoodsSlotTypeId() => $_has(13);
  @$pb.TagNumber(14)
  void clearGoodsSlotTypeId() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get detectedGoodsSlotBeamLineDistance => $_getI64(14);
  @$pb.TagNumber(15)
  set detectedGoodsSlotBeamLineDistance($fixnum.Int64 value) =>
      $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasDetectedGoodsSlotBeamLineDistance() => $_has(14);
  @$pb.TagNumber(15)
  void clearDetectedGoodsSlotBeamLineDistance() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get detectedGoodsSlotBeamLineAngle => $_getI64(15);
  @$pb.TagNumber(16)
  set detectedGoodsSlotBeamLineAngle($fixnum.Int64 value) =>
      $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasDetectedGoodsSlotBeamLineAngle() => $_has(15);
  @$pb.TagNumber(16)
  void clearDetectedGoodsSlotBeamLineAngle() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get detectedGoodsSlotPalletDistance => $_getI64(16);
  @$pb.TagNumber(17)
  set detectedGoodsSlotPalletDistance($fixnum.Int64 value) =>
      $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasDetectedGoodsSlotPalletDistance() => $_has(16);
  @$pb.TagNumber(17)
  void clearDetectedGoodsSlotPalletDistance() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get detectedGoodsSlotPalletAngle => $_getN(17);
  @$pb.TagNumber(18)
  set detectedGoodsSlotPalletAngle($core.double value) =>
      $_setDouble(17, value);
  @$pb.TagNumber(18)
  $core.bool hasDetectedGoodsSlotPalletAngle() => $_has(17);
  @$pb.TagNumber(18)
  void clearDetectedGoodsSlotPalletAngle() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get detectedGoodsSlotUprightDistance => $_getI64(18);
  @$pb.TagNumber(19)
  set detectedGoodsSlotUprightDistance($fixnum.Int64 value) =>
      $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasDetectedGoodsSlotUprightDistance() => $_has(18);
  @$pb.TagNumber(19)
  void clearDetectedGoodsSlotUprightDistance() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.double get detectedGoodsSlotAndCarAngle => $_getN(19);
  @$pb.TagNumber(20)
  set detectedGoodsSlotAndCarAngle($core.double value) =>
      $_setDouble(19, value);
  @$pb.TagNumber(20)
  $core.bool hasDetectedGoodsSlotAndCarAngle() => $_has(19);
  @$pb.TagNumber(20)
  void clearDetectedGoodsSlotAndCarAngle() => $_clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get detectedGoodsSlotPalletEntryHeight => $_getI64(20);
  @$pb.TagNumber(21)
  set detectedGoodsSlotPalletEntryHeight($fixnum.Int64 value) =>
      $_setInt64(20, value);
  @$pb.TagNumber(21)
  $core.bool hasDetectedGoodsSlotPalletEntryHeight() => $_has(20);
  @$pb.TagNumber(21)
  void clearDetectedGoodsSlotPalletEntryHeight() => $_clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get detectedGoodsSlotRawHeight => $_getI64(21);
  @$pb.TagNumber(22)
  set detectedGoodsSlotRawHeight($fixnum.Int64 value) => $_setInt64(21, value);
  @$pb.TagNumber(22)
  $core.bool hasDetectedGoodsSlotRawHeight() => $_has(21);
  @$pb.TagNumber(22)
  void clearDetectedGoodsSlotRawHeight() => $_clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get detectedGoodsSlotBeamLineRawDistance => $_getI64(22);
  @$pb.TagNumber(23)
  set detectedGoodsSlotBeamLineRawDistance($fixnum.Int64 value) =>
      $_setInt64(22, value);
  @$pb.TagNumber(23)
  $core.bool hasDetectedGoodsSlotBeamLineRawDistance() => $_has(22);
  @$pb.TagNumber(23)
  void clearDetectedGoodsSlotBeamLineRawDistance() => $_clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get detectedGoodsSlotPalletRawDistance => $_getI64(23);
  @$pb.TagNumber(24)
  set detectedGoodsSlotPalletRawDistance($fixnum.Int64 value) =>
      $_setInt64(23, value);
  @$pb.TagNumber(24)
  $core.bool hasDetectedGoodsSlotPalletRawDistance() => $_has(23);
  @$pb.TagNumber(24)
  void clearDetectedGoodsSlotPalletRawDistance() => $_clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get detectedGoodsSlotUprightRawDistance => $_getI64(24);
  @$pb.TagNumber(25)
  set detectedGoodsSlotUprightRawDistance($fixnum.Int64 value) =>
      $_setInt64(24, value);
  @$pb.TagNumber(25)
  $core.bool hasDetectedGoodsSlotUprightRawDistance() => $_has(24);
  @$pb.TagNumber(25)
  void clearDetectedGoodsSlotUprightRawDistance() => $_clearField(25);
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
    final result = create();
    if (markerHealth != null) result.markerHealth = markerHealth;
    if (groundHealth != null) result.groundHealth = groundHealth;
    if (goodsSlotHealth != null) result.goodsSlotHealth = goodsSlotHealth;
    return result;
  }

  SiteHealthInfo._();

  factory SiteHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SiteHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SiteHealthInfo_HealthInfo>
      _SiteHealthInfo_HealthInfoByTag = {
    1: SiteHealthInfo_HealthInfo.markerHealth,
    2: SiteHealthInfo_HealthInfo.groundHealth,
    3: SiteHealthInfo_HealthInfo.goodsSlotHealth,
    0: SiteHealthInfo_HealthInfo.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SiteHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<MarkerHealthInfo>(1, _omitFieldNames ? '' : 'markerHealth',
        subBuilder: MarkerHealthInfo.create)
    ..aOM<GroundHealthInfo>(2, _omitFieldNames ? '' : 'groundHealth',
        subBuilder: GroundHealthInfo.create)
    ..aOM<GoodsSlotHealthInfo>(3, _omitFieldNames ? '' : 'goodsSlotHealth',
        subBuilder: GoodsSlotHealthInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SiteHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SiteHealthInfo copyWith(void Function(SiteHealthInfo) updates) =>
      super.copyWith((message) => updates(message as SiteHealthInfo))
          as SiteHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SiteHealthInfo create() => SiteHealthInfo._();
  @$core.override
  SiteHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SiteHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SiteHealthInfo>(create);
  static SiteHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  SiteHealthInfo_HealthInfo whichHealthInfo() =>
      _SiteHealthInfo_HealthInfoByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearHealthInfo() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MarkerHealthInfo get markerHealth => $_getN(0);
  @$pb.TagNumber(1)
  set markerHealth(MarkerHealthInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMarkerHealth() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarkerHealth() => $_clearField(1);
  @$pb.TagNumber(1)
  MarkerHealthInfo ensureMarkerHealth() => $_ensure(0);

  @$pb.TagNumber(2)
  GroundHealthInfo get groundHealth => $_getN(1);
  @$pb.TagNumber(2)
  set groundHealth(GroundHealthInfo value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGroundHealth() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroundHealth() => $_clearField(2);
  @$pb.TagNumber(2)
  GroundHealthInfo ensureGroundHealth() => $_ensure(1);

  @$pb.TagNumber(3)
  GoodsSlotHealthInfo get goodsSlotHealth => $_getN(2);
  @$pb.TagNumber(3)
  set goodsSlotHealth(GoodsSlotHealthInfo value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGoodsSlotHealth() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsSlotHealth() => $_clearField(3);
  @$pb.TagNumber(3)
  GoodsSlotHealthInfo ensureGoodsSlotHealth() => $_ensure(2);
}

/// 健康信息查询请求
class HealthInfoQueryRequest extends $pb.GeneratedMessage {
  factory HealthInfoQueryRequest({
    $fixnum.Int64? nodeId,
    $2.PositionData_t? logicLocation,
    $fixnum.Int64? goodsSlotId,
    HealthStatus? minStatus,
    $3.Timestamp? startTime,
    $3.Timestamp? endTime,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (goodsSlotId != null) result.goodsSlotId = goodsSlotId;
    if (minStatus != null) result.minStatus = minStatus;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    return result;
  }

  HealthInfoQueryRequest._();

  factory HealthInfoQueryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthInfoQueryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthInfoQueryRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aInt64(3, _omitFieldNames ? '' : 'goodsSlotId')
    ..aE<HealthStatus>(4, _omitFieldNames ? '' : 'minStatus',
        enumValues: HealthStatus.values)
    ..aOM<$3.Timestamp>(5, _omitFieldNames ? '' : 'startTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'endTime',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthInfoQueryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthInfoQueryRequest copyWith(
          void Function(HealthInfoQueryRequest) updates) =>
      super.copyWith((message) => updates(message as HealthInfoQueryRequest))
          as HealthInfoQueryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryRequest create() => HealthInfoQueryRequest._();
  @$core.override
  HealthInfoQueryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthInfoQueryRequest>(create);
  static HealthInfoQueryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get goodsSlotId => $_getI64(2);
  @$pb.TagNumber(3)
  set goodsSlotId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGoodsSlotId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsSlotId() => $_clearField(3);

  @$pb.TagNumber(4)
  HealthStatus get minStatus => $_getN(3);
  @$pb.TagNumber(4)
  set minStatus(HealthStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMinStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.Timestamp get startTime => $_getN(4);
  @$pb.TagNumber(5)
  set startTime($3.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStartTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureStartTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $3.Timestamp get endTime => $_getN(5);
  @$pb.TagNumber(6)
  set endTime($3.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasEndTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureEndTime() => $_ensure(5);
}

/// 健康信息查询响应
class HealthInfoQueryResponse extends $pb.GeneratedMessage {
  factory HealthInfoQueryResponse({
    $core.Iterable<MarkerHealthInfo>? markerHealths,
    $core.Iterable<GroundHealthInfo>? groundHealths,
    $core.Iterable<GoodsSlotHealthInfo>? goodsSlotHealths,
  }) {
    final result = create();
    if (markerHealths != null) result.markerHealths.addAll(markerHealths);
    if (groundHealths != null) result.groundHealths.addAll(groundHealths);
    if (goodsSlotHealths != null)
      result.goodsSlotHealths.addAll(goodsSlotHealths);
    return result;
  }

  HealthInfoQueryResponse._();

  factory HealthInfoQueryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthInfoQueryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthInfoQueryResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..pPM<MarkerHealthInfo>(1, _omitFieldNames ? '' : 'markerHealths',
        subBuilder: MarkerHealthInfo.create)
    ..pPM<GroundHealthInfo>(2, _omitFieldNames ? '' : 'groundHealths',
        subBuilder: GroundHealthInfo.create)
    ..pPM<GoodsSlotHealthInfo>(3, _omitFieldNames ? '' : 'goodsSlotHealths',
        subBuilder: GoodsSlotHealthInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthInfoQueryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthInfoQueryResponse copyWith(
          void Function(HealthInfoQueryResponse) updates) =>
      super.copyWith((message) => updates(message as HealthInfoQueryResponse))
          as HealthInfoQueryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryResponse create() => HealthInfoQueryResponse._();
  @$core.override
  HealthInfoQueryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthInfoQueryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthInfoQueryResponse>(create);
  static HealthInfoQueryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MarkerHealthInfo> get markerHealths => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<GroundHealthInfo> get groundHealths => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<GoodsSlotHealthInfo> get goodsSlotHealths => $_getList(2);
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
    final result = create();
    if (totalNodes != null) result.totalNodes = totalNodes;
    if (normalNodes != null) result.normalNodes = normalNodes;
    if (warningNodes != null) result.warningNodes = warningNodes;
    if (errorNodes != null) result.errorNodes = errorNodes;
    if (criticalNodes != null) result.criticalNodes = criticalNodes;
    if (totalGoodsSlots != null) result.totalGoodsSlots = totalGoodsSlots;
    if (normalGoodsSlots != null) result.normalGoodsSlots = normalGoodsSlots;
    if (warningGoodsSlots != null) result.warningGoodsSlots = warningGoodsSlots;
    if (errorGoodsSlots != null) result.errorGoodsSlots = errorGoodsSlots;
    if (overallHealthScore != null)
      result.overallHealthScore = overallHealthScore;
    if (perCarExceptionCounts != null)
      result.perCarExceptionCounts.addAll(perCarExceptionCounts);
    if (totalGroundAreas != null) result.totalGroundAreas = totalGroundAreas;
    if (normalGroundAreas != null) result.normalGroundAreas = normalGroundAreas;
    if (warningGroundAreas != null)
      result.warningGroundAreas = warningGroundAreas;
    if (errorGroundAreas != null) result.errorGroundAreas = errorGroundAreas;
    if (criticalGroundAreas != null)
      result.criticalGroundAreas = criticalGroundAreas;
    return result;
  }

  HealthStatistics._();

  factory HealthStatistics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HealthStatistics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HealthStatistics',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'totalNodes')
    ..aInt64(2, _omitFieldNames ? '' : 'normalNodes')
    ..aInt64(3, _omitFieldNames ? '' : 'warningNodes')
    ..aInt64(4, _omitFieldNames ? '' : 'errorNodes')
    ..aInt64(5, _omitFieldNames ? '' : 'criticalNodes')
    ..aInt64(6, _omitFieldNames ? '' : 'totalGoodsSlots')
    ..aInt64(7, _omitFieldNames ? '' : 'normalGoodsSlots')
    ..aInt64(8, _omitFieldNames ? '' : 'warningGoodsSlots')
    ..aInt64(9, _omitFieldNames ? '' : 'errorGoodsSlots')
    ..aD(10, _omitFieldNames ? '' : 'overallHealthScore')
    ..pPM<CarExceptionSummary>(
        11, _omitFieldNames ? '' : 'perCarExceptionCounts',
        subBuilder: CarExceptionSummary.create)
    ..aInt64(12, _omitFieldNames ? '' : 'totalGroundAreas')
    ..aInt64(13, _omitFieldNames ? '' : 'normalGroundAreas')
    ..aInt64(14, _omitFieldNames ? '' : 'warningGroundAreas')
    ..aInt64(15, _omitFieldNames ? '' : 'errorGroundAreas')
    ..aInt64(16, _omitFieldNames ? '' : 'criticalGroundAreas')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthStatistics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HealthStatistics copyWith(void Function(HealthStatistics) updates) =>
      super.copyWith((message) => updates(message as HealthStatistics))
          as HealthStatistics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HealthStatistics create() => HealthStatistics._();
  @$core.override
  HealthStatistics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HealthStatistics getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HealthStatistics>(create);
  static HealthStatistics? _defaultInstance;

  /// 二维码节点统计
  @$pb.TagNumber(1)
  $fixnum.Int64 get totalNodes => $_getI64(0);
  @$pb.TagNumber(1)
  set totalNodes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalNodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalNodes() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get normalNodes => $_getI64(1);
  @$pb.TagNumber(2)
  set normalNodes($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNormalNodes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNormalNodes() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get warningNodes => $_getI64(2);
  @$pb.TagNumber(3)
  set warningNodes($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWarningNodes() => $_has(2);
  @$pb.TagNumber(3)
  void clearWarningNodes() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get errorNodes => $_getI64(3);
  @$pb.TagNumber(4)
  set errorNodes($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasErrorNodes() => $_has(3);
  @$pb.TagNumber(4)
  void clearErrorNodes() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get criticalNodes => $_getI64(4);
  @$pb.TagNumber(5)
  set criticalNodes($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCriticalNodes() => $_has(4);
  @$pb.TagNumber(5)
  void clearCriticalNodes() => $_clearField(5);

  /// 货架统计
  @$pb.TagNumber(6)
  $fixnum.Int64 get totalGoodsSlots => $_getI64(5);
  @$pb.TagNumber(6)
  set totalGoodsSlots($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTotalGoodsSlots() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalGoodsSlots() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get normalGoodsSlots => $_getI64(6);
  @$pb.TagNumber(7)
  set normalGoodsSlots($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNormalGoodsSlots() => $_has(6);
  @$pb.TagNumber(7)
  void clearNormalGoodsSlots() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get warningGoodsSlots => $_getI64(7);
  @$pb.TagNumber(8)
  set warningGoodsSlots($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWarningGoodsSlots() => $_has(7);
  @$pb.TagNumber(8)
  void clearWarningGoodsSlots() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get errorGoodsSlots => $_getI64(8);
  @$pb.TagNumber(9)
  set errorGoodsSlots($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasErrorGoodsSlots() => $_has(8);
  @$pb.TagNumber(9)
  void clearErrorGoodsSlots() => $_clearField(9);

  /// 综合健康分数
  @$pb.TagNumber(10)
  $core.double get overallHealthScore => $_getN(9);
  @$pb.TagNumber(10)
  set overallHealthScore($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasOverallHealthScore() => $_has(9);
  @$pb.TagNumber(10)
  void clearOverallHealthScore() => $_clearField(10);

  /// 每台车当前的异常计数列表（参考顶层消息 CarExceptionSummary）
  @$pb.TagNumber(11)
  $pb.PbList<CarExceptionSummary> get perCarExceptionCounts => $_getList(10);

  /// 地面区域统计
  @$pb.TagNumber(12)
  $fixnum.Int64 get totalGroundAreas => $_getI64(11);
  @$pb.TagNumber(12)
  set totalGroundAreas($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTotalGroundAreas() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalGroundAreas() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get normalGroundAreas => $_getI64(12);
  @$pb.TagNumber(13)
  set normalGroundAreas($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasNormalGroundAreas() => $_has(12);
  @$pb.TagNumber(13)
  void clearNormalGroundAreas() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get warningGroundAreas => $_getI64(13);
  @$pb.TagNumber(14)
  set warningGroundAreas($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasWarningGroundAreas() => $_has(13);
  @$pb.TagNumber(14)
  void clearWarningGroundAreas() => $_clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get errorGroundAreas => $_getI64(14);
  @$pb.TagNumber(15)
  set errorGroundAreas($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(15)
  $core.bool hasErrorGroundAreas() => $_has(14);
  @$pb.TagNumber(15)
  void clearErrorGroundAreas() => $_clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get criticalGroundAreas => $_getI64(15);
  @$pb.TagNumber(16)
  set criticalGroundAreas($fixnum.Int64 value) => $_setInt64(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCriticalGroundAreas() => $_has(15);
  @$pb.TagNumber(16)
  void clearCriticalGroundAreas() => $_clearField(16);
}

/// 每台车的异常计数摘要
class CarExceptionSummary extends $pb.GeneratedMessage {
  factory CarExceptionSummary({
    $fixnum.Int64? carId,
    $fixnum.Int64? exceptionCount,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (exceptionCount != null) result.exceptionCount = exceptionCount;
    return result;
  }

  CarExceptionSummary._();

  factory CarExceptionSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarExceptionSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarExceptionSummary',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'exceptionCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionSummary clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionSummary copyWith(void Function(CarExceptionSummary) updates) =>
      super.copyWith((message) => updates(message as CarExceptionSummary))
          as CarExceptionSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionSummary create() => CarExceptionSummary._();
  @$core.override
  CarExceptionSummary createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarExceptionSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarExceptionSummary>(create);
  static CarExceptionSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get exceptionCount => $_getI64(1);
  @$pb.TagNumber(2)
  set exceptionCount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExceptionCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearExceptionCount() => $_clearField(2);
}

/// 位置异常概率分析请求
class LocationExceptionAnalysisRequest extends $pb.GeneratedMessage {
  factory LocationExceptionAnalysisRequest({
    $fixnum.Int64? nodeId,
    $2.PositionData_t? logicLocation,
    ExceptionCategory? category,
    $3.Timestamp? startTime,
    $3.Timestamp? endTime,
    $core.String? markerCode,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (category != null) result.category = category;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    if (markerCode != null) result.markerCode = markerCode;
    return result;
  }

  LocationExceptionAnalysisRequest._();

  factory LocationExceptionAnalysisRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LocationExceptionAnalysisRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LocationExceptionAnalysisRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aE<ExceptionCategory>(3, _omitFieldNames ? '' : 'category',
        enumValues: ExceptionCategory.values)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'startTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, _omitFieldNames ? '' : 'endTime',
        subBuilder: $3.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocationExceptionAnalysisRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocationExceptionAnalysisRequest copyWith(
          void Function(LocationExceptionAnalysisRequest) updates) =>
      super.copyWith(
              (message) => updates(message as LocationExceptionAnalysisRequest))
          as LocationExceptionAnalysisRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisRequest create() =>
      LocationExceptionAnalysisRequest._();
  @$core.override
  LocationExceptionAnalysisRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LocationExceptionAnalysisRequest>(
          create);
  static LocationExceptionAnalysisRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  ExceptionCategory get category => $_getN(2);
  @$pb.TagNumber(3)
  set category(ExceptionCategory value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => $_clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get startTime => $_getN(3);
  @$pb.TagNumber(4)
  set startTime($3.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStartTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureStartTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get endTime => $_getN(4);
  @$pb.TagNumber(5)
  set endTime($3.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEndTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureEndTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get markerCode => $_getSZ(5);
  @$pb.TagNumber(6)
  set markerCode($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMarkerCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearMarkerCode() => $_clearField(6);
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
    $3.Timestamp? lastExceptionTime,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (category != null) result.category = category;
    if (totalDetections != null) result.totalDetections = totalDetections;
    if (exceptionCount != null) result.exceptionCount = exceptionCount;
    if (exceptionRate != null) result.exceptionRate = exceptionRate;
    if (uniqueCarCount != null) result.uniqueCarCount = uniqueCarCount;
    if (totalCarCount != null) result.totalCarCount = totalCarCount;
    if (isLocationRelated != null) result.isLocationRelated = isLocationRelated;
    if (affectedCarIds != null) result.affectedCarIds.addAll(affectedCarIds);
    if (lastExceptionTime != null) result.lastExceptionTime = lastExceptionTime;
    return result;
  }

  LocationExceptionAnalysisResponse._();

  factory LocationExceptionAnalysisResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LocationExceptionAnalysisResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LocationExceptionAnalysisResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aE<ExceptionCategory>(2, _omitFieldNames ? '' : 'category',
        enumValues: ExceptionCategory.values)
    ..aInt64(3, _omitFieldNames ? '' : 'totalDetections')
    ..aInt64(4, _omitFieldNames ? '' : 'exceptionCount')
    ..aD(5, _omitFieldNames ? '' : 'exceptionRate')
    ..aInt64(6, _omitFieldNames ? '' : 'uniqueCarCount')
    ..aInt64(7, _omitFieldNames ? '' : 'totalCarCount')
    ..aOB(8, _omitFieldNames ? '' : 'isLocationRelated')
    ..p<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'affectedCarIds', $pb.PbFieldType.K6)
    ..aOM<$3.Timestamp>(10, _omitFieldNames ? '' : 'lastExceptionTime',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocationExceptionAnalysisResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocationExceptionAnalysisResponse copyWith(
          void Function(LocationExceptionAnalysisResponse) updates) =>
      super.copyWith((message) =>
              updates(message as LocationExceptionAnalysisResponse))
          as LocationExceptionAnalysisResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisResponse create() =>
      LocationExceptionAnalysisResponse._();
  @$core.override
  LocationExceptionAnalysisResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LocationExceptionAnalysisResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LocationExceptionAnalysisResponse>(
          create);
  static LocationExceptionAnalysisResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalDetections => $_getI64(2);
  @$pb.TagNumber(3)
  set totalDetections($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalDetections() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalDetections() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exceptionCount => $_getI64(3);
  @$pb.TagNumber(4)
  set exceptionCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExceptionCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get exceptionRate => $_getN(4);
  @$pb.TagNumber(5)
  set exceptionRate($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExceptionRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExceptionRate() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get uniqueCarCount => $_getI64(5);
  @$pb.TagNumber(6)
  set uniqueCarCount($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUniqueCarCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearUniqueCarCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get totalCarCount => $_getI64(6);
  @$pb.TagNumber(7)
  set totalCarCount($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTotalCarCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalCarCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isLocationRelated => $_getBF(7);
  @$pb.TagNumber(8)
  set isLocationRelated($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsLocationRelated() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsLocationRelated() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get affectedCarIds => $_getList(8);

  @$pb.TagNumber(10)
  $3.Timestamp get lastExceptionTime => $_getN(9);
  @$pb.TagNumber(10)
  set lastExceptionTime($3.Timestamp value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasLastExceptionTime() => $_has(9);
  @$pb.TagNumber(10)
  void clearLastExceptionTime() => $_clearField(10);
  @$pb.TagNumber(10)
  $3.Timestamp ensureLastExceptionTime() => $_ensure(9);
}

/// 单车异常概率分析请求
class CarExceptionAnalysisRequest extends $pb.GeneratedMessage {
  factory CarExceptionAnalysisRequest({
    $fixnum.Int64? carId,
    ExceptionCategory? category,
    MarkerIssueType? markerIssueType,
    GroundIssueType? groundIssueType,
    GoodsSlotIssueType? goodsSlotIssueType,
    $3.Timestamp? startTime,
    $3.Timestamp? endTime,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (category != null) result.category = category;
    if (markerIssueType != null) result.markerIssueType = markerIssueType;
    if (groundIssueType != null) result.groundIssueType = groundIssueType;
    if (goodsSlotIssueType != null)
      result.goodsSlotIssueType = goodsSlotIssueType;
    if (startTime != null) result.startTime = startTime;
    if (endTime != null) result.endTime = endTime;
    return result;
  }

  CarExceptionAnalysisRequest._();

  factory CarExceptionAnalysisRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarExceptionAnalysisRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarExceptionAnalysisRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aE<ExceptionCategory>(2, _omitFieldNames ? '' : 'category',
        enumValues: ExceptionCategory.values)
    ..aE<MarkerIssueType>(3, _omitFieldNames ? '' : 'markerIssueType',
        enumValues: MarkerIssueType.values)
    ..aE<GroundIssueType>(4, _omitFieldNames ? '' : 'groundIssueType',
        enumValues: GroundIssueType.values)
    ..aE<GoodsSlotIssueType>(5, _omitFieldNames ? '' : 'goodsSlotIssueType',
        enumValues: GoodsSlotIssueType.values)
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'startTime',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(7, _omitFieldNames ? '' : 'endTime',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionAnalysisRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionAnalysisRequest copyWith(
          void Function(CarExceptionAnalysisRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CarExceptionAnalysisRequest))
          as CarExceptionAnalysisRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisRequest create() =>
      CarExceptionAnalysisRequest._();
  @$core.override
  CarExceptionAnalysisRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarExceptionAnalysisRequest>(create);
  static CarExceptionAnalysisRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => $_clearField(2);

  @$pb.TagNumber(3)
  MarkerIssueType get markerIssueType => $_getN(2);
  @$pb.TagNumber(3)
  set markerIssueType(MarkerIssueType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMarkerIssueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerIssueType() => $_clearField(3);

  @$pb.TagNumber(4)
  GroundIssueType get groundIssueType => $_getN(3);
  @$pb.TagNumber(4)
  set groundIssueType(GroundIssueType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGroundIssueType() => $_has(3);
  @$pb.TagNumber(4)
  void clearGroundIssueType() => $_clearField(4);

  @$pb.TagNumber(5)
  GoodsSlotIssueType get goodsSlotIssueType => $_getN(4);
  @$pb.TagNumber(5)
  set goodsSlotIssueType(GoodsSlotIssueType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasGoodsSlotIssueType() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsSlotIssueType() => $_clearField(5);

  @$pb.TagNumber(6)
  $3.Timestamp get startTime => $_getN(5);
  @$pb.TagNumber(6)
  set startTime($3.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasStartTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartTime() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureStartTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $3.Timestamp get endTime => $_getN(6);
  @$pb.TagNumber(7)
  set endTime($3.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasEndTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndTime() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureEndTime() => $_ensure(6);
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
    $3.Timestamp? lastExceptionTime,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (category != null) result.category = category;
    if (totalDetections != null) result.totalDetections = totalDetections;
    if (exceptionCount != null) result.exceptionCount = exceptionCount;
    if (exceptionRate != null) result.exceptionRate = exceptionRate;
    if (affectedLocationCount != null)
      result.affectedLocationCount = affectedLocationCount;
    if (isCarRelated != null) result.isCarRelated = isCarRelated;
    if (affectedNodeIds != null) result.affectedNodeIds.addAll(affectedNodeIds);
    if (lastExceptionTime != null) result.lastExceptionTime = lastExceptionTime;
    return result;
  }

  CarExceptionAnalysisResponse._();

  factory CarExceptionAnalysisResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarExceptionAnalysisResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarExceptionAnalysisResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aE<ExceptionCategory>(2, _omitFieldNames ? '' : 'category',
        enumValues: ExceptionCategory.values)
    ..aInt64(3, _omitFieldNames ? '' : 'totalDetections')
    ..aInt64(4, _omitFieldNames ? '' : 'exceptionCount')
    ..aD(5, _omitFieldNames ? '' : 'exceptionRate')
    ..aInt64(6, _omitFieldNames ? '' : 'affectedLocationCount')
    ..aOB(7, _omitFieldNames ? '' : 'isCarRelated')
    ..p<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'affectedNodeIds', $pb.PbFieldType.K6)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'lastExceptionTime',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionAnalysisResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarExceptionAnalysisResponse copyWith(
          void Function(CarExceptionAnalysisResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CarExceptionAnalysisResponse))
          as CarExceptionAnalysisResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisResponse create() =>
      CarExceptionAnalysisResponse._();
  @$core.override
  CarExceptionAnalysisResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarExceptionAnalysisResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarExceptionAnalysisResponse>(create);
  static CarExceptionAnalysisResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  ExceptionCategory get category => $_getN(1);
  @$pb.TagNumber(2)
  set category(ExceptionCategory value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalDetections => $_getI64(2);
  @$pb.TagNumber(3)
  set totalDetections($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalDetections() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalDetections() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get exceptionCount => $_getI64(3);
  @$pb.TagNumber(4)
  set exceptionCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExceptionCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get exceptionRate => $_getN(4);
  @$pb.TagNumber(5)
  set exceptionRate($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasExceptionRate() => $_has(4);
  @$pb.TagNumber(5)
  void clearExceptionRate() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get affectedLocationCount => $_getI64(5);
  @$pb.TagNumber(6)
  set affectedLocationCount($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAffectedLocationCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearAffectedLocationCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isCarRelated => $_getBF(6);
  @$pb.TagNumber(7)
  set isCarRelated($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsCarRelated() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsCarRelated() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$fixnum.Int64> get affectedNodeIds => $_getList(7);

  @$pb.TagNumber(9)
  $3.Timestamp get lastExceptionTime => $_getN(8);
  @$pb.TagNumber(9)
  set lastExceptionTime($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasLastExceptionTime() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastExceptionTime() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureLastExceptionTime() => $_ensure(8);
}

/// 数据清理/更新请求
class DataCleanupRequest extends $pb.GeneratedMessage {
  factory DataCleanupRequest({
    ExceptionCategory? category,
    $fixnum.Int64? nodeId,
    $2.PositionData_t? logicLocation,
    $core.String? markerCode,
    $3.Timestamp? beforeTime,
    $core.bool? clearAll,
  }) {
    final result = create();
    if (category != null) result.category = category;
    if (nodeId != null) result.nodeId = nodeId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (markerCode != null) result.markerCode = markerCode;
    if (beforeTime != null) result.beforeTime = beforeTime;
    if (clearAll != null) result.clearAll = clearAll;
    return result;
  }

  DataCleanupRequest._();

  factory DataCleanupRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataCleanupRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataCleanupRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aE<ExceptionCategory>(1, _omitFieldNames ? '' : 'category',
        enumValues: ExceptionCategory.values)
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOM<$2.PositionData_t>(3, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aOS(4, _omitFieldNames ? '' : 'markerCode')
    ..aOM<$3.Timestamp>(5, _omitFieldNames ? '' : 'beforeTime',
        subBuilder: $3.Timestamp.create)
    ..aOB(6, _omitFieldNames ? '' : 'clearAll')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataCleanupRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataCleanupRequest copyWith(void Function(DataCleanupRequest) updates) =>
      super.copyWith((message) => updates(message as DataCleanupRequest))
          as DataCleanupRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataCleanupRequest create() => DataCleanupRequest._();
  @$core.override
  DataCleanupRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataCleanupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataCleanupRequest>(create);
  static DataCleanupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ExceptionCategory get category => $_getN(0);
  @$pb.TagNumber(1)
  set category(ExceptionCategory value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get nodeId => $_getI64(1);
  @$pb.TagNumber(2)
  set nodeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.PositionData_t get logicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set logicLocation($2.PositionData_t value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogicLocation() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.PositionData_t ensureLogicLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get markerCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set markerCode($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMarkerCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarkerCode() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.Timestamp get beforeTime => $_getN(4);
  @$pb.TagNumber(5)
  set beforeTime($3.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBeforeTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearBeforeTime() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureBeforeTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get clearAll => $_getBF(5);
  @$pb.TagNumber(6)
  set clearAll($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasClearAll() => $_has(5);
  @$pb.TagNumber(6)
  void clearClearAll() => $_clearField(6);
}

/// 数据清理/更新响应
class DataCleanupResponse extends $pb.GeneratedMessage {
  factory DataCleanupResponse({
    $fixnum.Int64? cleanedCount,
    $core.bool? success,
    $core.String? message,
  }) {
    final result = create();
    if (cleanedCount != null) result.cleanedCount = cleanedCount;
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    return result;
  }

  DataCleanupResponse._();

  factory DataCleanupResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DataCleanupResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DataCleanupResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'cleanedCount')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataCleanupResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DataCleanupResponse copyWith(void Function(DataCleanupResponse) updates) =>
      super.copyWith((message) => updates(message as DataCleanupResponse))
          as DataCleanupResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataCleanupResponse create() => DataCleanupResponse._();
  @$core.override
  DataCleanupResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DataCleanupResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DataCleanupResponse>(create);
  static DataCleanupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cleanedCount => $_getI64(0);
  @$pb.TagNumber(1)
  set cleanedCount($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCleanedCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCleanedCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

/// 查询车辆在某个位置的统计请求
class CarLocationStatsRequest extends $pb.GeneratedMessage {
  factory CarLocationStatsRequest({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    return result;
  }

  CarLocationStatsRequest._();

  factory CarLocationStatsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarLocationStatsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarLocationStatsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarLocationStatsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarLocationStatsRequest copyWith(
          void Function(CarLocationStatsRequest) updates) =>
      super.copyWith((message) => updates(message as CarLocationStatsRequest))
          as CarLocationStatsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarLocationStatsRequest create() => CarLocationStatsRequest._();
  @$core.override
  CarLocationStatsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarLocationStatsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarLocationStatsRequest>(create);
  static CarLocationStatsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);
}

/// 车辆位置统计响应
class CarLocationStatsResponse extends $pb.GeneratedMessage {
  factory CarLocationStatsResponse({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
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
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (totalCount != null) result.totalCount = totalCount;
    if (normalCount != null) result.normalCount = normalCount;
    if (warningCount != null) result.warningCount = warningCount;
    if (errorCount != null) result.errorCount = errorCount;
    if (criticalCount != null) result.criticalCount = criticalCount;
    if (normalRate != null) result.normalRate = normalRate;
    if (warningRate != null) result.warningRate = warningRate;
    if (errorRate != null) result.errorRate = errorRate;
    if (criticalRate != null) result.criticalRate = criticalRate;
    return result;
  }

  CarLocationStatsResponse._();

  factory CarLocationStatsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CarLocationStatsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CarLocationStatsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aInt64(3, _omitFieldNames ? '' : 'totalCount')
    ..aInt64(4, _omitFieldNames ? '' : 'normalCount')
    ..aInt64(5, _omitFieldNames ? '' : 'warningCount')
    ..aInt64(6, _omitFieldNames ? '' : 'errorCount')
    ..aInt64(7, _omitFieldNames ? '' : 'criticalCount')
    ..aD(8, _omitFieldNames ? '' : 'normalRate')
    ..aD(9, _omitFieldNames ? '' : 'warningRate')
    ..aD(10, _omitFieldNames ? '' : 'errorRate')
    ..aD(11, _omitFieldNames ? '' : 'criticalRate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarLocationStatsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CarLocationStatsResponse copyWith(
          void Function(CarLocationStatsResponse) updates) =>
      super.copyWith((message) => updates(message as CarLocationStatsResponse))
          as CarLocationStatsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarLocationStatsResponse create() => CarLocationStatsResponse._();
  @$core.override
  CarLocationStatsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CarLocationStatsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CarLocationStatsResponse>(create);
  static CarLocationStatsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCount => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCount($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get normalCount => $_getI64(3);
  @$pb.TagNumber(4)
  set normalCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNormalCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearNormalCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get warningCount => $_getI64(4);
  @$pb.TagNumber(5)
  set warningCount($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasWarningCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearWarningCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get errorCount => $_getI64(5);
  @$pb.TagNumber(6)
  set errorCount($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasErrorCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrorCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get criticalCount => $_getI64(6);
  @$pb.TagNumber(7)
  set criticalCount($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCriticalCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearCriticalCount() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get normalRate => $_getN(7);
  @$pb.TagNumber(8)
  set normalRate($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasNormalRate() => $_has(7);
  @$pb.TagNumber(8)
  void clearNormalRate() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get warningRate => $_getN(8);
  @$pb.TagNumber(9)
  set warningRate($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWarningRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearWarningRate() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get errorRate => $_getN(9);
  @$pb.TagNumber(10)
  set errorRate($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasErrorRate() => $_has(9);
  @$pb.TagNumber(10)
  void clearErrorRate() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get criticalRate => $_getN(10);
  @$pb.TagNumber(11)
  set criticalRate($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCriticalRate() => $_has(10);
  @$pb.TagNumber(11)
  void clearCriticalRate() => $_clearField(11);
}

/// 单次角度采样数据
class AngleSample extends $pb.GeneratedMessage {
  factory AngleSample({
    $fixnum.Int64? carId,
    $core.String? carType,
    $2.PositionData_t? logicLocation,
    $core.double? carHeading,
    $core.double? movementDirection,
    $core.double? movementSpeed,
    $core.double? learnedAngle,
    $core.double? qualityScore,
    $3.Timestamp? timestamp,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (carType != null) result.carType = carType;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (carHeading != null) result.carHeading = carHeading;
    if (movementDirection != null) result.movementDirection = movementDirection;
    if (movementSpeed != null) result.movementSpeed = movementSpeed;
    if (learnedAngle != null) result.learnedAngle = learnedAngle;
    if (qualityScore != null) result.qualityScore = qualityScore;
    if (timestamp != null) result.timestamp = timestamp;
    return result;
  }

  AngleSample._();

  factory AngleSample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AngleSample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AngleSample',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOS(2, _omitFieldNames ? '' : 'carType')
    ..aOM<$2.PositionData_t>(3, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aD(4, _omitFieldNames ? '' : 'carHeading')
    ..aD(5, _omitFieldNames ? '' : 'movementDirection')
    ..aD(6, _omitFieldNames ? '' : 'movementSpeed')
    ..aD(7, _omitFieldNames ? '' : 'learnedAngle')
    ..aD(8, _omitFieldNames ? '' : 'qualityScore')
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleSample clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleSample copyWith(void Function(AngleSample) updates) =>
      super.copyWith((message) => updates(message as AngleSample))
          as AngleSample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AngleSample create() => AngleSample._();
  @$core.override
  AngleSample createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AngleSample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AngleSample>(create);
  static AngleSample? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get carType => $_getSZ(1);
  @$pb.TagNumber(2)
  set carType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarType() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.PositionData_t get logicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set logicLocation($2.PositionData_t value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogicLocation() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.PositionData_t ensureLogicLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get carHeading => $_getN(3);
  @$pb.TagNumber(4)
  set carHeading($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCarHeading() => $_has(3);
  @$pb.TagNumber(4)
  void clearCarHeading() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get movementDirection => $_getN(4);
  @$pb.TagNumber(5)
  set movementDirection($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMovementDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearMovementDirection() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get movementSpeed => $_getN(5);
  @$pb.TagNumber(6)
  set movementSpeed($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMovementSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearMovementSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get learnedAngle => $_getN(6);
  @$pb.TagNumber(7)
  set learnedAngle($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLearnedAngle() => $_has(6);
  @$pb.TagNumber(7)
  void clearLearnedAngle() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get qualityScore => $_getN(7);
  @$pb.TagNumber(8)
  set qualityScore($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasQualityScore() => $_has(7);
  @$pb.TagNumber(8)
  void clearQualityScore() => $_clearField(8);

  @$pb.TagNumber(9)
  $3.Timestamp get timestamp => $_getN(8);
  @$pb.TagNumber(9)
  set timestamp($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureTimestamp() => $_ensure(8);
}

/// 局部学习数据（单车）
class LocalAngleLearningData extends $pb.GeneratedMessage {
  factory LocalAngleLearningData({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
    $core.double? learnedAngle,
    $core.double? confidence,
    $core.int? sampleCount,
    $3.Timestamp? lastUpdated,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (learnedAngle != null) result.learnedAngle = learnedAngle;
    if (confidence != null) result.confidence = confidence;
    if (sampleCount != null) result.sampleCount = sampleCount;
    if (lastUpdated != null) result.lastUpdated = lastUpdated;
    return result;
  }

  LocalAngleLearningData._();

  factory LocalAngleLearningData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LocalAngleLearningData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LocalAngleLearningData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aD(3, _omitFieldNames ? '' : 'learnedAngle')
    ..aD(4, _omitFieldNames ? '' : 'confidence')
    ..aI(5, _omitFieldNames ? '' : 'sampleCount')
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalAngleLearningData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LocalAngleLearningData copyWith(
          void Function(LocalAngleLearningData) updates) =>
      super.copyWith((message) => updates(message as LocalAngleLearningData))
          as LocalAngleLearningData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalAngleLearningData create() => LocalAngleLearningData._();
  @$core.override
  LocalAngleLearningData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LocalAngleLearningData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LocalAngleLearningData>(create);
  static LocalAngleLearningData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get learnedAngle => $_getN(2);
  @$pb.TagNumber(3)
  set learnedAngle($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLearnedAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearLearnedAngle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get confidence => $_getN(3);
  @$pb.TagNumber(4)
  set confidence($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfidence() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get sampleCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set sampleCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSampleCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearSampleCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $3.Timestamp get lastUpdated => $_getN(5);
  @$pb.TagNumber(6)
  set lastUpdated($3.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLastUpdated() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastUpdated() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensureLastUpdated() => $_ensure(5);
}

/// 全局学习结果
class GlobalAngleLearningResult extends $pb.GeneratedMessage {
  factory GlobalAngleLearningResult({
    $2.PositionData_t? logicLocation,
    $core.double? learnedAngle,
    $core.double? confidence,
    LearningStatus? status,
    $core.int? sampleCount,
    $core.int? vehicleCount,
    $core.double? stdDeviation,
    $core.Iterable<AngleSample>? samples,
    $3.Timestamp? lastUpdated,
  }) {
    final result = create();
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (learnedAngle != null) result.learnedAngle = learnedAngle;
    if (confidence != null) result.confidence = confidence;
    if (status != null) result.status = status;
    if (sampleCount != null) result.sampleCount = sampleCount;
    if (vehicleCount != null) result.vehicleCount = vehicleCount;
    if (stdDeviation != null) result.stdDeviation = stdDeviation;
    if (samples != null) result.samples.addAll(samples);
    if (lastUpdated != null) result.lastUpdated = lastUpdated;
    return result;
  }

  GlobalAngleLearningResult._();

  factory GlobalAngleLearningResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlobalAngleLearningResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlobalAngleLearningResult',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aOM<$2.PositionData_t>(1, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aD(2, _omitFieldNames ? '' : 'learnedAngle')
    ..aD(3, _omitFieldNames ? '' : 'confidence')
    ..aE<LearningStatus>(4, _omitFieldNames ? '' : 'status',
        enumValues: LearningStatus.values)
    ..aI(5, _omitFieldNames ? '' : 'sampleCount')
    ..aI(6, _omitFieldNames ? '' : 'vehicleCount')
    ..aD(7, _omitFieldNames ? '' : 'stdDeviation')
    ..pPM<AngleSample>(8, _omitFieldNames ? '' : 'samples',
        subBuilder: AngleSample.create)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalAngleLearningResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalAngleLearningResult copyWith(
          void Function(GlobalAngleLearningResult) updates) =>
      super.copyWith((message) => updates(message as GlobalAngleLearningResult))
          as GlobalAngleLearningResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalAngleLearningResult create() => GlobalAngleLearningResult._();
  @$core.override
  GlobalAngleLearningResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlobalAngleLearningResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlobalAngleLearningResult>(create);
  static GlobalAngleLearningResult? _defaultInstance;

  @$pb.TagNumber(1)
  $2.PositionData_t get logicLocation => $_getN(0);
  @$pb.TagNumber(1)
  set logicLocation($2.PositionData_t value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLogicLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogicLocation() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.PositionData_t ensureLogicLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get learnedAngle => $_getN(1);
  @$pb.TagNumber(2)
  set learnedAngle($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLearnedAngle() => $_has(1);
  @$pb.TagNumber(2)
  void clearLearnedAngle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get confidence => $_getN(2);
  @$pb.TagNumber(3)
  set confidence($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfidence() => $_clearField(3);

  @$pb.TagNumber(4)
  LearningStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(LearningStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get sampleCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set sampleCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSampleCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearSampleCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get vehicleCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set vehicleCount($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVehicleCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearVehicleCount() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get stdDeviation => $_getN(6);
  @$pb.TagNumber(7)
  set stdDeviation($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStdDeviation() => $_has(6);
  @$pb.TagNumber(7)
  void clearStdDeviation() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<AngleSample> get samples => $_getList(7);

  @$pb.TagNumber(9)
  $3.Timestamp get lastUpdated => $_getN(8);
  @$pb.TagNumber(9)
  set lastUpdated($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasLastUpdated() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastUpdated() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureLastUpdated() => $_ensure(8);
}

/// 角度学习上报请求（单车上报）
class ReportAngleLearningRequest extends $pb.GeneratedMessage {
  factory ReportAngleLearningRequest({
    $fixnum.Int64? carId,
    $core.String? carType,
    $2.PositionData_t? logicLocation,
    $core.double? carHeading,
    $core.double? movementDirection,
    $core.double? movementSpeed,
    $core.double? learnedAngle,
    $core.double? clarity,
    HealthStatus? markerHealthStatus,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (carType != null) result.carType = carType;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (carHeading != null) result.carHeading = carHeading;
    if (movementDirection != null) result.movementDirection = movementDirection;
    if (movementSpeed != null) result.movementSpeed = movementSpeed;
    if (learnedAngle != null) result.learnedAngle = learnedAngle;
    if (clarity != null) result.clarity = clarity;
    if (markerHealthStatus != null)
      result.markerHealthStatus = markerHealthStatus;
    return result;
  }

  ReportAngleLearningRequest._();

  factory ReportAngleLearningRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportAngleLearningRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportAngleLearningRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOS(2, _omitFieldNames ? '' : 'carType')
    ..aOM<$2.PositionData_t>(3, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aD(4, _omitFieldNames ? '' : 'carHeading')
    ..aD(5, _omitFieldNames ? '' : 'movementDirection')
    ..aD(6, _omitFieldNames ? '' : 'movementSpeed')
    ..aD(7, _omitFieldNames ? '' : 'learnedAngle')
    ..aD(8, _omitFieldNames ? '' : 'clarity')
    ..aE<HealthStatus>(9, _omitFieldNames ? '' : 'markerHealthStatus',
        enumValues: HealthStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportAngleLearningRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportAngleLearningRequest copyWith(
          void Function(ReportAngleLearningRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ReportAngleLearningRequest))
          as ReportAngleLearningRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportAngleLearningRequest create() => ReportAngleLearningRequest._();
  @$core.override
  ReportAngleLearningRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportAngleLearningRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportAngleLearningRequest>(create);
  static ReportAngleLearningRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get carType => $_getSZ(1);
  @$pb.TagNumber(2)
  set carType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarType() => $_clearField(2);

  @$pb.TagNumber(3)
  $2.PositionData_t get logicLocation => $_getN(2);
  @$pb.TagNumber(3)
  set logicLocation($2.PositionData_t value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLogicLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLogicLocation() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.PositionData_t ensureLogicLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get carHeading => $_getN(3);
  @$pb.TagNumber(4)
  set carHeading($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCarHeading() => $_has(3);
  @$pb.TagNumber(4)
  void clearCarHeading() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get movementDirection => $_getN(4);
  @$pb.TagNumber(5)
  set movementDirection($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMovementDirection() => $_has(4);
  @$pb.TagNumber(5)
  void clearMovementDirection() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get movementSpeed => $_getN(5);
  @$pb.TagNumber(6)
  set movementSpeed($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMovementSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearMovementSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get learnedAngle => $_getN(6);
  @$pb.TagNumber(7)
  set learnedAngle($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLearnedAngle() => $_has(6);
  @$pb.TagNumber(7)
  void clearLearnedAngle() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get clarity => $_getN(7);
  @$pb.TagNumber(8)
  set clarity($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasClarity() => $_has(7);
  @$pb.TagNumber(8)
  void clearClarity() => $_clearField(8);

  @$pb.TagNumber(9)
  HealthStatus get markerHealthStatus => $_getN(8);
  @$pb.TagNumber(9)
  set markerHealthStatus(HealthStatus value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMarkerHealthStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearMarkerHealthStatus() => $_clearField(9);
}

/// 角度学习上报响应
class ReportAngleLearningResponse extends $pb.GeneratedMessage {
  factory ReportAngleLearningResponse({
    $core.bool? success,
    $core.String? message,
    GlobalAngleLearningResult? globalResult,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    if (globalResult != null) result.globalResult = globalResult;
    return result;
  }

  ReportAngleLearningResponse._();

  factory ReportAngleLearningResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportAngleLearningResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportAngleLearningResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOM<GlobalAngleLearningResult>(3, _omitFieldNames ? '' : 'globalResult',
        subBuilder: GlobalAngleLearningResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportAngleLearningResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportAngleLearningResponse copyWith(
          void Function(ReportAngleLearningResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ReportAngleLearningResponse))
          as ReportAngleLearningResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportAngleLearningResponse create() =>
      ReportAngleLearningResponse._();
  @$core.override
  ReportAngleLearningResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReportAngleLearningResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportAngleLearningResponse>(create);
  static ReportAngleLearningResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  GlobalAngleLearningResult get globalResult => $_getN(2);
  @$pb.TagNumber(3)
  set globalResult(GlobalAngleLearningResult value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGlobalResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearGlobalResult() => $_clearField(3);
  @$pb.TagNumber(3)
  GlobalAngleLearningResult ensureGlobalResult() => $_ensure(2);
}

/// 查询角度学习结果请求
class QueryAngleLearningRequest extends $pb.GeneratedMessage {
  factory QueryAngleLearningRequest({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
    $core.bool? includeSamples,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (includeSamples != null) result.includeSamples = includeSamples;
    return result;
  }

  QueryAngleLearningRequest._();

  factory QueryAngleLearningRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryAngleLearningRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryAngleLearningRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aOB(3, _omitFieldNames ? '' : 'includeSamples')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryAngleLearningRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryAngleLearningRequest copyWith(
          void Function(QueryAngleLearningRequest) updates) =>
      super.copyWith((message) => updates(message as QueryAngleLearningRequest))
          as QueryAngleLearningRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAngleLearningRequest create() => QueryAngleLearningRequest._();
  @$core.override
  QueryAngleLearningRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryAngleLearningRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryAngleLearningRequest>(create);
  static QueryAngleLearningRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get includeSamples => $_getBF(2);
  @$pb.TagNumber(3)
  set includeSamples($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIncludeSamples() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncludeSamples() => $_clearField(3);
}

/// 查询角度学习结果响应
class QueryAngleLearningResponse extends $pb.GeneratedMessage {
  factory QueryAngleLearningResponse({
    LocalAngleLearningData? localLearning,
    GlobalAngleLearningResult? globalLearning,
    $core.double? finalAngle,
    $core.double? localWeight,
    $core.double? globalWeight,
  }) {
    final result = create();
    if (localLearning != null) result.localLearning = localLearning;
    if (globalLearning != null) result.globalLearning = globalLearning;
    if (finalAngle != null) result.finalAngle = finalAngle;
    if (localWeight != null) result.localWeight = localWeight;
    if (globalWeight != null) result.globalWeight = globalWeight;
    return result;
  }

  QueryAngleLearningResponse._();

  factory QueryAngleLearningResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory QueryAngleLearningResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryAngleLearningResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aOM<LocalAngleLearningData>(1, _omitFieldNames ? '' : 'localLearning',
        subBuilder: LocalAngleLearningData.create)
    ..aOM<GlobalAngleLearningResult>(2, _omitFieldNames ? '' : 'globalLearning',
        subBuilder: GlobalAngleLearningResult.create)
    ..aD(3, _omitFieldNames ? '' : 'finalAngle')
    ..aD(4, _omitFieldNames ? '' : 'localWeight')
    ..aD(5, _omitFieldNames ? '' : 'globalWeight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryAngleLearningResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  QueryAngleLearningResponse copyWith(
          void Function(QueryAngleLearningResponse) updates) =>
      super.copyWith(
              (message) => updates(message as QueryAngleLearningResponse))
          as QueryAngleLearningResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryAngleLearningResponse create() => QueryAngleLearningResponse._();
  @$core.override
  QueryAngleLearningResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static QueryAngleLearningResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryAngleLearningResponse>(create);
  static QueryAngleLearningResponse? _defaultInstance;

  @$pb.TagNumber(1)
  LocalAngleLearningData get localLearning => $_getN(0);
  @$pb.TagNumber(1)
  set localLearning(LocalAngleLearningData value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalLearning() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalLearning() => $_clearField(1);
  @$pb.TagNumber(1)
  LocalAngleLearningData ensureLocalLearning() => $_ensure(0);

  @$pb.TagNumber(2)
  GlobalAngleLearningResult get globalLearning => $_getN(1);
  @$pb.TagNumber(2)
  set globalLearning(GlobalAngleLearningResult value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGlobalLearning() => $_has(1);
  @$pb.TagNumber(2)
  void clearGlobalLearning() => $_clearField(2);
  @$pb.TagNumber(2)
  GlobalAngleLearningResult ensureGlobalLearning() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get finalAngle => $_getN(2);
  @$pb.TagNumber(3)
  set finalAngle($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFinalAngle() => $_has(2);
  @$pb.TagNumber(3)
  void clearFinalAngle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get localWeight => $_getN(3);
  @$pb.TagNumber(4)
  set localWeight($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLocalWeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalWeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get globalWeight => $_getN(4);
  @$pb.TagNumber(5)
  set globalWeight($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGlobalWeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearGlobalWeight() => $_clearField(5);
}

/// 批量查询角度学习结果请求
class BatchQueryAngleLearningRequest extends $pb.GeneratedMessage {
  factory BatchQueryAngleLearningRequest({
    $core.Iterable<$2.PositionData_t>? logicLocations,
    $fixnum.Int64? carId,
  }) {
    final result = create();
    if (logicLocations != null) result.logicLocations.addAll(logicLocations);
    if (carId != null) result.carId = carId;
    return result;
  }

  BatchQueryAngleLearningRequest._();

  factory BatchQueryAngleLearningRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatchQueryAngleLearningRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchQueryAngleLearningRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..pPM<$2.PositionData_t>(1, _omitFieldNames ? '' : 'logicLocations',
        subBuilder: $2.PositionData_t.create)
    ..aInt64(2, _omitFieldNames ? '' : 'carId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatchQueryAngleLearningRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatchQueryAngleLearningRequest copyWith(
          void Function(BatchQueryAngleLearningRequest) updates) =>
      super.copyWith(
              (message) => updates(message as BatchQueryAngleLearningRequest))
          as BatchQueryAngleLearningRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchQueryAngleLearningRequest create() =>
      BatchQueryAngleLearningRequest._();
  @$core.override
  BatchQueryAngleLearningRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatchQueryAngleLearningRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchQueryAngleLearningRequest>(create);
  static BatchQueryAngleLearningRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.PositionData_t> get logicLocations => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get carId => $_getI64(1);
  @$pb.TagNumber(2)
  set carId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCarId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCarId() => $_clearField(2);
}

/// 批量查询角度学习结果响应
class BatchQueryAngleLearningResponse extends $pb.GeneratedMessage {
  factory BatchQueryAngleLearningResponse({
    $core.Iterable<$core.MapEntry<$core.String, QueryAngleLearningResponse>>?
        results,
  }) {
    final result = create();
    if (results != null) result.results.addEntries(results);
    return result;
  }

  BatchQueryAngleLearningResponse._();

  factory BatchQueryAngleLearningResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatchQueryAngleLearningResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatchQueryAngleLearningResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..m<$core.String, QueryAngleLearningResponse>(
        1, _omitFieldNames ? '' : 'results',
        entryClassName: 'BatchQueryAngleLearningResponse.ResultsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: QueryAngleLearningResponse.create,
        valueDefaultOrMaker: QueryAngleLearningResponse.getDefault,
        packageName: const $pb.PackageName('galaxis.site.health'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatchQueryAngleLearningResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatchQueryAngleLearningResponse copyWith(
          void Function(BatchQueryAngleLearningResponse) updates) =>
      super.copyWith(
              (message) => updates(message as BatchQueryAngleLearningResponse))
          as BatchQueryAngleLearningResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchQueryAngleLearningResponse create() =>
      BatchQueryAngleLearningResponse._();
  @$core.override
  BatchQueryAngleLearningResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatchQueryAngleLearningResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatchQueryAngleLearningResponse>(
          create);
  static BatchQueryAngleLearningResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, QueryAngleLearningResponse> get results =>
      $_getMap(0);
}

/// 重置角度学习数据请求
class ResetAngleLearningRequest extends $pb.GeneratedMessage {
  factory ResetAngleLearningRequest({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
    $core.bool? resetAll,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (resetAll != null) result.resetAll = resetAll;
    return result;
  }

  ResetAngleLearningRequest._();

  factory ResetAngleLearningRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResetAngleLearningRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResetAngleLearningRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aOB(3, _omitFieldNames ? '' : 'resetAll')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetAngleLearningRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetAngleLearningRequest copyWith(
          void Function(ResetAngleLearningRequest) updates) =>
      super.copyWith((message) => updates(message as ResetAngleLearningRequest))
          as ResetAngleLearningRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetAngleLearningRequest create() => ResetAngleLearningRequest._();
  @$core.override
  ResetAngleLearningRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResetAngleLearningRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResetAngleLearningRequest>(create);
  static ResetAngleLearningRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get resetAll => $_getBF(2);
  @$pb.TagNumber(3)
  set resetAll($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResetAll() => $_has(2);
  @$pb.TagNumber(3)
  void clearResetAll() => $_clearField(3);
}

/// 重置角度学习数据响应
class ResetAngleLearningResponse extends $pb.GeneratedMessage {
  factory ResetAngleLearningResponse({
    $core.bool? success,
    $core.String? message,
    $core.int? resetCount,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    if (resetCount != null) result.resetCount = resetCount;
    return result;
  }

  ResetAngleLearningResponse._();

  factory ResetAngleLearningResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResetAngleLearningResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResetAngleLearningResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aI(3, _omitFieldNames ? '' : 'resetCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetAngleLearningResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResetAngleLearningResponse copyWith(
          void Function(ResetAngleLearningResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ResetAngleLearningResponse))
          as ResetAngleLearningResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResetAngleLearningResponse create() => ResetAngleLearningResponse._();
  @$core.override
  ResetAngleLearningResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResetAngleLearningResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResetAngleLearningResponse>(create);
  static ResetAngleLearningResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get resetCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set resetCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResetCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearResetCount() => $_clearField(3);
}

/// 清除角度学习数据请求（支持更多过滤条件）
class CleanupAngleLearningRequest extends $pb.GeneratedMessage {
  factory CleanupAngleLearningRequest({
    $fixnum.Int64? carId,
    $2.PositionData_t? logicLocation,
    $3.Timestamp? beforeTime,
    LearningStatus? status,
    $core.double? maxConfidence,
    $core.double? minStdDeviation,
    $core.bool? cleanupAll,
    $core.bool? cleanupLocalOnly,
    $core.bool? cleanupGlobalOnly,
  }) {
    final result = create();
    if (carId != null) result.carId = carId;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (beforeTime != null) result.beforeTime = beforeTime;
    if (status != null) result.status = status;
    if (maxConfidence != null) result.maxConfidence = maxConfidence;
    if (minStdDeviation != null) result.minStdDeviation = minStdDeviation;
    if (cleanupAll != null) result.cleanupAll = cleanupAll;
    if (cleanupLocalOnly != null) result.cleanupLocalOnly = cleanupLocalOnly;
    if (cleanupGlobalOnly != null) result.cleanupGlobalOnly = cleanupGlobalOnly;
    return result;
  }

  CleanupAngleLearningRequest._();

  factory CleanupAngleLearningRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CleanupAngleLearningRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CleanupAngleLearningRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aOM<$2.PositionData_t>(2, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: $2.PositionData_t.create)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'beforeTime',
        subBuilder: $3.Timestamp.create)
    ..aE<LearningStatus>(4, _omitFieldNames ? '' : 'status',
        enumValues: LearningStatus.values)
    ..aD(5, _omitFieldNames ? '' : 'maxConfidence')
    ..aD(6, _omitFieldNames ? '' : 'minStdDeviation')
    ..aOB(7, _omitFieldNames ? '' : 'cleanupAll')
    ..aOB(8, _omitFieldNames ? '' : 'cleanupLocalOnly')
    ..aOB(9, _omitFieldNames ? '' : 'cleanupGlobalOnly')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleanupAngleLearningRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleanupAngleLearningRequest copyWith(
          void Function(CleanupAngleLearningRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CleanupAngleLearningRequest))
          as CleanupAngleLearningRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CleanupAngleLearningRequest create() =>
      CleanupAngleLearningRequest._();
  @$core.override
  CleanupAngleLearningRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CleanupAngleLearningRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CleanupAngleLearningRequest>(create);
  static CleanupAngleLearningRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get carId => $_getI64(0);
  @$pb.TagNumber(1)
  set carId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.PositionData_t get logicLocation => $_getN(1);
  @$pb.TagNumber(2)
  set logicLocation($2.PositionData_t value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogicLocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogicLocation() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.PositionData_t ensureLogicLocation() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.Timestamp get beforeTime => $_getN(2);
  @$pb.TagNumber(3)
  set beforeTime($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBeforeTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearBeforeTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureBeforeTime() => $_ensure(2);

  @$pb.TagNumber(4)
  LearningStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status(LearningStatus value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get maxConfidence => $_getN(4);
  @$pb.TagNumber(5)
  set maxConfidence($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxConfidence() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxConfidence() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get minStdDeviation => $_getN(5);
  @$pb.TagNumber(6)
  set minStdDeviation($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMinStdDeviation() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinStdDeviation() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get cleanupAll => $_getBF(6);
  @$pb.TagNumber(7)
  set cleanupAll($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCleanupAll() => $_has(6);
  @$pb.TagNumber(7)
  void clearCleanupAll() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get cleanupLocalOnly => $_getBF(7);
  @$pb.TagNumber(8)
  set cleanupLocalOnly($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCleanupLocalOnly() => $_has(7);
  @$pb.TagNumber(8)
  void clearCleanupLocalOnly() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get cleanupGlobalOnly => $_getBF(8);
  @$pb.TagNumber(9)
  set cleanupGlobalOnly($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCleanupGlobalOnly() => $_has(8);
  @$pb.TagNumber(9)
  void clearCleanupGlobalOnly() => $_clearField(9);
}

/// 清除角度学习数据响应
class CleanupAngleLearningResponse extends $pb.GeneratedMessage {
  factory CleanupAngleLearningResponse({
    $core.bool? success,
    $core.String? message,
    $core.int? localCleanedCount,
    $core.int? globalCleanedCount,
    $core.int? samplesCleanedCount,
  }) {
    final result = create();
    if (success != null) result.success = success;
    if (message != null) result.message = message;
    if (localCleanedCount != null) result.localCleanedCount = localCleanedCount;
    if (globalCleanedCount != null)
      result.globalCleanedCount = globalCleanedCount;
    if (samplesCleanedCount != null)
      result.samplesCleanedCount = samplesCleanedCount;
    return result;
  }

  CleanupAngleLearningResponse._();

  factory CleanupAngleLearningResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CleanupAngleLearningResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CleanupAngleLearningResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aI(3, _omitFieldNames ? '' : 'localCleanedCount')
    ..aI(4, _omitFieldNames ? '' : 'globalCleanedCount')
    ..aI(5, _omitFieldNames ? '' : 'samplesCleanedCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleanupAngleLearningResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CleanupAngleLearningResponse copyWith(
          void Function(CleanupAngleLearningResponse) updates) =>
      super.copyWith(
              (message) => updates(message as CleanupAngleLearningResponse))
          as CleanupAngleLearningResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CleanupAngleLearningResponse create() =>
      CleanupAngleLearningResponse._();
  @$core.override
  CleanupAngleLearningResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CleanupAngleLearningResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CleanupAngleLearningResponse>(create);
  static CleanupAngleLearningResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get localCleanedCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set localCleanedCount($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocalCleanedCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalCleanedCount() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get globalCleanedCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set globalCleanedCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGlobalCleanedCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearGlobalCleanedCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get samplesCleanedCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set samplesCleanedCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSamplesCleanedCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearSamplesCleanedCount() => $_clearField(5);
}

/// 角度学习统计信息
class AngleLearningStatistics extends $pb.GeneratedMessage {
  factory AngleLearningStatistics({
    $core.int? totalLocations,
    $core.int? completedLocations,
    $core.int? collectingLocations,
    $core.int? needRelearnLocations,
    $core.int? totalSamples,
    $core.int? totalVehicles,
    $core.double? averageConfidence,
    $3.Timestamp? lastUpdated,
  }) {
    final result = create();
    if (totalLocations != null) result.totalLocations = totalLocations;
    if (completedLocations != null)
      result.completedLocations = completedLocations;
    if (collectingLocations != null)
      result.collectingLocations = collectingLocations;
    if (needRelearnLocations != null)
      result.needRelearnLocations = needRelearnLocations;
    if (totalSamples != null) result.totalSamples = totalSamples;
    if (totalVehicles != null) result.totalVehicles = totalVehicles;
    if (averageConfidence != null) result.averageConfidence = averageConfidence;
    if (lastUpdated != null) result.lastUpdated = lastUpdated;
    return result;
  }

  AngleLearningStatistics._();

  factory AngleLearningStatistics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AngleLearningStatistics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AngleLearningStatistics',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'totalLocations')
    ..aI(2, _omitFieldNames ? '' : 'completedLocations')
    ..aI(3, _omitFieldNames ? '' : 'collectingLocations')
    ..aI(4, _omitFieldNames ? '' : 'needRelearnLocations')
    ..aI(5, _omitFieldNames ? '' : 'totalSamples')
    ..aI(6, _omitFieldNames ? '' : 'totalVehicles')
    ..aD(7, _omitFieldNames ? '' : 'averageConfidence')
    ..aOM<$3.Timestamp>(8, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleLearningStatistics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleLearningStatistics copyWith(
          void Function(AngleLearningStatistics) updates) =>
      super.copyWith((message) => updates(message as AngleLearningStatistics))
          as AngleLearningStatistics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AngleLearningStatistics create() => AngleLearningStatistics._();
  @$core.override
  AngleLearningStatistics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AngleLearningStatistics getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AngleLearningStatistics>(create);
  static AngleLearningStatistics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalLocations => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalLocations($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalLocations() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalLocations() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get completedLocations => $_getIZ(1);
  @$pb.TagNumber(2)
  set completedLocations($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCompletedLocations() => $_has(1);
  @$pb.TagNumber(2)
  void clearCompletedLocations() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get collectingLocations => $_getIZ(2);
  @$pb.TagNumber(3)
  set collectingLocations($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCollectingLocations() => $_has(2);
  @$pb.TagNumber(3)
  void clearCollectingLocations() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get needRelearnLocations => $_getIZ(3);
  @$pb.TagNumber(4)
  set needRelearnLocations($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNeedRelearnLocations() => $_has(3);
  @$pb.TagNumber(4)
  void clearNeedRelearnLocations() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get totalSamples => $_getIZ(4);
  @$pb.TagNumber(5)
  set totalSamples($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTotalSamples() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalSamples() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get totalVehicles => $_getIZ(5);
  @$pb.TagNumber(6)
  set totalVehicles($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTotalVehicles() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalVehicles() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get averageConfidence => $_getN(6);
  @$pb.TagNumber(7)
  set averageConfidence($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAverageConfidence() => $_has(6);
  @$pb.TagNumber(7)
  void clearAverageConfidence() => $_clearField(7);

  @$pb.TagNumber(8)
  $3.Timestamp get lastUpdated => $_getN(7);
  @$pb.TagNumber(8)
  set lastUpdated($3.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasLastUpdated() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastUpdated() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureLastUpdated() => $_ensure(7);
}

/// 角度学习位置列表响应
class AngleLearningLocationsResponse extends $pb.GeneratedMessage {
  factory AngleLearningLocationsResponse({
    $core.Iterable<GlobalAngleLearningResult>? locations,
    $core.int? totalCount,
  }) {
    final result = create();
    if (locations != null) result.locations.addAll(locations);
    if (totalCount != null) result.totalCount = totalCount;
    return result;
  }

  AngleLearningLocationsResponse._();

  factory AngleLearningLocationsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AngleLearningLocationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AngleLearningLocationsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..pPM<GlobalAngleLearningResult>(1, _omitFieldNames ? '' : 'locations',
        subBuilder: GlobalAngleLearningResult.create)
    ..aI(2, _omitFieldNames ? '' : 'totalCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleLearningLocationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngleLearningLocationsResponse copyWith(
          void Function(AngleLearningLocationsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AngleLearningLocationsResponse))
          as AngleLearningLocationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AngleLearningLocationsResponse create() =>
      AngleLearningLocationsResponse._();
  @$core.override
  AngleLearningLocationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AngleLearningLocationsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AngleLearningLocationsResponse>(create);
  static AngleLearningLocationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GlobalAngleLearningResult> get locations => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get totalCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set totalCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
