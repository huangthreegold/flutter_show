// This is a generated file - do not edit.
//
// Generated from elements.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'elements.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'elements.pbenum.dart';

class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (z != null) result.z = z;
    return result;
  }

  Point._();

  factory Point.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Point.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Point',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..aD(3, _omitFieldNames ? '' : 'z')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point copyWith(void Function(Point) updates) =>
      super.copyWith((message) => updates(message as Point)) as Point;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  @$core.override
  Point createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => $_clearField(3);
}

class RouteStationProperties extends $pb.GeneratedMessage {
  factory RouteStationProperties({
    RcsPrivate? rcsPrivate,
    $core.Iterable<$core.int>? goodsSlotOrientation,
    $core.Iterable<$core.int>? goodsSlotLayerHeight,
    $core.Iterable<$fixnum.Int64>? goodsSlotId,
  }) {
    final result = create();
    if (rcsPrivate != null) result.rcsPrivate = rcsPrivate;
    if (goodsSlotOrientation != null)
      result.goodsSlotOrientation.addAll(goodsSlotOrientation);
    if (goodsSlotLayerHeight != null)
      result.goodsSlotLayerHeight.addAll(goodsSlotLayerHeight);
    if (goodsSlotId != null) result.goodsSlotId.addAll(goodsSlotId);
    return result;
  }

  RouteStationProperties._();

  factory RouteStationProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RouteStationProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RouteStationProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aOM<RcsPrivate>(1, _omitFieldNames ? '' : 'rcsPrivate',
        protoName: 'rcsPrivate', subBuilder: RcsPrivate.create)
    ..p<$core.int>(
        2, _omitFieldNames ? '' : 'goodsSlotOrientation', $pb.PbFieldType.K3,
        protoName: 'goodsSlotOrientation')
    ..p<$core.int>(
        3, _omitFieldNames ? '' : 'goodsSlotLayerHeight', $pb.PbFieldType.K3,
        protoName: 'goodsSlotLayerHeight')
    ..p<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'goodsSlotId', $pb.PbFieldType.K6,
        protoName: 'goodsSlotId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RouteStationProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RouteStationProperties copyWith(
          void Function(RouteStationProperties) updates) =>
      super.copyWith((message) => updates(message as RouteStationProperties))
          as RouteStationProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RouteStationProperties create() => RouteStationProperties._();
  @$core.override
  RouteStationProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RouteStationProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RouteStationProperties>(create);
  static RouteStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  RcsPrivate get rcsPrivate => $_getN(0);
  @$pb.TagNumber(1)
  set rcsPrivate(RcsPrivate value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRcsPrivate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRcsPrivate() => $_clearField(1);
  @$pb.TagNumber(1)
  RcsPrivate ensureRcsPrivate() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.int> get goodsSlotOrientation => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get goodsSlotLayerHeight => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$fixnum.Int64> get goodsSlotId => $_getList(3);
}

class StorageSpaceProperties extends $pb.GeneratedMessage {
  factory StorageSpaceProperties({
    $core.Iterable<$fixnum.Int64>? goodsSlotIds,
    $core.Iterable<$core.double>? associatedContainerTypes,
    $core.Iterable<$core.String>? associatedGoodsSlotGroups,
  }) {
    final result = create();
    if (goodsSlotIds != null) result.goodsSlotIds.addAll(goodsSlotIds);
    if (associatedContainerTypes != null)
      result.associatedContainerTypes.addAll(associatedContainerTypes);
    if (associatedGoodsSlotGroups != null)
      result.associatedGoodsSlotGroups.addAll(associatedGoodsSlotGroups);
    return result;
  }

  StorageSpaceProperties._();

  factory StorageSpaceProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StorageSpaceProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageSpaceProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'goodsSlotIds', $pb.PbFieldType.K6,
        protoName: 'goodsSlotIds')
    ..p<$core.double>(2, _omitFieldNames ? '' : 'associatedContainerTypes',
        $pb.PbFieldType.KD,
        protoName: 'associatedContainerTypes')
    ..pPS(3, _omitFieldNames ? '' : 'associatedGoodsSlotGroups',
        protoName: 'associatedGoodsSlotGroups')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageSpaceProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StorageSpaceProperties copyWith(
          void Function(StorageSpaceProperties) updates) =>
      super.copyWith((message) => updates(message as StorageSpaceProperties))
          as StorageSpaceProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageSpaceProperties create() => StorageSpaceProperties._();
  @$core.override
  StorageSpaceProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StorageSpaceProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageSpaceProperties>(create);
  static StorageSpaceProperties? _defaultInstance;

  /// Instance IDs of all goods slots that reside in this storage space
  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get goodsSlotIds => $_getList(0);

  /// Which kinds of containers that goods slots belong to
  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get associatedContainerTypes => $_getList(1);

  /// Which groups that goods slots belong to
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get associatedGoodsSlotGroups => $_getList(2);
}

class ChargerStationProperties extends $pb.GeneratedMessage {
  factory ChargerStationProperties({
    $fixnum.Int64? distanceToCharger,
    $fixnum.Int64? chargerOrientation,
    $core.Iterable<$core.String>? passableRobots,
    $core.int? optionVehicle,
  }) {
    final result = create();
    if (distanceToCharger != null) result.distanceToCharger = distanceToCharger;
    if (chargerOrientation != null)
      result.chargerOrientation = chargerOrientation;
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (optionVehicle != null) result.optionVehicle = optionVehicle;
    return result;
  }

  ChargerStationProperties._();

  factory ChargerStationProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChargerStationProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChargerStationProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'distanceToCharger',
        protoName: 'distanceToCharger')
    ..aInt64(2, _omitFieldNames ? '' : 'chargerOrientation',
        protoName: 'chargerOrientation')
    ..pPS(3, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aI(4, _omitFieldNames ? '' : 'optionVehicle', protoName: 'optionVehicle')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChargerStationProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChargerStationProperties copyWith(
          void Function(ChargerStationProperties) updates) =>
      super.copyWith((message) => updates(message as ChargerStationProperties))
          as ChargerStationProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChargerStationProperties create() => ChargerStationProperties._();
  @$core.override
  ChargerStationProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChargerStationProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChargerStationProperties>(create);
  static ChargerStationProperties? _defaultInstance;

  /// Distance(Unit: millimeter) from station center to charger's contact clip, each kind of robot can calculate the
  /// docking distance by using this property and the robot's own size
  @$pb.TagNumber(1)
  $fixnum.Int64 get distanceToCharger => $_getI64(0);
  @$pb.TagNumber(1)
  set distanceToCharger($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDistanceToCharger() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistanceToCharger() => $_clearField(1);

  /// Orientation(in radian) of the charger's contact clip in the map
  @$pb.TagNumber(2)
  $fixnum.Int64 get chargerOrientation => $_getI64(1);
  @$pb.TagNumber(2)
  set chargerOrientation($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChargerOrientation() => $_has(1);
  @$pb.TagNumber(2)
  void clearChargerOrientation() => $_clearField(2);

  /// Current charging stations are suitable for charging vehicles
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get passableRobots => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get optionVehicle => $_getIZ(3);
  @$pb.TagNumber(4)
  set optionVehicle($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOptionVehicle() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionVehicle() => $_clearField(4);
}

/// Dynamic site attributes (attributes included in all landmark codes inside the elevator)
class DynamicStationProperties extends $pb.GeneratedMessage {
  factory DynamicStationProperties({
    $fixnum.Int64? liftNo,
    $core.Iterable<$fixnum.Int64>? dynamicStationIds,
  }) {
    final result = create();
    if (liftNo != null) result.liftNo = liftNo;
    if (dynamicStationIds != null)
      result.dynamicStationIds.addAll(dynamicStationIds);
    return result;
  }

  DynamicStationProperties._();

  factory DynamicStationProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DynamicStationProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DynamicStationProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'liftNo', protoName: 'liftNo')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'dynamicStationIds', $pb.PbFieldType.K6,
        protoName: 'dynamicStationIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicStationProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DynamicStationProperties copyWith(
          void Function(DynamicStationProperties) updates) =>
      super.copyWith((message) => updates(message as DynamicStationProperties))
          as DynamicStationProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicStationProperties create() => DynamicStationProperties._();
  @$core.override
  DynamicStationProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DynamicStationProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DynamicStationProperties>(create);
  static DynamicStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liftNo => $_getI64(0);
  @$pb.TagNumber(1)
  set liftNo($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLiftNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiftNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get dynamicStationIds => $_getList(1);
}

/// Elevator waiting position attribute
class LiftWaitStationProperties extends $pb.GeneratedMessage {
  factory LiftWaitStationProperties({
    $fixnum.Int64? waitLiftId,
    $core.Iterable<$fixnum.Int64>? nextStationId,
    $core.Iterable<$fixnum.Int64>? type,
    $core.Iterable<$core.String>? blockGroups,
  }) {
    final result = create();
    if (waitLiftId != null) result.waitLiftId = waitLiftId;
    if (nextStationId != null) result.nextStationId.addAll(nextStationId);
    if (type != null) result.type.addAll(type);
    if (blockGroups != null) result.blockGroups.addAll(blockGroups);
    return result;
  }

  LiftWaitStationProperties._();

  factory LiftWaitStationProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LiftWaitStationProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LiftWaitStationProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'waitLiftId', protoName: 'waitLiftId')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'nextStationId', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.K6)
    ..pPS(4, _omitFieldNames ? '' : 'blockGroups')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiftWaitStationProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LiftWaitStationProperties copyWith(
          void Function(LiftWaitStationProperties) updates) =>
      super.copyWith((message) => updates(message as LiftWaitStationProperties))
          as LiftWaitStationProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiftWaitStationProperties create() => LiftWaitStationProperties._();
  @$core.override
  LiftWaitStationProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LiftWaitStationProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LiftWaitStationProperties>(create);
  static LiftWaitStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get waitLiftId => $_getI64(0);
  @$pb.TagNumber(1)
  set waitLiftId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWaitLiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWaitLiftId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get nextStationId => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get type => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get blockGroups => $_getList(3);
}

enum NodeSpecificProperties_NodeProperties {
  routeStationProperties,
  storageSpaceProperties,
  chargerStationProperties,
  dynamicStationProperties,
  liftWaitStationProperties,
  notSet
}

class NodeSpecificProperties extends $pb.GeneratedMessage {
  factory NodeSpecificProperties({
    RouteStationProperties? routeStationProperties,
    StorageSpaceProperties? storageSpaceProperties,
    ChargerStationProperties? chargerStationProperties,
    DynamicStationProperties? dynamicStationProperties,
    LiftWaitStationProperties? liftWaitStationProperties,
  }) {
    final result = create();
    if (routeStationProperties != null)
      result.routeStationProperties = routeStationProperties;
    if (storageSpaceProperties != null)
      result.storageSpaceProperties = storageSpaceProperties;
    if (chargerStationProperties != null)
      result.chargerStationProperties = chargerStationProperties;
    if (dynamicStationProperties != null)
      result.dynamicStationProperties = dynamicStationProperties;
    if (liftWaitStationProperties != null)
      result.liftWaitStationProperties = liftWaitStationProperties;
    return result;
  }

  NodeSpecificProperties._();

  factory NodeSpecificProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeSpecificProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, NodeSpecificProperties_NodeProperties>
      _NodeSpecificProperties_NodePropertiesByTag = {
    2: NodeSpecificProperties_NodeProperties.routeStationProperties,
    3: NodeSpecificProperties_NodeProperties.storageSpaceProperties,
    4: NodeSpecificProperties_NodeProperties.chargerStationProperties,
    5: NodeSpecificProperties_NodeProperties.dynamicStationProperties,
    6: NodeSpecificProperties_NodeProperties.liftWaitStationProperties,
    0: NodeSpecificProperties_NodeProperties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeSpecificProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<RouteStationProperties>(
        2, _omitFieldNames ? '' : 'routeStationProperties',
        protoName: 'routeStationProperties',
        subBuilder: RouteStationProperties.create)
    ..aOM<StorageSpaceProperties>(
        3, _omitFieldNames ? '' : 'storageSpaceProperties',
        protoName: 'storageSpaceProperties',
        subBuilder: StorageSpaceProperties.create)
    ..aOM<ChargerStationProperties>(
        4, _omitFieldNames ? '' : 'chargerStationProperties',
        protoName: 'chargerStationProperties',
        subBuilder: ChargerStationProperties.create)
    ..aOM<DynamicStationProperties>(
        5, _omitFieldNames ? '' : 'dynamicStationProperties',
        protoName: 'dynamicStationProperties',
        subBuilder: DynamicStationProperties.create)
    ..aOM<LiftWaitStationProperties>(
        6, _omitFieldNames ? '' : 'liftWaitStationProperties',
        protoName: 'liftWaitStationProperties',
        subBuilder: LiftWaitStationProperties.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeSpecificProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeSpecificProperties copyWith(
          void Function(NodeSpecificProperties) updates) =>
      super.copyWith((message) => updates(message as NodeSpecificProperties))
          as NodeSpecificProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeSpecificProperties create() => NodeSpecificProperties._();
  @$core.override
  NodeSpecificProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeSpecificProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeSpecificProperties>(create);
  static NodeSpecificProperties? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  NodeSpecificProperties_NodeProperties whichNodeProperties() =>
      _NodeSpecificProperties_NodePropertiesByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearNodeProperties() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  RouteStationProperties get routeStationProperties => $_getN(0);
  @$pb.TagNumber(2)
  set routeStationProperties(RouteStationProperties value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRouteStationProperties() => $_has(0);
  @$pb.TagNumber(2)
  void clearRouteStationProperties() => $_clearField(2);
  @$pb.TagNumber(2)
  RouteStationProperties ensureRouteStationProperties() => $_ensure(0);

  @$pb.TagNumber(3)
  StorageSpaceProperties get storageSpaceProperties => $_getN(1);
  @$pb.TagNumber(3)
  set storageSpaceProperties(StorageSpaceProperties value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStorageSpaceProperties() => $_has(1);
  @$pb.TagNumber(3)
  void clearStorageSpaceProperties() => $_clearField(3);
  @$pb.TagNumber(3)
  StorageSpaceProperties ensureStorageSpaceProperties() => $_ensure(1);

  @$pb.TagNumber(4)
  ChargerStationProperties get chargerStationProperties => $_getN(2);
  @$pb.TagNumber(4)
  set chargerStationProperties(ChargerStationProperties value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasChargerStationProperties() => $_has(2);
  @$pb.TagNumber(4)
  void clearChargerStationProperties() => $_clearField(4);
  @$pb.TagNumber(4)
  ChargerStationProperties ensureChargerStationProperties() => $_ensure(2);

  @$pb.TagNumber(5)
  DynamicStationProperties get dynamicStationProperties => $_getN(3);
  @$pb.TagNumber(5)
  set dynamicStationProperties(DynamicStationProperties value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDynamicStationProperties() => $_has(3);
  @$pb.TagNumber(5)
  void clearDynamicStationProperties() => $_clearField(5);
  @$pb.TagNumber(5)
  DynamicStationProperties ensureDynamicStationProperties() => $_ensure(3);

  @$pb.TagNumber(6)
  LiftWaitStationProperties get liftWaitStationProperties => $_getN(4);
  @$pb.TagNumber(6)
  set liftWaitStationProperties(LiftWaitStationProperties value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLiftWaitStationProperties() => $_has(4);
  @$pb.TagNumber(6)
  void clearLiftWaitStationProperties() => $_clearField(6);
  @$pb.TagNumber(6)
  LiftWaitStationProperties ensureLiftWaitStationProperties() => $_ensure(4);
}

class Node extends $pb.GeneratedMessage {
  factory Node({
    ElementType? elementType,
    $fixnum.Int64? id,
    MarkerType? markerType,
    Point? location,
    Point? logicLocation,
    $core.Iterable<$fixnum.Int64>? zoneId,
    $core.Iterable<NodeSpecificProperties>? properties,
    $core.Iterable<YardDistances>? yardDistances,
    $core.String? markerValue,
    $core.Iterable<NodePropertyType>? nodeTypes,
    $core.Iterable<RotateVelocity>? velocity,
    $core.Iterable<$core.String>? passableRobots,
    $core.Iterable<NodeConstraintProperties>? constraints,
    ForkArmWithLoad? forkArmWithLoad,
    $core.String? partnerNodeCode,
    $core.bool? slamMapOrigin,
    $fixnum.Int64? nodeArea,
  }) {
    final result = create();
    if (elementType != null) result.elementType = elementType;
    if (id != null) result.id = id;
    if (markerType != null) result.markerType = markerType;
    if (location != null) result.location = location;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (zoneId != null) result.zoneId.addAll(zoneId);
    if (properties != null) result.properties.addAll(properties);
    if (yardDistances != null) result.yardDistances.addAll(yardDistances);
    if (markerValue != null) result.markerValue = markerValue;
    if (nodeTypes != null) result.nodeTypes.addAll(nodeTypes);
    if (velocity != null) result.velocity.addAll(velocity);
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (constraints != null) result.constraints.addAll(constraints);
    if (forkArmWithLoad != null) result.forkArmWithLoad = forkArmWithLoad;
    if (partnerNodeCode != null) result.partnerNodeCode = partnerNodeCode;
    if (slamMapOrigin != null) result.slamMapOrigin = slamMapOrigin;
    if (nodeArea != null) result.nodeArea = nodeArea;
    return result;
  }

  Node._();

  factory Node.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Node.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Node',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aE<ElementType>(1, _omitFieldNames ? '' : 'elementType',
        protoName: 'elementType', enumValues: ElementType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aE<MarkerType>(4, _omitFieldNames ? '' : 'markerType',
        protoName: 'markerType', enumValues: MarkerType.values)
    ..aOM<Point>(5, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOM<Point>(6, _omitFieldNames ? '' : 'logicLocation',
        protoName: 'logicLocation', subBuilder: Point.create)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'zoneId', $pb.PbFieldType.K6,
        protoName: 'zoneId')
    ..pPM<NodeSpecificProperties>(8, _omitFieldNames ? '' : 'properties',
        subBuilder: NodeSpecificProperties.create)
    ..pPM<YardDistances>(9, _omitFieldNames ? '' : 'yardDistances',
        protoName: 'yardDistances', subBuilder: YardDistances.create)
    ..aOS(10, _omitFieldNames ? '' : 'markerValue', protoName: 'markerValue')
    ..pc<NodePropertyType>(
        11, _omitFieldNames ? '' : 'nodeTypes', $pb.PbFieldType.KE,
        protoName: 'nodeTypes',
        valueOf: NodePropertyType.valueOf,
        enumValues: NodePropertyType.values,
        defaultEnumValue: NodePropertyType.NODE_PROPERTY_TYPE_UNKNOWN)
    ..pPM<RotateVelocity>(12, _omitFieldNames ? '' : 'velocity',
        subBuilder: RotateVelocity.create)
    ..pPS(13, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..pPM<NodeConstraintProperties>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: NodeConstraintProperties.create)
    ..aOM<ForkArmWithLoad>(15, _omitFieldNames ? '' : 'forkArmWithLoad',
        protoName: 'forkArmWithLoad', subBuilder: ForkArmWithLoad.create)
    ..aOS(16, _omitFieldNames ? '' : 'partnerNodeCode',
        protoName: 'partnerNodeCode')
    ..aOB(17, _omitFieldNames ? '' : 'slamMapOrigin',
        protoName: 'slamMapOrigin')
    ..aInt64(18, _omitFieldNames ? '' : 'nodeArea', protoName: 'nodeArea')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Node clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Node copyWith(void Function(Node) updates) =>
      super.copyWith((message) => updates(message as Node)) as Node;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  @$core.override
  Node createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  /// All nodes must be of type NODE
  @$pb.TagNumber(1)
  ElementType get elementType => $_getN(0);
  @$pb.TagNumber(1)
  set elementType(ElementType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasElementType() => $_has(0);
  @$pb.TagNumber(1)
  void clearElementType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(4)
  MarkerType get markerType => $_getN(2);
  @$pb.TagNumber(4)
  set markerType(MarkerType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMarkerType() => $_has(2);
  @$pb.TagNumber(4)
  void clearMarkerType() => $_clearField(4);

  @$pb.TagNumber(5)
  Point get location => $_getN(3);
  @$pb.TagNumber(5)
  set location(Point value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(5)
  void clearLocation() => $_clearField(5);
  @$pb.TagNumber(5)
  Point ensureLocation() => $_ensure(3);

  @$pb.TagNumber(6)
  Point get logicLocation => $_getN(4);
  @$pb.TagNumber(6)
  set logicLocation(Point value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLogicLocation() => $_has(4);
  @$pb.TagNumber(6)
  void clearLogicLocation() => $_clearField(6);
  @$pb.TagNumber(6)
  Point ensureLogicLocation() => $_ensure(4);

  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get zoneId => $_getList(5);

  @$pb.TagNumber(8)
  $pb.PbList<NodeSpecificProperties> get properties => $_getList(6);

  @$pb.TagNumber(9)
  $pb.PbList<YardDistances> get yardDistances => $_getList(7);

  @$pb.TagNumber(10)
  $core.String get markerValue => $_getSZ(8);
  @$pb.TagNumber(10)
  set markerValue($core.String value) => $_setString(8, value);
  @$pb.TagNumber(10)
  $core.bool hasMarkerValue() => $_has(8);
  @$pb.TagNumber(10)
  void clearMarkerValue() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<NodePropertyType> get nodeTypes => $_getList(9);

  @$pb.TagNumber(12)
  $pb.PbList<RotateVelocity> get velocity => $_getList(10);

  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get passableRobots => $_getList(11);

  @$pb.TagNumber(14)
  $pb.PbList<NodeConstraintProperties> get constraints => $_getList(12);

  @$pb.TagNumber(15)
  ForkArmWithLoad get forkArmWithLoad => $_getN(13);
  @$pb.TagNumber(15)
  set forkArmWithLoad(ForkArmWithLoad value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasForkArmWithLoad() => $_has(13);
  @$pb.TagNumber(15)
  void clearForkArmWithLoad() => $_clearField(15);
  @$pb.TagNumber(15)
  ForkArmWithLoad ensureForkArmWithLoad() => $_ensure(13);

  @$pb.TagNumber(16)
  $core.String get partnerNodeCode => $_getSZ(14);
  @$pb.TagNumber(16)
  set partnerNodeCode($core.String value) => $_setString(14, value);
  @$pb.TagNumber(16)
  $core.bool hasPartnerNodeCode() => $_has(14);
  @$pb.TagNumber(16)
  void clearPartnerNodeCode() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get slamMapOrigin => $_getBF(15);
  @$pb.TagNumber(17)
  set slamMapOrigin($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(17)
  $core.bool hasSlamMapOrigin() => $_has(15);
  @$pb.TagNumber(17)
  void clearSlamMapOrigin() => $_clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get nodeArea => $_getI64(16);
  @$pb.TagNumber(18)
  set nodeArea($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(18)
  $core.bool hasNodeArea() => $_has(16);
  @$pb.TagNumber(18)
  void clearNodeArea() => $_clearField(18);
}

class ForkArmWithLoad extends $pb.GeneratedMessage {
  factory ForkArmWithLoad({
    $fixnum.Int64? forkArmWithLoadExpectedHeight,
    $fixnum.Int64? forkArmWithLoadExpectedHeightMax,
    $fixnum.Int64? forkArmWithLoadExpectedHeightMin,
  }) {
    final result = create();
    if (forkArmWithLoadExpectedHeight != null)
      result.forkArmWithLoadExpectedHeight = forkArmWithLoadExpectedHeight;
    if (forkArmWithLoadExpectedHeightMax != null)
      result.forkArmWithLoadExpectedHeightMax =
          forkArmWithLoadExpectedHeightMax;
    if (forkArmWithLoadExpectedHeightMin != null)
      result.forkArmWithLoadExpectedHeightMin =
          forkArmWithLoadExpectedHeightMin;
    return result;
  }

  ForkArmWithLoad._();

  factory ForkArmWithLoad.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForkArmWithLoad.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForkArmWithLoad',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeight',
        protoName: 'forkArmWithLoadExpectedHeight')
    ..aInt64(2, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeightMax',
        protoName: 'forkArmWithLoadExpectedHeightMax')
    ..aInt64(3, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeightMin',
        protoName: 'forkArmWithLoadExpectedHeightMin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkArmWithLoad clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForkArmWithLoad copyWith(void Function(ForkArmWithLoad) updates) =>
      super.copyWith((message) => updates(message as ForkArmWithLoad))
          as ForkArmWithLoad;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkArmWithLoad create() => ForkArmWithLoad._();
  @$core.override
  ForkArmWithLoad createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ForkArmWithLoad getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForkArmWithLoad>(create);
  static ForkArmWithLoad? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forkArmWithLoadExpectedHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set forkArmWithLoadExpectedHeight($fixnum.Int64 value) =>
      $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasForkArmWithLoadExpectedHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearForkArmWithLoadExpectedHeight() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forkArmWithLoadExpectedHeightMax => $_getI64(1);
  @$pb.TagNumber(2)
  set forkArmWithLoadExpectedHeightMax($fixnum.Int64 value) =>
      $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasForkArmWithLoadExpectedHeightMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearForkArmWithLoadExpectedHeightMax() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get forkArmWithLoadExpectedHeightMin => $_getI64(2);
  @$pb.TagNumber(3)
  set forkArmWithLoadExpectedHeightMin($fixnum.Int64 value) =>
      $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasForkArmWithLoadExpectedHeightMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearForkArmWithLoadExpectedHeightMin() => $_clearField(3);
}

class NodeConstraintProperties extends $pb.GeneratedMessage {
  factory NodeConstraintProperties({
    $core.Iterable<$core.String>? passableRobots,
    ConstraintType? cstType,
    $core.Iterable<Quadrant>? quadrant,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (cstType != null) result.cstType = cstType;
    if (quadrant != null) result.quadrant.addAll(quadrant);
    return result;
  }

  NodeConstraintProperties._();

  factory NodeConstraintProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeConstraintProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeConstraintProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aE<ConstraintType>(2, _omitFieldNames ? '' : 'cstType',
        protoName: 'cstType', enumValues: ConstraintType.values)
    ..pc<Quadrant>(3, _omitFieldNames ? '' : 'quadrant', $pb.PbFieldType.KE,
        valueOf: Quadrant.valueOf,
        enumValues: Quadrant.values,
        defaultEnumValue: Quadrant.QUADRANT_UNKNOWN)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeConstraintProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeConstraintProperties copyWith(
          void Function(NodeConstraintProperties) updates) =>
      super.copyWith((message) => updates(message as NodeConstraintProperties))
          as NodeConstraintProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeConstraintProperties create() => NodeConstraintProperties._();
  @$core.override
  NodeConstraintProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeConstraintProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeConstraintProperties>(create);
  static NodeConstraintProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  ConstraintType get cstType => $_getN(1);
  @$pb.TagNumber(2)
  set cstType(ConstraintType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCstType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCstType() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Quadrant> get quadrant => $_getList(2);
}

class RcsPrivate extends $pb.GeneratedMessage {
  factory RcsPrivate({
    $fixnum.Int64? rackDirection,
    $fixnum.Int64? parkingDirection,
    $fixnum.Int64? roadway,
    $core.Iterable<$core.String>? transNodeRobots,
    $core.Iterable<$core.String>? cellTypeRestRobots,
  }) {
    final result = create();
    if (rackDirection != null) result.rackDirection = rackDirection;
    if (parkingDirection != null) result.parkingDirection = parkingDirection;
    if (roadway != null) result.roadway = roadway;
    if (transNodeRobots != null) result.transNodeRobots.addAll(transNodeRobots);
    if (cellTypeRestRobots != null)
      result.cellTypeRestRobots.addAll(cellTypeRestRobots);
    return result;
  }

  RcsPrivate._();

  factory RcsPrivate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RcsPrivate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RcsPrivate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rackDirection',
        protoName: 'rackDirection')
    ..aInt64(2, _omitFieldNames ? '' : 'parkingDirection',
        protoName: 'parkingDirection')
    ..aInt64(3, _omitFieldNames ? '' : 'roadway')
    ..pPS(4, _omitFieldNames ? '' : 'transNodeRobots',
        protoName: 'transNodeRobots')
    ..pPS(5, _omitFieldNames ? '' : 'cellTypeRestRobots',
        protoName: 'cellTypeRestRobots')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RcsPrivate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RcsPrivate copyWith(void Function(RcsPrivate) updates) =>
      super.copyWith((message) => updates(message as RcsPrivate)) as RcsPrivate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RcsPrivate create() => RcsPrivate._();
  @$core.override
  RcsPrivate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RcsPrivate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RcsPrivate>(create);
  static RcsPrivate? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rackDirection => $_getI64(0);
  @$pb.TagNumber(1)
  set rackDirection($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRackDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearRackDirection() => $_clearField(1);

  /// direction of the FM rack.
  @$pb.TagNumber(2)
  $fixnum.Int64 get parkingDirection => $_getI64(1);
  @$pb.TagNumber(2)
  set parkingDirection($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasParkingDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearParkingDirection() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roadway => $_getI64(2);
  @$pb.TagNumber(3)
  set roadway($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoadway() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadway() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get transNodeRobots => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get cellTypeRestRobots => $_getList(4);
}

class YardDistances extends $pb.GeneratedMessage {
  factory YardDistances({
    $core.Iterable<$core.String>? passableRobots,
    $core.double? offsetX,
    $core.double? offsetY,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (offsetX != null) result.offsetX = offsetX;
    if (offsetY != null) result.offsetY = offsetY;
    return result;
  }

  YardDistances._();

  factory YardDistances.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory YardDistances.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'YardDistances',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aD(2, _omitFieldNames ? '' : 'offsetX')
    ..aD(3, _omitFieldNames ? '' : 'offsetY')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  YardDistances clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  YardDistances copyWith(void Function(YardDistances) updates) =>
      super.copyWith((message) => updates(message as YardDistances))
          as YardDistances;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YardDistances create() => YardDistances._();
  @$core.override
  YardDistances createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static YardDistances getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<YardDistances>(create);
  static YardDistances? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get offsetX => $_getN(1);
  @$pb.TagNumber(2)
  set offsetX($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOffsetX() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffsetX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetY => $_getN(2);
  @$pb.TagNumber(3)
  set offsetY($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOffsetY() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetY() => $_clearField(3);
}

class RouteEdgeProperties extends $pb.GeneratedMessage {
  factory RouteEdgeProperties({
    $core.Iterable<$core.String>? passableRobots,
    StraghtOnVelocity? velocity,
    WalkingType? endPoint1to2,
    WalkingType? endPoint2to1,
    $core.bool? withLoad,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (velocity != null) result.velocity = velocity;
    if (endPoint1to2 != null) result.endPoint1to2 = endPoint1to2;
    if (endPoint2to1 != null) result.endPoint2to1 = endPoint2to1;
    if (withLoad != null) result.withLoad = withLoad;
    return result;
  }

  RouteEdgeProperties._();

  factory RouteEdgeProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RouteEdgeProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RouteEdgeProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aOM<StraghtOnVelocity>(2, _omitFieldNames ? '' : 'velocity',
        subBuilder: StraghtOnVelocity.create)
    ..aE<WalkingType>(3, _omitFieldNames ? '' : 'endPoint1to2',
        protoName: 'endPoint1to2', enumValues: WalkingType.values)
    ..aE<WalkingType>(4, _omitFieldNames ? '' : 'endPoint2to1',
        protoName: 'endPoint2to1', enumValues: WalkingType.values)
    ..aOB(5, _omitFieldNames ? '' : 'withLoad', protoName: 'withLoad')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RouteEdgeProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RouteEdgeProperties copyWith(void Function(RouteEdgeProperties) updates) =>
      super.copyWith((message) => updates(message as RouteEdgeProperties))
          as RouteEdgeProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RouteEdgeProperties create() => RouteEdgeProperties._();
  @$core.override
  RouteEdgeProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RouteEdgeProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RouteEdgeProperties>(create);
  static RouteEdgeProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  StraghtOnVelocity get velocity => $_getN(1);
  @$pb.TagNumber(2)
  set velocity(StraghtOnVelocity value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVelocity() => $_has(1);
  @$pb.TagNumber(2)
  void clearVelocity() => $_clearField(2);
  @$pb.TagNumber(2)
  StraghtOnVelocity ensureVelocity() => $_ensure(1);

  @$pb.TagNumber(3)
  WalkingType get endPoint1to2 => $_getN(2);
  @$pb.TagNumber(3)
  set endPoint1to2(WalkingType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndPoint1to2() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndPoint1to2() => $_clearField(3);

  @$pb.TagNumber(4)
  WalkingType get endPoint2to1 => $_getN(3);
  @$pb.TagNumber(4)
  set endPoint2to1(WalkingType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasEndPoint2to1() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndPoint2to1() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get withLoad => $_getBF(4);
  @$pb.TagNumber(5)
  set withLoad($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasWithLoad() => $_has(4);
  @$pb.TagNumber(5)
  void clearWithLoad() => $_clearField(5);
}

class EdgeSpecificProperties extends $pb.GeneratedMessage {
  factory EdgeSpecificProperties({
    EdgeType? type,
    $core.Iterable<RouteEdgeProperties>? routeEdgeProperties,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (routeEdgeProperties != null)
      result.routeEdgeProperties.addAll(routeEdgeProperties);
    return result;
  }

  EdgeSpecificProperties._();

  factory EdgeSpecificProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EdgeSpecificProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EdgeSpecificProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aE<EdgeType>(1, _omitFieldNames ? '' : 'type',
        enumValues: EdgeType.values)
    ..pPM<RouteEdgeProperties>(2, _omitFieldNames ? '' : 'routeEdgeProperties',
        protoName: 'routeEdgeProperties',
        subBuilder: RouteEdgeProperties.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeSpecificProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeSpecificProperties copyWith(
          void Function(EdgeSpecificProperties) updates) =>
      super.copyWith((message) => updates(message as EdgeSpecificProperties))
          as EdgeSpecificProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdgeSpecificProperties create() => EdgeSpecificProperties._();
  @$core.override
  EdgeSpecificProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EdgeSpecificProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EdgeSpecificProperties>(create);
  static EdgeSpecificProperties? _defaultInstance;

  @$pb.TagNumber(1)
  EdgeType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(EdgeType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<RouteEdgeProperties> get routeEdgeProperties => $_getList(1);
}

class Edge extends $pb.GeneratedMessage {
  factory Edge({
    ElementType? elementType,
    $fixnum.Int64? id,
    $fixnum.Int64? zoneId,
    $fixnum.Int64? endpoint1Id,
    $fixnum.Int64? endpoint2Id,
    EdgeSpecificProperties? properties,
    $core.double? length,
    $core.String? rcsPrivate,
    $core.bool? standardEdge,
    $core.Iterable<NodeConstraintProperties>? constraints,
    AllowPassage? allowPassage,
    $core.String? partnerEdgeCode,
  }) {
    final result = create();
    if (elementType != null) result.elementType = elementType;
    if (id != null) result.id = id;
    if (zoneId != null) result.zoneId = zoneId;
    if (endpoint1Id != null) result.endpoint1Id = endpoint1Id;
    if (endpoint2Id != null) result.endpoint2Id = endpoint2Id;
    if (properties != null) result.properties = properties;
    if (length != null) result.length = length;
    if (rcsPrivate != null) result.rcsPrivate = rcsPrivate;
    if (standardEdge != null) result.standardEdge = standardEdge;
    if (constraints != null) result.constraints.addAll(constraints);
    if (allowPassage != null) result.allowPassage = allowPassage;
    if (partnerEdgeCode != null) result.partnerEdgeCode = partnerEdgeCode;
    return result;
  }

  Edge._();

  factory Edge.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Edge.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Edge',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aE<ElementType>(1, _omitFieldNames ? '' : 'elementType',
        protoName: 'elementType', enumValues: ElementType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aInt64(4, _omitFieldNames ? '' : 'zoneId', protoName: 'zoneId')
    ..aInt64(6, _omitFieldNames ? '' : 'endpoint1Id', protoName: 'endpoint1Id')
    ..aInt64(7, _omitFieldNames ? '' : 'endpoint2Id', protoName: 'endpoint2Id')
    ..aOM<EdgeSpecificProperties>(8, _omitFieldNames ? '' : 'properties',
        subBuilder: EdgeSpecificProperties.create)
    ..aD(9, _omitFieldNames ? '' : 'length')
    ..aOS(10, _omitFieldNames ? '' : 'rcsPrivate', protoName: 'rcsPrivate')
    ..aOB(11, _omitFieldNames ? '' : 'standardEdge', protoName: 'standardEdge')
    ..pPM<NodeConstraintProperties>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: NodeConstraintProperties.create)
    ..aOM<AllowPassage>(13, _omitFieldNames ? '' : 'allowPassage',
        protoName: 'allowPassage', subBuilder: AllowPassage.create)
    ..aOS(14, _omitFieldNames ? '' : 'partnerEdgeCode',
        protoName: 'partnerEdgeCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Edge clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Edge copyWith(void Function(Edge) updates) =>
      super.copyWith((message) => updates(message as Edge)) as Edge;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Edge create() => Edge._();
  @$core.override
  Edge createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Edge getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Edge>(create);
  static Edge? _defaultInstance;

  /// All edges must be of type EDGE
  @$pb.TagNumber(1)
  ElementType get elementType => $_getN(0);
  @$pb.TagNumber(1)
  set elementType(ElementType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasElementType() => $_has(0);
  @$pb.TagNumber(1)
  void clearElementType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get zoneId => $_getI64(2);
  @$pb.TagNumber(4)
  set zoneId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(4)
  $core.bool hasZoneId() => $_has(2);
  @$pb.TagNumber(4)
  void clearZoneId() => $_clearField(4);

  /// Node ID of one end. The start node if this Edge is a route edge
  @$pb.TagNumber(6)
  $fixnum.Int64 get endpoint1Id => $_getI64(3);
  @$pb.TagNumber(6)
  set endpoint1Id($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(6)
  $core.bool hasEndpoint1Id() => $_has(3);
  @$pb.TagNumber(6)
  void clearEndpoint1Id() => $_clearField(6);

  /// Node ID of the other end. The end node if this Edge is a route edge
  @$pb.TagNumber(7)
  $fixnum.Int64 get endpoint2Id => $_getI64(4);
  @$pb.TagNumber(7)
  set endpoint2Id($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(7)
  $core.bool hasEndpoint2Id() => $_has(4);
  @$pb.TagNumber(7)
  void clearEndpoint2Id() => $_clearField(7);

  @$pb.TagNumber(8)
  EdgeSpecificProperties get properties => $_getN(5);
  @$pb.TagNumber(8)
  set properties(EdgeSpecificProperties value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasProperties() => $_has(5);
  @$pb.TagNumber(8)
  void clearProperties() => $_clearField(8);
  @$pb.TagNumber(8)
  EdgeSpecificProperties ensureProperties() => $_ensure(5);

  @$pb.TagNumber(9)
  $core.double get length => $_getN(6);
  @$pb.TagNumber(9)
  set length($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(9)
  $core.bool hasLength() => $_has(6);
  @$pb.TagNumber(9)
  void clearLength() => $_clearField(9);

  /// The data required solely by the RCS system
  @$pb.TagNumber(10)
  $core.String get rcsPrivate => $_getSZ(7);
  @$pb.TagNumber(10)
  set rcsPrivate($core.String value) => $_setString(7, value);
  @$pb.TagNumber(10)
  $core.bool hasRcsPrivate() => $_has(7);
  @$pb.TagNumber(10)
  void clearRcsPrivate() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get standardEdge => $_getBF(8);
  @$pb.TagNumber(11)
  set standardEdge($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(11)
  $core.bool hasStandardEdge() => $_has(8);
  @$pb.TagNumber(11)
  void clearStandardEdge() => $_clearField(11);

  @$pb.TagNumber(12)
  $pb.PbList<NodeConstraintProperties> get constraints => $_getList(9);

  @$pb.TagNumber(13)
  AllowPassage get allowPassage => $_getN(10);
  @$pb.TagNumber(13)
  set allowPassage(AllowPassage value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasAllowPassage() => $_has(10);
  @$pb.TagNumber(13)
  void clearAllowPassage() => $_clearField(13);
  @$pb.TagNumber(13)
  AllowPassage ensureAllowPassage() => $_ensure(10);

  @$pb.TagNumber(14)
  $core.String get partnerEdgeCode => $_getSZ(11);
  @$pb.TagNumber(14)
  set partnerEdgeCode($core.String value) => $_setString(11, value);
  @$pb.TagNumber(14)
  $core.bool hasPartnerEdgeCode() => $_has(11);
  @$pb.TagNumber(14)
  void clearPartnerEdgeCode() => $_clearField(14);
}

class GoodsSlotGroup extends $pb.GeneratedMessage {
  factory GoodsSlotGroup({
    $core.String? groupId,
    $core.Iterable<$core.String>? goodsSlotLocalIds,
  }) {
    final result = create();
    if (groupId != null) result.groupId = groupId;
    if (goodsSlotLocalIds != null)
      result.goodsSlotLocalIds.addAll(goodsSlotLocalIds);
    return result;
  }

  GoodsSlotGroup._();

  factory GoodsSlotGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsSlotGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsSlotGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..pPS(2, _omitFieldNames ? '' : 'goodsSlotLocalIds',
        protoName: 'goodsSlotLocalIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlotGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlotGroup copyWith(void Function(GoodsSlotGroup) updates) =>
      super.copyWith((message) => updates(message as GoodsSlotGroup))
          as GoodsSlotGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlotGroup create() => GoodsSlotGroup._();
  @$core.override
  GoodsSlotGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsSlotGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoodsSlotGroup>(create);
  static GoodsSlotGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get goodsSlotLocalIds => $_getList(1);
}

class Rack extends $pb.GeneratedMessage {
  factory Rack({
    $core.int? type,
    $core.Iterable<$core.double>? orientation,
    $core.String? displayNumber,
    $core.String? number,
    $core.int? beamHeight,
    $core.int? uprightWidth,
    $core.int? topLayerClearance,
    $core.int? distanceToStation,
    $core.String? positioningMarker,
    FeatureType? goodsSlotFeatureType,
    $core.int? goodsSlotFeatureHeight,
    $core.int? goodsPlacementOffset,
    $core.bool? mobile,
    $core.Iterable<$core.int>? layersHeight,
    $core.Iterable<$core.int>? dockingOffsets,
    $core.Iterable<GoodsSlotGroup>? horizontalGoodsSlotGroups,
    $core.Iterable<GoodsSlotGroup>? verticalGoodsSlotGroups,
    $fixnum.Int64? id,
    $fixnum.Int64? toolingDataId,
    $core.int? boxMarkerOffsetToBottom,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (orientation != null) result.orientation.addAll(orientation);
    if (displayNumber != null) result.displayNumber = displayNumber;
    if (number != null) result.number = number;
    if (beamHeight != null) result.beamHeight = beamHeight;
    if (uprightWidth != null) result.uprightWidth = uprightWidth;
    if (topLayerClearance != null) result.topLayerClearance = topLayerClearance;
    if (distanceToStation != null) result.distanceToStation = distanceToStation;
    if (positioningMarker != null) result.positioningMarker = positioningMarker;
    if (goodsSlotFeatureType != null)
      result.goodsSlotFeatureType = goodsSlotFeatureType;
    if (goodsSlotFeatureHeight != null)
      result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    if (goodsPlacementOffset != null)
      result.goodsPlacementOffset = goodsPlacementOffset;
    if (mobile != null) result.mobile = mobile;
    if (layersHeight != null) result.layersHeight.addAll(layersHeight);
    if (dockingOffsets != null) result.dockingOffsets.addAll(dockingOffsets);
    if (horizontalGoodsSlotGroups != null)
      result.horizontalGoodsSlotGroups.addAll(horizontalGoodsSlotGroups);
    if (verticalGoodsSlotGroups != null)
      result.verticalGoodsSlotGroups.addAll(verticalGoodsSlotGroups);
    if (id != null) result.id = id;
    if (toolingDataId != null) result.toolingDataId = toolingDataId;
    if (boxMarkerOffsetToBottom != null)
      result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    return result;
  }

  Rack._();

  factory Rack.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rack.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rack',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type', fieldType: $pb.PbFieldType.OU3)
    ..p<$core.double>(
        2, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.KD)
    ..aOS(3, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..aOS(4, _omitFieldNames ? '' : 'number')
    ..aI(5, _omitFieldNames ? '' : 'beamHeight',
        protoName: 'beamHeight', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'uprightWidth',
        protoName: 'uprightWidth', fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'topLayerClearance',
        protoName: 'topLayerClearance', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'distanceToStation',
        protoName: 'distanceToStation', fieldType: $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'positioningMarker',
        protoName: 'positioningMarker')
    ..aE<FeatureType>(10, _omitFieldNames ? '' : 'goodsSlotFeatureType',
        protoName: 'goodsSlotFeatureType', enumValues: FeatureType.values)
    ..aI(11, _omitFieldNames ? '' : 'goodsSlotFeatureHeight',
        protoName: 'goodsSlotFeatureHeight', fieldType: $pb.PbFieldType.OS3)
    ..aI(12, _omitFieldNames ? '' : 'goodsPlacementOffset',
        protoName: 'goodsPlacementOffset')
    ..aOB(13, _omitFieldNames ? '' : 'mobile')
    ..p<$core.int>(
        14, _omitFieldNames ? '' : 'layersHeight', $pb.PbFieldType.KU3,
        protoName: 'layersHeight')
    ..p<$core.int>(
        15, _omitFieldNames ? '' : 'dockingOffsets', $pb.PbFieldType.KU3,
        protoName: 'dockingOffsets')
    ..pPM<GoodsSlotGroup>(
        16, _omitFieldNames ? '' : 'horizontalGoodsSlotGroups',
        protoName: 'horizontalGoodsSlotGroups',
        subBuilder: GoodsSlotGroup.create)
    ..pPM<GoodsSlotGroup>(17, _omitFieldNames ? '' : 'verticalGoodsSlotGroups',
        protoName: 'verticalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..aInt64(18, _omitFieldNames ? '' : 'id')
    ..aInt64(19, _omitFieldNames ? '' : 'toolingDataId',
        protoName: 'toolingDataId')
    ..aI(20, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom',
        protoName: 'boxMarkerOffsetToBottom', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rack clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rack copyWith(void Function(Rack) updates) =>
      super.copyWith((message) => updates(message as Rack)) as Rack;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rack create() => Rack._();
  @$core.override
  Rack createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rack getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rack>(create);
  static Rack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  /// Orientation in the map, in radian
  @$pb.TagNumber(2)
  $pb.PbList<$core.double> get orientation => $_getList(1);

  /// Customer defined rack number
  @$pb.TagNumber(3)
  $core.String get displayNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayNumber($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDisplayNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayNumber() => $_clearField(3);

  /// Rack number defined by us. Bottom QR code's number of Kiva-rack, e.g.
  @$pb.TagNumber(4)
  $core.String get number => $_getSZ(3);
  @$pb.TagNumber(4)
  set number($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumber() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get beamHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set beamHeight($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBeamHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBeamHeight() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get uprightWidth => $_getIZ(5);
  @$pb.TagNumber(6)
  set uprightWidth($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUprightWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearUprightWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get topLayerClearance => $_getIZ(6);
  @$pb.TagNumber(7)
  set topLayerClearance($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTopLayerClearance() => $_has(6);
  @$pb.TagNumber(7)
  void clearTopLayerClearance() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get distanceToStation => $_getIZ(7);
  @$pb.TagNumber(8)
  set distanceToStation($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDistanceToStation() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistanceToStation() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get positioningMarker => $_getSZ(8);
  @$pb.TagNumber(9)
  set positioningMarker($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPositioningMarker() => $_has(8);
  @$pb.TagNumber(9)
  void clearPositioningMarker() => $_clearField(9);

  @$pb.TagNumber(10)
  FeatureType get goodsSlotFeatureType => $_getN(9);
  @$pb.TagNumber(10)
  set goodsSlotFeatureType(FeatureType value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasGoodsSlotFeatureType() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsSlotFeatureType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get goodsSlotFeatureHeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set goodsSlotFeatureHeight($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsSlotFeatureHeight() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get goodsPlacementOffset => $_getIZ(11);
  @$pb.TagNumber(12)
  set goodsPlacementOffset($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasGoodsPlacementOffset() => $_has(11);
  @$pb.TagNumber(12)
  void clearGoodsPlacementOffset() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get mobile => $_getBF(12);
  @$pb.TagNumber(13)
  set mobile($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasMobile() => $_has(12);
  @$pb.TagNumber(13)
  void clearMobile() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$core.int> get layersHeight => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<$core.int> get dockingOffsets => $_getList(14);

  @$pb.TagNumber(16)
  $pb.PbList<GoodsSlotGroup> get horizontalGoodsSlotGroups => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<GoodsSlotGroup> get verticalGoodsSlotGroups => $_getList(16);

  @$pb.TagNumber(18)
  $fixnum.Int64 get id => $_getI64(17);
  @$pb.TagNumber(18)
  set id($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(18)
  $core.bool hasId() => $_has(17);
  @$pb.TagNumber(18)
  void clearId() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get toolingDataId => $_getI64(18);
  @$pb.TagNumber(19)
  set toolingDataId($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasToolingDataId() => $_has(18);
  @$pb.TagNumber(19)
  void clearToolingDataId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(19);
  @$pb.TagNumber(20)
  set boxMarkerOffsetToBottom($core.int value) => $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(19);
  @$pb.TagNumber(20)
  void clearBoxMarkerOffsetToBottom() => $_clearField(20);
}

class ToolingData extends $pb.GeneratedMessage {
  factory ToolingData({
    $fixnum.Int64? categoryId,
    $core.int? uprightWidth,
    $core.int? width,
    $core.int? length,
    $core.String? categoryName,
    $core.int? topLayerClearance,
    $core.String? name,
    $fixnum.Int64? id,
    $core.Iterable<LayersHeight>? layersHeight,
    $core.String? positioningMarker,
    $core.int? distanceToStation,
    $core.bool? mobile,
    $fixnum.Int64? goodsStackId,
    $core.bool? stacking,
    $core.bool? slideChute,
    $core.int? goodsSlotFeatureHeight,
    $core.int? boxMarkerOffsetToBottom,
    $core.int? goodsSlotTelescopicDistanceToDetectFeature,
    $core.int? heightOverGoodsSlotWhenPut,
    $core.int? heightOverGoodsSlotWhenGet,
    $core.int? heightGapBetweenForkAndGoodsWhenGet,
    $core.int? heightGapBetweenForkAndGoodsWhenPut,
    $core.int? goodsSlotPillarHeight,
    $core.int? goodsSlotStatusCheckHeight,
    $core.int? rackLegSideOffset,
    $core.int? rackLegFrontOffset,
    $core.int? goodsAllocationNum,
    $core.int? beamHeight,
    FeatureType? goodsSlotFeatureType,
    GoodsAllocation? goodsAlloc,
    $core.Iterable<GoodsSlotGroup>? verticalGoodsSlotGroups,
    $core.Iterable<GoodsSlotGroup>? horizontalGoodsSlotGroups,
  }) {
    final result = create();
    if (categoryId != null) result.categoryId = categoryId;
    if (uprightWidth != null) result.uprightWidth = uprightWidth;
    if (width != null) result.width = width;
    if (length != null) result.length = length;
    if (categoryName != null) result.categoryName = categoryName;
    if (topLayerClearance != null) result.topLayerClearance = topLayerClearance;
    if (name != null) result.name = name;
    if (id != null) result.id = id;
    if (layersHeight != null) result.layersHeight.addAll(layersHeight);
    if (positioningMarker != null) result.positioningMarker = positioningMarker;
    if (distanceToStation != null) result.distanceToStation = distanceToStation;
    if (mobile != null) result.mobile = mobile;
    if (goodsStackId != null) result.goodsStackId = goodsStackId;
    if (stacking != null) result.stacking = stacking;
    if (slideChute != null) result.slideChute = slideChute;
    if (goodsSlotFeatureHeight != null)
      result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    if (boxMarkerOffsetToBottom != null)
      result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    if (goodsSlotTelescopicDistanceToDetectFeature != null)
      result.goodsSlotTelescopicDistanceToDetectFeature =
          goodsSlotTelescopicDistanceToDetectFeature;
    if (heightOverGoodsSlotWhenPut != null)
      result.heightOverGoodsSlotWhenPut = heightOverGoodsSlotWhenPut;
    if (heightOverGoodsSlotWhenGet != null)
      result.heightOverGoodsSlotWhenGet = heightOverGoodsSlotWhenGet;
    if (heightGapBetweenForkAndGoodsWhenGet != null)
      result.heightGapBetweenForkAndGoodsWhenGet =
          heightGapBetweenForkAndGoodsWhenGet;
    if (heightGapBetweenForkAndGoodsWhenPut != null)
      result.heightGapBetweenForkAndGoodsWhenPut =
          heightGapBetweenForkAndGoodsWhenPut;
    if (goodsSlotPillarHeight != null)
      result.goodsSlotPillarHeight = goodsSlotPillarHeight;
    if (goodsSlotStatusCheckHeight != null)
      result.goodsSlotStatusCheckHeight = goodsSlotStatusCheckHeight;
    if (rackLegSideOffset != null) result.rackLegSideOffset = rackLegSideOffset;
    if (rackLegFrontOffset != null)
      result.rackLegFrontOffset = rackLegFrontOffset;
    if (goodsAllocationNum != null)
      result.goodsAllocationNum = goodsAllocationNum;
    if (beamHeight != null) result.beamHeight = beamHeight;
    if (goodsSlotFeatureType != null)
      result.goodsSlotFeatureType = goodsSlotFeatureType;
    if (goodsAlloc != null) result.goodsAlloc = goodsAlloc;
    if (verticalGoodsSlotGroups != null)
      result.verticalGoodsSlotGroups.addAll(verticalGoodsSlotGroups);
    if (horizontalGoodsSlotGroups != null)
      result.horizontalGoodsSlotGroups.addAll(horizontalGoodsSlotGroups);
    return result;
  }

  ToolingData._();

  factory ToolingData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ToolingData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ToolingData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..aI(2, _omitFieldNames ? '' : 'uprightWidth',
        protoName: 'uprightWidth', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'width', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'length', fieldType: $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'categoryName', protoName: 'categoryName')
    ..aI(6, _omitFieldNames ? '' : 'topLayerClearance',
        protoName: 'topLayerClearance', fieldType: $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..aInt64(8, _omitFieldNames ? '' : 'id')
    ..pPM<LayersHeight>(9, _omitFieldNames ? '' : 'layersHeight',
        protoName: 'layersHeight', subBuilder: LayersHeight.create)
    ..aOS(10, _omitFieldNames ? '' : 'positioningMarker',
        protoName: 'positioningMarker')
    ..aI(11, _omitFieldNames ? '' : 'distanceToStation',
        protoName: 'distanceToStation', fieldType: $pb.PbFieldType.OU3)
    ..aOB(12, _omitFieldNames ? '' : 'mobile')
    ..aInt64(13, _omitFieldNames ? '' : 'goodsStackId',
        protoName: 'goodsStackId')
    ..aOB(14, _omitFieldNames ? '' : 'stacking')
    ..aOB(15, _omitFieldNames ? '' : 'slideChute', protoName: 'slideChute')
    ..aI(16, _omitFieldNames ? '' : 'goodsSlotFeatureHeight',
        protoName: 'goodsSlotFeatureHeight', fieldType: $pb.PbFieldType.OS3)
    ..aI(17, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom',
        protoName: 'boxMarkerOffsetToBottom', fieldType: $pb.PbFieldType.OU3)
    ..aI(
        18, _omitFieldNames ? '' : 'goodsSlotTelescopicDistanceToDetectFeature',
        protoName: 'goodsSlotTelescopicDistanceToDetectFeature',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(19, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenPut',
        protoName: 'heightOverGoodsSlotWhenPut', fieldType: $pb.PbFieldType.OU3)
    ..aI(20, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenGet',
        protoName: 'heightOverGoodsSlotWhenGet', fieldType: $pb.PbFieldType.OU3)
    ..aI(21, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenGet',
        protoName: 'heightGapBetweenForkAndGoodsWhenGet',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(22, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenPut',
        protoName: 'heightGapBetweenForkAndGoodsWhenPut',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(23, _omitFieldNames ? '' : 'goodsSlotPillarHeight',
        protoName: 'goodsSlotPillarHeight', fieldType: $pb.PbFieldType.OU3)
    ..aI(24, _omitFieldNames ? '' : 'goodsSlotStatusCheckHeight',
        protoName: 'goodsSlotStatusCheckHeight', fieldType: $pb.PbFieldType.OU3)
    ..aI(25, _omitFieldNames ? '' : 'rackLegSideOffset',
        protoName: 'rackLegSideOffset', fieldType: $pb.PbFieldType.OU3)
    ..aI(26, _omitFieldNames ? '' : 'rackLegFrontOffset',
        protoName: 'rackLegFrontOffset', fieldType: $pb.PbFieldType.OU3)
    ..aI(27, _omitFieldNames ? '' : 'goodsAllocationNum',
        protoName: 'goodsAllocationNum', fieldType: $pb.PbFieldType.OU3)
    ..aI(28, _omitFieldNames ? '' : 'beamHeight',
        protoName: 'beamHeight', fieldType: $pb.PbFieldType.OU3)
    ..aE<FeatureType>(29, _omitFieldNames ? '' : 'goodsSlotFeatureType',
        protoName: 'goodsSlotFeatureType', enumValues: FeatureType.values)
    ..aOM<GoodsAllocation>(30, _omitFieldNames ? '' : 'goodsAlloc',
        protoName: 'goodsAlloc', subBuilder: GoodsAllocation.create)
    ..pPM<GoodsSlotGroup>(31, _omitFieldNames ? '' : 'verticalGoodsSlotGroups',
        protoName: 'verticalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..pPM<GoodsSlotGroup>(
        32, _omitFieldNames ? '' : 'horizontalGoodsSlotGroups',
        protoName: 'horizontalGoodsSlotGroups',
        subBuilder: GoodsSlotGroup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolingData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ToolingData copyWith(void Function(ToolingData) updates) =>
      super.copyWith((message) => updates(message as ToolingData))
          as ToolingData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolingData create() => ToolingData._();
  @$core.override
  ToolingData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ToolingData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ToolingData>(create);
  static ToolingData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get categoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set categoryId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get uprightWidth => $_getIZ(1);
  @$pb.TagNumber(2)
  set uprightWidth($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUprightWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearUprightWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get length => $_getIZ(3);
  @$pb.TagNumber(4)
  set length($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get categoryName => $_getSZ(4);
  @$pb.TagNumber(5)
  set categoryName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCategoryName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get topLayerClearance => $_getIZ(5);
  @$pb.TagNumber(6)
  set topLayerClearance($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopLayerClearance() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopLayerClearance() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get id => $_getI64(7);
  @$pb.TagNumber(8)
  set id($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasId() => $_has(7);
  @$pb.TagNumber(8)
  void clearId() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<LayersHeight> get layersHeight => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get positioningMarker => $_getSZ(9);
  @$pb.TagNumber(10)
  set positioningMarker($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPositioningMarker() => $_has(9);
  @$pb.TagNumber(10)
  void clearPositioningMarker() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get distanceToStation => $_getIZ(10);
  @$pb.TagNumber(11)
  set distanceToStation($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDistanceToStation() => $_has(10);
  @$pb.TagNumber(11)
  void clearDistanceToStation() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get mobile => $_getBF(11);
  @$pb.TagNumber(12)
  set mobile($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMobile() => $_has(11);
  @$pb.TagNumber(12)
  void clearMobile() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get goodsStackId => $_getI64(12);
  @$pb.TagNumber(13)
  set goodsStackId($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasGoodsStackId() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsStackId() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get stacking => $_getBF(13);
  @$pb.TagNumber(14)
  set stacking($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasStacking() => $_has(13);
  @$pb.TagNumber(14)
  void clearStacking() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get slideChute => $_getBF(14);
  @$pb.TagNumber(15)
  set slideChute($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSlideChute() => $_has(14);
  @$pb.TagNumber(15)
  void clearSlideChute() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get goodsSlotFeatureHeight => $_getIZ(15);
  @$pb.TagNumber(16)
  set goodsSlotFeatureHeight($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(15);
  @$pb.TagNumber(16)
  void clearGoodsSlotFeatureHeight() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(16);
  @$pb.TagNumber(17)
  set boxMarkerOffsetToBottom($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(16);
  @$pb.TagNumber(17)
  void clearBoxMarkerOffsetToBottom() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get goodsSlotTelescopicDistanceToDetectFeature => $_getIZ(17);
  @$pb.TagNumber(18)
  set goodsSlotTelescopicDistanceToDetectFeature($core.int value) =>
      $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasGoodsSlotTelescopicDistanceToDetectFeature() => $_has(17);
  @$pb.TagNumber(18)
  void clearGoodsSlotTelescopicDistanceToDetectFeature() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get heightOverGoodsSlotWhenPut => $_getIZ(18);
  @$pb.TagNumber(19)
  set heightOverGoodsSlotWhenPut($core.int value) =>
      $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasHeightOverGoodsSlotWhenPut() => $_has(18);
  @$pb.TagNumber(19)
  void clearHeightOverGoodsSlotWhenPut() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get heightOverGoodsSlotWhenGet => $_getIZ(19);
  @$pb.TagNumber(20)
  set heightOverGoodsSlotWhenGet($core.int value) =>
      $_setUnsignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasHeightOverGoodsSlotWhenGet() => $_has(19);
  @$pb.TagNumber(20)
  void clearHeightOverGoodsSlotWhenGet() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get heightGapBetweenForkAndGoodsWhenGet => $_getIZ(20);
  @$pb.TagNumber(21)
  set heightGapBetweenForkAndGoodsWhenGet($core.int value) =>
      $_setUnsignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenGet() => $_has(20);
  @$pb.TagNumber(21)
  void clearHeightGapBetweenForkAndGoodsWhenGet() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get heightGapBetweenForkAndGoodsWhenPut => $_getIZ(21);
  @$pb.TagNumber(22)
  set heightGapBetweenForkAndGoodsWhenPut($core.int value) =>
      $_setUnsignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenPut() => $_has(21);
  @$pb.TagNumber(22)
  void clearHeightGapBetweenForkAndGoodsWhenPut() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get goodsSlotPillarHeight => $_getIZ(22);
  @$pb.TagNumber(23)
  set goodsSlotPillarHeight($core.int value) => $_setUnsignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasGoodsSlotPillarHeight() => $_has(22);
  @$pb.TagNumber(23)
  void clearGoodsSlotPillarHeight() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get goodsSlotStatusCheckHeight => $_getIZ(23);
  @$pb.TagNumber(24)
  set goodsSlotStatusCheckHeight($core.int value) =>
      $_setUnsignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasGoodsSlotStatusCheckHeight() => $_has(23);
  @$pb.TagNumber(24)
  void clearGoodsSlotStatusCheckHeight() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get rackLegSideOffset => $_getIZ(24);
  @$pb.TagNumber(25)
  set rackLegSideOffset($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasRackLegSideOffset() => $_has(24);
  @$pb.TagNumber(25)
  void clearRackLegSideOffset() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get rackLegFrontOffset => $_getIZ(25);
  @$pb.TagNumber(26)
  set rackLegFrontOffset($core.int value) => $_setUnsignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasRackLegFrontOffset() => $_has(25);
  @$pb.TagNumber(26)
  void clearRackLegFrontOffset() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get goodsAllocationNum => $_getIZ(26);
  @$pb.TagNumber(27)
  set goodsAllocationNum($core.int value) => $_setUnsignedInt32(26, value);
  @$pb.TagNumber(27)
  $core.bool hasGoodsAllocationNum() => $_has(26);
  @$pb.TagNumber(27)
  void clearGoodsAllocationNum() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get beamHeight => $_getIZ(27);
  @$pb.TagNumber(28)
  set beamHeight($core.int value) => $_setUnsignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasBeamHeight() => $_has(27);
  @$pb.TagNumber(28)
  void clearBeamHeight() => $_clearField(28);

  @$pb.TagNumber(29)
  FeatureType get goodsSlotFeatureType => $_getN(28);
  @$pb.TagNumber(29)
  set goodsSlotFeatureType(FeatureType value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasGoodsSlotFeatureType() => $_has(28);
  @$pb.TagNumber(29)
  void clearGoodsSlotFeatureType() => $_clearField(29);

  @$pb.TagNumber(30)
  GoodsAllocation get goodsAlloc => $_getN(29);
  @$pb.TagNumber(30)
  set goodsAlloc(GoodsAllocation value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasGoodsAlloc() => $_has(29);
  @$pb.TagNumber(30)
  void clearGoodsAlloc() => $_clearField(30);
  @$pb.TagNumber(30)
  GoodsAllocation ensureGoodsAlloc() => $_ensure(29);

  @$pb.TagNumber(31)
  $pb.PbList<GoodsSlotGroup> get verticalGoodsSlotGroups => $_getList(30);

  @$pb.TagNumber(32)
  $pb.PbList<GoodsSlotGroup> get horizontalGoodsSlotGroups => $_getList(31);
}

class GoodsSlot extends $pb.GeneratedMessage {
  factory GoodsSlot({
    $fixnum.Int64? id,
    $core.String? horizontalGroupId,
    $core.String? verticalGroupId,
    $core.String? localNumber,
    $core.String? displayNumber,
    $core.Iterable<$core.double>? orientation,
    FeatureType? goodsSlotFeatureType,
    $core.int? beamHeight,
    $core.int? layerHeight,
    $core.int? clearance,
    $core.int? width,
    $core.int? distanceToStation,
    $core.int? goodsPlacementOffset,
    $core.Iterable<Gap>? gaps,
    $fixnum.Int64? goodsStackId,
    $core.int? goodsSlotFeatureHeight,
    $fixnum.Int64? linkId,
    $fixnum.Int64? toolId,
    $core.bool? slideChute,
    $core.int? heightOverGoodsSlotWhenPut,
    $core.int? heightOverGoodsSlotWhenGet,
    $core.int? heightGapBetweenForkAndGoodsWhenGet,
    $core.int? heightGapBetweenForkAndGoodsWhenPut,
    $core.int? goodsSlotPillarHeight,
    $core.int? goodsSlotTelescopicDistanceToDetectFeature,
    $core.int? boxMarkerOffsetToBottom,
    $core.int? rackOrientation,
    $core.int? goodsSlotStatusCheckHeight,
    $core.int? goodsSlotOffset,
    $core.int? goodsSlotAdjustGoodsModeWhenPut,
    $core.int? goodsSlotAdjustGoodsModeWhenGet,
    $core.int? goodsSlotForkGoodsClearance,
    $core.int? goodsSlotWaitTimeForExternalSlotEmpty,
    $fixnum.Int64? rackTypeId,
    $core.int? length,
    $core.int? goodsAllocationNum,
    $core.int? goodsAllocationWidth,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (horizontalGroupId != null) result.horizontalGroupId = horizontalGroupId;
    if (verticalGroupId != null) result.verticalGroupId = verticalGroupId;
    if (localNumber != null) result.localNumber = localNumber;
    if (displayNumber != null) result.displayNumber = displayNumber;
    if (orientation != null) result.orientation.addAll(orientation);
    if (goodsSlotFeatureType != null)
      result.goodsSlotFeatureType = goodsSlotFeatureType;
    if (beamHeight != null) result.beamHeight = beamHeight;
    if (layerHeight != null) result.layerHeight = layerHeight;
    if (clearance != null) result.clearance = clearance;
    if (width != null) result.width = width;
    if (distanceToStation != null) result.distanceToStation = distanceToStation;
    if (goodsPlacementOffset != null)
      result.goodsPlacementOffset = goodsPlacementOffset;
    if (gaps != null) result.gaps.addAll(gaps);
    if (goodsStackId != null) result.goodsStackId = goodsStackId;
    if (goodsSlotFeatureHeight != null)
      result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    if (linkId != null) result.linkId = linkId;
    if (toolId != null) result.toolId = toolId;
    if (slideChute != null) result.slideChute = slideChute;
    if (heightOverGoodsSlotWhenPut != null)
      result.heightOverGoodsSlotWhenPut = heightOverGoodsSlotWhenPut;
    if (heightOverGoodsSlotWhenGet != null)
      result.heightOverGoodsSlotWhenGet = heightOverGoodsSlotWhenGet;
    if (heightGapBetweenForkAndGoodsWhenGet != null)
      result.heightGapBetweenForkAndGoodsWhenGet =
          heightGapBetweenForkAndGoodsWhenGet;
    if (heightGapBetweenForkAndGoodsWhenPut != null)
      result.heightGapBetweenForkAndGoodsWhenPut =
          heightGapBetweenForkAndGoodsWhenPut;
    if (goodsSlotPillarHeight != null)
      result.goodsSlotPillarHeight = goodsSlotPillarHeight;
    if (goodsSlotTelescopicDistanceToDetectFeature != null)
      result.goodsSlotTelescopicDistanceToDetectFeature =
          goodsSlotTelescopicDistanceToDetectFeature;
    if (boxMarkerOffsetToBottom != null)
      result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    if (rackOrientation != null) result.rackOrientation = rackOrientation;
    if (goodsSlotStatusCheckHeight != null)
      result.goodsSlotStatusCheckHeight = goodsSlotStatusCheckHeight;
    if (goodsSlotOffset != null) result.goodsSlotOffset = goodsSlotOffset;
    if (goodsSlotAdjustGoodsModeWhenPut != null)
      result.goodsSlotAdjustGoodsModeWhenPut = goodsSlotAdjustGoodsModeWhenPut;
    if (goodsSlotAdjustGoodsModeWhenGet != null)
      result.goodsSlotAdjustGoodsModeWhenGet = goodsSlotAdjustGoodsModeWhenGet;
    if (goodsSlotForkGoodsClearance != null)
      result.goodsSlotForkGoodsClearance = goodsSlotForkGoodsClearance;
    if (goodsSlotWaitTimeForExternalSlotEmpty != null)
      result.goodsSlotWaitTimeForExternalSlotEmpty =
          goodsSlotWaitTimeForExternalSlotEmpty;
    if (rackTypeId != null) result.rackTypeId = rackTypeId;
    if (length != null) result.length = length;
    if (goodsAllocationNum != null)
      result.goodsAllocationNum = goodsAllocationNum;
    if (goodsAllocationWidth != null)
      result.goodsAllocationWidth = goodsAllocationWidth;
    return result;
  }

  GoodsSlot._();

  factory GoodsSlot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsSlot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsSlot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'horizontalGroupId',
        protoName: 'horizontalGroupId')
    ..aOS(4, _omitFieldNames ? '' : 'verticalGroupId',
        protoName: 'verticalGroupId')
    ..aOS(5, _omitFieldNames ? '' : 'localNumber', protoName: 'localNumber')
    ..aOS(6, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..p<$core.double>(
        7, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.KD)
    ..aE<FeatureType>(8, _omitFieldNames ? '' : 'goodsSlotFeatureType',
        protoName: 'goodsSlotFeatureType', enumValues: FeatureType.values)
    ..aI(9, _omitFieldNames ? '' : 'beamHeight', protoName: 'beamHeight')
    ..aI(10, _omitFieldNames ? '' : 'layerHeight', protoName: 'layerHeight')
    ..aI(11, _omitFieldNames ? '' : 'clearance')
    ..aI(12, _omitFieldNames ? '' : 'width')
    ..aI(13, _omitFieldNames ? '' : 'distanceToStation',
        protoName: 'distanceToStation')
    ..aI(14, _omitFieldNames ? '' : 'goodsPlacementOffset',
        protoName: 'goodsPlacementOffset')
    ..pPM<Gap>(15, _omitFieldNames ? '' : 'gaps', subBuilder: Gap.create)
    ..aInt64(16, _omitFieldNames ? '' : 'goodsStackId',
        protoName: 'goodsStackId')
    ..aI(17, _omitFieldNames ? '' : 'goodsSlotFeatureHeight',
        protoName: 'goodsSlotFeatureHeight')
    ..aInt64(18, _omitFieldNames ? '' : 'linkId', protoName: 'linkId')
    ..aInt64(19, _omitFieldNames ? '' : 'toolId', protoName: 'toolId')
    ..aOB(20, _omitFieldNames ? '' : 'slideChute', protoName: 'slideChute')
    ..aI(21, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenPut',
        protoName: 'heightOverGoodsSlotWhenPut')
    ..aI(22, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenGet',
        protoName: 'heightOverGoodsSlotWhenGet')
    ..aI(23, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenGet',
        protoName: 'heightGapBetweenForkAndGoodsWhenGet')
    ..aI(24, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenPut',
        protoName: 'heightGapBetweenForkAndGoodsWhenPut')
    ..aI(25, _omitFieldNames ? '' : 'goodsSlotPillarHeight',
        protoName: 'goodsSlotPillarHeight')
    ..aI(
        26, _omitFieldNames ? '' : 'goodsSlotTelescopicDistanceToDetectFeature',
        protoName: 'goodsSlotTelescopicDistanceToDetectFeature')
    ..aI(27, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom',
        protoName: 'boxMarkerOffsetToBottom')
    ..aI(28, _omitFieldNames ? '' : 'rackOrientation',
        protoName: 'rackOrientation')
    ..aI(29, _omitFieldNames ? '' : 'goodsSlotStatusCheckHeight',
        protoName: 'goodsSlotStatusCheckHeight')
    ..aI(30, _omitFieldNames ? '' : 'goodsSlotOffset',
        protoName: 'goodsSlotOffset')
    ..aI(31, _omitFieldNames ? '' : 'goodsSlotAdjustGoodsModeWhenPut',
        protoName: 'goodsSlotAdjustGoodsModeWhenPut')
    ..aI(32, _omitFieldNames ? '' : 'goodsSlotAdjustGoodsModeWhenGet',
        protoName: 'goodsSlotAdjustGoodsModeWhenGet')
    ..aI(33, _omitFieldNames ? '' : 'goodsSlotForkGoodsClearance',
        protoName: 'goodsSlotForkGoodsClearance')
    ..aI(34, _omitFieldNames ? '' : 'goodsSlotWaitTimeForExternalSlotEmpty',
        protoName: 'goodsSlotWaitTimeForExternalSlotEmpty')
    ..aInt64(35, _omitFieldNames ? '' : 'rackTypeId', protoName: 'rackTypeId')
    ..aI(36, _omitFieldNames ? '' : 'length')
    ..aI(37, _omitFieldNames ? '' : 'goodsAllocationNum',
        protoName: 'goodsAllocationNum')
    ..aI(38, _omitFieldNames ? '' : 'goodsAllocationWidth',
        protoName: 'goodsAllocationWidth')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsSlot copyWith(void Function(GoodsSlot) updates) =>
      super.copyWith((message) => updates(message as GoodsSlot)) as GoodsSlot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlot create() => GoodsSlot._();
  @$core.override
  GoodsSlot createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsSlot getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSlot>(create);
  static GoodsSlot? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.String get horizontalGroupId => $_getSZ(1);
  @$pb.TagNumber(3)
  set horizontalGroupId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasHorizontalGroupId() => $_has(1);
  @$pb.TagNumber(3)
  void clearHorizontalGroupId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get verticalGroupId => $_getSZ(2);
  @$pb.TagNumber(4)
  set verticalGroupId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasVerticalGroupId() => $_has(2);
  @$pb.TagNumber(4)
  void clearVerticalGroupId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get localNumber => $_getSZ(3);
  @$pb.TagNumber(5)
  set localNumber($core.String value) => $_setString(3, value);
  @$pb.TagNumber(5)
  $core.bool hasLocalNumber() => $_has(3);
  @$pb.TagNumber(5)
  void clearLocalNumber() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get displayNumber => $_getSZ(4);
  @$pb.TagNumber(6)
  set displayNumber($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasDisplayNumber() => $_has(4);
  @$pb.TagNumber(6)
  void clearDisplayNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.double> get orientation => $_getList(5);

  @$pb.TagNumber(8)
  FeatureType get goodsSlotFeatureType => $_getN(6);
  @$pb.TagNumber(8)
  set goodsSlotFeatureType(FeatureType value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasGoodsSlotFeatureType() => $_has(6);
  @$pb.TagNumber(8)
  void clearGoodsSlotFeatureType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get beamHeight => $_getIZ(7);
  @$pb.TagNumber(9)
  set beamHeight($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasBeamHeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearBeamHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get layerHeight => $_getIZ(8);
  @$pb.TagNumber(10)
  set layerHeight($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(10)
  $core.bool hasLayerHeight() => $_has(8);
  @$pb.TagNumber(10)
  void clearLayerHeight() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get clearance => $_getIZ(9);
  @$pb.TagNumber(11)
  set clearance($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(11)
  $core.bool hasClearance() => $_has(9);
  @$pb.TagNumber(11)
  void clearClearance() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get width => $_getIZ(10);
  @$pb.TagNumber(12)
  set width($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(12)
  $core.bool hasWidth() => $_has(10);
  @$pb.TagNumber(12)
  void clearWidth() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get distanceToStation => $_getIZ(11);
  @$pb.TagNumber(13)
  set distanceToStation($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(13)
  $core.bool hasDistanceToStation() => $_has(11);
  @$pb.TagNumber(13)
  void clearDistanceToStation() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get goodsPlacementOffset => $_getIZ(12);
  @$pb.TagNumber(14)
  set goodsPlacementOffset($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(14)
  $core.bool hasGoodsPlacementOffset() => $_has(12);
  @$pb.TagNumber(14)
  void clearGoodsPlacementOffset() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<Gap> get gaps => $_getList(13);

  @$pb.TagNumber(16)
  $fixnum.Int64 get goodsStackId => $_getI64(14);
  @$pb.TagNumber(16)
  set goodsStackId($fixnum.Int64 value) => $_setInt64(14, value);
  @$pb.TagNumber(16)
  $core.bool hasGoodsStackId() => $_has(14);
  @$pb.TagNumber(16)
  void clearGoodsStackId() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get goodsSlotFeatureHeight => $_getIZ(15);
  @$pb.TagNumber(17)
  set goodsSlotFeatureHeight($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(17)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(15);
  @$pb.TagNumber(17)
  void clearGoodsSlotFeatureHeight() => $_clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get linkId => $_getI64(16);
  @$pb.TagNumber(18)
  set linkId($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(18)
  $core.bool hasLinkId() => $_has(16);
  @$pb.TagNumber(18)
  void clearLinkId() => $_clearField(18);

  /// to be adjusted synchronously
  @$pb.TagNumber(19)
  $fixnum.Int64 get toolId => $_getI64(17);
  @$pb.TagNumber(19)
  set toolId($fixnum.Int64 value) => $_setInt64(17, value);
  @$pb.TagNumber(19)
  $core.bool hasToolId() => $_has(17);
  @$pb.TagNumber(19)
  void clearToolId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get slideChute => $_getBF(18);
  @$pb.TagNumber(20)
  set slideChute($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(20)
  $core.bool hasSlideChute() => $_has(18);
  @$pb.TagNumber(20)
  void clearSlideChute() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.int get heightOverGoodsSlotWhenPut => $_getIZ(19);
  @$pb.TagNumber(21)
  set heightOverGoodsSlotWhenPut($core.int value) =>
      $_setSignedInt32(19, value);
  @$pb.TagNumber(21)
  $core.bool hasHeightOverGoodsSlotWhenPut() => $_has(19);
  @$pb.TagNumber(21)
  void clearHeightOverGoodsSlotWhenPut() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get heightOverGoodsSlotWhenGet => $_getIZ(20);
  @$pb.TagNumber(22)
  set heightOverGoodsSlotWhenGet($core.int value) =>
      $_setSignedInt32(20, value);
  @$pb.TagNumber(22)
  $core.bool hasHeightOverGoodsSlotWhenGet() => $_has(20);
  @$pb.TagNumber(22)
  void clearHeightOverGoodsSlotWhenGet() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.int get heightGapBetweenForkAndGoodsWhenGet => $_getIZ(21);
  @$pb.TagNumber(23)
  set heightGapBetweenForkAndGoodsWhenGet($core.int value) =>
      $_setSignedInt32(21, value);
  @$pb.TagNumber(23)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenGet() => $_has(21);
  @$pb.TagNumber(23)
  void clearHeightGapBetweenForkAndGoodsWhenGet() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.int get heightGapBetweenForkAndGoodsWhenPut => $_getIZ(22);
  @$pb.TagNumber(24)
  set heightGapBetweenForkAndGoodsWhenPut($core.int value) =>
      $_setSignedInt32(22, value);
  @$pb.TagNumber(24)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenPut() => $_has(22);
  @$pb.TagNumber(24)
  void clearHeightGapBetweenForkAndGoodsWhenPut() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get goodsSlotPillarHeight => $_getIZ(23);
  @$pb.TagNumber(25)
  set goodsSlotPillarHeight($core.int value) => $_setSignedInt32(23, value);
  @$pb.TagNumber(25)
  $core.bool hasGoodsSlotPillarHeight() => $_has(23);
  @$pb.TagNumber(25)
  void clearGoodsSlotPillarHeight() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.int get goodsSlotTelescopicDistanceToDetectFeature => $_getIZ(24);
  @$pb.TagNumber(26)
  set goodsSlotTelescopicDistanceToDetectFeature($core.int value) =>
      $_setSignedInt32(24, value);
  @$pb.TagNumber(26)
  $core.bool hasGoodsSlotTelescopicDistanceToDetectFeature() => $_has(24);
  @$pb.TagNumber(26)
  void clearGoodsSlotTelescopicDistanceToDetectFeature() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(25);
  @$pb.TagNumber(27)
  set boxMarkerOffsetToBottom($core.int value) => $_setSignedInt32(25, value);
  @$pb.TagNumber(27)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(25);
  @$pb.TagNumber(27)
  void clearBoxMarkerOffsetToBottom() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get rackOrientation => $_getIZ(26);
  @$pb.TagNumber(28)
  set rackOrientation($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(28)
  $core.bool hasRackOrientation() => $_has(26);
  @$pb.TagNumber(28)
  void clearRackOrientation() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get goodsSlotStatusCheckHeight => $_getIZ(27);
  @$pb.TagNumber(29)
  set goodsSlotStatusCheckHeight($core.int value) =>
      $_setSignedInt32(27, value);
  @$pb.TagNumber(29)
  $core.bool hasGoodsSlotStatusCheckHeight() => $_has(27);
  @$pb.TagNumber(29)
  void clearGoodsSlotStatusCheckHeight() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get goodsSlotOffset => $_getIZ(28);
  @$pb.TagNumber(30)
  set goodsSlotOffset($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(30)
  $core.bool hasGoodsSlotOffset() => $_has(28);
  @$pb.TagNumber(30)
  void clearGoodsSlotOffset() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get goodsSlotAdjustGoodsModeWhenPut => $_getIZ(29);
  @$pb.TagNumber(31)
  set goodsSlotAdjustGoodsModeWhenPut($core.int value) =>
      $_setSignedInt32(29, value);
  @$pb.TagNumber(31)
  $core.bool hasGoodsSlotAdjustGoodsModeWhenPut() => $_has(29);
  @$pb.TagNumber(31)
  void clearGoodsSlotAdjustGoodsModeWhenPut() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get goodsSlotAdjustGoodsModeWhenGet => $_getIZ(30);
  @$pb.TagNumber(32)
  set goodsSlotAdjustGoodsModeWhenGet($core.int value) =>
      $_setSignedInt32(30, value);
  @$pb.TagNumber(32)
  $core.bool hasGoodsSlotAdjustGoodsModeWhenGet() => $_has(30);
  @$pb.TagNumber(32)
  void clearGoodsSlotAdjustGoodsModeWhenGet() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get goodsSlotForkGoodsClearance => $_getIZ(31);
  @$pb.TagNumber(33)
  set goodsSlotForkGoodsClearance($core.int value) =>
      $_setSignedInt32(31, value);
  @$pb.TagNumber(33)
  $core.bool hasGoodsSlotForkGoodsClearance() => $_has(31);
  @$pb.TagNumber(33)
  void clearGoodsSlotForkGoodsClearance() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.int get goodsSlotWaitTimeForExternalSlotEmpty => $_getIZ(32);
  @$pb.TagNumber(34)
  set goodsSlotWaitTimeForExternalSlotEmpty($core.int value) =>
      $_setSignedInt32(32, value);
  @$pb.TagNumber(34)
  $core.bool hasGoodsSlotWaitTimeForExternalSlotEmpty() => $_has(32);
  @$pb.TagNumber(34)
  void clearGoodsSlotWaitTimeForExternalSlotEmpty() => $_clearField(34);

  @$pb.TagNumber(35)
  $fixnum.Int64 get rackTypeId => $_getI64(33);
  @$pb.TagNumber(35)
  set rackTypeId($fixnum.Int64 value) => $_setInt64(33, value);
  @$pb.TagNumber(35)
  $core.bool hasRackTypeId() => $_has(33);
  @$pb.TagNumber(35)
  void clearRackTypeId() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.int get length => $_getIZ(34);
  @$pb.TagNumber(36)
  set length($core.int value) => $_setSignedInt32(34, value);
  @$pb.TagNumber(36)
  $core.bool hasLength() => $_has(34);
  @$pb.TagNumber(36)
  void clearLength() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.int get goodsAllocationNum => $_getIZ(35);
  @$pb.TagNumber(37)
  set goodsAllocationNum($core.int value) => $_setSignedInt32(35, value);
  @$pb.TagNumber(37)
  $core.bool hasGoodsAllocationNum() => $_has(35);
  @$pb.TagNumber(37)
  void clearGoodsAllocationNum() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.int get goodsAllocationWidth => $_getIZ(36);
  @$pb.TagNumber(38)
  set goodsAllocationWidth($core.int value) => $_setSignedInt32(36, value);
  @$pb.TagNumber(38)
  $core.bool hasGoodsAllocationWidth() => $_has(36);
  @$pb.TagNumber(38)
  void clearGoodsAllocationWidth() => $_clearField(38);
}

class ConflictZone extends $pb.GeneratedMessage {
  factory ConflictZone({
    $fixnum.Int64? id,
    ElementType? elementType,
    $core.Iterable<Point>? pointList,
    $core.Iterable<$core.int>? includeDataId,
    ConflictZoneType? conflictZoneType,
    $core.int? limitedAgvNum,
    $core.Iterable<$core.String>? allowAGVType,
    $core.int? clusterNodeCount,
    $core.int? limitTaskPriority,
    $core.int? limitTaskNum,
    $core.Iterable<$core.String>? enterNode,
    $core.Iterable<$core.String>? exitNode,
    $fixnum.Int64? depthX,
    $fixnum.Int64? depthY,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (elementType != null) result.elementType = elementType;
    if (pointList != null) result.pointList.addAll(pointList);
    if (includeDataId != null) result.includeDataId.addAll(includeDataId);
    if (conflictZoneType != null) result.conflictZoneType = conflictZoneType;
    if (limitedAgvNum != null) result.limitedAgvNum = limitedAgvNum;
    if (allowAGVType != null) result.allowAGVType.addAll(allowAGVType);
    if (clusterNodeCount != null) result.clusterNodeCount = clusterNodeCount;
    if (limitTaskPriority != null) result.limitTaskPriority = limitTaskPriority;
    if (limitTaskNum != null) result.limitTaskNum = limitTaskNum;
    if (enterNode != null) result.enterNode.addAll(enterNode);
    if (exitNode != null) result.exitNode.addAll(exitNode);
    if (depthX != null) result.depthX = depthX;
    if (depthY != null) result.depthY = depthY;
    return result;
  }

  ConflictZone._();

  factory ConflictZone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConflictZone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConflictZone',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aE<ElementType>(2, _omitFieldNames ? '' : 'elementType',
        protoName: 'elementType', enumValues: ElementType.values)
    ..pPM<Point>(3, _omitFieldNames ? '' : 'pointList',
        protoName: 'pointList', subBuilder: Point.create)
    ..p<$core.int>(
        4, _omitFieldNames ? '' : 'includeDataId', $pb.PbFieldType.K3,
        protoName: 'includeDataId')
    ..aE<ConflictZoneType>(5, _omitFieldNames ? '' : 'conflictZoneType',
        protoName: 'conflictZoneType', enumValues: ConflictZoneType.values)
    ..aI(6, _omitFieldNames ? '' : 'limitedAgvNum', protoName: 'limitedAgvNum')
    ..pPS(7, _omitFieldNames ? '' : 'allowAGVType', protoName: 'allowAGVType')
    ..aI(8, _omitFieldNames ? '' : 'clusterNodeCount',
        protoName: 'clusterNodeCount')
    ..aI(9, _omitFieldNames ? '' : 'limitTaskPriority',
        protoName: 'limitTaskPriority')
    ..aI(10, _omitFieldNames ? '' : 'limitTaskNum', protoName: 'limitTaskNum')
    ..pPS(11, _omitFieldNames ? '' : 'enterNode', protoName: 'enterNode')
    ..pPS(12, _omitFieldNames ? '' : 'exitNode', protoName: 'exitNode')
    ..aInt64(13, _omitFieldNames ? '' : 'depthX', protoName: 'depthX')
    ..aInt64(14, _omitFieldNames ? '' : 'depthY', protoName: 'depthY')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConflictZone clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConflictZone copyWith(void Function(ConflictZone) updates) =>
      super.copyWith((message) => updates(message as ConflictZone))
          as ConflictZone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConflictZone create() => ConflictZone._();
  @$core.override
  ConflictZone createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConflictZone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConflictZone>(create);
  static ConflictZone? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  ElementType get elementType => $_getN(1);
  @$pb.TagNumber(2)
  set elementType(ElementType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasElementType() => $_has(1);
  @$pb.TagNumber(2)
  void clearElementType() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<Point> get pointList => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get includeDataId => $_getList(3);

  @$pb.TagNumber(5)
  ConflictZoneType get conflictZoneType => $_getN(4);
  @$pb.TagNumber(5)
  set conflictZoneType(ConflictZoneType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasConflictZoneType() => $_has(4);
  @$pb.TagNumber(5)
  void clearConflictZoneType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get limitedAgvNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set limitedAgvNum($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLimitedAgvNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearLimitedAgvNum() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get allowAGVType => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get clusterNodeCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set clusterNodeCount($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasClusterNodeCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearClusterNodeCount() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get limitTaskPriority => $_getIZ(8);
  @$pb.TagNumber(9)
  set limitTaskPriority($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLimitTaskPriority() => $_has(8);
  @$pb.TagNumber(9)
  void clearLimitTaskPriority() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get limitTaskNum => $_getIZ(9);
  @$pb.TagNumber(10)
  set limitTaskNum($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLimitTaskNum() => $_has(9);
  @$pb.TagNumber(10)
  void clearLimitTaskNum() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<$core.String> get enterNode => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get exitNode => $_getList(11);

  @$pb.TagNumber(13)
  $fixnum.Int64 get depthX => $_getI64(12);
  @$pb.TagNumber(13)
  set depthX($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDepthX() => $_has(12);
  @$pb.TagNumber(13)
  void clearDepthX() => $_clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get depthY => $_getI64(13);
  @$pb.TagNumber(14)
  set depthY($fixnum.Int64 value) => $_setInt64(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDepthY() => $_has(13);
  @$pb.TagNumber(14)
  void clearDepthY() => $_clearField(14);
}

class BusinessMap extends $pb.GeneratedMessage {
  factory BusinessMap({
    $core.String? floorName,
    $fixnum.Int64? id,
    $core.int? floorNum,
    $core.Iterable<Node>? node,
    $core.Iterable<Edge>? edge,
    $core.Iterable<GoodsSlot>? goodsSlot,
    $core.Iterable<ConflictZone>? conflictZone,
    $core.Iterable<Rack>? rack,
    GlobalDefaultData? globalDefaultData,
    $core.Iterable<PropertyObject>? propertyObjects,
    $core.Iterable<Rule>? rules,
    $core.Iterable<FunctionalBlock>? functionalBlock,
    $core.Iterable<ServerAddress>? serverAddress,
    $core.Iterable<GoodsStackData>? goodsStackData,
  }) {
    final result = create();
    if (floorName != null) result.floorName = floorName;
    if (id != null) result.id = id;
    if (floorNum != null) result.floorNum = floorNum;
    if (node != null) result.node.addAll(node);
    if (edge != null) result.edge.addAll(edge);
    if (goodsSlot != null) result.goodsSlot.addAll(goodsSlot);
    if (conflictZone != null) result.conflictZone.addAll(conflictZone);
    if (rack != null) result.rack.addAll(rack);
    if (globalDefaultData != null) result.globalDefaultData = globalDefaultData;
    if (propertyObjects != null) result.propertyObjects.addAll(propertyObjects);
    if (rules != null) result.rules.addAll(rules);
    if (functionalBlock != null) result.functionalBlock.addAll(functionalBlock);
    if (serverAddress != null) result.serverAddress.addAll(serverAddress);
    if (goodsStackData != null) result.goodsStackData.addAll(goodsStackData);
    return result;
  }

  BusinessMap._();

  factory BusinessMap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BusinessMap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BusinessMap',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'floorName', protoName: 'floorName')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aI(3, _omitFieldNames ? '' : 'floorNum', protoName: 'floorNum')
    ..pPM<Node>(4, _omitFieldNames ? '' : 'node', subBuilder: Node.create)
    ..pPM<Edge>(5, _omitFieldNames ? '' : 'edge', subBuilder: Edge.create)
    ..pPM<GoodsSlot>(6, _omitFieldNames ? '' : 'goodsSlot',
        protoName: 'goodsSlot', subBuilder: GoodsSlot.create)
    ..pPM<ConflictZone>(7, _omitFieldNames ? '' : 'conflictZone',
        protoName: 'conflictZone', subBuilder: ConflictZone.create)
    ..pPM<Rack>(8, _omitFieldNames ? '' : 'rack', subBuilder: Rack.create)
    ..aOM<GlobalDefaultData>(9, _omitFieldNames ? '' : 'globalDefaultData',
        protoName: 'globalDefaultData', subBuilder: GlobalDefaultData.create)
    ..pPM<PropertyObject>(10, _omitFieldNames ? '' : 'propertyObjects',
        protoName: 'propertyObjects', subBuilder: PropertyObject.create)
    ..pPM<Rule>(11, _omitFieldNames ? '' : 'rules', subBuilder: Rule.create)
    ..pPM<FunctionalBlock>(12, _omitFieldNames ? '' : 'functionalBlock',
        protoName: 'functionalBlock', subBuilder: FunctionalBlock.create)
    ..pPM<ServerAddress>(13, _omitFieldNames ? '' : 'serverAddress',
        protoName: 'serverAddress', subBuilder: ServerAddress.create)
    ..pPM<GoodsStackData>(14, _omitFieldNames ? '' : 'goodsStackData',
        protoName: 'goodsStackData', subBuilder: GoodsStackData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessMap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BusinessMap copyWith(void Function(BusinessMap) updates) =>
      super.copyWith((message) => updates(message as BusinessMap))
          as BusinessMap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessMap create() => BusinessMap._();
  @$core.override
  BusinessMap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BusinessMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BusinessMap>(create);
  static BusinessMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get floorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set floorName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFloorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFloorName() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get floorNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set floorNum($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFloorNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloorNum() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<Node> get node => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<Edge> get edge => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<GoodsSlot> get goodsSlot => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<ConflictZone> get conflictZone => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<Rack> get rack => $_getList(7);

  @$pb.TagNumber(9)
  GlobalDefaultData get globalDefaultData => $_getN(8);
  @$pb.TagNumber(9)
  set globalDefaultData(GlobalDefaultData value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasGlobalDefaultData() => $_has(8);
  @$pb.TagNumber(9)
  void clearGlobalDefaultData() => $_clearField(9);
  @$pb.TagNumber(9)
  GlobalDefaultData ensureGlobalDefaultData() => $_ensure(8);

  @$pb.TagNumber(10)
  $pb.PbList<PropertyObject> get propertyObjects => $_getList(9);

  @$pb.TagNumber(11)
  $pb.PbList<Rule> get rules => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<FunctionalBlock> get functionalBlock => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<ServerAddress> get serverAddress => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<GoodsStackData> get goodsStackData => $_getList(13);
}

class MappingData extends $pb.GeneratedMessage {
  factory MappingData({
    $core.Iterable<BusinessMap>? businessMap,
    PrivateData? privateData,
    $fixnum.Int64? internalVersion,
  }) {
    final result = create();
    if (businessMap != null) result.businessMap.addAll(businessMap);
    if (privateData != null) result.privateData = privateData;
    if (internalVersion != null) result.internalVersion = internalVersion;
    return result;
  }

  MappingData._();

  factory MappingData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MappingData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MappingData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPM<BusinessMap>(1, _omitFieldNames ? '' : 'businessMap',
        protoName: 'businessMap', subBuilder: BusinessMap.create)
    ..aOM<PrivateData>(2, _omitFieldNames ? '' : 'privateData',
        protoName: 'privateData', subBuilder: PrivateData.create)
    ..aInt64(3, _omitFieldNames ? '' : 'internalVersion',
        protoName: 'internalVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MappingData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MappingData copyWith(void Function(MappingData) updates) =>
      super.copyWith((message) => updates(message as MappingData))
          as MappingData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MappingData create() => MappingData._();
  @$core.override
  MappingData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MappingData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MappingData>(create);
  static MappingData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BusinessMap> get businessMap => $_getList(0);

  @$pb.TagNumber(2)
  PrivateData get privateData => $_getN(1);
  @$pb.TagNumber(2)
  set privateData(PrivateData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPrivateData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateData() => $_clearField(2);
  @$pb.TagNumber(2)
  PrivateData ensurePrivateData() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get internalVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set internalVersion($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInternalVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearInternalVersion() => $_clearField(3);
}

class ServerAddress extends $pb.GeneratedMessage {
  factory ServerAddress({
    $core.int? zoneId,
    $core.String? rcsServerAddr,
    $core.int? rcsServerPort,
    $core.String? timeServerAddr,
    $core.String? neoServerAddr,
    $core.int? neoServerPort,
  }) {
    final result = create();
    if (zoneId != null) result.zoneId = zoneId;
    if (rcsServerAddr != null) result.rcsServerAddr = rcsServerAddr;
    if (rcsServerPort != null) result.rcsServerPort = rcsServerPort;
    if (timeServerAddr != null) result.timeServerAddr = timeServerAddr;
    if (neoServerAddr != null) result.neoServerAddr = neoServerAddr;
    if (neoServerPort != null) result.neoServerPort = neoServerPort;
    return result;
  }

  ServerAddress._();

  factory ServerAddress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServerAddress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerAddress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'zoneId', protoName: 'zoneId')
    ..aOS(2, _omitFieldNames ? '' : 'rcsServerAddr', protoName: 'rcsServerAddr')
    ..aI(3, _omitFieldNames ? '' : 'rcsServerPort', protoName: 'rcsServerPort')
    ..aOS(4, _omitFieldNames ? '' : 'timeServerAddr',
        protoName: 'timeServerAddr')
    ..aOS(5, _omitFieldNames ? '' : 'neoServerAddr', protoName: 'neoServerAddr')
    ..aI(6, _omitFieldNames ? '' : 'neoServerPort', protoName: 'neoServerPort')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerAddress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServerAddress copyWith(void Function(ServerAddress) updates) =>
      super.copyWith((message) => updates(message as ServerAddress))
          as ServerAddress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerAddress create() => ServerAddress._();
  @$core.override
  ServerAddress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ServerAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerAddress>(create);
  static ServerAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get zoneId => $_getIZ(0);
  @$pb.TagNumber(1)
  set zoneId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearZoneId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get rcsServerAddr => $_getSZ(1);
  @$pb.TagNumber(2)
  set rcsServerAddr($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRcsServerAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearRcsServerAddr() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get rcsServerPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set rcsServerPort($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRcsServerPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearRcsServerPort() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get timeServerAddr => $_getSZ(3);
  @$pb.TagNumber(4)
  set timeServerAddr($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimeServerAddr() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeServerAddr() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get neoServerAddr => $_getSZ(4);
  @$pb.TagNumber(5)
  set neoServerAddr($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNeoServerAddr() => $_has(4);
  @$pb.TagNumber(5)
  void clearNeoServerAddr() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get neoServerPort => $_getIZ(5);
  @$pb.TagNumber(6)
  set neoServerPort($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNeoServerPort() => $_has(5);
  @$pb.TagNumber(6)
  void clearNeoServerPort() => $_clearField(6);
}

class GlobalDefaultData extends $pb.GeneratedMessage {
  factory GlobalDefaultData({
    $core.Iterable<$core.String>? passableRobots,
    $core.Iterable<StraghtOnVelocity>? straightOnVelocity,
    $core.Iterable<RotateVelocity>? rotateVelocity,
    $fixnum.Int64? markerType,
    $core.String? rackType,
    $core.String? language,
    $core.bool? taskOrbitMustAlongAxis,
    $core.bool? rcsEqualDistanceShow,
    $core.bool? logicIsContinuous,
    AllowPassage? allowPassage,
    $core.String? partnerMapVersion,
    $core.String? partnerMapCode,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (straightOnVelocity != null)
      result.straightOnVelocity.addAll(straightOnVelocity);
    if (rotateVelocity != null) result.rotateVelocity.addAll(rotateVelocity);
    if (markerType != null) result.markerType = markerType;
    if (rackType != null) result.rackType = rackType;
    if (language != null) result.language = language;
    if (taskOrbitMustAlongAxis != null)
      result.taskOrbitMustAlongAxis = taskOrbitMustAlongAxis;
    if (rcsEqualDistanceShow != null)
      result.rcsEqualDistanceShow = rcsEqualDistanceShow;
    if (logicIsContinuous != null) result.logicIsContinuous = logicIsContinuous;
    if (allowPassage != null) result.allowPassage = allowPassage;
    if (partnerMapVersion != null) result.partnerMapVersion = partnerMapVersion;
    if (partnerMapCode != null) result.partnerMapCode = partnerMapCode;
    return result;
  }

  GlobalDefaultData._();

  factory GlobalDefaultData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlobalDefaultData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlobalDefaultData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..pPM<StraghtOnVelocity>(2, _omitFieldNames ? '' : 'straightOnVelocity',
        protoName: 'straightOnVelocity', subBuilder: StraghtOnVelocity.create)
    ..pPM<RotateVelocity>(3, _omitFieldNames ? '' : 'rotateVelocity',
        protoName: 'rotateVelocity', subBuilder: RotateVelocity.create)
    ..aInt64(4, _omitFieldNames ? '' : 'markerType', protoName: 'markerType')
    ..aOS(5, _omitFieldNames ? '' : 'rackType', protoName: 'rackType')
    ..aOS(6, _omitFieldNames ? '' : 'language')
    ..aOB(7, _omitFieldNames ? '' : 'taskOrbitMustAlongAxis',
        protoName: 'taskOrbitMustAlongAxis')
    ..aOB(8, _omitFieldNames ? '' : 'rcsEqualDistanceShow',
        protoName: 'rcsEqualDistanceShow')
    ..aOB(9, _omitFieldNames ? '' : 'logicIsContinuous',
        protoName: 'logicIsContinuous')
    ..aOM<AllowPassage>(10, _omitFieldNames ? '' : 'allowPassage',
        protoName: 'allowPassage', subBuilder: AllowPassage.create)
    ..aOS(11, _omitFieldNames ? '' : 'partnerMapVersion',
        protoName: 'partnerMapVersion')
    ..aOS(12, _omitFieldNames ? '' : 'partnerMapCode',
        protoName: 'partnerMapCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalDefaultData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlobalDefaultData copyWith(void Function(GlobalDefaultData) updates) =>
      super.copyWith((message) => updates(message as GlobalDefaultData))
          as GlobalDefaultData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalDefaultData create() => GlobalDefaultData._();
  @$core.override
  GlobalDefaultData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlobalDefaultData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlobalDefaultData>(create);
  static GlobalDefaultData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<StraghtOnVelocity> get straightOnVelocity => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<RotateVelocity> get rotateVelocity => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get markerType => $_getI64(3);
  @$pb.TagNumber(4)
  set markerType($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMarkerType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarkerType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get rackType => $_getSZ(4);
  @$pb.TagNumber(5)
  set rackType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRackType() => $_has(4);
  @$pb.TagNumber(5)
  void clearRackType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get language => $_getSZ(5);
  @$pb.TagNumber(6)
  set language($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLanguage() => $_has(5);
  @$pb.TagNumber(6)
  void clearLanguage() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get taskOrbitMustAlongAxis => $_getBF(6);
  @$pb.TagNumber(7)
  set taskOrbitMustAlongAxis($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTaskOrbitMustAlongAxis() => $_has(6);
  @$pb.TagNumber(7)
  void clearTaskOrbitMustAlongAxis() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get rcsEqualDistanceShow => $_getBF(7);
  @$pb.TagNumber(8)
  set rcsEqualDistanceShow($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRcsEqualDistanceShow() => $_has(7);
  @$pb.TagNumber(8)
  void clearRcsEqualDistanceShow() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get logicIsContinuous => $_getBF(8);
  @$pb.TagNumber(9)
  set logicIsContinuous($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLogicIsContinuous() => $_has(8);
  @$pb.TagNumber(9)
  void clearLogicIsContinuous() => $_clearField(9);

  @$pb.TagNumber(10)
  AllowPassage get allowPassage => $_getN(9);
  @$pb.TagNumber(10)
  set allowPassage(AllowPassage value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAllowPassage() => $_has(9);
  @$pb.TagNumber(10)
  void clearAllowPassage() => $_clearField(10);
  @$pb.TagNumber(10)
  AllowPassage ensureAllowPassage() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get partnerMapVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set partnerMapVersion($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPartnerMapVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearPartnerMapVersion() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get partnerMapCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set partnerMapCode($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPartnerMapCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearPartnerMapCode() => $_clearField(12);
}

class AllowPassage extends $pb.GeneratedMessage {
  factory AllowPassage({
    $fixnum.Int64? long,
    $fixnum.Int64? width,
    $fixnum.Int64? height,
  }) {
    final result = create();
    if (long != null) result.long = long;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    return result;
  }

  AllowPassage._();

  factory AllowPassage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AllowPassage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AllowPassage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'long')
    ..aInt64(2, _omitFieldNames ? '' : 'width')
    ..aInt64(3, _omitFieldNames ? '' : 'height')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllowPassage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AllowPassage copyWith(void Function(AllowPassage) updates) =>
      super.copyWith((message) => updates(message as AllowPassage))
          as AllowPassage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllowPassage create() => AllowPassage._();
  @$core.override
  AllowPassage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AllowPassage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AllowPassage>(create);
  static AllowPassage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get long => $_getI64(0);
  @$pb.TagNumber(1)
  set long($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLong() => $_has(0);
  @$pb.TagNumber(1)
  void clearLong() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => $_clearField(3);
}

class VelocityItem extends $pb.GeneratedMessage {
  factory VelocityItem({
    $core.double? velocity,
    $core.double? acceleration,
  }) {
    final result = create();
    if (velocity != null) result.velocity = velocity;
    if (acceleration != null) result.acceleration = acceleration;
    return result;
  }

  VelocityItem._();

  factory VelocityItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VelocityItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VelocityItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'velocity')
    ..aD(2, _omitFieldNames ? '' : 'acceleration')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VelocityItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VelocityItem copyWith(void Function(VelocityItem) updates) =>
      super.copyWith((message) => updates(message as VelocityItem))
          as VelocityItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VelocityItem create() => VelocityItem._();
  @$core.override
  VelocityItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VelocityItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VelocityItem>(create);
  static VelocityItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get velocity => $_getN(0);
  @$pb.TagNumber(1)
  set velocity($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVelocity() => $_has(0);
  @$pb.TagNumber(1)
  void clearVelocity() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get acceleration => $_getN(1);
  @$pb.TagNumber(2)
  set acceleration($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAcceleration() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceleration() => $_clearField(2);
}

class StraghtOnVelocity extends $pb.GeneratedMessage {
  factory StraghtOnVelocity({
    $core.Iterable<$core.String>? passableRobots,
    VelocityItem? forward,
    VelocityItem? backward,
    VelocityItem? forwardWithLoad,
    VelocityItem? backwardWithLoad,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (forward != null) result.forward = forward;
    if (backward != null) result.backward = backward;
    if (forwardWithLoad != null) result.forwardWithLoad = forwardWithLoad;
    if (backwardWithLoad != null) result.backwardWithLoad = backwardWithLoad;
    return result;
  }

  StraghtOnVelocity._();

  factory StraghtOnVelocity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StraghtOnVelocity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StraghtOnVelocity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aOM<VelocityItem>(2, _omitFieldNames ? '' : 'forward',
        subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(3, _omitFieldNames ? '' : 'backward',
        subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(4, _omitFieldNames ? '' : 'forwardWithLoad',
        protoName: 'forwardWithLoad', subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(5, _omitFieldNames ? '' : 'backwardWithLoad',
        protoName: 'backwardWithLoad', subBuilder: VelocityItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StraghtOnVelocity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StraghtOnVelocity copyWith(void Function(StraghtOnVelocity) updates) =>
      super.copyWith((message) => updates(message as StraghtOnVelocity))
          as StraghtOnVelocity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StraghtOnVelocity create() => StraghtOnVelocity._();
  @$core.override
  StraghtOnVelocity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StraghtOnVelocity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StraghtOnVelocity>(create);
  static StraghtOnVelocity? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  VelocityItem get forward => $_getN(1);
  @$pb.TagNumber(2)
  set forward(VelocityItem value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForward() => $_has(1);
  @$pb.TagNumber(2)
  void clearForward() => $_clearField(2);
  @$pb.TagNumber(2)
  VelocityItem ensureForward() => $_ensure(1);

  @$pb.TagNumber(3)
  VelocityItem get backward => $_getN(2);
  @$pb.TagNumber(3)
  set backward(VelocityItem value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBackward() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackward() => $_clearField(3);
  @$pb.TagNumber(3)
  VelocityItem ensureBackward() => $_ensure(2);

  @$pb.TagNumber(4)
  VelocityItem get forwardWithLoad => $_getN(3);
  @$pb.TagNumber(4)
  set forwardWithLoad(VelocityItem value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasForwardWithLoad() => $_has(3);
  @$pb.TagNumber(4)
  void clearForwardWithLoad() => $_clearField(4);
  @$pb.TagNumber(4)
  VelocityItem ensureForwardWithLoad() => $_ensure(3);

  @$pb.TagNumber(5)
  VelocityItem get backwardWithLoad => $_getN(4);
  @$pb.TagNumber(5)
  set backwardWithLoad(VelocityItem value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBackwardWithLoad() => $_has(4);
  @$pb.TagNumber(5)
  void clearBackwardWithLoad() => $_clearField(5);
  @$pb.TagNumber(5)
  VelocityItem ensureBackwardWithLoad() => $_ensure(4);
}

class RotateVelocity extends $pb.GeneratedMessage {
  factory RotateVelocity({
    $core.Iterable<$core.String>? passableRobots,
    VelocityItem? rotate,
    VelocityItem? rotateWithLoad,
  }) {
    final result = create();
    if (passableRobots != null) result.passableRobots.addAll(passableRobots);
    if (rotate != null) result.rotate = rotate;
    if (rotateWithLoad != null) result.rotateWithLoad = rotateWithLoad;
    return result;
  }

  RotateVelocity._();

  factory RotateVelocity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RotateVelocity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RotateVelocity',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots',
        protoName: 'passableRobots')
    ..aOM<VelocityItem>(2, _omitFieldNames ? '' : 'rotate',
        subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(3, _omitFieldNames ? '' : 'rotateWithLoad',
        protoName: 'rotateWithLoad', subBuilder: VelocityItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotateVelocity clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RotateVelocity copyWith(void Function(RotateVelocity) updates) =>
      super.copyWith((message) => updates(message as RotateVelocity))
          as RotateVelocity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotateVelocity create() => RotateVelocity._();
  @$core.override
  RotateVelocity createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RotateVelocity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RotateVelocity>(create);
  static RotateVelocity? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  VelocityItem get rotate => $_getN(1);
  @$pb.TagNumber(2)
  set rotate(VelocityItem value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRotate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRotate() => $_clearField(2);
  @$pb.TagNumber(2)
  VelocityItem ensureRotate() => $_ensure(1);

  @$pb.TagNumber(3)
  VelocityItem get rotateWithLoad => $_getN(2);
  @$pb.TagNumber(3)
  set rotateWithLoad(VelocityItem value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRotateWithLoad() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotateWithLoad() => $_clearField(3);
  @$pb.TagNumber(3)
  VelocityItem ensureRotateWithLoad() => $_ensure(2);
}

class PrivateData extends $pb.GeneratedMessage {
  factory PrivateData({
    $core.Iterable<$core.MapEntry<$core.int, MapItem>>? inPathSiteIndex,
    $core.Iterable<$core.MapEntry<$core.int, MapItem>>? inSitePathIndex,
    $core.Iterable<$core.MapEntry<$fixnum.Int64, EntityInfo>>? entityInfos,
    $core.Iterable<ToolingData>? toolingData,
  }) {
    final result = create();
    if (inPathSiteIndex != null)
      result.inPathSiteIndex.addEntries(inPathSiteIndex);
    if (inSitePathIndex != null)
      result.inSitePathIndex.addEntries(inSitePathIndex);
    if (entityInfos != null) result.entityInfos.addEntries(entityInfos);
    if (toolingData != null) result.toolingData.addAll(toolingData);
    return result;
  }

  PrivateData._();

  factory PrivateData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrivateData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrivateData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..m<$core.int, MapItem>(1, _omitFieldNames ? '' : 'inPathSiteIndex',
        protoName: 'inPathSiteIndex',
        entryClassName: 'PrivateData.InPathSiteIndexEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: MapItem.create,
        valueDefaultOrMaker: MapItem.getDefault,
        packageName: const $pb.PackageName('galaxis.map'))
    ..m<$core.int, MapItem>(2, _omitFieldNames ? '' : 'inSitePathIndex',
        protoName: 'inSitePathIndex',
        entryClassName: 'PrivateData.InSitePathIndexEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: MapItem.create,
        valueDefaultOrMaker: MapItem.getDefault,
        packageName: const $pb.PackageName('galaxis.map'))
    ..m<$fixnum.Int64, EntityInfo>(3, _omitFieldNames ? '' : 'entityInfos',
        protoName: 'entityInfos',
        entryClassName: 'PrivateData.EntityInfosEntry',
        keyFieldType: $pb.PbFieldType.O6,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: EntityInfo.create,
        valueDefaultOrMaker: EntityInfo.getDefault,
        packageName: const $pb.PackageName('galaxis.map'))
    ..pPM<ToolingData>(4, _omitFieldNames ? '' : 'toolingData',
        protoName: 'toolingData', subBuilder: ToolingData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivateData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivateData copyWith(void Function(PrivateData) updates) =>
      super.copyWith((message) => updates(message as PrivateData))
          as PrivateData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivateData create() => PrivateData._();
  @$core.override
  PrivateData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PrivateData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrivateData>(create);
  static PrivateData? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, MapItem> get inPathSiteIndex => $_getMap(0);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.int, MapItem> get inSitePathIndex => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$fixnum.Int64, EntityInfo> get entityInfos => $_getMap(2);

  @$pb.TagNumber(4)
  $pb.PbList<ToolingData> get toolingData => $_getList(3);
}

class MapItem extends $pb.GeneratedMessage {
  factory MapItem({
    $core.Iterable<$core.int>? value,
  }) {
    final result = create();
    if (value != null) result.value.addAll(value);
    return result;
  }

  MapItem._();

  factory MapItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapItem copyWith(void Function(MapItem) updates) =>
      super.copyWith((message) => updates(message as MapItem)) as MapItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapItem create() => MapItem._();
  @$core.override
  MapItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapItem>(create);
  static MapItem? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get value => $_getList(0);
}

class EntityInfo extends $pb.GeneratedMessage {
  factory EntityInfo({
    $core.Iterable<$core.String>? direction,
    $fixnum.Int64? additionalWeightBehind,
    $fixnum.Int64? additionalWeight,
    $core.double? distanceWithoutNavigation,
    BiasAttr? biasAttr,
    $core.double? phyX,
    $core.double? phyY,
  }) {
    final result = create();
    if (direction != null) result.direction.addAll(direction);
    if (additionalWeightBehind != null)
      result.additionalWeightBehind = additionalWeightBehind;
    if (additionalWeight != null) result.additionalWeight = additionalWeight;
    if (distanceWithoutNavigation != null)
      result.distanceWithoutNavigation = distanceWithoutNavigation;
    if (biasAttr != null) result.biasAttr = biasAttr;
    if (phyX != null) result.phyX = phyX;
    if (phyY != null) result.phyY = phyY;
    return result;
  }

  EntityInfo._();

  factory EntityInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EntityInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EntityInfo',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'direction')
    ..aInt64(2, _omitFieldNames ? '' : 'additionalWeightBehind',
        protoName: 'additionalWeightBehind')
    ..aInt64(3, _omitFieldNames ? '' : 'additionalWeight',
        protoName: 'additionalWeight')
    ..aD(4, _omitFieldNames ? '' : 'distanceWithoutNavigation',
        protoName: 'distanceWithoutNavigation')
    ..aOM<BiasAttr>(5, _omitFieldNames ? '' : 'biasAttr',
        protoName: 'biasAttr', subBuilder: BiasAttr.create)
    ..aD(6, _omitFieldNames ? '' : 'phyX', protoName: 'phyX')
    ..aD(7, _omitFieldNames ? '' : 'phyY', protoName: 'phyY')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EntityInfo copyWith(void Function(EntityInfo) updates) =>
      super.copyWith((message) => updates(message as EntityInfo)) as EntityInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityInfo create() => EntityInfo._();
  @$core.override
  EntityInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EntityInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EntityInfo>(create);
  static EntityInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get direction => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get additionalWeightBehind => $_getI64(1);
  @$pb.TagNumber(2)
  set additionalWeightBehind($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAdditionalWeightBehind() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdditionalWeightBehind() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get additionalWeight => $_getI64(2);
  @$pb.TagNumber(3)
  set additionalWeight($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAdditionalWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditionalWeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get distanceWithoutNavigation => $_getN(3);
  @$pb.TagNumber(4)
  set distanceWithoutNavigation($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDistanceWithoutNavigation() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistanceWithoutNavigation() => $_clearField(4);

  @$pb.TagNumber(5)
  BiasAttr get biasAttr => $_getN(4);
  @$pb.TagNumber(5)
  set biasAttr(BiasAttr value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBiasAttr() => $_has(4);
  @$pb.TagNumber(5)
  void clearBiasAttr() => $_clearField(5);
  @$pb.TagNumber(5)
  BiasAttr ensureBiasAttr() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.double get phyX => $_getN(5);
  @$pb.TagNumber(6)
  set phyX($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPhyX() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhyX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get phyY => $_getN(6);
  @$pb.TagNumber(7)
  set phyY($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasPhyY() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhyY() => $_clearField(7);
}

class BiasAttr extends $pb.GeneratedMessage {
  factory BiasAttr({
    $fixnum.Int64? pathStartHeading,
    $fixnum.Int64? pathEndHeading,
    $fixnum.Int64? centerX,
    $fixnum.Int64? centerY,
    $core.String? rotation,
    $fixnum.Int64? radius,
  }) {
    final result = create();
    if (pathStartHeading != null) result.pathStartHeading = pathStartHeading;
    if (pathEndHeading != null) result.pathEndHeading = pathEndHeading;
    if (centerX != null) result.centerX = centerX;
    if (centerY != null) result.centerY = centerY;
    if (rotation != null) result.rotation = rotation;
    if (radius != null) result.radius = radius;
    return result;
  }

  BiasAttr._();

  factory BiasAttr.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BiasAttr.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BiasAttr',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pathStartHeading',
        protoName: 'pathStartHeading')
    ..aInt64(2, _omitFieldNames ? '' : 'pathEndHeading',
        protoName: 'pathEndHeading')
    ..aInt64(3, _omitFieldNames ? '' : 'centerX', protoName: 'centerX')
    ..aInt64(4, _omitFieldNames ? '' : 'centerY', protoName: 'centerY')
    ..aOS(5, _omitFieldNames ? '' : 'Rotation', protoName: 'Rotation')
    ..aInt64(6, _omitFieldNames ? '' : 'Radius', protoName: 'Radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiasAttr clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BiasAttr copyWith(void Function(BiasAttr) updates) =>
      super.copyWith((message) => updates(message as BiasAttr)) as BiasAttr;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiasAttr create() => BiasAttr._();
  @$core.override
  BiasAttr createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BiasAttr getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BiasAttr>(create);
  static BiasAttr? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pathStartHeading => $_getI64(0);
  @$pb.TagNumber(1)
  set pathStartHeading($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPathStartHeading() => $_has(0);
  @$pb.TagNumber(1)
  void clearPathStartHeading() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pathEndHeading => $_getI64(1);
  @$pb.TagNumber(2)
  set pathEndHeading($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPathEndHeading() => $_has(1);
  @$pb.TagNumber(2)
  void clearPathEndHeading() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get centerX => $_getI64(2);
  @$pb.TagNumber(3)
  set centerX($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCenterX() => $_has(2);
  @$pb.TagNumber(3)
  void clearCenterX() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get centerY => $_getI64(3);
  @$pb.TagNumber(4)
  set centerY($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCenterY() => $_has(3);
  @$pb.TagNumber(4)
  void clearCenterY() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get rotation => $_getSZ(4);
  @$pb.TagNumber(5)
  set rotation($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRotation() => $_has(4);
  @$pb.TagNumber(5)
  void clearRotation() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get radius => $_getI64(5);
  @$pb.TagNumber(6)
  set radius($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRadius() => $_has(5);
  @$pb.TagNumber(6)
  void clearRadius() => $_clearField(6);
}

class GoodsAllocation extends $pb.GeneratedMessage {
  factory GoodsAllocation({
    $core.bool? isSelected,
    $core.Iterable<Gap>? gaps,
    $core.int? goodsPlacementOffset,
    $fixnum.Int64? goodsStackId,
    $fixnum.Int64? id,
    $core.String? localNumber,
    FeatureType? goodsSlotFeatureType,
    $core.int? distanceToStation,
    $core.int? goodsSlotFeatureHeight,
    $core.int? boxMarkerOffsetToBottom,
    $core.String? verticalGroupId,
    $core.String? horizontalGroupId,
    $core.String? displayNumber,
    $core.int? beamHeight,
    $core.int? layerHeight,
    $core.int? clearance,
    $core.int? width,
    $core.Iterable<$core.int>? orientation,
    $core.int? goodsAllocationWidth,
  }) {
    final result = create();
    if (isSelected != null) result.isSelected = isSelected;
    if (gaps != null) result.gaps.addAll(gaps);
    if (goodsPlacementOffset != null)
      result.goodsPlacementOffset = goodsPlacementOffset;
    if (goodsStackId != null) result.goodsStackId = goodsStackId;
    if (id != null) result.id = id;
    if (localNumber != null) result.localNumber = localNumber;
    if (goodsSlotFeatureType != null)
      result.goodsSlotFeatureType = goodsSlotFeatureType;
    if (distanceToStation != null) result.distanceToStation = distanceToStation;
    if (goodsSlotFeatureHeight != null)
      result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    if (boxMarkerOffsetToBottom != null)
      result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    if (verticalGroupId != null) result.verticalGroupId = verticalGroupId;
    if (horizontalGroupId != null) result.horizontalGroupId = horizontalGroupId;
    if (displayNumber != null) result.displayNumber = displayNumber;
    if (beamHeight != null) result.beamHeight = beamHeight;
    if (layerHeight != null) result.layerHeight = layerHeight;
    if (clearance != null) result.clearance = clearance;
    if (width != null) result.width = width;
    if (orientation != null) result.orientation.addAll(orientation);
    if (goodsAllocationWidth != null)
      result.goodsAllocationWidth = goodsAllocationWidth;
    return result;
  }

  GoodsAllocation._();

  factory GoodsAllocation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsAllocation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsAllocation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSelected', protoName: 'isSelected')
    ..pPM<Gap>(2, _omitFieldNames ? '' : 'gaps', subBuilder: Gap.create)
    ..aI(3, _omitFieldNames ? '' : 'goodsPlacementOffset',
        protoName: 'goodsPlacementOffset')
    ..aInt64(4, _omitFieldNames ? '' : 'goodsStackId',
        protoName: 'goodsStackId')
    ..aInt64(5, _omitFieldNames ? '' : 'id')
    ..aOS(6, _omitFieldNames ? '' : 'localNumber', protoName: 'localNumber')
    ..aE<FeatureType>(7, _omitFieldNames ? '' : 'goodsSlotFeatureType',
        protoName: 'goodsSlotFeatureType', enumValues: FeatureType.values)
    ..aI(8, _omitFieldNames ? '' : 'distanceToStation',
        protoName: 'distanceToStation')
    ..aI(9, _omitFieldNames ? '' : 'goodsSlotFeatureHeight',
        protoName: 'goodsSlotFeatureHeight')
    ..aI(10, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom',
        protoName: 'boxMarkerOffsetToBottom')
    ..aOS(11, _omitFieldNames ? '' : 'verticalGroupId',
        protoName: 'verticalGroupId')
    ..aOS(12, _omitFieldNames ? '' : 'horizontalGroupId',
        protoName: 'horizontalGroupId')
    ..aOS(13, _omitFieldNames ? '' : 'displayNumber',
        protoName: 'displayNumber')
    ..aI(14, _omitFieldNames ? '' : 'beamHeight', protoName: 'beamHeight')
    ..aI(15, _omitFieldNames ? '' : 'layerHeight', protoName: 'layerHeight')
    ..aI(16, _omitFieldNames ? '' : 'clearance')
    ..aI(17, _omitFieldNames ? '' : 'width')
    ..p<$core.int>(18, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.K3)
    ..aI(19, _omitFieldNames ? '' : 'goodsAllocationWidth',
        protoName: 'goodsAllocationWidth')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsAllocation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsAllocation copyWith(void Function(GoodsAllocation) updates) =>
      super.copyWith((message) => updates(message as GoodsAllocation))
          as GoodsAllocation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsAllocation create() => GoodsAllocation._();
  @$core.override
  GoodsAllocation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsAllocation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoodsAllocation>(create);
  static GoodsAllocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSelected => $_getBF(0);
  @$pb.TagNumber(1)
  set isSelected($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIsSelected() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSelected() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<Gap> get gaps => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get goodsPlacementOffset => $_getIZ(2);
  @$pb.TagNumber(3)
  set goodsPlacementOffset($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGoodsPlacementOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsPlacementOffset() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get goodsStackId => $_getI64(3);
  @$pb.TagNumber(4)
  set goodsStackId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGoodsStackId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoodsStackId() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get localNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set localNumber($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLocalNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  FeatureType get goodsSlotFeatureType => $_getN(6);
  @$pb.TagNumber(7)
  set goodsSlotFeatureType(FeatureType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGoodsSlotFeatureType() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsSlotFeatureType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get distanceToStation => $_getIZ(7);
  @$pb.TagNumber(8)
  set distanceToStation($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDistanceToStation() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistanceToStation() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get goodsSlotFeatureHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set goodsSlotFeatureHeight($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoodsSlotFeatureHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(9);
  @$pb.TagNumber(10)
  set boxMarkerOffsetToBottom($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(9);
  @$pb.TagNumber(10)
  void clearBoxMarkerOffsetToBottom() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get verticalGroupId => $_getSZ(10);
  @$pb.TagNumber(11)
  set verticalGroupId($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasVerticalGroupId() => $_has(10);
  @$pb.TagNumber(11)
  void clearVerticalGroupId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get horizontalGroupId => $_getSZ(11);
  @$pb.TagNumber(12)
  set horizontalGroupId($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasHorizontalGroupId() => $_has(11);
  @$pb.TagNumber(12)
  void clearHorizontalGroupId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get displayNumber => $_getSZ(12);
  @$pb.TagNumber(13)
  set displayNumber($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDisplayNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearDisplayNumber() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get beamHeight => $_getIZ(13);
  @$pb.TagNumber(14)
  set beamHeight($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasBeamHeight() => $_has(13);
  @$pb.TagNumber(14)
  void clearBeamHeight() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get layerHeight => $_getIZ(14);
  @$pb.TagNumber(15)
  set layerHeight($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasLayerHeight() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayerHeight() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get clearance => $_getIZ(15);
  @$pb.TagNumber(16)
  set clearance($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasClearance() => $_has(15);
  @$pb.TagNumber(16)
  void clearClearance() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get width => $_getIZ(16);
  @$pb.TagNumber(17)
  set width($core.int value) => $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasWidth() => $_has(16);
  @$pb.TagNumber(17)
  void clearWidth() => $_clearField(17);

  @$pb.TagNumber(18)
  $pb.PbList<$core.int> get orientation => $_getList(17);

  @$pb.TagNumber(19)
  $core.int get goodsAllocationWidth => $_getIZ(18);
  @$pb.TagNumber(19)
  set goodsAllocationWidth($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasGoodsAllocationWidth() => $_has(18);
  @$pb.TagNumber(19)
  void clearGoodsAllocationWidth() => $_clearField(19);
}

class Gap extends $pb.GeneratedMessage {
  factory Gap({
    $core.double? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  Gap._();

  factory Gap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Gap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Gap',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gap copyWith(void Function(Gap) updates) =>
      super.copyWith((message) => updates(message as Gap)) as Gap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gap create() => Gap._();
  @$core.override
  Gap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Gap getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gap>(create);
  static Gap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class LayersHeight extends $pb.GeneratedMessage {
  factory LayersHeight({
    $fixnum.Int64? id,
    $core.int? layerHeight,
    $core.int? clearance,
    LayerGoodsAllocationGroup? layerGoodsAllocationGroup,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (layerHeight != null) result.layerHeight = layerHeight;
    if (clearance != null) result.clearance = clearance;
    if (layerGoodsAllocationGroup != null)
      result.layerGoodsAllocationGroup = layerGoodsAllocationGroup;
    return result;
  }

  LayersHeight._();

  factory LayersHeight.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LayersHeight.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LayersHeight',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aI(2, _omitFieldNames ? '' : 'layerHeight', protoName: 'layerHeight')
    ..aI(3, _omitFieldNames ? '' : 'clearance')
    ..aOM<LayerGoodsAllocationGroup>(
        4, _omitFieldNames ? '' : 'layerGoodsAllocationGroup',
        protoName: 'layerGoodsAllocationGroup',
        subBuilder: LayerGoodsAllocationGroup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayersHeight clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayersHeight copyWith(void Function(LayersHeight) updates) =>
      super.copyWith((message) => updates(message as LayersHeight))
          as LayersHeight;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayersHeight create() => LayersHeight._();
  @$core.override
  LayersHeight createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LayersHeight getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LayersHeight>(create);
  static LayersHeight? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get layerHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set layerHeight($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLayerHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearLayerHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get clearance => $_getIZ(2);
  @$pb.TagNumber(3)
  set clearance($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClearance() => $_has(2);
  @$pb.TagNumber(3)
  void clearClearance() => $_clearField(3);

  @$pb.TagNumber(4)
  LayerGoodsAllocationGroup get layerGoodsAllocationGroup => $_getN(3);
  @$pb.TagNumber(4)
  set layerGoodsAllocationGroup(LayerGoodsAllocationGroup value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLayerGoodsAllocationGroup() => $_has(3);
  @$pb.TagNumber(4)
  void clearLayerGoodsAllocationGroup() => $_clearField(4);
  @$pb.TagNumber(4)
  LayerGoodsAllocationGroup ensureLayerGoodsAllocationGroup() => $_ensure(3);
}

class LayerGoodsAllocationGroup extends $pb.GeneratedMessage {
  factory LayerGoodsAllocationGroup({
    $core.int? goodsAllocationNum,
    $core.Iterable<GoodsSlot>? goodsSlots,
  }) {
    final result = create();
    if (goodsAllocationNum != null)
      result.goodsAllocationNum = goodsAllocationNum;
    if (goodsSlots != null) result.goodsSlots.addAll(goodsSlots);
    return result;
  }

  LayerGoodsAllocationGroup._();

  factory LayerGoodsAllocationGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LayerGoodsAllocationGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LayerGoodsAllocationGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'goodsAllocationNum',
        protoName: 'goodsAllocationNum')
    ..pPM<GoodsSlot>(2, _omitFieldNames ? '' : 'goodsSlots',
        protoName: 'goodsSlots', subBuilder: GoodsSlot.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayerGoodsAllocationGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayerGoodsAllocationGroup copyWith(
          void Function(LayerGoodsAllocationGroup) updates) =>
      super.copyWith((message) => updates(message as LayerGoodsAllocationGroup))
          as LayerGoodsAllocationGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerGoodsAllocationGroup create() => LayerGoodsAllocationGroup._();
  @$core.override
  LayerGoodsAllocationGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LayerGoodsAllocationGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LayerGoodsAllocationGroup>(create);
  static LayerGoodsAllocationGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get goodsAllocationNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set goodsAllocationNum($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGoodsAllocationNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsAllocationNum() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<GoodsSlot> get goodsSlots => $_getList(1);
}

class PropertyObject extends $pb.GeneratedMessage {
  factory PropertyObject({
    $fixnum.Int64? id,
    $core.String? propertyName,
    PropertyValueType? valueType,
    $core.String? desc,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (propertyName != null) result.propertyName = propertyName;
    if (valueType != null) result.valueType = valueType;
    if (desc != null) result.desc = desc;
    return result;
  }

  PropertyObject._();

  factory PropertyObject.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyObject.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyObject',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'propertyName', protoName: 'propertyName')
    ..aE<PropertyValueType>(3, _omitFieldNames ? '' : 'valueType',
        protoName: 'valueType', enumValues: PropertyValueType.values)
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyObject clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyObject copyWith(void Function(PropertyObject) updates) =>
      super.copyWith((message) => updates(message as PropertyObject))
          as PropertyObject;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyObject create() => PropertyObject._();
  @$core.override
  PropertyObject createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PropertyObject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyObject>(create);
  static PropertyObject? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPropertyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyName() => $_clearField(2);

  /// The value type of this property
  @$pb.TagNumber(3)
  PropertyValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(PropertyValueType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => $_clearField(3);

  /// Description of this property
  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => $_clearField(4);
}

class Rule extends $pb.GeneratedMessage {
  factory Rule({
    $core.String? name,
    Condition? condition,
    $core.Iterable<ConductGroup>? conducts,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (condition != null) result.condition = condition;
    if (conducts != null) result.conducts.addAll(conducts);
    return result;
  }

  Rule._();

  factory Rule.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rule.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rule',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Condition>(2, _omitFieldNames ? '' : 'condition',
        subBuilder: Condition.create)
    ..pPM<ConductGroup>(3, _omitFieldNames ? '' : 'conducts',
        subBuilder: ConductGroup.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rule clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rule copyWith(void Function(Rule) updates) =>
      super.copyWith((message) => updates(message as Rule)) as Rule;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rule create() => Rule._();
  @$core.override
  Rule createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rule getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rule>(create);
  static Rule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Some condition groups of normative rules
  @$pb.TagNumber(2)
  Condition get condition => $_getN(1);
  @$pb.TagNumber(2)
  set condition(Condition value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearCondition() => $_clearField(2);
  @$pb.TagNumber(2)
  Condition ensureCondition() => $_ensure(1);

  /// Behavior generated by rules
  @$pb.TagNumber(3)
  $pb.PbList<ConductGroup> get conducts => $_getList(2);
}

enum Condition_Condition { metaCond, complexCond, notSet }

class Condition extends $pb.GeneratedMessage {
  factory Condition({
    $fixnum.Int64? id,
    MetaMessage? metaCond,
    ComplexCondition? complexCond,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (metaCond != null) result.metaCond = metaCond;
    if (complexCond != null) result.complexCond = complexCond;
    return result;
  }

  Condition._();

  factory Condition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Condition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Condition_Condition>
      _Condition_ConditionByTag = {
    2: Condition_Condition.metaCond,
    3: Condition_Condition.complexCond,
    0: Condition_Condition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Condition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<MetaMessage>(2, _omitFieldNames ? '' : 'metaCond',
        protoName: 'metaCond', subBuilder: MetaMessage.create)
    ..aOM<ComplexCondition>(3, _omitFieldNames ? '' : 'complexCond',
        protoName: 'complexCond', subBuilder: ComplexCondition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Condition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Condition copyWith(void Function(Condition) updates) =>
      super.copyWith((message) => updates(message as Condition)) as Condition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Condition create() => Condition._();
  @$core.override
  Condition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Condition getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Condition>(create);
  static Condition? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Condition_Condition whichCondition() =>
      _Condition_ConditionByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearCondition() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// When under a single condition
  @$pb.TagNumber(2)
  MetaMessage get metaCond => $_getN(1);
  @$pb.TagNumber(2)
  set metaCond(MetaMessage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMetaCond() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetaCond() => $_clearField(2);
  @$pb.TagNumber(2)
  MetaMessage ensureMetaCond() => $_ensure(1);

  /// When there are multiple conditions
  @$pb.TagNumber(3)
  ComplexCondition get complexCond => $_getN(2);
  @$pb.TagNumber(3)
  set complexCond(ComplexCondition value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasComplexCond() => $_has(2);
  @$pb.TagNumber(3)
  void clearComplexCond() => $_clearField(3);
  @$pb.TagNumber(3)
  ComplexCondition ensureComplexCond() => $_ensure(2);
}

class ComplexCondition extends $pb.GeneratedMessage {
  factory ComplexCondition({
    $core.Iterable<Condition>? conditions,
    $core.Iterable<Relationship>? relationships,
  }) {
    final result = create();
    if (conditions != null) result.conditions.addAll(conditions);
    if (relationships != null) result.relationships.addAll(relationships);
    return result;
  }

  ComplexCondition._();

  factory ComplexCondition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComplexCondition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComplexCondition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPM<Condition>(1, _omitFieldNames ? '' : 'conditions',
        subBuilder: Condition.create)
    ..pPM<Relationship>(2, _omitFieldNames ? '' : 'relationships',
        subBuilder: Relationship.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexCondition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexCondition copyWith(void Function(ComplexCondition) updates) =>
      super.copyWith((message) => updates(message as ComplexCondition))
          as ComplexCondition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComplexCondition create() => ComplexCondition._();
  @$core.override
  ComplexCondition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComplexCondition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComplexCondition>(create);
  static ComplexCondition? _defaultInstance;

  /// Container for storing multiple conditions
  @$pb.TagNumber(1)
  $pb.PbList<Condition> get conditions => $_getList(0);

  /// A container for storing logical relationships between multiple conditions
  @$pb.TagNumber(2)
  $pb.PbList<Relationship> get relationships => $_getList(1);
}

enum MetaMessage_Value {
  numValue,
  strValue,
  rangeValue,
  boolValue,
  setValues,
  notSet
}

class MetaMessage extends $pb.GeneratedMessage {
  factory MetaMessage({
    $fixnum.Int64? id,
    $fixnum.Int64? propertyId,
    ConditionType? conditionType,
    $core.double? numValue,
    $core.String? strValue,
    RangeValue? rangeValue,
    $core.bool? boolValue,
    $core.String? setValues,
    $core.String? applicationsCar,
    $core.String? unit,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (propertyId != null) result.propertyId = propertyId;
    if (conditionType != null) result.conditionType = conditionType;
    if (numValue != null) result.numValue = numValue;
    if (strValue != null) result.strValue = strValue;
    if (rangeValue != null) result.rangeValue = rangeValue;
    if (boolValue != null) result.boolValue = boolValue;
    if (setValues != null) result.setValues = setValues;
    if (applicationsCar != null) result.applicationsCar = applicationsCar;
    if (unit != null) result.unit = unit;
    return result;
  }

  MetaMessage._();

  factory MetaMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MetaMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, MetaMessage_Value> _MetaMessage_ValueByTag =
      {
    4: MetaMessage_Value.numValue,
    5: MetaMessage_Value.strValue,
    6: MetaMessage_Value.rangeValue,
    7: MetaMessage_Value.boolValue,
    8: MetaMessage_Value.setValues,
    0: MetaMessage_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MetaMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..aE<ConditionType>(3, _omitFieldNames ? '' : 'conditionType',
        protoName: 'conditionType', enumValues: ConditionType.values)
    ..aD(4, _omitFieldNames ? '' : 'numValue', protoName: 'numValue')
    ..aOS(5, _omitFieldNames ? '' : 'strValue', protoName: 'strValue')
    ..aOM<RangeValue>(6, _omitFieldNames ? '' : 'rangeValue',
        protoName: 'rangeValue', subBuilder: RangeValue.create)
    ..aOB(7, _omitFieldNames ? '' : 'boolValue', protoName: 'boolValue')
    ..aOS(8, _omitFieldNames ? '' : 'setValues', protoName: 'setValues')
    ..aOS(9, _omitFieldNames ? '' : 'applicationsCar',
        protoName: 'applicationsCar')
    ..aOS(10, _omitFieldNames ? '' : 'unit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetaMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MetaMessage copyWith(void Function(MetaMessage) updates) =>
      super.copyWith((message) => updates(message as MetaMessage))
          as MetaMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaMessage create() => MetaMessage._();
  @$core.override
  MetaMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MetaMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MetaMessage>(create);
  static MetaMessage? _defaultInstance;

  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  MetaMessage_Value whichValue() => _MetaMessage_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Selected attributes as rule conditions
  @$pb.TagNumber(2)
  $fixnum.Int64 get propertyId => $_getI64(1);
  @$pb.TagNumber(2)
  set propertyId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => $_clearField(2);

  @$pb.TagNumber(3)
  ConditionType get conditionType => $_getN(2);
  @$pb.TagNumber(3)
  set conditionType(ConditionType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasConditionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearConditionType() => $_clearField(3);

  /// When inputting a numerical value
  @$pb.TagNumber(4)
  $core.double get numValue => $_getN(3);
  @$pb.TagNumber(4)
  set numValue($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNumValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumValue() => $_clearField(4);

  /// When entering a string
  @$pb.TagNumber(5)
  $core.String get strValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set strValue($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStrValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStrValue() => $_clearField(5);

  /// When the input is a range value
  @$pb.TagNumber(6)
  RangeValue get rangeValue => $_getN(5);
  @$pb.TagNumber(6)
  set rangeValue(RangeValue value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRangeValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearRangeValue() => $_clearField(6);
  @$pb.TagNumber(6)
  RangeValue ensureRangeValue() => $_ensure(5);

  /// When entering a bool
  @$pb.TagNumber(7)
  $core.bool get boolValue => $_getBF(6);
  @$pb.TagNumber(7)
  set boolValue($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBoolValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoolValue() => $_clearField(7);

  /// When the result is set
  @$pb.TagNumber(8)
  $core.String get setValues => $_getSZ(7);
  @$pb.TagNumber(8)
  set setValues($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSetValues() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetValues() => $_clearField(8);

  /// When the result generates a branch, it needs to be effective for the vehicle model
  @$pb.TagNumber(9)
  $core.String get applicationsCar => $_getSZ(8);
  @$pb.TagNumber(9)
  set applicationsCar($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasApplicationsCar() => $_has(8);
  @$pb.TagNumber(9)
  void clearApplicationsCar() => $_clearField(9);

  /// The corresponding attribute unit when the type is a numerical value
  @$pb.TagNumber(10)
  $core.String get unit => $_getSZ(9);
  @$pb.TagNumber(10)
  set unit($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => $_clearField(10);
}

class RangeValue extends $pb.GeneratedMessage {
  factory RangeValue({
    $core.double? startValue,
    $core.double? endValue,
    $core.bool? include,
  }) {
    final result = create();
    if (startValue != null) result.startValue = startValue;
    if (endValue != null) result.endValue = endValue;
    if (include != null) result.include = include;
    return result;
  }

  RangeValue._();

  factory RangeValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RangeValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RangeValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startValue', protoName: 'startValue')
    ..aD(2, _omitFieldNames ? '' : 'endValue', protoName: 'endValue')
    ..aOB(3, _omitFieldNames ? '' : 'include')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RangeValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RangeValue copyWith(void Function(RangeValue) updates) =>
      super.copyWith((message) => updates(message as RangeValue)) as RangeValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RangeValue create() => RangeValue._();
  @$core.override
  RangeValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RangeValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RangeValue>(create);
  static RangeValue? _defaultInstance;

  /// Starting value within a specific range
  @$pb.TagNumber(1)
  $core.double get startValue => $_getN(0);
  @$pb.TagNumber(1)
  set startValue($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartValue() => $_clearField(1);

  /// End value within a specific range
  @$pb.TagNumber(2)
  $core.double get endValue => $_getN(1);
  @$pb.TagNumber(2)
  set endValue($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndValue() => $_clearField(2);

  /// Does it include start and end values
  @$pb.TagNumber(3)
  $core.bool get include => $_getBF(2);
  @$pb.TagNumber(3)
  set include($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInclude() => $_has(2);
  @$pb.TagNumber(3)
  void clearInclude() => $_clearField(3);
}

class Relationship extends $pb.GeneratedMessage {
  factory Relationship({
    $fixnum.Int64? id1,
    Logic? logic,
    $fixnum.Int64? id2,
  }) {
    final result = create();
    if (id1 != null) result.id1 = id1;
    if (logic != null) result.logic = logic;
    if (id2 != null) result.id2 = id2;
    return result;
  }

  Relationship._();

  factory Relationship.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Relationship.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Relationship',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id1')
    ..aE<Logic>(2, _omitFieldNames ? '' : 'logic', enumValues: Logic.values)
    ..aInt64(3, _omitFieldNames ? '' : 'id2')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Relationship clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Relationship copyWith(void Function(Relationship) updates) =>
      super.copyWith((message) => updates(message as Relationship))
          as Relationship;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Relationship create() => Relationship._();
  @$core.override
  Relationship createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Relationship getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Relationship>(create);
  static Relationship? _defaultInstance;

  /// id1 is  id of MainCondition  or id of SharedValue
  @$pb.TagNumber(1)
  $fixnum.Int64 get id1 => $_getI64(0);
  @$pb.TagNumber(1)
  set id1($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearId1() => $_clearField(1);

  @$pb.TagNumber(2)
  Logic get logic => $_getN(1);
  @$pb.TagNumber(2)
  set logic(Logic value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLogic() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogic() => $_clearField(2);

  /// //id2 is id of MainCondition  or id of SharedValue
  @$pb.TagNumber(3)
  $fixnum.Int64 get id2 => $_getI64(2);
  @$pb.TagNumber(3)
  set id2($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId2() => $_has(2);
  @$pb.TagNumber(3)
  void clearId2() => $_clearField(3);
}

enum ConductGroup_Result { metaResult, multipleResult, notSet }

class ConductGroup extends $pb.GeneratedMessage {
  factory ConductGroup({
    $fixnum.Int64? id,
    $fixnum.Int64? propertyId,
    MetaMessage? metaResult,
    ComplexResult? multipleResult,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (propertyId != null) result.propertyId = propertyId;
    if (metaResult != null) result.metaResult = metaResult;
    if (multipleResult != null) result.multipleResult = multipleResult;
    return result;
  }

  ConductGroup._();

  factory ConductGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConductGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ConductGroup_Result>
      _ConductGroup_ResultByTag = {
    3: ConductGroup_Result.metaResult,
    4: ConductGroup_Result.multipleResult,
    0: ConductGroup_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConductGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..aOM<MetaMessage>(3, _omitFieldNames ? '' : 'metaResult',
        protoName: 'metaResult', subBuilder: MetaMessage.create)
    ..aOM<ComplexResult>(4, _omitFieldNames ? '' : 'multipleResult',
        protoName: 'multipleResult', subBuilder: ComplexResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConductGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConductGroup copyWith(void Function(ConductGroup) updates) =>
      super.copyWith((message) => updates(message as ConductGroup))
          as ConductGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConductGroup create() => ConductGroup._();
  @$core.override
  ConductGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConductGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConductGroup>(create);
  static ConductGroup? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  ConductGroup_Result whichResult() =>
      _ConductGroup_ResultByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  /// Selected attributes as rule conditions
  @$pb.TagNumber(2)
  $fixnum.Int64 get propertyId => $_getI64(1);
  @$pb.TagNumber(2)
  set propertyId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => $_clearField(2);

  /// When the result value is only a single one
  @$pb.TagNumber(3)
  MetaMessage get metaResult => $_getN(2);
  @$pb.TagNumber(3)
  set metaResult(MetaMessage value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMetaResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetaResult() => $_clearField(3);
  @$pb.TagNumber(3)
  MetaMessage ensureMetaResult() => $_ensure(2);

  /// When multiple result values appear
  @$pb.TagNumber(4)
  ComplexResult get multipleResult => $_getN(3);
  @$pb.TagNumber(4)
  set multipleResult(ComplexResult value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMultipleResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultipleResult() => $_clearField(4);
  @$pb.TagNumber(4)
  ComplexResult ensureMultipleResult() => $_ensure(3);
}

class ComplexResult extends $pb.GeneratedMessage {
  factory ComplexResult({
    $core.Iterable<MetaMessage>? metaResult,
  }) {
    final result = create();
    if (metaResult != null) result.metaResult.addAll(metaResult);
    return result;
  }

  ComplexResult._();

  factory ComplexResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComplexResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComplexResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..pPM<MetaMessage>(1, _omitFieldNames ? '' : 'metaResult',
        protoName: 'metaResult', subBuilder: MetaMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComplexResult copyWith(void Function(ComplexResult) updates) =>
      super.copyWith((message) => updates(message as ComplexResult))
          as ComplexResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComplexResult create() => ComplexResult._();
  @$core.override
  ComplexResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComplexResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComplexResult>(create);
  static ComplexResult? _defaultInstance;

  /// use SharedValue
  @$pb.TagNumber(1)
  $pb.PbList<MetaMessage> get metaResult => $_getList(0);
}

class FunctionalBlock extends $pb.GeneratedMessage {
  factory FunctionalBlock({
    $fixnum.Int64? id,
    BlockType? blockType,
    AppliedLoadStatus? appliedLoadStatus,
    $core.Iterable<$core.String>? appliedProducts,
    $core.Iterable<$core.String>? appliedSensors,
    $core.String? shape,
    $core.bool? enabled,
    $core.bool? resultReverse,
    $core.String? blockName,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (blockType != null) result.blockType = blockType;
    if (appliedLoadStatus != null) result.appliedLoadStatus = appliedLoadStatus;
    if (appliedProducts != null) result.appliedProducts.addAll(appliedProducts);
    if (appliedSensors != null) result.appliedSensors.addAll(appliedSensors);
    if (shape != null) result.shape = shape;
    if (enabled != null) result.enabled = enabled;
    if (resultReverse != null) result.resultReverse = resultReverse;
    if (blockName != null) result.blockName = blockName;
    return result;
  }

  FunctionalBlock._();

  factory FunctionalBlock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FunctionalBlock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FunctionalBlock',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aE<BlockType>(2, _omitFieldNames ? '' : 'blockType',
        protoName: 'blockType', enumValues: BlockType.values)
    ..aE<AppliedLoadStatus>(3, _omitFieldNames ? '' : 'appliedLoadStatus',
        protoName: 'appliedLoadStatus', enumValues: AppliedLoadStatus.values)
    ..pPS(4, _omitFieldNames ? '' : 'appliedProducts',
        protoName: 'appliedProducts')
    ..pPS(5, _omitFieldNames ? '' : 'appliedSensors',
        protoName: 'appliedSensors')
    ..aOS(6, _omitFieldNames ? '' : 'shape')
    ..aOB(7, _omitFieldNames ? '' : 'enabled')
    ..aOB(8, _omitFieldNames ? '' : 'resultReverse')
    ..aOS(9, _omitFieldNames ? '' : 'blockName', protoName: 'blockName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FunctionalBlock clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FunctionalBlock copyWith(void Function(FunctionalBlock) updates) =>
      super.copyWith((message) => updates(message as FunctionalBlock))
          as FunctionalBlock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionalBlock create() => FunctionalBlock._();
  @$core.override
  FunctionalBlock createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FunctionalBlock getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FunctionalBlock>(create);
  static FunctionalBlock? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  BlockType get blockType => $_getN(1);
  @$pb.TagNumber(2)
  set blockType(BlockType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBlockType() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockType() => $_clearField(2);

  @$pb.TagNumber(3)
  AppliedLoadStatus get appliedLoadStatus => $_getN(2);
  @$pb.TagNumber(3)
  set appliedLoadStatus(AppliedLoadStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAppliedLoadStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppliedLoadStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get appliedProducts => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get appliedSensors => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get shape => $_getSZ(5);
  @$pb.TagNumber(6)
  set shape($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasShape() => $_has(5);
  @$pb.TagNumber(6)
  void clearShape() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get enabled => $_getBF(6);
  @$pb.TagNumber(7)
  set enabled($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEnabled() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnabled() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get resultReverse => $_getBF(7);
  @$pb.TagNumber(8)
  set resultReverse($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasResultReverse() => $_has(7);
  @$pb.TagNumber(8)
  void clearResultReverse() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get blockName => $_getSZ(8);
  @$pb.TagNumber(9)
  set blockName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBlockName() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockName() => $_clearField(9);
}

class GoodsStackData extends $pb.GeneratedMessage {
  factory GoodsStackData({
    $core.int? category,
    $core.String? categoryName,
    $core.String? goodsStackName,
    $fixnum.Int64? goodsStackId,
    $core.int? goodsStackLength,
    $core.int? goodsStackWidth,
    $core.int? goodsStackHeight,
    $core.int? goodsStackLegWidth,
    $core.int? goodsStackFeatureHeight,
    $core.String? goodsStackFeatureType,
    $core.int? goodsStackInnerHeight,
    $core.int? boxMarkerOffsetToBottom,
    $core.int? goodsStackBottomCrossbeamHeight,
    $core.String? goodsStackType,
    $core.bool? hasBottomMark,
    $core.String? goodsStackContourFileName,
    $core.int? goodsStackTelescopicDistanceToDetectFeature,
  }) {
    final result = create();
    if (category != null) result.category = category;
    if (categoryName != null) result.categoryName = categoryName;
    if (goodsStackName != null) result.goodsStackName = goodsStackName;
    if (goodsStackId != null) result.goodsStackId = goodsStackId;
    if (goodsStackLength != null) result.goodsStackLength = goodsStackLength;
    if (goodsStackWidth != null) result.goodsStackWidth = goodsStackWidth;
    if (goodsStackHeight != null) result.goodsStackHeight = goodsStackHeight;
    if (goodsStackLegWidth != null)
      result.goodsStackLegWidth = goodsStackLegWidth;
    if (goodsStackFeatureHeight != null)
      result.goodsStackFeatureHeight = goodsStackFeatureHeight;
    if (goodsStackFeatureType != null)
      result.goodsStackFeatureType = goodsStackFeatureType;
    if (goodsStackInnerHeight != null)
      result.goodsStackInnerHeight = goodsStackInnerHeight;
    if (boxMarkerOffsetToBottom != null)
      result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    if (goodsStackBottomCrossbeamHeight != null)
      result.goodsStackBottomCrossbeamHeight = goodsStackBottomCrossbeamHeight;
    if (goodsStackType != null) result.goodsStackType = goodsStackType;
    if (hasBottomMark != null) result.hasBottomMark = hasBottomMark;
    if (goodsStackContourFileName != null)
      result.goodsStackContourFileName = goodsStackContourFileName;
    if (goodsStackTelescopicDistanceToDetectFeature != null)
      result.goodsStackTelescopicDistanceToDetectFeature =
          goodsStackTelescopicDistanceToDetectFeature;
    return result;
  }

  GoodsStackData._();

  factory GoodsStackData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GoodsStackData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GoodsStackData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'category')
    ..aOS(2, _omitFieldNames ? '' : 'categoryName', protoName: 'categoryName')
    ..aOS(3, _omitFieldNames ? '' : 'goodsStackName',
        protoName: 'goodsStackName')
    ..aInt64(4, _omitFieldNames ? '' : 'goodsStackId',
        protoName: 'goodsStackId')
    ..aI(5, _omitFieldNames ? '' : 'goodsStackLength',
        protoName: 'goodsStackLength')
    ..aI(6, _omitFieldNames ? '' : 'goodsStackWidth',
        protoName: 'goodsStackWidth')
    ..aI(7, _omitFieldNames ? '' : 'goodsStackHeight',
        protoName: 'goodsStackHeight')
    ..aI(8, _omitFieldNames ? '' : 'goodsStackLegWidth',
        protoName: 'goodsStackLegWidth')
    ..aI(9, _omitFieldNames ? '' : 'goodsStackFeatureHeight',
        protoName: 'goodsStackFeatureHeight')
    ..aOS(10, _omitFieldNames ? '' : 'goodsStackFeatureType',
        protoName: 'goodsStackFeatureType')
    ..aI(11, _omitFieldNames ? '' : 'goodsStackInnerHeight',
        protoName: 'goodsStackInnerHeight')
    ..aI(12, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom',
        protoName: 'boxMarkerOffsetToBottom')
    ..aI(13, _omitFieldNames ? '' : 'goodsStackBottomCrossbeamHeight',
        protoName: 'goodsStackBottomCrossbeamHeight')
    ..aOS(14, _omitFieldNames ? '' : 'goodsStackType',
        protoName: 'goodsStackType')
    ..aOB(15, _omitFieldNames ? '' : 'hasBottomMark',
        protoName: 'hasBottomMark')
    ..aOS(16, _omitFieldNames ? '' : 'goodsStackContourFileName',
        protoName: 'goodsStackContourFileName')
    ..aI(17,
        _omitFieldNames ? '' : 'goodsStackTelescopicDistanceToDetectFeature',
        protoName: 'goodsStackTelescopicDistanceToDetectFeature')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsStackData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GoodsStackData copyWith(void Function(GoodsStackData) updates) =>
      super.copyWith((message) => updates(message as GoodsStackData))
          as GoodsStackData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsStackData create() => GoodsStackData._();
  @$core.override
  GoodsStackData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GoodsStackData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GoodsStackData>(create);
  static GoodsStackData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get category => $_getIZ(0);
  @$pb.TagNumber(1)
  set category($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get categoryName => $_getSZ(1);
  @$pb.TagNumber(2)
  set categoryName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCategoryName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategoryName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get goodsStackName => $_getSZ(2);
  @$pb.TagNumber(3)
  set goodsStackName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasGoodsStackName() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsStackName() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get goodsStackId => $_getI64(3);
  @$pb.TagNumber(4)
  set goodsStackId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGoodsStackId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoodsStackId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get goodsStackLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set goodsStackLength($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGoodsStackLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsStackLength() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get goodsStackWidth => $_getIZ(5);
  @$pb.TagNumber(6)
  set goodsStackWidth($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGoodsStackWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoodsStackWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get goodsStackHeight => $_getIZ(6);
  @$pb.TagNumber(7)
  set goodsStackHeight($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasGoodsStackHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsStackHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get goodsStackLegWidth => $_getIZ(7);
  @$pb.TagNumber(8)
  set goodsStackLegWidth($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasGoodsStackLegWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearGoodsStackLegWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get goodsStackFeatureHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set goodsStackFeatureHeight($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasGoodsStackFeatureHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoodsStackFeatureHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get goodsStackFeatureType => $_getSZ(9);
  @$pb.TagNumber(10)
  set goodsStackFeatureType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasGoodsStackFeatureType() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsStackFeatureType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get goodsStackInnerHeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set goodsStackInnerHeight($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasGoodsStackInnerHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsStackInnerHeight() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(11);
  @$pb.TagNumber(12)
  set boxMarkerOffsetToBottom($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(11);
  @$pb.TagNumber(12)
  void clearBoxMarkerOffsetToBottom() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get goodsStackBottomCrossbeamHeight => $_getIZ(12);
  @$pb.TagNumber(13)
  set goodsStackBottomCrossbeamHeight($core.int value) =>
      $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasGoodsStackBottomCrossbeamHeight() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsStackBottomCrossbeamHeight() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get goodsStackType => $_getSZ(13);
  @$pb.TagNumber(14)
  set goodsStackType($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasGoodsStackType() => $_has(13);
  @$pb.TagNumber(14)
  void clearGoodsStackType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get hasBottomMark => $_getBF(14);
  @$pb.TagNumber(15)
  set hasBottomMark($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasHasBottomMark() => $_has(14);
  @$pb.TagNumber(15)
  void clearHasBottomMark() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get goodsStackContourFileName => $_getSZ(15);
  @$pb.TagNumber(16)
  set goodsStackContourFileName($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasGoodsStackContourFileName() => $_has(15);
  @$pb.TagNumber(16)
  void clearGoodsStackContourFileName() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.int get goodsStackTelescopicDistanceToDetectFeature => $_getIZ(16);
  @$pb.TagNumber(17)
  set goodsStackTelescopicDistanceToDetectFeature($core.int value) =>
      $_setSignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasGoodsStackTelescopicDistanceToDetectFeature() => $_has(16);
  @$pb.TagNumber(17)
  void clearGoodsStackTelescopicDistanceToDetectFeature() => $_clearField(17);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
