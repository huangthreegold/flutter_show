//
//  Generated code. Do not modify.
//  source: types.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// The codehealth service definition.
class NodeDeviationData extends $pb.GeneratedMessage {
  factory NodeDeviationData({
    $fixnum.Int64? diffX,
    $fixnum.Int64? diffY,
    $core.double? rotate,
  }) {
    final $result = create();
    if (diffX != null) {
      $result.diffX = diffX;
    }
    if (diffY != null) {
      $result.diffY = diffY;
    }
    if (rotate != null) {
      $result.rotate = rotate;
    }
    return $result;
  }
  NodeDeviationData._() : super();
  factory NodeDeviationData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeDeviationData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeDeviationData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'diffX')
    ..aInt64(2, _omitFieldNames ? '' : 'diffY')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rotate', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeDeviationData clone() => NodeDeviationData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeDeviationData copyWith(void Function(NodeDeviationData) updates) => super.copyWith((message) => updates(message as NodeDeviationData)) as NodeDeviationData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeDeviationData create() => NodeDeviationData._();
  NodeDeviationData createEmptyInstance() => create();
  static $pb.PbList<NodeDeviationData> createRepeated() => $pb.PbList<NodeDeviationData>();
  @$core.pragma('dart2js:noInline')
  static NodeDeviationData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeDeviationData>(create);
  static NodeDeviationData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get diffX => $_getI64(0);
  @$pb.TagNumber(1)
  set diffX($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiffX() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiffX() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get diffY => $_getI64(1);
  @$pb.TagNumber(2)
  set diffY($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDiffY() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiffY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rotate => $_getN(2);
  @$pb.TagNumber(3)
  set rotate($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRotate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotate() => clearField(3);
}

class MapNodeHealthInfo extends $pb.GeneratedMessage {
  factory MapNodeHealthInfo({
    $fixnum.Int64? nodeId,
    $core.String? markerCode,
    $core.double? decodeSuccessRate,
    NodeDeviationData? deviation,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    if (decodeSuccessRate != null) {
      $result.decodeSuccessRate = decodeSuccessRate;
    }
    if (deviation != null) {
      $result.deviation = deviation;
    }
    return $result;
  }
  MapNodeHealthInfo._() : super();
  factory MapNodeHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapNodeHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapNodeHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOS(2, _omitFieldNames ? '' : 'markerCode')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'decodeSuccessRate', $pb.PbFieldType.OD)
    ..aOM<NodeDeviationData>(4, _omitFieldNames ? '' : 'deviation', subBuilder: NodeDeviationData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapNodeHealthInfo clone() => MapNodeHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapNodeHealthInfo copyWith(void Function(MapNodeHealthInfo) updates) => super.copyWith((message) => updates(message as MapNodeHealthInfo)) as MapNodeHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapNodeHealthInfo create() => MapNodeHealthInfo._();
  MapNodeHealthInfo createEmptyInstance() => create();
  static $pb.PbList<MapNodeHealthInfo> createRepeated() => $pb.PbList<MapNodeHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static MapNodeHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapNodeHealthInfo>(create);
  static MapNodeHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get markerCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set markerCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarkerCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get decodeSuccessRate => $_getN(2);
  @$pb.TagNumber(3)
  set decodeSuccessRate($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecodeSuccessRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecodeSuccessRate() => clearField(3);

  @$pb.TagNumber(4)
  NodeDeviationData get deviation => $_getN(3);
  @$pb.TagNumber(4)
  set deviation(NodeDeviationData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviation() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviation() => clearField(4);
  @$pb.TagNumber(4)
  NodeDeviationData ensureDeviation() => $_ensure(3);
}

class PositionData_t extends $pb.GeneratedMessage {
  factory PositionData_t({
    $fixnum.Int64? localX,
    $fixnum.Int64? localY,
  }) {
    final $result = create();
    if (localX != null) {
      $result.localX = localX;
    }
    if (localY != null) {
      $result.localY = localY;
    }
    return $result;
  }
  PositionData_t._() : super();
  factory PositionData_t.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositionData_t.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionData_t', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'localX')
    ..aInt64(2, _omitFieldNames ? '' : 'localY')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositionData_t clone() => PositionData_t()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositionData_t copyWith(void Function(PositionData_t) updates) => super.copyWith((message) => updates(message as PositionData_t)) as PositionData_t;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionData_t create() => PositionData_t._();
  PositionData_t createEmptyInstance() => create();
  static $pb.PbList<PositionData_t> createRepeated() => $pb.PbList<PositionData_t>();
  @$core.pragma('dart2js:noInline')
  static PositionData_t getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionData_t>(create);
  static PositionData_t? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get localX => $_getI64(0);
  @$pb.TagNumber(1)
  set localX($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalX() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalX() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get localY => $_getI64(1);
  @$pb.TagNumber(2)
  set localY($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocalY() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalY() => clearField(2);
}

class PositionData_f extends $pb.GeneratedMessage {
  factory PositionData_f({
    $core.double? localX,
    $core.double? localY,
  }) {
    final $result = create();
    if (localX != null) {
      $result.localX = localX;
    }
    if (localY != null) {
      $result.localY = localY;
    }
    return $result;
  }
  PositionData_f._() : super();
  factory PositionData_f.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PositionData_f.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionData_f', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'localX', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'localY', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PositionData_f clone() => PositionData_f()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PositionData_f copyWith(void Function(PositionData_f) updates) => super.copyWith((message) => updates(message as PositionData_f)) as PositionData_f;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionData_f create() => PositionData_f._();
  PositionData_f createEmptyInstance() => create();
  static $pb.PbList<PositionData_f> createRepeated() => $pb.PbList<PositionData_f>();
  @$core.pragma('dart2js:noInline')
  static PositionData_f getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionData_f>(create);
  static PositionData_f? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get localX => $_getN(0);
  @$pb.TagNumber(1)
  set localX($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalX() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get localY => $_getN(1);
  @$pb.TagNumber(2)
  set localY($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocalY() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalY() => clearField(2);
}

class CurrentMarkData extends $pb.GeneratedMessage {
  factory CurrentMarkData({
    $fixnum.Int64? carId,
    $fixnum.Int64? nodeId,
    $core.String? markerCode,
    PositionData_t? currentlogiclocation,
    PositionData_t? currentstandardlocation,
    PositionData_f? currentcomputedlocation,
    $core.double? currentDegree,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    if (currentlogiclocation != null) {
      $result.currentlogiclocation = currentlogiclocation;
    }
    if (currentstandardlocation != null) {
      $result.currentstandardlocation = currentstandardlocation;
    }
    if (currentcomputedlocation != null) {
      $result.currentcomputedlocation = currentcomputedlocation;
    }
    if (currentDegree != null) {
      $result.currentDegree = currentDegree;
    }
    return $result;
  }
  CurrentMarkData._() : super();
  factory CurrentMarkData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrentMarkData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurrentMarkData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOS(3, _omitFieldNames ? '' : 'markerCode')
    ..aOM<PositionData_t>(4, _omitFieldNames ? '' : 'currentlogiclocation', subBuilder: PositionData_t.create)
    ..aOM<PositionData_t>(5, _omitFieldNames ? '' : 'currentstandardlocation', subBuilder: PositionData_t.create)
    ..aOM<PositionData_f>(6, _omitFieldNames ? '' : 'currentcomputedlocation', subBuilder: PositionData_f.create)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'currentDegree', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurrentMarkData clone() => CurrentMarkData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurrentMarkData copyWith(void Function(CurrentMarkData) updates) => super.copyWith((message) => updates(message as CurrentMarkData)) as CurrentMarkData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentMarkData create() => CurrentMarkData._();
  CurrentMarkData createEmptyInstance() => create();
  static $pb.PbList<CurrentMarkData> createRepeated() => $pb.PbList<CurrentMarkData>();
  @$core.pragma('dart2js:noInline')
  static CurrentMarkData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrentMarkData>(create);
  static CurrentMarkData? _defaultInstance;

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
  $core.String get markerCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set markerCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarkerCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerCode() => clearField(3);

  @$pb.TagNumber(4)
  PositionData_t get currentlogiclocation => $_getN(3);
  @$pb.TagNumber(4)
  set currentlogiclocation(PositionData_t v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentlogiclocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentlogiclocation() => clearField(4);
  @$pb.TagNumber(4)
  PositionData_t ensureCurrentlogiclocation() => $_ensure(3);

  @$pb.TagNumber(5)
  PositionData_t get currentstandardlocation => $_getN(4);
  @$pb.TagNumber(5)
  set currentstandardlocation(PositionData_t v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentstandardlocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentstandardlocation() => clearField(5);
  @$pb.TagNumber(5)
  PositionData_t ensureCurrentstandardlocation() => $_ensure(4);

  @$pb.TagNumber(6)
  PositionData_f get currentcomputedlocation => $_getN(5);
  @$pb.TagNumber(6)
  set currentcomputedlocation(PositionData_f v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCurrentcomputedlocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentcomputedlocation() => clearField(6);
  @$pb.TagNumber(6)
  PositionData_f ensureCurrentcomputedlocation() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get currentDegree => $_getN(6);
  @$pb.TagNumber(7)
  set currentDegree($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCurrentDegree() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentDegree() => clearField(7);
}

class CodeHealthInfo extends $pb.GeneratedMessage {
  factory CodeHealthInfo({
    $fixnum.Int64? carId,
    $fixnum.Int64? nodeId,
    $core.String? markerCode,
    $core.double? decodeSuccessRate,
    $fixnum.Int64? diffX,
    $fixnum.Int64? diffY,
    $core.double? angle,
  }) {
    final $result = create();
    if (carId != null) {
      $result.carId = carId;
    }
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    if (decodeSuccessRate != null) {
      $result.decodeSuccessRate = decodeSuccessRate;
    }
    if (diffX != null) {
      $result.diffX = diffX;
    }
    if (diffY != null) {
      $result.diffY = diffY;
    }
    if (angle != null) {
      $result.angle = angle;
    }
    return $result;
  }
  CodeHealthInfo._() : super();
  factory CodeHealthInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CodeHealthInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CodeHealthInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOS(3, _omitFieldNames ? '' : 'markerCode')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'decodeSuccessRate', $pb.PbFieldType.OD)
    ..aInt64(5, _omitFieldNames ? '' : 'diffX')
    ..aInt64(6, _omitFieldNames ? '' : 'diffY')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'angle', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CodeHealthInfo clone() => CodeHealthInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CodeHealthInfo copyWith(void Function(CodeHealthInfo) updates) => super.copyWith((message) => updates(message as CodeHealthInfo)) as CodeHealthInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CodeHealthInfo create() => CodeHealthInfo._();
  CodeHealthInfo createEmptyInstance() => create();
  static $pb.PbList<CodeHealthInfo> createRepeated() => $pb.PbList<CodeHealthInfo>();
  @$core.pragma('dart2js:noInline')
  static CodeHealthInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CodeHealthInfo>(create);
  static CodeHealthInfo? _defaultInstance;

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
  $core.String get markerCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set markerCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarkerCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get decodeSuccessRate => $_getN(3);
  @$pb.TagNumber(4)
  set decodeSuccessRate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDecodeSuccessRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecodeSuccessRate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get diffX => $_getI64(4);
  @$pb.TagNumber(5)
  set diffX($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDiffX() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiffX() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get diffY => $_getI64(5);
  @$pb.TagNumber(6)
  set diffY($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDiffY() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiffY() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get angle => $_getN(6);
  @$pb.TagNumber(7)
  set angle($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAngle() => $_has(6);
  @$pb.TagNumber(7)
  void clearAngle() => clearField(7);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
