// This is a generated file - do not edit.
//
// Generated from types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// The codehealth service definition.
class NodeDeviationData extends $pb.GeneratedMessage {
  factory NodeDeviationData({
    $fixnum.Int64? diffX,
    $fixnum.Int64? diffY,
    $core.double? rotate,
  }) {
    final result = create();
    if (diffX != null) result.diffX = diffX;
    if (diffY != null) result.diffY = diffY;
    if (rotate != null) result.rotate = rotate;
    return result;
  }

  NodeDeviationData._();

  factory NodeDeviationData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeDeviationData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeDeviationData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'diffX')
    ..aInt64(2, _omitFieldNames ? '' : 'diffY')
    ..aD(3, _omitFieldNames ? '' : 'rotate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeDeviationData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeDeviationData copyWith(void Function(NodeDeviationData) updates) =>
      super.copyWith((message) => updates(message as NodeDeviationData))
          as NodeDeviationData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeDeviationData create() => NodeDeviationData._();
  @$core.override
  NodeDeviationData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeDeviationData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeDeviationData>(create);
  static NodeDeviationData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get diffX => $_getI64(0);
  @$pb.TagNumber(1)
  set diffX($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDiffX() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiffX() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get diffY => $_getI64(1);
  @$pb.TagNumber(2)
  set diffY($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiffY() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiffY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get rotate => $_getN(2);
  @$pb.TagNumber(3)
  set rotate($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRotate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotate() => $_clearField(3);
}

class MapNodeHealthInfo extends $pb.GeneratedMessage {
  factory MapNodeHealthInfo({
    $fixnum.Int64? nodeId,
    $core.String? markerCode,
    $core.double? decodeSuccessRate,
    NodeDeviationData? deviation,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (markerCode != null) result.markerCode = markerCode;
    if (decodeSuccessRate != null) result.decodeSuccessRate = decodeSuccessRate;
    if (deviation != null) result.deviation = deviation;
    return result;
  }

  MapNodeHealthInfo._();

  factory MapNodeHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapNodeHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapNodeHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOS(2, _omitFieldNames ? '' : 'markerCode')
    ..aD(3, _omitFieldNames ? '' : 'decodeSuccessRate')
    ..aOM<NodeDeviationData>(4, _omitFieldNames ? '' : 'deviation',
        subBuilder: NodeDeviationData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapNodeHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapNodeHealthInfo copyWith(void Function(MapNodeHealthInfo) updates) =>
      super.copyWith((message) => updates(message as MapNodeHealthInfo))
          as MapNodeHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapNodeHealthInfo create() => MapNodeHealthInfo._();
  @$core.override
  MapNodeHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapNodeHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapNodeHealthInfo>(create);
  static MapNodeHealthInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get markerCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set markerCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMarkerCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get decodeSuccessRate => $_getN(2);
  @$pb.TagNumber(3)
  set decodeSuccessRate($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDecodeSuccessRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecodeSuccessRate() => $_clearField(3);

  @$pb.TagNumber(4)
  NodeDeviationData get deviation => $_getN(3);
  @$pb.TagNumber(4)
  set deviation(NodeDeviationData value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasDeviation() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviation() => $_clearField(4);
  @$pb.TagNumber(4)
  NodeDeviationData ensureDeviation() => $_ensure(3);
}

class PositionData_t extends $pb.GeneratedMessage {
  factory PositionData_t({
    $fixnum.Int64? localX,
    $fixnum.Int64? localY,
  }) {
    final result = create();
    if (localX != null) result.localX = localX;
    if (localY != null) result.localY = localY;
    return result;
  }

  PositionData_t._();

  factory PositionData_t.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PositionData_t.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PositionData_t',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'localX')
    ..aInt64(2, _omitFieldNames ? '' : 'localY')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionData_t clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionData_t copyWith(void Function(PositionData_t) updates) =>
      super.copyWith((message) => updates(message as PositionData_t))
          as PositionData_t;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionData_t create() => PositionData_t._();
  @$core.override
  PositionData_t createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PositionData_t getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PositionData_t>(create);
  static PositionData_t? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get localX => $_getI64(0);
  @$pb.TagNumber(1)
  set localX($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalX() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalX() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get localY => $_getI64(1);
  @$pb.TagNumber(2)
  set localY($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocalY() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalY() => $_clearField(2);
}

class PositionData_f extends $pb.GeneratedMessage {
  factory PositionData_f({
    $core.double? localX,
    $core.double? localY,
  }) {
    final result = create();
    if (localX != null) result.localX = localX;
    if (localY != null) result.localY = localY;
    return result;
  }

  PositionData_f._();

  factory PositionData_f.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PositionData_f.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PositionData_f',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'localX')
    ..aD(2, _omitFieldNames ? '' : 'localY')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionData_f clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionData_f copyWith(void Function(PositionData_f) updates) =>
      super.copyWith((message) => updates(message as PositionData_f))
          as PositionData_f;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionData_f create() => PositionData_f._();
  @$core.override
  PositionData_f createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PositionData_f getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PositionData_f>(create);
  static PositionData_f? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get localX => $_getN(0);
  @$pb.TagNumber(1)
  set localX($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalX() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get localY => $_getN(1);
  @$pb.TagNumber(2)
  set localY($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocalY() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalY() => $_clearField(2);
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
    final result = create();
    if (carId != null) result.carId = carId;
    if (nodeId != null) result.nodeId = nodeId;
    if (markerCode != null) result.markerCode = markerCode;
    if (currentlogiclocation != null)
      result.currentlogiclocation = currentlogiclocation;
    if (currentstandardlocation != null)
      result.currentstandardlocation = currentstandardlocation;
    if (currentcomputedlocation != null)
      result.currentcomputedlocation = currentcomputedlocation;
    if (currentDegree != null) result.currentDegree = currentDegree;
    return result;
  }

  CurrentMarkData._();

  factory CurrentMarkData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurrentMarkData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurrentMarkData',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOS(3, _omitFieldNames ? '' : 'markerCode')
    ..aOM<PositionData_t>(4, _omitFieldNames ? '' : 'currentlogiclocation',
        subBuilder: PositionData_t.create)
    ..aOM<PositionData_t>(5, _omitFieldNames ? '' : 'currentstandardlocation',
        subBuilder: PositionData_t.create)
    ..aOM<PositionData_f>(6, _omitFieldNames ? '' : 'currentcomputedlocation',
        subBuilder: PositionData_f.create)
    ..aD(7, _omitFieldNames ? '' : 'currentDegree')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentMarkData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentMarkData copyWith(void Function(CurrentMarkData) updates) =>
      super.copyWith((message) => updates(message as CurrentMarkData))
          as CurrentMarkData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentMarkData create() => CurrentMarkData._();
  @$core.override
  CurrentMarkData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurrentMarkData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurrentMarkData>(create);
  static CurrentMarkData? _defaultInstance;

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
  $core.String get markerCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set markerCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMarkerCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerCode() => $_clearField(3);

  @$pb.TagNumber(4)
  PositionData_t get currentlogiclocation => $_getN(3);
  @$pb.TagNumber(4)
  set currentlogiclocation(PositionData_t value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCurrentlogiclocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentlogiclocation() => $_clearField(4);
  @$pb.TagNumber(4)
  PositionData_t ensureCurrentlogiclocation() => $_ensure(3);

  @$pb.TagNumber(5)
  PositionData_t get currentstandardlocation => $_getN(4);
  @$pb.TagNumber(5)
  set currentstandardlocation(PositionData_t value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCurrentstandardlocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentstandardlocation() => $_clearField(5);
  @$pb.TagNumber(5)
  PositionData_t ensureCurrentstandardlocation() => $_ensure(4);

  @$pb.TagNumber(6)
  PositionData_f get currentcomputedlocation => $_getN(5);
  @$pb.TagNumber(6)
  set currentcomputedlocation(PositionData_f value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCurrentcomputedlocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearCurrentcomputedlocation() => $_clearField(6);
  @$pb.TagNumber(6)
  PositionData_f ensureCurrentcomputedlocation() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.double get currentDegree => $_getN(6);
  @$pb.TagNumber(7)
  set currentDegree($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCurrentDegree() => $_has(6);
  @$pb.TagNumber(7)
  void clearCurrentDegree() => $_clearField(7);
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
    final result = create();
    if (carId != null) result.carId = carId;
    if (nodeId != null) result.nodeId = nodeId;
    if (markerCode != null) result.markerCode = markerCode;
    if (decodeSuccessRate != null) result.decodeSuccessRate = decodeSuccessRate;
    if (diffX != null) result.diffX = diffX;
    if (diffY != null) result.diffY = diffY;
    if (angle != null) result.angle = angle;
    return result;
  }

  CodeHealthInfo._();

  factory CodeHealthInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CodeHealthInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CodeHealthInfo',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.site.health'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'carId')
    ..aInt64(2, _omitFieldNames ? '' : 'nodeId')
    ..aOS(3, _omitFieldNames ? '' : 'markerCode')
    ..aD(4, _omitFieldNames ? '' : 'decodeSuccessRate')
    ..aInt64(5, _omitFieldNames ? '' : 'diffX')
    ..aInt64(6, _omitFieldNames ? '' : 'diffY')
    ..aD(7, _omitFieldNames ? '' : 'angle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CodeHealthInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CodeHealthInfo copyWith(void Function(CodeHealthInfo) updates) =>
      super.copyWith((message) => updates(message as CodeHealthInfo))
          as CodeHealthInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CodeHealthInfo create() => CodeHealthInfo._();
  @$core.override
  CodeHealthInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CodeHealthInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CodeHealthInfo>(create);
  static CodeHealthInfo? _defaultInstance;

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
  $core.String get markerCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set markerCode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMarkerCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkerCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get decodeSuccessRate => $_getN(3);
  @$pb.TagNumber(4)
  set decodeSuccessRate($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDecodeSuccessRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearDecodeSuccessRate() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get diffX => $_getI64(4);
  @$pb.TagNumber(5)
  set diffX($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDiffX() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiffX() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get diffY => $_getI64(5);
  @$pb.TagNumber(6)
  set diffY($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDiffY() => $_has(5);
  @$pb.TagNumber(6)
  void clearDiffY() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get angle => $_getN(6);
  @$pb.TagNumber(7)
  set angle($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAngle() => $_has(6);
  @$pb.TagNumber(7)
  void clearAngle() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
