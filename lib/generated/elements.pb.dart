//
//  Generated code. Do not modify.
//  source: elements.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'elements.pbenum.dart';

export 'elements.pbenum.dart';

class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
    $core.double? z,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    if (z != null) {
      $result.z = z;
    }
    return $result;
  }
  Point._() : super();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Point', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'z', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get z => $_getN(2);
  @$pb.TagNumber(3)
  set z($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasZ() => $_has(2);
  @$pb.TagNumber(3)
  void clearZ() => clearField(3);
}

class RouteStationProperties extends $pb.GeneratedMessage {
  factory RouteStationProperties({
    RcsPrivate? rcsPrivate,
    $core.Iterable<$core.int>? goodsSlotOrientation,
    $core.Iterable<$core.int>? goodsSlotLayerHeight,
    $core.Iterable<$fixnum.Int64>? goodsSlotId,
  }) {
    final $result = create();
    if (rcsPrivate != null) {
      $result.rcsPrivate = rcsPrivate;
    }
    if (goodsSlotOrientation != null) {
      $result.goodsSlotOrientation.addAll(goodsSlotOrientation);
    }
    if (goodsSlotLayerHeight != null) {
      $result.goodsSlotLayerHeight.addAll(goodsSlotLayerHeight);
    }
    if (goodsSlotId != null) {
      $result.goodsSlotId.addAll(goodsSlotId);
    }
    return $result;
  }
  RouteStationProperties._() : super();
  factory RouteStationProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteStationProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RouteStationProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<RcsPrivate>(1, _omitFieldNames ? '' : 'rcsPrivate', protoName: 'rcsPrivate', subBuilder: RcsPrivate.create)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'goodsSlotOrientation', $pb.PbFieldType.K3, protoName: 'goodsSlotOrientation')
    ..p<$core.int>(3, _omitFieldNames ? '' : 'goodsSlotLayerHeight', $pb.PbFieldType.K3, protoName: 'goodsSlotLayerHeight')
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'goodsSlotId', $pb.PbFieldType.K6, protoName: 'goodsSlotId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteStationProperties clone() => RouteStationProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteStationProperties copyWith(void Function(RouteStationProperties) updates) => super.copyWith((message) => updates(message as RouteStationProperties)) as RouteStationProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RouteStationProperties create() => RouteStationProperties._();
  RouteStationProperties createEmptyInstance() => create();
  static $pb.PbList<RouteStationProperties> createRepeated() => $pb.PbList<RouteStationProperties>();
  @$core.pragma('dart2js:noInline')
  static RouteStationProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteStationProperties>(create);
  static RouteStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  RcsPrivate get rcsPrivate => $_getN(0);
  @$pb.TagNumber(1)
  set rcsPrivate(RcsPrivate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRcsPrivate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRcsPrivate() => clearField(1);
  @$pb.TagNumber(1)
  RcsPrivate ensureRcsPrivate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get goodsSlotOrientation => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get goodsSlotLayerHeight => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get goodsSlotId => $_getList(3);
}

class StorageSpaceProperties extends $pb.GeneratedMessage {
  factory StorageSpaceProperties({
    $core.Iterable<$fixnum.Int64>? goodsSlotIds,
    $core.Iterable<$core.double>? associatedContainerTypes,
    $core.Iterable<$core.String>? associatedGoodsSlotGroups,
  }) {
    final $result = create();
    if (goodsSlotIds != null) {
      $result.goodsSlotIds.addAll(goodsSlotIds);
    }
    if (associatedContainerTypes != null) {
      $result.associatedContainerTypes.addAll(associatedContainerTypes);
    }
    if (associatedGoodsSlotGroups != null) {
      $result.associatedGoodsSlotGroups.addAll(associatedGoodsSlotGroups);
    }
    return $result;
  }
  StorageSpaceProperties._() : super();
  factory StorageSpaceProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageSpaceProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageSpaceProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'goodsSlotIds', $pb.PbFieldType.K6, protoName: 'goodsSlotIds')
    ..p<$core.double>(2, _omitFieldNames ? '' : 'associatedContainerTypes', $pb.PbFieldType.KD, protoName: 'associatedContainerTypes')
    ..pPS(3, _omitFieldNames ? '' : 'associatedGoodsSlotGroups', protoName: 'associatedGoodsSlotGroups')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageSpaceProperties clone() => StorageSpaceProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageSpaceProperties copyWith(void Function(StorageSpaceProperties) updates) => super.copyWith((message) => updates(message as StorageSpaceProperties)) as StorageSpaceProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageSpaceProperties create() => StorageSpaceProperties._();
  StorageSpaceProperties createEmptyInstance() => create();
  static $pb.PbList<StorageSpaceProperties> createRepeated() => $pb.PbList<StorageSpaceProperties>();
  @$core.pragma('dart2js:noInline')
  static StorageSpaceProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageSpaceProperties>(create);
  static StorageSpaceProperties? _defaultInstance;

  /// Instance IDs of all goods slots that reside in this storage space
  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get goodsSlotIds => $_getList(0);

  /// Which kinds of containers that goods slots belong to
  @$pb.TagNumber(2)
  $core.List<$core.double> get associatedContainerTypes => $_getList(1);

  /// Which groups that goods slots belong to
  @$pb.TagNumber(3)
  $core.List<$core.String> get associatedGoodsSlotGroups => $_getList(2);
}

class ChargerStationProperties extends $pb.GeneratedMessage {
  factory ChargerStationProperties({
    $fixnum.Int64? distanceToCharger,
    $fixnum.Int64? chargerOrientation,
    $core.Iterable<$core.String>? passableRobots,
    $core.int? optionVehicle,
  }) {
    final $result = create();
    if (distanceToCharger != null) {
      $result.distanceToCharger = distanceToCharger;
    }
    if (chargerOrientation != null) {
      $result.chargerOrientation = chargerOrientation;
    }
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (optionVehicle != null) {
      $result.optionVehicle = optionVehicle;
    }
    return $result;
  }
  ChargerStationProperties._() : super();
  factory ChargerStationProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChargerStationProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChargerStationProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'distanceToCharger', protoName: 'distanceToCharger')
    ..aInt64(2, _omitFieldNames ? '' : 'chargerOrientation', protoName: 'chargerOrientation')
    ..pPS(3, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'optionVehicle', $pb.PbFieldType.O3, protoName: 'optionVehicle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChargerStationProperties clone() => ChargerStationProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChargerStationProperties copyWith(void Function(ChargerStationProperties) updates) => super.copyWith((message) => updates(message as ChargerStationProperties)) as ChargerStationProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChargerStationProperties create() => ChargerStationProperties._();
  ChargerStationProperties createEmptyInstance() => create();
  static $pb.PbList<ChargerStationProperties> createRepeated() => $pb.PbList<ChargerStationProperties>();
  @$core.pragma('dart2js:noInline')
  static ChargerStationProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChargerStationProperties>(create);
  static ChargerStationProperties? _defaultInstance;

  /// Distance(Unit: millimeter) from station center to charger's contact clip, each kind of robot can calculate the
  /// docking distance by using this property and the robot's own size
  @$pb.TagNumber(1)
  $fixnum.Int64 get distanceToCharger => $_getI64(0);
  @$pb.TagNumber(1)
  set distanceToCharger($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDistanceToCharger() => $_has(0);
  @$pb.TagNumber(1)
  void clearDistanceToCharger() => clearField(1);

  /// Orientation(in radian) of the charger's contact clip in the map
  @$pb.TagNumber(2)
  $fixnum.Int64 get chargerOrientation => $_getI64(1);
  @$pb.TagNumber(2)
  set chargerOrientation($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChargerOrientation() => $_has(1);
  @$pb.TagNumber(2)
  void clearChargerOrientation() => clearField(2);

  /// Current charging stations are suitable for charging vehicles
  @$pb.TagNumber(3)
  $core.List<$core.String> get passableRobots => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get optionVehicle => $_getIZ(3);
  @$pb.TagNumber(4)
  set optionVehicle($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptionVehicle() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptionVehicle() => clearField(4);
}

/// Dynamic site attributes (attributes included in all landmark codes inside the elevator)
class DynamicStationProperties extends $pb.GeneratedMessage {
  factory DynamicStationProperties({
    $fixnum.Int64? liftNo,
    $core.Iterable<$fixnum.Int64>? dynamicStationIds,
  }) {
    final $result = create();
    if (liftNo != null) {
      $result.liftNo = liftNo;
    }
    if (dynamicStationIds != null) {
      $result.dynamicStationIds.addAll(dynamicStationIds);
    }
    return $result;
  }
  DynamicStationProperties._() : super();
  factory DynamicStationProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DynamicStationProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DynamicStationProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'liftNo', protoName: 'liftNo')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'dynamicStationIds', $pb.PbFieldType.K6, protoName: 'dynamicStationIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DynamicStationProperties clone() => DynamicStationProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DynamicStationProperties copyWith(void Function(DynamicStationProperties) updates) => super.copyWith((message) => updates(message as DynamicStationProperties)) as DynamicStationProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DynamicStationProperties create() => DynamicStationProperties._();
  DynamicStationProperties createEmptyInstance() => create();
  static $pb.PbList<DynamicStationProperties> createRepeated() => $pb.PbList<DynamicStationProperties>();
  @$core.pragma('dart2js:noInline')
  static DynamicStationProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DynamicStationProperties>(create);
  static DynamicStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get liftNo => $_getI64(0);
  @$pb.TagNumber(1)
  set liftNo($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLiftNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearLiftNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get dynamicStationIds => $_getList(1);
}

/// Elevator waiting position attribute
class LiftWaitStationProperties extends $pb.GeneratedMessage {
  factory LiftWaitStationProperties({
    $fixnum.Int64? waitLiftId,
    $core.Iterable<$fixnum.Int64>? nextStationId,
    $core.Iterable<$fixnum.Int64>? type,
    $core.Iterable<$core.String>? blockGroups,
  }) {
    final $result = create();
    if (waitLiftId != null) {
      $result.waitLiftId = waitLiftId;
    }
    if (nextStationId != null) {
      $result.nextStationId.addAll(nextStationId);
    }
    if (type != null) {
      $result.type.addAll(type);
    }
    if (blockGroups != null) {
      $result.blockGroups.addAll(blockGroups);
    }
    return $result;
  }
  LiftWaitStationProperties._() : super();
  factory LiftWaitStationProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiftWaitStationProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LiftWaitStationProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'waitLiftId', protoName: 'waitLiftId')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'nextStationId', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.K6)
    ..pPS(4, _omitFieldNames ? '' : 'blockGroups')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LiftWaitStationProperties clone() => LiftWaitStationProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LiftWaitStationProperties copyWith(void Function(LiftWaitStationProperties) updates) => super.copyWith((message) => updates(message as LiftWaitStationProperties)) as LiftWaitStationProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LiftWaitStationProperties create() => LiftWaitStationProperties._();
  LiftWaitStationProperties createEmptyInstance() => create();
  static $pb.PbList<LiftWaitStationProperties> createRepeated() => $pb.PbList<LiftWaitStationProperties>();
  @$core.pragma('dart2js:noInline')
  static LiftWaitStationProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiftWaitStationProperties>(create);
  static LiftWaitStationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get waitLiftId => $_getI64(0);
  @$pb.TagNumber(1)
  set waitLiftId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWaitLiftId() => $_has(0);
  @$pb.TagNumber(1)
  void clearWaitLiftId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get nextStationId => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get type => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get blockGroups => $_getList(3);
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
    final $result = create();
    if (routeStationProperties != null) {
      $result.routeStationProperties = routeStationProperties;
    }
    if (storageSpaceProperties != null) {
      $result.storageSpaceProperties = storageSpaceProperties;
    }
    if (chargerStationProperties != null) {
      $result.chargerStationProperties = chargerStationProperties;
    }
    if (dynamicStationProperties != null) {
      $result.dynamicStationProperties = dynamicStationProperties;
    }
    if (liftWaitStationProperties != null) {
      $result.liftWaitStationProperties = liftWaitStationProperties;
    }
    return $result;
  }
  NodeSpecificProperties._() : super();
  factory NodeSpecificProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeSpecificProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, NodeSpecificProperties_NodeProperties> _NodeSpecificProperties_NodePropertiesByTag = {
    2 : NodeSpecificProperties_NodeProperties.routeStationProperties,
    3 : NodeSpecificProperties_NodeProperties.storageSpaceProperties,
    4 : NodeSpecificProperties_NodeProperties.chargerStationProperties,
    5 : NodeSpecificProperties_NodeProperties.dynamicStationProperties,
    6 : NodeSpecificProperties_NodeProperties.liftWaitStationProperties,
    0 : NodeSpecificProperties_NodeProperties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeSpecificProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<RouteStationProperties>(2, _omitFieldNames ? '' : 'routeStationProperties', protoName: 'routeStationProperties', subBuilder: RouteStationProperties.create)
    ..aOM<StorageSpaceProperties>(3, _omitFieldNames ? '' : 'storageSpaceProperties', protoName: 'storageSpaceProperties', subBuilder: StorageSpaceProperties.create)
    ..aOM<ChargerStationProperties>(4, _omitFieldNames ? '' : 'chargerStationProperties', protoName: 'chargerStationProperties', subBuilder: ChargerStationProperties.create)
    ..aOM<DynamicStationProperties>(5, _omitFieldNames ? '' : 'dynamicStationProperties', protoName: 'dynamicStationProperties', subBuilder: DynamicStationProperties.create)
    ..aOM<LiftWaitStationProperties>(6, _omitFieldNames ? '' : 'liftWaitStationProperties', protoName: 'liftWaitStationProperties', subBuilder: LiftWaitStationProperties.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeSpecificProperties clone() => NodeSpecificProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeSpecificProperties copyWith(void Function(NodeSpecificProperties) updates) => super.copyWith((message) => updates(message as NodeSpecificProperties)) as NodeSpecificProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeSpecificProperties create() => NodeSpecificProperties._();
  NodeSpecificProperties createEmptyInstance() => create();
  static $pb.PbList<NodeSpecificProperties> createRepeated() => $pb.PbList<NodeSpecificProperties>();
  @$core.pragma('dart2js:noInline')
  static NodeSpecificProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeSpecificProperties>(create);
  static NodeSpecificProperties? _defaultInstance;

  NodeSpecificProperties_NodeProperties whichNodeProperties() => _NodeSpecificProperties_NodePropertiesByTag[$_whichOneof(0)]!;
  void clearNodeProperties() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  RouteStationProperties get routeStationProperties => $_getN(0);
  @$pb.TagNumber(2)
  set routeStationProperties(RouteStationProperties v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRouteStationProperties() => $_has(0);
  @$pb.TagNumber(2)
  void clearRouteStationProperties() => clearField(2);
  @$pb.TagNumber(2)
  RouteStationProperties ensureRouteStationProperties() => $_ensure(0);

  @$pb.TagNumber(3)
  StorageSpaceProperties get storageSpaceProperties => $_getN(1);
  @$pb.TagNumber(3)
  set storageSpaceProperties(StorageSpaceProperties v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStorageSpaceProperties() => $_has(1);
  @$pb.TagNumber(3)
  void clearStorageSpaceProperties() => clearField(3);
  @$pb.TagNumber(3)
  StorageSpaceProperties ensureStorageSpaceProperties() => $_ensure(1);

  @$pb.TagNumber(4)
  ChargerStationProperties get chargerStationProperties => $_getN(2);
  @$pb.TagNumber(4)
  set chargerStationProperties(ChargerStationProperties v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasChargerStationProperties() => $_has(2);
  @$pb.TagNumber(4)
  void clearChargerStationProperties() => clearField(4);
  @$pb.TagNumber(4)
  ChargerStationProperties ensureChargerStationProperties() => $_ensure(2);

  @$pb.TagNumber(5)
  DynamicStationProperties get dynamicStationProperties => $_getN(3);
  @$pb.TagNumber(5)
  set dynamicStationProperties(DynamicStationProperties v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDynamicStationProperties() => $_has(3);
  @$pb.TagNumber(5)
  void clearDynamicStationProperties() => clearField(5);
  @$pb.TagNumber(5)
  DynamicStationProperties ensureDynamicStationProperties() => $_ensure(3);

  @$pb.TagNumber(6)
  LiftWaitStationProperties get liftWaitStationProperties => $_getN(4);
  @$pb.TagNumber(6)
  set liftWaitStationProperties(LiftWaitStationProperties v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLiftWaitStationProperties() => $_has(4);
  @$pb.TagNumber(6)
  void clearLiftWaitStationProperties() => clearField(6);
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
    final $result = create();
    if (elementType != null) {
      $result.elementType = elementType;
    }
    if (id != null) {
      $result.id = id;
    }
    if (markerType != null) {
      $result.markerType = markerType;
    }
    if (location != null) {
      $result.location = location;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (zoneId != null) {
      $result.zoneId.addAll(zoneId);
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    if (yardDistances != null) {
      $result.yardDistances.addAll(yardDistances);
    }
    if (markerValue != null) {
      $result.markerValue = markerValue;
    }
    if (nodeTypes != null) {
      $result.nodeTypes.addAll(nodeTypes);
    }
    if (velocity != null) {
      $result.velocity.addAll(velocity);
    }
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (constraints != null) {
      $result.constraints.addAll(constraints);
    }
    if (forkArmWithLoad != null) {
      $result.forkArmWithLoad = forkArmWithLoad;
    }
    if (partnerNodeCode != null) {
      $result.partnerNodeCode = partnerNodeCode;
    }
    if (slamMapOrigin != null) {
      $result.slamMapOrigin = slamMapOrigin;
    }
    if (nodeArea != null) {
      $result.nodeArea = nodeArea;
    }
    return $result;
  }
  Node._() : super();
  factory Node.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Node.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Node', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..e<ElementType>(1, _omitFieldNames ? '' : 'elementType', $pb.PbFieldType.OE, protoName: 'elementType', defaultOrMaker: ElementType.ELEMENT_TYPE_UNKNOWN, valueOf: ElementType.valueOf, enumValues: ElementType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..e<MarkerType>(4, _omitFieldNames ? '' : 'markerType', $pb.PbFieldType.OE, protoName: 'markerType', defaultOrMaker: MarkerType.MARKER_TYPE_UNKNOWN, valueOf: MarkerType.valueOf, enumValues: MarkerType.values)
    ..aOM<Point>(5, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOM<Point>(6, _omitFieldNames ? '' : 'logicLocation', protoName: 'logicLocation', subBuilder: Point.create)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'zoneId', $pb.PbFieldType.K6, protoName: 'zoneId')
    ..pc<NodeSpecificProperties>(8, _omitFieldNames ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: NodeSpecificProperties.create)
    ..pc<YardDistances>(9, _omitFieldNames ? '' : 'yardDistances', $pb.PbFieldType.PM, protoName: 'yardDistances', subBuilder: YardDistances.create)
    ..aOS(10, _omitFieldNames ? '' : 'markerValue', protoName: 'markerValue')
    ..pc<NodePropertyType>(11, _omitFieldNames ? '' : 'nodeTypes', $pb.PbFieldType.KE, protoName: 'nodeTypes', valueOf: NodePropertyType.valueOf, enumValues: NodePropertyType.values, defaultEnumValue: NodePropertyType.NODE_PROPERTY_TYPE_UNKNOWN)
    ..pc<RotateVelocity>(12, _omitFieldNames ? '' : 'velocity', $pb.PbFieldType.PM, subBuilder: RotateVelocity.create)
    ..pPS(13, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..pc<NodeConstraintProperties>(14, _omitFieldNames ? '' : 'constraints', $pb.PbFieldType.PM, subBuilder: NodeConstraintProperties.create)
    ..aOM<ForkArmWithLoad>(15, _omitFieldNames ? '' : 'forkArmWithLoad', protoName: 'forkArmWithLoad', subBuilder: ForkArmWithLoad.create)
    ..aOS(16, _omitFieldNames ? '' : 'partnerNodeCode', protoName: 'partnerNodeCode')
    ..aOB(17, _omitFieldNames ? '' : 'slamMapOrigin', protoName: 'slamMapOrigin')
    ..aInt64(18, _omitFieldNames ? '' : 'nodeArea', protoName: 'nodeArea')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Node clone() => Node()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Node copyWith(void Function(Node) updates) => super.copyWith((message) => updates(message as Node)) as Node;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Node create() => Node._();
  Node createEmptyInstance() => create();
  static $pb.PbList<Node> createRepeated() => $pb.PbList<Node>();
  @$core.pragma('dart2js:noInline')
  static Node getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Node>(create);
  static Node? _defaultInstance;

  /// All nodes must be of type NODE
  @$pb.TagNumber(1)
  ElementType get elementType => $_getN(0);
  @$pb.TagNumber(1)
  set elementType(ElementType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasElementType() => $_has(0);
  @$pb.TagNumber(1)
  void clearElementType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(4)
  MarkerType get markerType => $_getN(2);
  @$pb.TagNumber(4)
  set markerType(MarkerType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarkerType() => $_has(2);
  @$pb.TagNumber(4)
  void clearMarkerType() => clearField(4);

  @$pb.TagNumber(5)
  Point get location => $_getN(3);
  @$pb.TagNumber(5)
  set location(Point v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(5)
  void clearLocation() => clearField(5);
  @$pb.TagNumber(5)
  Point ensureLocation() => $_ensure(3);

  @$pb.TagNumber(6)
  Point get logicLocation => $_getN(4);
  @$pb.TagNumber(6)
  set logicLocation(Point v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLogicLocation() => $_has(4);
  @$pb.TagNumber(6)
  void clearLogicLocation() => clearField(6);
  @$pb.TagNumber(6)
  Point ensureLogicLocation() => $_ensure(4);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get zoneId => $_getList(5);

  @$pb.TagNumber(8)
  $core.List<NodeSpecificProperties> get properties => $_getList(6);

  @$pb.TagNumber(9)
  $core.List<YardDistances> get yardDistances => $_getList(7);

  @$pb.TagNumber(10)
  $core.String get markerValue => $_getSZ(8);
  @$pb.TagNumber(10)
  set markerValue($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasMarkerValue() => $_has(8);
  @$pb.TagNumber(10)
  void clearMarkerValue() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<NodePropertyType> get nodeTypes => $_getList(9);

  @$pb.TagNumber(12)
  $core.List<RotateVelocity> get velocity => $_getList(10);

  @$pb.TagNumber(13)
  $core.List<$core.String> get passableRobots => $_getList(11);

  @$pb.TagNumber(14)
  $core.List<NodeConstraintProperties> get constraints => $_getList(12);

  @$pb.TagNumber(15)
  ForkArmWithLoad get forkArmWithLoad => $_getN(13);
  @$pb.TagNumber(15)
  set forkArmWithLoad(ForkArmWithLoad v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasForkArmWithLoad() => $_has(13);
  @$pb.TagNumber(15)
  void clearForkArmWithLoad() => clearField(15);
  @$pb.TagNumber(15)
  ForkArmWithLoad ensureForkArmWithLoad() => $_ensure(13);

  @$pb.TagNumber(16)
  $core.String get partnerNodeCode => $_getSZ(14);
  @$pb.TagNumber(16)
  set partnerNodeCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasPartnerNodeCode() => $_has(14);
  @$pb.TagNumber(16)
  void clearPartnerNodeCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get slamMapOrigin => $_getBF(15);
  @$pb.TagNumber(17)
  set slamMapOrigin($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasSlamMapOrigin() => $_has(15);
  @$pb.TagNumber(17)
  void clearSlamMapOrigin() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get nodeArea => $_getI64(16);
  @$pb.TagNumber(18)
  set nodeArea($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasNodeArea() => $_has(16);
  @$pb.TagNumber(18)
  void clearNodeArea() => clearField(18);
}

class ForkArmWithLoad extends $pb.GeneratedMessage {
  factory ForkArmWithLoad({
    $fixnum.Int64? forkArmWithLoadExpectedHeight,
    $fixnum.Int64? forkArmWithLoadExpectedHeightMax,
    $fixnum.Int64? forkArmWithLoadExpectedHeightMin,
  }) {
    final $result = create();
    if (forkArmWithLoadExpectedHeight != null) {
      $result.forkArmWithLoadExpectedHeight = forkArmWithLoadExpectedHeight;
    }
    if (forkArmWithLoadExpectedHeightMax != null) {
      $result.forkArmWithLoadExpectedHeightMax = forkArmWithLoadExpectedHeightMax;
    }
    if (forkArmWithLoadExpectedHeightMin != null) {
      $result.forkArmWithLoadExpectedHeightMin = forkArmWithLoadExpectedHeightMin;
    }
    return $result;
  }
  ForkArmWithLoad._() : super();
  factory ForkArmWithLoad.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForkArmWithLoad.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForkArmWithLoad', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeight', protoName: 'forkArmWithLoadExpectedHeight')
    ..aInt64(2, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeightMax', protoName: 'forkArmWithLoadExpectedHeightMax')
    ..aInt64(3, _omitFieldNames ? '' : 'forkArmWithLoadExpectedHeightMin', protoName: 'forkArmWithLoadExpectedHeightMin')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForkArmWithLoad clone() => ForkArmWithLoad()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForkArmWithLoad copyWith(void Function(ForkArmWithLoad) updates) => super.copyWith((message) => updates(message as ForkArmWithLoad)) as ForkArmWithLoad;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForkArmWithLoad create() => ForkArmWithLoad._();
  ForkArmWithLoad createEmptyInstance() => create();
  static $pb.PbList<ForkArmWithLoad> createRepeated() => $pb.PbList<ForkArmWithLoad>();
  @$core.pragma('dart2js:noInline')
  static ForkArmWithLoad getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForkArmWithLoad>(create);
  static ForkArmWithLoad? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get forkArmWithLoadExpectedHeight => $_getI64(0);
  @$pb.TagNumber(1)
  set forkArmWithLoadExpectedHeight($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasForkArmWithLoadExpectedHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearForkArmWithLoadExpectedHeight() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get forkArmWithLoadExpectedHeightMax => $_getI64(1);
  @$pb.TagNumber(2)
  set forkArmWithLoadExpectedHeightMax($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForkArmWithLoadExpectedHeightMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearForkArmWithLoadExpectedHeightMax() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get forkArmWithLoadExpectedHeightMin => $_getI64(2);
  @$pb.TagNumber(3)
  set forkArmWithLoadExpectedHeightMin($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasForkArmWithLoadExpectedHeightMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearForkArmWithLoadExpectedHeightMin() => clearField(3);
}

class NodeConstraintProperties extends $pb.GeneratedMessage {
  factory NodeConstraintProperties({
    $core.Iterable<$core.String>? passableRobots,
    ConstraintType? cstType,
    $core.Iterable<Quadrant>? quadrant,
  }) {
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (cstType != null) {
      $result.cstType = cstType;
    }
    if (quadrant != null) {
      $result.quadrant.addAll(quadrant);
    }
    return $result;
  }
  NodeConstraintProperties._() : super();
  factory NodeConstraintProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeConstraintProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeConstraintProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..e<ConstraintType>(2, _omitFieldNames ? '' : 'cstType', $pb.PbFieldType.OE, protoName: 'cstType', defaultOrMaker: ConstraintType.CONSTRAINT_TYPE_UNKNOWN, valueOf: ConstraintType.valueOf, enumValues: ConstraintType.values)
    ..pc<Quadrant>(3, _omitFieldNames ? '' : 'quadrant', $pb.PbFieldType.KE, valueOf: Quadrant.valueOf, enumValues: Quadrant.values, defaultEnumValue: Quadrant.QUADRANT_UNKNOWN)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeConstraintProperties clone() => NodeConstraintProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeConstraintProperties copyWith(void Function(NodeConstraintProperties) updates) => super.copyWith((message) => updates(message as NodeConstraintProperties)) as NodeConstraintProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeConstraintProperties create() => NodeConstraintProperties._();
  NodeConstraintProperties createEmptyInstance() => create();
  static $pb.PbList<NodeConstraintProperties> createRepeated() => $pb.PbList<NodeConstraintProperties>();
  @$core.pragma('dart2js:noInline')
  static NodeConstraintProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeConstraintProperties>(create);
  static NodeConstraintProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  ConstraintType get cstType => $_getN(1);
  @$pb.TagNumber(2)
  set cstType(ConstraintType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCstType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCstType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Quadrant> get quadrant => $_getList(2);
}

class RcsPrivate extends $pb.GeneratedMessage {
  factory RcsPrivate({
    $fixnum.Int64? rackDirection,
    $fixnum.Int64? parkingDirection,
    $fixnum.Int64? roadway,
    $core.Iterable<$core.String>? transNodeRobots,
    $core.Iterable<$core.String>? cellTypeRestRobots,
  }) {
    final $result = create();
    if (rackDirection != null) {
      $result.rackDirection = rackDirection;
    }
    if (parkingDirection != null) {
      $result.parkingDirection = parkingDirection;
    }
    if (roadway != null) {
      $result.roadway = roadway;
    }
    if (transNodeRobots != null) {
      $result.transNodeRobots.addAll(transNodeRobots);
    }
    if (cellTypeRestRobots != null) {
      $result.cellTypeRestRobots.addAll(cellTypeRestRobots);
    }
    return $result;
  }
  RcsPrivate._() : super();
  factory RcsPrivate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RcsPrivate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RcsPrivate', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rackDirection', protoName: 'rackDirection')
    ..aInt64(2, _omitFieldNames ? '' : 'parkingDirection', protoName: 'parkingDirection')
    ..aInt64(3, _omitFieldNames ? '' : 'roadway')
    ..pPS(4, _omitFieldNames ? '' : 'transNodeRobots', protoName: 'transNodeRobots')
    ..pPS(5, _omitFieldNames ? '' : 'cellTypeRestRobots', protoName: 'cellTypeRestRobots')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RcsPrivate clone() => RcsPrivate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RcsPrivate copyWith(void Function(RcsPrivate) updates) => super.copyWith((message) => updates(message as RcsPrivate)) as RcsPrivate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RcsPrivate create() => RcsPrivate._();
  RcsPrivate createEmptyInstance() => create();
  static $pb.PbList<RcsPrivate> createRepeated() => $pb.PbList<RcsPrivate>();
  @$core.pragma('dart2js:noInline')
  static RcsPrivate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RcsPrivate>(create);
  static RcsPrivate? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rackDirection => $_getI64(0);
  @$pb.TagNumber(1)
  set rackDirection($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRackDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearRackDirection() => clearField(1);

  /// direction of the FM rack.
  @$pb.TagNumber(2)
  $fixnum.Int64 get parkingDirection => $_getI64(1);
  @$pb.TagNumber(2)
  set parkingDirection($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParkingDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearParkingDirection() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get roadway => $_getI64(2);
  @$pb.TagNumber(3)
  set roadway($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoadway() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoadway() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get transNodeRobots => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get cellTypeRestRobots => $_getList(4);
}

class YardDistances extends $pb.GeneratedMessage {
  factory YardDistances({
    $core.Iterable<$core.String>? passableRobots,
    $core.double? offsetX,
    $core.double? offsetY,
  }) {
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (offsetX != null) {
      $result.offsetX = offsetX;
    }
    if (offsetY != null) {
      $result.offsetY = offsetY;
    }
    return $result;
  }
  YardDistances._() : super();
  factory YardDistances.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YardDistances.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YardDistances', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'offsetX', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'offsetY', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YardDistances clone() => YardDistances()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YardDistances copyWith(void Function(YardDistances) updates) => super.copyWith((message) => updates(message as YardDistances)) as YardDistances;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YardDistances create() => YardDistances._();
  YardDistances createEmptyInstance() => create();
  static $pb.PbList<YardDistances> createRepeated() => $pb.PbList<YardDistances>();
  @$core.pragma('dart2js:noInline')
  static YardDistances getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YardDistances>(create);
  static YardDistances? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get offsetX => $_getN(1);
  @$pb.TagNumber(2)
  set offsetX($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOffsetX() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffsetX() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get offsetY => $_getN(2);
  @$pb.TagNumber(3)
  set offsetY($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffsetY() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffsetY() => clearField(3);
}

class RouteEdgeProperties extends $pb.GeneratedMessage {
  factory RouteEdgeProperties({
    $core.Iterable<$core.String>? passableRobots,
    StraghtOnVelocity? velocity,
    WalkingType? endPoint1to2,
    WalkingType? endPoint2to1,
    $core.bool? withLoad,
  }) {
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (velocity != null) {
      $result.velocity = velocity;
    }
    if (endPoint1to2 != null) {
      $result.endPoint1to2 = endPoint1to2;
    }
    if (endPoint2to1 != null) {
      $result.endPoint2to1 = endPoint2to1;
    }
    if (withLoad != null) {
      $result.withLoad = withLoad;
    }
    return $result;
  }
  RouteEdgeProperties._() : super();
  factory RouteEdgeProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteEdgeProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RouteEdgeProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..aOM<StraghtOnVelocity>(2, _omitFieldNames ? '' : 'velocity', subBuilder: StraghtOnVelocity.create)
    ..e<WalkingType>(3, _omitFieldNames ? '' : 'endPoint1to2', $pb.PbFieldType.OE, protoName: 'endPoint1to2', defaultOrMaker: WalkingType.WALKING_TYPE_UNKNOWN, valueOf: WalkingType.valueOf, enumValues: WalkingType.values)
    ..e<WalkingType>(4, _omitFieldNames ? '' : 'endPoint2to1', $pb.PbFieldType.OE, protoName: 'endPoint2to1', defaultOrMaker: WalkingType.WALKING_TYPE_UNKNOWN, valueOf: WalkingType.valueOf, enumValues: WalkingType.values)
    ..aOB(5, _omitFieldNames ? '' : 'withLoad', protoName: 'withLoad')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteEdgeProperties clone() => RouteEdgeProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteEdgeProperties copyWith(void Function(RouteEdgeProperties) updates) => super.copyWith((message) => updates(message as RouteEdgeProperties)) as RouteEdgeProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RouteEdgeProperties create() => RouteEdgeProperties._();
  RouteEdgeProperties createEmptyInstance() => create();
  static $pb.PbList<RouteEdgeProperties> createRepeated() => $pb.PbList<RouteEdgeProperties>();
  @$core.pragma('dart2js:noInline')
  static RouteEdgeProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteEdgeProperties>(create);
  static RouteEdgeProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  StraghtOnVelocity get velocity => $_getN(1);
  @$pb.TagNumber(2)
  set velocity(StraghtOnVelocity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVelocity() => $_has(1);
  @$pb.TagNumber(2)
  void clearVelocity() => clearField(2);
  @$pb.TagNumber(2)
  StraghtOnVelocity ensureVelocity() => $_ensure(1);

  @$pb.TagNumber(3)
  WalkingType get endPoint1to2 => $_getN(2);
  @$pb.TagNumber(3)
  set endPoint1to2(WalkingType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndPoint1to2() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndPoint1to2() => clearField(3);

  @$pb.TagNumber(4)
  WalkingType get endPoint2to1 => $_getN(3);
  @$pb.TagNumber(4)
  set endPoint2to1(WalkingType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasEndPoint2to1() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndPoint2to1() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get withLoad => $_getBF(4);
  @$pb.TagNumber(5)
  set withLoad($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWithLoad() => $_has(4);
  @$pb.TagNumber(5)
  void clearWithLoad() => clearField(5);
}

class EdgeSpecificProperties extends $pb.GeneratedMessage {
  factory EdgeSpecificProperties({
    EdgeType? type,
    $core.Iterable<RouteEdgeProperties>? routeEdgeProperties,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (routeEdgeProperties != null) {
      $result.routeEdgeProperties.addAll(routeEdgeProperties);
    }
    return $result;
  }
  EdgeSpecificProperties._() : super();
  factory EdgeSpecificProperties.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EdgeSpecificProperties.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EdgeSpecificProperties', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..e<EdgeType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: EdgeType.EDGE_TYPE_UNKNOWN, valueOf: EdgeType.valueOf, enumValues: EdgeType.values)
    ..pc<RouteEdgeProperties>(2, _omitFieldNames ? '' : 'routeEdgeProperties', $pb.PbFieldType.PM, protoName: 'routeEdgeProperties', subBuilder: RouteEdgeProperties.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EdgeSpecificProperties clone() => EdgeSpecificProperties()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EdgeSpecificProperties copyWith(void Function(EdgeSpecificProperties) updates) => super.copyWith((message) => updates(message as EdgeSpecificProperties)) as EdgeSpecificProperties;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdgeSpecificProperties create() => EdgeSpecificProperties._();
  EdgeSpecificProperties createEmptyInstance() => create();
  static $pb.PbList<EdgeSpecificProperties> createRepeated() => $pb.PbList<EdgeSpecificProperties>();
  @$core.pragma('dart2js:noInline')
  static EdgeSpecificProperties getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EdgeSpecificProperties>(create);
  static EdgeSpecificProperties? _defaultInstance;

  @$pb.TagNumber(1)
  EdgeType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(EdgeType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<RouteEdgeProperties> get routeEdgeProperties => $_getList(1);
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
    final $result = create();
    if (elementType != null) {
      $result.elementType = elementType;
    }
    if (id != null) {
      $result.id = id;
    }
    if (zoneId != null) {
      $result.zoneId = zoneId;
    }
    if (endpoint1Id != null) {
      $result.endpoint1Id = endpoint1Id;
    }
    if (endpoint2Id != null) {
      $result.endpoint2Id = endpoint2Id;
    }
    if (properties != null) {
      $result.properties = properties;
    }
    if (length != null) {
      $result.length = length;
    }
    if (rcsPrivate != null) {
      $result.rcsPrivate = rcsPrivate;
    }
    if (standardEdge != null) {
      $result.standardEdge = standardEdge;
    }
    if (constraints != null) {
      $result.constraints.addAll(constraints);
    }
    if (allowPassage != null) {
      $result.allowPassage = allowPassage;
    }
    if (partnerEdgeCode != null) {
      $result.partnerEdgeCode = partnerEdgeCode;
    }
    return $result;
  }
  Edge._() : super();
  factory Edge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Edge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Edge', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..e<ElementType>(1, _omitFieldNames ? '' : 'elementType', $pb.PbFieldType.OE, protoName: 'elementType', defaultOrMaker: ElementType.ELEMENT_TYPE_UNKNOWN, valueOf: ElementType.valueOf, enumValues: ElementType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aInt64(4, _omitFieldNames ? '' : 'zoneId', protoName: 'zoneId')
    ..aInt64(6, _omitFieldNames ? '' : 'endpoint1Id', protoName: 'endpoint1Id')
    ..aInt64(7, _omitFieldNames ? '' : 'endpoint2Id', protoName: 'endpoint2Id')
    ..aOM<EdgeSpecificProperties>(8, _omitFieldNames ? '' : 'properties', subBuilder: EdgeSpecificProperties.create)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OD)
    ..aOS(10, _omitFieldNames ? '' : 'rcsPrivate', protoName: 'rcsPrivate')
    ..aOB(11, _omitFieldNames ? '' : 'standardEdge', protoName: 'standardEdge')
    ..pc<NodeConstraintProperties>(12, _omitFieldNames ? '' : 'constraints', $pb.PbFieldType.PM, subBuilder: NodeConstraintProperties.create)
    ..aOM<AllowPassage>(13, _omitFieldNames ? '' : 'allowPassage', protoName: 'allowPassage', subBuilder: AllowPassage.create)
    ..aOS(14, _omitFieldNames ? '' : 'partnerEdgeCode', protoName: 'partnerEdgeCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Edge clone() => Edge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Edge copyWith(void Function(Edge) updates) => super.copyWith((message) => updates(message as Edge)) as Edge;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Edge create() => Edge._();
  Edge createEmptyInstance() => create();
  static $pb.PbList<Edge> createRepeated() => $pb.PbList<Edge>();
  @$core.pragma('dart2js:noInline')
  static Edge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Edge>(create);
  static Edge? _defaultInstance;

  /// All edges must be of type EDGE
  @$pb.TagNumber(1)
  ElementType get elementType => $_getN(0);
  @$pb.TagNumber(1)
  set elementType(ElementType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasElementType() => $_has(0);
  @$pb.TagNumber(1)
  void clearElementType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get zoneId => $_getI64(2);
  @$pb.TagNumber(4)
  set zoneId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasZoneId() => $_has(2);
  @$pb.TagNumber(4)
  void clearZoneId() => clearField(4);

  /// Node ID of one end. The start node if this Edge is a route edge
  @$pb.TagNumber(6)
  $fixnum.Int64 get endpoint1Id => $_getI64(3);
  @$pb.TagNumber(6)
  set endpoint1Id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndpoint1Id() => $_has(3);
  @$pb.TagNumber(6)
  void clearEndpoint1Id() => clearField(6);

  /// Node ID of the other end. The end node if this Edge is a route edge
  @$pb.TagNumber(7)
  $fixnum.Int64 get endpoint2Id => $_getI64(4);
  @$pb.TagNumber(7)
  set endpoint2Id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasEndpoint2Id() => $_has(4);
  @$pb.TagNumber(7)
  void clearEndpoint2Id() => clearField(7);

  @$pb.TagNumber(8)
  EdgeSpecificProperties get properties => $_getN(5);
  @$pb.TagNumber(8)
  set properties(EdgeSpecificProperties v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasProperties() => $_has(5);
  @$pb.TagNumber(8)
  void clearProperties() => clearField(8);
  @$pb.TagNumber(8)
  EdgeSpecificProperties ensureProperties() => $_ensure(5);

  @$pb.TagNumber(9)
  $core.double get length => $_getN(6);
  @$pb.TagNumber(9)
  set length($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasLength() => $_has(6);
  @$pb.TagNumber(9)
  void clearLength() => clearField(9);

  /// The data required solely by the RCS system
  @$pb.TagNumber(10)
  $core.String get rcsPrivate => $_getSZ(7);
  @$pb.TagNumber(10)
  set rcsPrivate($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasRcsPrivate() => $_has(7);
  @$pb.TagNumber(10)
  void clearRcsPrivate() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get standardEdge => $_getBF(8);
  @$pb.TagNumber(11)
  set standardEdge($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasStandardEdge() => $_has(8);
  @$pb.TagNumber(11)
  void clearStandardEdge() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<NodeConstraintProperties> get constraints => $_getList(9);

  @$pb.TagNumber(13)
  AllowPassage get allowPassage => $_getN(10);
  @$pb.TagNumber(13)
  set allowPassage(AllowPassage v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasAllowPassage() => $_has(10);
  @$pb.TagNumber(13)
  void clearAllowPassage() => clearField(13);
  @$pb.TagNumber(13)
  AllowPassage ensureAllowPassage() => $_ensure(10);

  @$pb.TagNumber(14)
  $core.String get partnerEdgeCode => $_getSZ(11);
  @$pb.TagNumber(14)
  set partnerEdgeCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(14)
  $core.bool hasPartnerEdgeCode() => $_has(11);
  @$pb.TagNumber(14)
  void clearPartnerEdgeCode() => clearField(14);
}

class GoodsSlotGroup extends $pb.GeneratedMessage {
  factory GoodsSlotGroup({
    $core.String? groupId,
    $core.Iterable<$core.String>? goodsSlotLocalIds,
  }) {
    final $result = create();
    if (groupId != null) {
      $result.groupId = groupId;
    }
    if (goodsSlotLocalIds != null) {
      $result.goodsSlotLocalIds.addAll(goodsSlotLocalIds);
    }
    return $result;
  }
  GoodsSlotGroup._() : super();
  factory GoodsSlotGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsSlotGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsSlotGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupId', protoName: 'groupId')
    ..pPS(2, _omitFieldNames ? '' : 'goodsSlotLocalIds', protoName: 'goodsSlotLocalIds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsSlotGroup clone() => GoodsSlotGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsSlotGroup copyWith(void Function(GoodsSlotGroup) updates) => super.copyWith((message) => updates(message as GoodsSlotGroup)) as GoodsSlotGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlotGroup create() => GoodsSlotGroup._();
  GoodsSlotGroup createEmptyInstance() => create();
  static $pb.PbList<GoodsSlotGroup> createRepeated() => $pb.PbList<GoodsSlotGroup>();
  @$core.pragma('dart2js:noInline')
  static GoodsSlotGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSlotGroup>(create);
  static GoodsSlotGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get groupId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get goodsSlotLocalIds => $_getList(1);
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
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (orientation != null) {
      $result.orientation.addAll(orientation);
    }
    if (displayNumber != null) {
      $result.displayNumber = displayNumber;
    }
    if (number != null) {
      $result.number = number;
    }
    if (beamHeight != null) {
      $result.beamHeight = beamHeight;
    }
    if (uprightWidth != null) {
      $result.uprightWidth = uprightWidth;
    }
    if (topLayerClearance != null) {
      $result.topLayerClearance = topLayerClearance;
    }
    if (distanceToStation != null) {
      $result.distanceToStation = distanceToStation;
    }
    if (positioningMarker != null) {
      $result.positioningMarker = positioningMarker;
    }
    if (goodsSlotFeatureType != null) {
      $result.goodsSlotFeatureType = goodsSlotFeatureType;
    }
    if (goodsSlotFeatureHeight != null) {
      $result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    }
    if (goodsPlacementOffset != null) {
      $result.goodsPlacementOffset = goodsPlacementOffset;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (layersHeight != null) {
      $result.layersHeight.addAll(layersHeight);
    }
    if (dockingOffsets != null) {
      $result.dockingOffsets.addAll(dockingOffsets);
    }
    if (horizontalGoodsSlotGroups != null) {
      $result.horizontalGoodsSlotGroups.addAll(horizontalGoodsSlotGroups);
    }
    if (verticalGoodsSlotGroups != null) {
      $result.verticalGoodsSlotGroups.addAll(verticalGoodsSlotGroups);
    }
    if (id != null) {
      $result.id = id;
    }
    if (toolingDataId != null) {
      $result.toolingDataId = toolingDataId;
    }
    if (boxMarkerOffsetToBottom != null) {
      $result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    }
    return $result;
  }
  Rack._() : super();
  factory Rack.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rack.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Rack', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OU3)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.KD)
    ..aOS(3, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..aOS(4, _omitFieldNames ? '' : 'number')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'beamHeight', $pb.PbFieldType.OU3, protoName: 'beamHeight')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'uprightWidth', $pb.PbFieldType.OU3, protoName: 'uprightWidth')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'topLayerClearance', $pb.PbFieldType.OU3, protoName: 'topLayerClearance')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'distanceToStation', $pb.PbFieldType.OU3, protoName: 'distanceToStation')
    ..aOS(9, _omitFieldNames ? '' : 'positioningMarker', protoName: 'positioningMarker')
    ..e<FeatureType>(10, _omitFieldNames ? '' : 'goodsSlotFeatureType', $pb.PbFieldType.OE, protoName: 'goodsSlotFeatureType', defaultOrMaker: FeatureType.FEATURE_TYPE_UNKNOWN, valueOf: FeatureType.valueOf, enumValues: FeatureType.values)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'goodsSlotFeatureHeight', $pb.PbFieldType.OS3, protoName: 'goodsSlotFeatureHeight')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'goodsPlacementOffset', $pb.PbFieldType.O3, protoName: 'goodsPlacementOffset')
    ..aOB(13, _omitFieldNames ? '' : 'mobile')
    ..p<$core.int>(14, _omitFieldNames ? '' : 'layersHeight', $pb.PbFieldType.KU3, protoName: 'layersHeight')
    ..p<$core.int>(15, _omitFieldNames ? '' : 'dockingOffsets', $pb.PbFieldType.KU3, protoName: 'dockingOffsets')
    ..pc<GoodsSlotGroup>(16, _omitFieldNames ? '' : 'horizontalGoodsSlotGroups', $pb.PbFieldType.PM, protoName: 'horizontalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..pc<GoodsSlotGroup>(17, _omitFieldNames ? '' : 'verticalGoodsSlotGroups', $pb.PbFieldType.PM, protoName: 'verticalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..aInt64(18, _omitFieldNames ? '' : 'id')
    ..aInt64(19, _omitFieldNames ? '' : 'toolingDataId', protoName: 'toolingDataId')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom', $pb.PbFieldType.OU3, protoName: 'boxMarkerOffsetToBottom')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rack clone() => Rack()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rack copyWith(void Function(Rack) updates) => super.copyWith((message) => updates(message as Rack)) as Rack;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rack create() => Rack._();
  Rack createEmptyInstance() => create();
  static $pb.PbList<Rack> createRepeated() => $pb.PbList<Rack>();
  @$core.pragma('dart2js:noInline')
  static Rack getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rack>(create);
  static Rack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Orientation in the map, in radian
  @$pb.TagNumber(2)
  $core.List<$core.double> get orientation => $_getList(1);

  /// Customer defined rack number
  @$pb.TagNumber(3)
  $core.String get displayNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set displayNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisplayNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisplayNumber() => clearField(3);

  /// Rack number defined by us. Bottom QR code's number of Kiva-rack, e.g.
  @$pb.TagNumber(4)
  $core.String get number => $_getSZ(3);
  @$pb.TagNumber(4)
  set number($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get beamHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set beamHeight($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBeamHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBeamHeight() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get uprightWidth => $_getIZ(5);
  @$pb.TagNumber(6)
  set uprightWidth($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUprightWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearUprightWidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get topLayerClearance => $_getIZ(6);
  @$pb.TagNumber(7)
  set topLayerClearance($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTopLayerClearance() => $_has(6);
  @$pb.TagNumber(7)
  void clearTopLayerClearance() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get distanceToStation => $_getIZ(7);
  @$pb.TagNumber(8)
  set distanceToStation($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDistanceToStation() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistanceToStation() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get positioningMarker => $_getSZ(8);
  @$pb.TagNumber(9)
  set positioningMarker($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPositioningMarker() => $_has(8);
  @$pb.TagNumber(9)
  void clearPositioningMarker() => clearField(9);

  @$pb.TagNumber(10)
  FeatureType get goodsSlotFeatureType => $_getN(9);
  @$pb.TagNumber(10)
  set goodsSlotFeatureType(FeatureType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasGoodsSlotFeatureType() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsSlotFeatureType() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get goodsSlotFeatureHeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set goodsSlotFeatureHeight($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsSlotFeatureHeight() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get goodsPlacementOffset => $_getIZ(11);
  @$pb.TagNumber(12)
  set goodsPlacementOffset($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasGoodsPlacementOffset() => $_has(11);
  @$pb.TagNumber(12)
  void clearGoodsPlacementOffset() => clearField(12);

  @$pb.TagNumber(13)
  $core.bool get mobile => $_getBF(12);
  @$pb.TagNumber(13)
  set mobile($core.bool v) { $_setBool(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMobile() => $_has(12);
  @$pb.TagNumber(13)
  void clearMobile() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get layersHeight => $_getList(13);

  @$pb.TagNumber(15)
  $core.List<$core.int> get dockingOffsets => $_getList(14);

  @$pb.TagNumber(16)
  $core.List<GoodsSlotGroup> get horizontalGoodsSlotGroups => $_getList(15);

  @$pb.TagNumber(17)
  $core.List<GoodsSlotGroup> get verticalGoodsSlotGroups => $_getList(16);

  @$pb.TagNumber(18)
  $fixnum.Int64 get id => $_getI64(17);
  @$pb.TagNumber(18)
  set id($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasId() => $_has(17);
  @$pb.TagNumber(18)
  void clearId() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get toolingDataId => $_getI64(18);
  @$pb.TagNumber(19)
  set toolingDataId($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasToolingDataId() => $_has(18);
  @$pb.TagNumber(19)
  void clearToolingDataId() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(19);
  @$pb.TagNumber(20)
  set boxMarkerOffsetToBottom($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(19);
  @$pb.TagNumber(20)
  void clearBoxMarkerOffsetToBottom() => clearField(20);
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
    final $result = create();
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    if (uprightWidth != null) {
      $result.uprightWidth = uprightWidth;
    }
    if (width != null) {
      $result.width = width;
    }
    if (length != null) {
      $result.length = length;
    }
    if (categoryName != null) {
      $result.categoryName = categoryName;
    }
    if (topLayerClearance != null) {
      $result.topLayerClearance = topLayerClearance;
    }
    if (name != null) {
      $result.name = name;
    }
    if (id != null) {
      $result.id = id;
    }
    if (layersHeight != null) {
      $result.layersHeight.addAll(layersHeight);
    }
    if (positioningMarker != null) {
      $result.positioningMarker = positioningMarker;
    }
    if (distanceToStation != null) {
      $result.distanceToStation = distanceToStation;
    }
    if (mobile != null) {
      $result.mobile = mobile;
    }
    if (goodsStackId != null) {
      $result.goodsStackId = goodsStackId;
    }
    if (stacking != null) {
      $result.stacking = stacking;
    }
    if (slideChute != null) {
      $result.slideChute = slideChute;
    }
    if (goodsSlotFeatureHeight != null) {
      $result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    }
    if (boxMarkerOffsetToBottom != null) {
      $result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    }
    if (goodsSlotTelescopicDistanceToDetectFeature != null) {
      $result.goodsSlotTelescopicDistanceToDetectFeature = goodsSlotTelescopicDistanceToDetectFeature;
    }
    if (heightOverGoodsSlotWhenPut != null) {
      $result.heightOverGoodsSlotWhenPut = heightOverGoodsSlotWhenPut;
    }
    if (heightOverGoodsSlotWhenGet != null) {
      $result.heightOverGoodsSlotWhenGet = heightOverGoodsSlotWhenGet;
    }
    if (heightGapBetweenForkAndGoodsWhenGet != null) {
      $result.heightGapBetweenForkAndGoodsWhenGet = heightGapBetweenForkAndGoodsWhenGet;
    }
    if (heightGapBetweenForkAndGoodsWhenPut != null) {
      $result.heightGapBetweenForkAndGoodsWhenPut = heightGapBetweenForkAndGoodsWhenPut;
    }
    if (goodsSlotPillarHeight != null) {
      $result.goodsSlotPillarHeight = goodsSlotPillarHeight;
    }
    if (goodsSlotStatusCheckHeight != null) {
      $result.goodsSlotStatusCheckHeight = goodsSlotStatusCheckHeight;
    }
    if (rackLegSideOffset != null) {
      $result.rackLegSideOffset = rackLegSideOffset;
    }
    if (rackLegFrontOffset != null) {
      $result.rackLegFrontOffset = rackLegFrontOffset;
    }
    if (goodsAllocationNum != null) {
      $result.goodsAllocationNum = goodsAllocationNum;
    }
    if (beamHeight != null) {
      $result.beamHeight = beamHeight;
    }
    if (goodsSlotFeatureType != null) {
      $result.goodsSlotFeatureType = goodsSlotFeatureType;
    }
    if (goodsAlloc != null) {
      $result.goodsAlloc = goodsAlloc;
    }
    if (verticalGoodsSlotGroups != null) {
      $result.verticalGoodsSlotGroups.addAll(verticalGoodsSlotGroups);
    }
    if (horizontalGoodsSlotGroups != null) {
      $result.horizontalGoodsSlotGroups.addAll(horizontalGoodsSlotGroups);
    }
    return $result;
  }
  ToolingData._() : super();
  factory ToolingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToolingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ToolingData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'uprightWidth', $pb.PbFieldType.OU3, protoName: 'uprightWidth')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'width', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'length', $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'categoryName', protoName: 'categoryName')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'topLayerClearance', $pb.PbFieldType.OU3, protoName: 'topLayerClearance')
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..aInt64(8, _omitFieldNames ? '' : 'id')
    ..pc<LayersHeight>(9, _omitFieldNames ? '' : 'layersHeight', $pb.PbFieldType.PM, protoName: 'layersHeight', subBuilder: LayersHeight.create)
    ..aOS(10, _omitFieldNames ? '' : 'positioningMarker', protoName: 'positioningMarker')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'distanceToStation', $pb.PbFieldType.OU3, protoName: 'distanceToStation')
    ..aOB(12, _omitFieldNames ? '' : 'mobile')
    ..aInt64(13, _omitFieldNames ? '' : 'goodsStackId', protoName: 'goodsStackId')
    ..aOB(14, _omitFieldNames ? '' : 'stacking')
    ..aOB(15, _omitFieldNames ? '' : 'slideChute', protoName: 'slideChute')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'goodsSlotFeatureHeight', $pb.PbFieldType.OS3, protoName: 'goodsSlotFeatureHeight')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom', $pb.PbFieldType.OU3, protoName: 'boxMarkerOffsetToBottom')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'goodsSlotTelescopicDistanceToDetectFeature', $pb.PbFieldType.OU3, protoName: 'goodsSlotTelescopicDistanceToDetectFeature')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenPut', $pb.PbFieldType.OU3, protoName: 'heightOverGoodsSlotWhenPut')
    ..a<$core.int>(20, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenGet', $pb.PbFieldType.OU3, protoName: 'heightOverGoodsSlotWhenGet')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenGet', $pb.PbFieldType.OU3, protoName: 'heightGapBetweenForkAndGoodsWhenGet')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenPut', $pb.PbFieldType.OU3, protoName: 'heightGapBetweenForkAndGoodsWhenPut')
    ..a<$core.int>(23, _omitFieldNames ? '' : 'goodsSlotPillarHeight', $pb.PbFieldType.OU3, protoName: 'goodsSlotPillarHeight')
    ..a<$core.int>(24, _omitFieldNames ? '' : 'goodsSlotStatusCheckHeight', $pb.PbFieldType.OU3, protoName: 'goodsSlotStatusCheckHeight')
    ..a<$core.int>(25, _omitFieldNames ? '' : 'rackLegSideOffset', $pb.PbFieldType.OU3, protoName: 'rackLegSideOffset')
    ..a<$core.int>(26, _omitFieldNames ? '' : 'rackLegFrontOffset', $pb.PbFieldType.OU3, protoName: 'rackLegFrontOffset')
    ..a<$core.int>(27, _omitFieldNames ? '' : 'goodsAllocationNum', $pb.PbFieldType.OU3, protoName: 'goodsAllocationNum')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'beamHeight', $pb.PbFieldType.OU3, protoName: 'beamHeight')
    ..e<FeatureType>(29, _omitFieldNames ? '' : 'goodsSlotFeatureType', $pb.PbFieldType.OE, protoName: 'goodsSlotFeatureType', defaultOrMaker: FeatureType.FEATURE_TYPE_UNKNOWN, valueOf: FeatureType.valueOf, enumValues: FeatureType.values)
    ..aOM<GoodsAllocation>(30, _omitFieldNames ? '' : 'goodsAlloc', protoName: 'goodsAlloc', subBuilder: GoodsAllocation.create)
    ..pc<GoodsSlotGroup>(31, _omitFieldNames ? '' : 'verticalGoodsSlotGroups', $pb.PbFieldType.PM, protoName: 'verticalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..pc<GoodsSlotGroup>(32, _omitFieldNames ? '' : 'horizontalGoodsSlotGroups', $pb.PbFieldType.PM, protoName: 'horizontalGoodsSlotGroups', subBuilder: GoodsSlotGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToolingData clone() => ToolingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToolingData copyWith(void Function(ToolingData) updates) => super.copyWith((message) => updates(message as ToolingData)) as ToolingData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ToolingData create() => ToolingData._();
  ToolingData createEmptyInstance() => create();
  static $pb.PbList<ToolingData> createRepeated() => $pb.PbList<ToolingData>();
  @$core.pragma('dart2js:noInline')
  static ToolingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToolingData>(create);
  static ToolingData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get categoryId => $_getI64(0);
  @$pb.TagNumber(1)
  set categoryId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategoryId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategoryId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get uprightWidth => $_getIZ(1);
  @$pb.TagNumber(2)
  set uprightWidth($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUprightWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearUprightWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get width => $_getIZ(2);
  @$pb.TagNumber(3)
  set width($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get length => $_getIZ(3);
  @$pb.TagNumber(4)
  set length($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLength() => $_has(3);
  @$pb.TagNumber(4)
  void clearLength() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get categoryName => $_getSZ(4);
  @$pb.TagNumber(5)
  set categoryName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCategoryName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCategoryName() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get topLayerClearance => $_getIZ(5);
  @$pb.TagNumber(6)
  set topLayerClearance($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTopLayerClearance() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopLayerClearance() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get id => $_getI64(7);
  @$pb.TagNumber(8)
  set id($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasId() => $_has(7);
  @$pb.TagNumber(8)
  void clearId() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<LayersHeight> get layersHeight => $_getList(8);

  @$pb.TagNumber(10)
  $core.String get positioningMarker => $_getSZ(9);
  @$pb.TagNumber(10)
  set positioningMarker($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPositioningMarker() => $_has(9);
  @$pb.TagNumber(10)
  void clearPositioningMarker() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get distanceToStation => $_getIZ(10);
  @$pb.TagNumber(11)
  set distanceToStation($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDistanceToStation() => $_has(10);
  @$pb.TagNumber(11)
  void clearDistanceToStation() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get mobile => $_getBF(11);
  @$pb.TagNumber(12)
  set mobile($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMobile() => $_has(11);
  @$pb.TagNumber(12)
  void clearMobile() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get goodsStackId => $_getI64(12);
  @$pb.TagNumber(13)
  set goodsStackId($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGoodsStackId() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsStackId() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get stacking => $_getBF(13);
  @$pb.TagNumber(14)
  set stacking($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasStacking() => $_has(13);
  @$pb.TagNumber(14)
  void clearStacking() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get slideChute => $_getBF(14);
  @$pb.TagNumber(15)
  set slideChute($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSlideChute() => $_has(14);
  @$pb.TagNumber(15)
  void clearSlideChute() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get goodsSlotFeatureHeight => $_getIZ(15);
  @$pb.TagNumber(16)
  set goodsSlotFeatureHeight($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(15);
  @$pb.TagNumber(16)
  void clearGoodsSlotFeatureHeight() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(16);
  @$pb.TagNumber(17)
  set boxMarkerOffsetToBottom($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(16);
  @$pb.TagNumber(17)
  void clearBoxMarkerOffsetToBottom() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get goodsSlotTelescopicDistanceToDetectFeature => $_getIZ(17);
  @$pb.TagNumber(18)
  set goodsSlotTelescopicDistanceToDetectFeature($core.int v) { $_setUnsignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasGoodsSlotTelescopicDistanceToDetectFeature() => $_has(17);
  @$pb.TagNumber(18)
  void clearGoodsSlotTelescopicDistanceToDetectFeature() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get heightOverGoodsSlotWhenPut => $_getIZ(18);
  @$pb.TagNumber(19)
  set heightOverGoodsSlotWhenPut($core.int v) { $_setUnsignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasHeightOverGoodsSlotWhenPut() => $_has(18);
  @$pb.TagNumber(19)
  void clearHeightOverGoodsSlotWhenPut() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get heightOverGoodsSlotWhenGet => $_getIZ(19);
  @$pb.TagNumber(20)
  set heightOverGoodsSlotWhenGet($core.int v) { $_setUnsignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasHeightOverGoodsSlotWhenGet() => $_has(19);
  @$pb.TagNumber(20)
  void clearHeightOverGoodsSlotWhenGet() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get heightGapBetweenForkAndGoodsWhenGet => $_getIZ(20);
  @$pb.TagNumber(21)
  set heightGapBetweenForkAndGoodsWhenGet($core.int v) { $_setUnsignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenGet() => $_has(20);
  @$pb.TagNumber(21)
  void clearHeightGapBetweenForkAndGoodsWhenGet() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get heightGapBetweenForkAndGoodsWhenPut => $_getIZ(21);
  @$pb.TagNumber(22)
  set heightGapBetweenForkAndGoodsWhenPut($core.int v) { $_setUnsignedInt32(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenPut() => $_has(21);
  @$pb.TagNumber(22)
  void clearHeightGapBetweenForkAndGoodsWhenPut() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get goodsSlotPillarHeight => $_getIZ(22);
  @$pb.TagNumber(23)
  set goodsSlotPillarHeight($core.int v) { $_setUnsignedInt32(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasGoodsSlotPillarHeight() => $_has(22);
  @$pb.TagNumber(23)
  void clearGoodsSlotPillarHeight() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get goodsSlotStatusCheckHeight => $_getIZ(23);
  @$pb.TagNumber(24)
  set goodsSlotStatusCheckHeight($core.int v) { $_setUnsignedInt32(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasGoodsSlotStatusCheckHeight() => $_has(23);
  @$pb.TagNumber(24)
  void clearGoodsSlotStatusCheckHeight() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get rackLegSideOffset => $_getIZ(24);
  @$pb.TagNumber(25)
  set rackLegSideOffset($core.int v) { $_setUnsignedInt32(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasRackLegSideOffset() => $_has(24);
  @$pb.TagNumber(25)
  void clearRackLegSideOffset() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get rackLegFrontOffset => $_getIZ(25);
  @$pb.TagNumber(26)
  set rackLegFrontOffset($core.int v) { $_setUnsignedInt32(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasRackLegFrontOffset() => $_has(25);
  @$pb.TagNumber(26)
  void clearRackLegFrontOffset() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get goodsAllocationNum => $_getIZ(26);
  @$pb.TagNumber(27)
  set goodsAllocationNum($core.int v) { $_setUnsignedInt32(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasGoodsAllocationNum() => $_has(26);
  @$pb.TagNumber(27)
  void clearGoodsAllocationNum() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get beamHeight => $_getIZ(27);
  @$pb.TagNumber(28)
  set beamHeight($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasBeamHeight() => $_has(27);
  @$pb.TagNumber(28)
  void clearBeamHeight() => clearField(28);

  @$pb.TagNumber(29)
  FeatureType get goodsSlotFeatureType => $_getN(28);
  @$pb.TagNumber(29)
  set goodsSlotFeatureType(FeatureType v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasGoodsSlotFeatureType() => $_has(28);
  @$pb.TagNumber(29)
  void clearGoodsSlotFeatureType() => clearField(29);

  @$pb.TagNumber(30)
  GoodsAllocation get goodsAlloc => $_getN(29);
  @$pb.TagNumber(30)
  set goodsAlloc(GoodsAllocation v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasGoodsAlloc() => $_has(29);
  @$pb.TagNumber(30)
  void clearGoodsAlloc() => clearField(30);
  @$pb.TagNumber(30)
  GoodsAllocation ensureGoodsAlloc() => $_ensure(29);

  @$pb.TagNumber(31)
  $core.List<GoodsSlotGroup> get verticalGoodsSlotGroups => $_getList(30);

  @$pb.TagNumber(32)
  $core.List<GoodsSlotGroup> get horizontalGoodsSlotGroups => $_getList(31);
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
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (horizontalGroupId != null) {
      $result.horizontalGroupId = horizontalGroupId;
    }
    if (verticalGroupId != null) {
      $result.verticalGroupId = verticalGroupId;
    }
    if (localNumber != null) {
      $result.localNumber = localNumber;
    }
    if (displayNumber != null) {
      $result.displayNumber = displayNumber;
    }
    if (orientation != null) {
      $result.orientation.addAll(orientation);
    }
    if (goodsSlotFeatureType != null) {
      $result.goodsSlotFeatureType = goodsSlotFeatureType;
    }
    if (beamHeight != null) {
      $result.beamHeight = beamHeight;
    }
    if (layerHeight != null) {
      $result.layerHeight = layerHeight;
    }
    if (clearance != null) {
      $result.clearance = clearance;
    }
    if (width != null) {
      $result.width = width;
    }
    if (distanceToStation != null) {
      $result.distanceToStation = distanceToStation;
    }
    if (goodsPlacementOffset != null) {
      $result.goodsPlacementOffset = goodsPlacementOffset;
    }
    if (gaps != null) {
      $result.gaps.addAll(gaps);
    }
    if (goodsStackId != null) {
      $result.goodsStackId = goodsStackId;
    }
    if (goodsSlotFeatureHeight != null) {
      $result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    }
    if (linkId != null) {
      $result.linkId = linkId;
    }
    if (toolId != null) {
      $result.toolId = toolId;
    }
    if (slideChute != null) {
      $result.slideChute = slideChute;
    }
    if (heightOverGoodsSlotWhenPut != null) {
      $result.heightOverGoodsSlotWhenPut = heightOverGoodsSlotWhenPut;
    }
    if (heightOverGoodsSlotWhenGet != null) {
      $result.heightOverGoodsSlotWhenGet = heightOverGoodsSlotWhenGet;
    }
    if (heightGapBetweenForkAndGoodsWhenGet != null) {
      $result.heightGapBetweenForkAndGoodsWhenGet = heightGapBetweenForkAndGoodsWhenGet;
    }
    if (heightGapBetweenForkAndGoodsWhenPut != null) {
      $result.heightGapBetweenForkAndGoodsWhenPut = heightGapBetweenForkAndGoodsWhenPut;
    }
    if (goodsSlotPillarHeight != null) {
      $result.goodsSlotPillarHeight = goodsSlotPillarHeight;
    }
    if (goodsSlotTelescopicDistanceToDetectFeature != null) {
      $result.goodsSlotTelescopicDistanceToDetectFeature = goodsSlotTelescopicDistanceToDetectFeature;
    }
    if (boxMarkerOffsetToBottom != null) {
      $result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    }
    if (rackOrientation != null) {
      $result.rackOrientation = rackOrientation;
    }
    if (goodsSlotStatusCheckHeight != null) {
      $result.goodsSlotStatusCheckHeight = goodsSlotStatusCheckHeight;
    }
    if (goodsSlotOffset != null) {
      $result.goodsSlotOffset = goodsSlotOffset;
    }
    if (goodsSlotAdjustGoodsModeWhenPut != null) {
      $result.goodsSlotAdjustGoodsModeWhenPut = goodsSlotAdjustGoodsModeWhenPut;
    }
    if (goodsSlotAdjustGoodsModeWhenGet != null) {
      $result.goodsSlotAdjustGoodsModeWhenGet = goodsSlotAdjustGoodsModeWhenGet;
    }
    if (goodsSlotForkGoodsClearance != null) {
      $result.goodsSlotForkGoodsClearance = goodsSlotForkGoodsClearance;
    }
    if (goodsSlotWaitTimeForExternalSlotEmpty != null) {
      $result.goodsSlotWaitTimeForExternalSlotEmpty = goodsSlotWaitTimeForExternalSlotEmpty;
    }
    if (rackTypeId != null) {
      $result.rackTypeId = rackTypeId;
    }
    if (length != null) {
      $result.length = length;
    }
    if (goodsAllocationNum != null) {
      $result.goodsAllocationNum = goodsAllocationNum;
    }
    if (goodsAllocationWidth != null) {
      $result.goodsAllocationWidth = goodsAllocationWidth;
    }
    return $result;
  }
  GoodsSlot._() : super();
  factory GoodsSlot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsSlot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsSlot', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'horizontalGroupId', protoName: 'horizontalGroupId')
    ..aOS(4, _omitFieldNames ? '' : 'verticalGroupId', protoName: 'verticalGroupId')
    ..aOS(5, _omitFieldNames ? '' : 'localNumber', protoName: 'localNumber')
    ..aOS(6, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..p<$core.double>(7, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.KD)
    ..e<FeatureType>(8, _omitFieldNames ? '' : 'goodsSlotFeatureType', $pb.PbFieldType.OE, protoName: 'goodsSlotFeatureType', defaultOrMaker: FeatureType.FEATURE_TYPE_UNKNOWN, valueOf: FeatureType.valueOf, enumValues: FeatureType.values)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'beamHeight', $pb.PbFieldType.O3, protoName: 'beamHeight')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'layerHeight', $pb.PbFieldType.O3, protoName: 'layerHeight')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'clearance', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'distanceToStation', $pb.PbFieldType.O3, protoName: 'distanceToStation')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'goodsPlacementOffset', $pb.PbFieldType.O3, protoName: 'goodsPlacementOffset')
    ..pc<Gap>(15, _omitFieldNames ? '' : 'gaps', $pb.PbFieldType.PM, subBuilder: Gap.create)
    ..aInt64(16, _omitFieldNames ? '' : 'goodsStackId', protoName: 'goodsStackId')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'goodsSlotFeatureHeight', $pb.PbFieldType.O3, protoName: 'goodsSlotFeatureHeight')
    ..aInt64(18, _omitFieldNames ? '' : 'linkId', protoName: 'linkId')
    ..aInt64(19, _omitFieldNames ? '' : 'toolId', protoName: 'toolId')
    ..aOB(20, _omitFieldNames ? '' : 'slideChute', protoName: 'slideChute')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenPut', $pb.PbFieldType.O3, protoName: 'heightOverGoodsSlotWhenPut')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'heightOverGoodsSlotWhenGet', $pb.PbFieldType.O3, protoName: 'heightOverGoodsSlotWhenGet')
    ..a<$core.int>(23, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenGet', $pb.PbFieldType.O3, protoName: 'heightGapBetweenForkAndGoodsWhenGet')
    ..a<$core.int>(24, _omitFieldNames ? '' : 'heightGapBetweenForkAndGoodsWhenPut', $pb.PbFieldType.O3, protoName: 'heightGapBetweenForkAndGoodsWhenPut')
    ..a<$core.int>(25, _omitFieldNames ? '' : 'goodsSlotPillarHeight', $pb.PbFieldType.O3, protoName: 'goodsSlotPillarHeight')
    ..a<$core.int>(26, _omitFieldNames ? '' : 'goodsSlotTelescopicDistanceToDetectFeature', $pb.PbFieldType.O3, protoName: 'goodsSlotTelescopicDistanceToDetectFeature')
    ..a<$core.int>(27, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom', $pb.PbFieldType.O3, protoName: 'boxMarkerOffsetToBottom')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'rackOrientation', $pb.PbFieldType.O3, protoName: 'rackOrientation')
    ..a<$core.int>(29, _omitFieldNames ? '' : 'goodsSlotStatusCheckHeight', $pb.PbFieldType.O3, protoName: 'goodsSlotStatusCheckHeight')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'goodsSlotOffset', $pb.PbFieldType.O3, protoName: 'goodsSlotOffset')
    ..a<$core.int>(31, _omitFieldNames ? '' : 'goodsSlotAdjustGoodsModeWhenPut', $pb.PbFieldType.O3, protoName: 'goodsSlotAdjustGoodsModeWhenPut')
    ..a<$core.int>(32, _omitFieldNames ? '' : 'goodsSlotAdjustGoodsModeWhenGet', $pb.PbFieldType.O3, protoName: 'goodsSlotAdjustGoodsModeWhenGet')
    ..a<$core.int>(33, _omitFieldNames ? '' : 'goodsSlotForkGoodsClearance', $pb.PbFieldType.O3, protoName: 'goodsSlotForkGoodsClearance')
    ..a<$core.int>(34, _omitFieldNames ? '' : 'goodsSlotWaitTimeForExternalSlotEmpty', $pb.PbFieldType.O3, protoName: 'goodsSlotWaitTimeForExternalSlotEmpty')
    ..aInt64(35, _omitFieldNames ? '' : 'rackTypeId', protoName: 'rackTypeId')
    ..a<$core.int>(36, _omitFieldNames ? '' : 'length', $pb.PbFieldType.O3)
    ..a<$core.int>(37, _omitFieldNames ? '' : 'goodsAllocationNum', $pb.PbFieldType.O3, protoName: 'goodsAllocationNum')
    ..a<$core.int>(38, _omitFieldNames ? '' : 'goodsAllocationWidth', $pb.PbFieldType.O3, protoName: 'goodsAllocationWidth')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsSlot clone() => GoodsSlot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsSlot copyWith(void Function(GoodsSlot) updates) => super.copyWith((message) => updates(message as GoodsSlot)) as GoodsSlot;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlot create() => GoodsSlot._();
  GoodsSlot createEmptyInstance() => create();
  static $pb.PbList<GoodsSlot> createRepeated() => $pb.PbList<GoodsSlot>();
  @$core.pragma('dart2js:noInline')
  static GoodsSlot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSlot>(create);
  static GoodsSlot? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get horizontalGroupId => $_getSZ(1);
  @$pb.TagNumber(3)
  set horizontalGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasHorizontalGroupId() => $_has(1);
  @$pb.TagNumber(3)
  void clearHorizontalGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get verticalGroupId => $_getSZ(2);
  @$pb.TagNumber(4)
  set verticalGroupId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerticalGroupId() => $_has(2);
  @$pb.TagNumber(4)
  void clearVerticalGroupId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get localNumber => $_getSZ(3);
  @$pb.TagNumber(5)
  set localNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasLocalNumber() => $_has(3);
  @$pb.TagNumber(5)
  void clearLocalNumber() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get displayNumber => $_getSZ(4);
  @$pb.TagNumber(6)
  set displayNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasDisplayNumber() => $_has(4);
  @$pb.TagNumber(6)
  void clearDisplayNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.double> get orientation => $_getList(5);

  @$pb.TagNumber(8)
  FeatureType get goodsSlotFeatureType => $_getN(6);
  @$pb.TagNumber(8)
  set goodsSlotFeatureType(FeatureType v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasGoodsSlotFeatureType() => $_has(6);
  @$pb.TagNumber(8)
  void clearGoodsSlotFeatureType() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get beamHeight => $_getIZ(7);
  @$pb.TagNumber(9)
  set beamHeight($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasBeamHeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearBeamHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get layerHeight => $_getIZ(8);
  @$pb.TagNumber(10)
  set layerHeight($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasLayerHeight() => $_has(8);
  @$pb.TagNumber(10)
  void clearLayerHeight() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get clearance => $_getIZ(9);
  @$pb.TagNumber(11)
  set clearance($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasClearance() => $_has(9);
  @$pb.TagNumber(11)
  void clearClearance() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get width => $_getIZ(10);
  @$pb.TagNumber(12)
  set width($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasWidth() => $_has(10);
  @$pb.TagNumber(12)
  void clearWidth() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get distanceToStation => $_getIZ(11);
  @$pb.TagNumber(13)
  set distanceToStation($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasDistanceToStation() => $_has(11);
  @$pb.TagNumber(13)
  void clearDistanceToStation() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get goodsPlacementOffset => $_getIZ(12);
  @$pb.TagNumber(14)
  set goodsPlacementOffset($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasGoodsPlacementOffset() => $_has(12);
  @$pb.TagNumber(14)
  void clearGoodsPlacementOffset() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<Gap> get gaps => $_getList(13);

  @$pb.TagNumber(16)
  $fixnum.Int64 get goodsStackId => $_getI64(14);
  @$pb.TagNumber(16)
  set goodsStackId($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasGoodsStackId() => $_has(14);
  @$pb.TagNumber(16)
  void clearGoodsStackId() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get goodsSlotFeatureHeight => $_getIZ(15);
  @$pb.TagNumber(17)
  set goodsSlotFeatureHeight($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(15);
  @$pb.TagNumber(17)
  void clearGoodsSlotFeatureHeight() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get linkId => $_getI64(16);
  @$pb.TagNumber(18)
  set linkId($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(18)
  $core.bool hasLinkId() => $_has(16);
  @$pb.TagNumber(18)
  void clearLinkId() => clearField(18);

  /// to be adjusted synchronously
  @$pb.TagNumber(19)
  $fixnum.Int64 get toolId => $_getI64(17);
  @$pb.TagNumber(19)
  set toolId($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasToolId() => $_has(17);
  @$pb.TagNumber(19)
  void clearToolId() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get slideChute => $_getBF(18);
  @$pb.TagNumber(20)
  set slideChute($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasSlideChute() => $_has(18);
  @$pb.TagNumber(20)
  void clearSlideChute() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get heightOverGoodsSlotWhenPut => $_getIZ(19);
  @$pb.TagNumber(21)
  set heightOverGoodsSlotWhenPut($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(21)
  $core.bool hasHeightOverGoodsSlotWhenPut() => $_has(19);
  @$pb.TagNumber(21)
  void clearHeightOverGoodsSlotWhenPut() => clearField(21);

  @$pb.TagNumber(22)
  $core.int get heightOverGoodsSlotWhenGet => $_getIZ(20);
  @$pb.TagNumber(22)
  set heightOverGoodsSlotWhenGet($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(22)
  $core.bool hasHeightOverGoodsSlotWhenGet() => $_has(20);
  @$pb.TagNumber(22)
  void clearHeightOverGoodsSlotWhenGet() => clearField(22);

  @$pb.TagNumber(23)
  $core.int get heightGapBetweenForkAndGoodsWhenGet => $_getIZ(21);
  @$pb.TagNumber(23)
  set heightGapBetweenForkAndGoodsWhenGet($core.int v) { $_setSignedInt32(21, v); }
  @$pb.TagNumber(23)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenGet() => $_has(21);
  @$pb.TagNumber(23)
  void clearHeightGapBetweenForkAndGoodsWhenGet() => clearField(23);

  @$pb.TagNumber(24)
  $core.int get heightGapBetweenForkAndGoodsWhenPut => $_getIZ(22);
  @$pb.TagNumber(24)
  set heightGapBetweenForkAndGoodsWhenPut($core.int v) { $_setSignedInt32(22, v); }
  @$pb.TagNumber(24)
  $core.bool hasHeightGapBetweenForkAndGoodsWhenPut() => $_has(22);
  @$pb.TagNumber(24)
  void clearHeightGapBetweenForkAndGoodsWhenPut() => clearField(24);

  @$pb.TagNumber(25)
  $core.int get goodsSlotPillarHeight => $_getIZ(23);
  @$pb.TagNumber(25)
  set goodsSlotPillarHeight($core.int v) { $_setSignedInt32(23, v); }
  @$pb.TagNumber(25)
  $core.bool hasGoodsSlotPillarHeight() => $_has(23);
  @$pb.TagNumber(25)
  void clearGoodsSlotPillarHeight() => clearField(25);

  @$pb.TagNumber(26)
  $core.int get goodsSlotTelescopicDistanceToDetectFeature => $_getIZ(24);
  @$pb.TagNumber(26)
  set goodsSlotTelescopicDistanceToDetectFeature($core.int v) { $_setSignedInt32(24, v); }
  @$pb.TagNumber(26)
  $core.bool hasGoodsSlotTelescopicDistanceToDetectFeature() => $_has(24);
  @$pb.TagNumber(26)
  void clearGoodsSlotTelescopicDistanceToDetectFeature() => clearField(26);

  @$pb.TagNumber(27)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(25);
  @$pb.TagNumber(27)
  set boxMarkerOffsetToBottom($core.int v) { $_setSignedInt32(25, v); }
  @$pb.TagNumber(27)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(25);
  @$pb.TagNumber(27)
  void clearBoxMarkerOffsetToBottom() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get rackOrientation => $_getIZ(26);
  @$pb.TagNumber(28)
  set rackOrientation($core.int v) { $_setSignedInt32(26, v); }
  @$pb.TagNumber(28)
  $core.bool hasRackOrientation() => $_has(26);
  @$pb.TagNumber(28)
  void clearRackOrientation() => clearField(28);

  @$pb.TagNumber(29)
  $core.int get goodsSlotStatusCheckHeight => $_getIZ(27);
  @$pb.TagNumber(29)
  set goodsSlotStatusCheckHeight($core.int v) { $_setSignedInt32(27, v); }
  @$pb.TagNumber(29)
  $core.bool hasGoodsSlotStatusCheckHeight() => $_has(27);
  @$pb.TagNumber(29)
  void clearGoodsSlotStatusCheckHeight() => clearField(29);

  @$pb.TagNumber(30)
  $core.int get goodsSlotOffset => $_getIZ(28);
  @$pb.TagNumber(30)
  set goodsSlotOffset($core.int v) { $_setSignedInt32(28, v); }
  @$pb.TagNumber(30)
  $core.bool hasGoodsSlotOffset() => $_has(28);
  @$pb.TagNumber(30)
  void clearGoodsSlotOffset() => clearField(30);

  @$pb.TagNumber(31)
  $core.int get goodsSlotAdjustGoodsModeWhenPut => $_getIZ(29);
  @$pb.TagNumber(31)
  set goodsSlotAdjustGoodsModeWhenPut($core.int v) { $_setSignedInt32(29, v); }
  @$pb.TagNumber(31)
  $core.bool hasGoodsSlotAdjustGoodsModeWhenPut() => $_has(29);
  @$pb.TagNumber(31)
  void clearGoodsSlotAdjustGoodsModeWhenPut() => clearField(31);

  @$pb.TagNumber(32)
  $core.int get goodsSlotAdjustGoodsModeWhenGet => $_getIZ(30);
  @$pb.TagNumber(32)
  set goodsSlotAdjustGoodsModeWhenGet($core.int v) { $_setSignedInt32(30, v); }
  @$pb.TagNumber(32)
  $core.bool hasGoodsSlotAdjustGoodsModeWhenGet() => $_has(30);
  @$pb.TagNumber(32)
  void clearGoodsSlotAdjustGoodsModeWhenGet() => clearField(32);

  @$pb.TagNumber(33)
  $core.int get goodsSlotForkGoodsClearance => $_getIZ(31);
  @$pb.TagNumber(33)
  set goodsSlotForkGoodsClearance($core.int v) { $_setSignedInt32(31, v); }
  @$pb.TagNumber(33)
  $core.bool hasGoodsSlotForkGoodsClearance() => $_has(31);
  @$pb.TagNumber(33)
  void clearGoodsSlotForkGoodsClearance() => clearField(33);

  @$pb.TagNumber(34)
  $core.int get goodsSlotWaitTimeForExternalSlotEmpty => $_getIZ(32);
  @$pb.TagNumber(34)
  set goodsSlotWaitTimeForExternalSlotEmpty($core.int v) { $_setSignedInt32(32, v); }
  @$pb.TagNumber(34)
  $core.bool hasGoodsSlotWaitTimeForExternalSlotEmpty() => $_has(32);
  @$pb.TagNumber(34)
  void clearGoodsSlotWaitTimeForExternalSlotEmpty() => clearField(34);

  @$pb.TagNumber(35)
  $fixnum.Int64 get rackTypeId => $_getI64(33);
  @$pb.TagNumber(35)
  set rackTypeId($fixnum.Int64 v) { $_setInt64(33, v); }
  @$pb.TagNumber(35)
  $core.bool hasRackTypeId() => $_has(33);
  @$pb.TagNumber(35)
  void clearRackTypeId() => clearField(35);

  @$pb.TagNumber(36)
  $core.int get length => $_getIZ(34);
  @$pb.TagNumber(36)
  set length($core.int v) { $_setSignedInt32(34, v); }
  @$pb.TagNumber(36)
  $core.bool hasLength() => $_has(34);
  @$pb.TagNumber(36)
  void clearLength() => clearField(36);

  @$pb.TagNumber(37)
  $core.int get goodsAllocationNum => $_getIZ(35);
  @$pb.TagNumber(37)
  set goodsAllocationNum($core.int v) { $_setSignedInt32(35, v); }
  @$pb.TagNumber(37)
  $core.bool hasGoodsAllocationNum() => $_has(35);
  @$pb.TagNumber(37)
  void clearGoodsAllocationNum() => clearField(37);

  @$pb.TagNumber(38)
  $core.int get goodsAllocationWidth => $_getIZ(36);
  @$pb.TagNumber(38)
  set goodsAllocationWidth($core.int v) { $_setSignedInt32(36, v); }
  @$pb.TagNumber(38)
  $core.bool hasGoodsAllocationWidth() => $_has(36);
  @$pb.TagNumber(38)
  void clearGoodsAllocationWidth() => clearField(38);
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
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (elementType != null) {
      $result.elementType = elementType;
    }
    if (pointList != null) {
      $result.pointList.addAll(pointList);
    }
    if (includeDataId != null) {
      $result.includeDataId.addAll(includeDataId);
    }
    if (conflictZoneType != null) {
      $result.conflictZoneType = conflictZoneType;
    }
    if (limitedAgvNum != null) {
      $result.limitedAgvNum = limitedAgvNum;
    }
    if (allowAGVType != null) {
      $result.allowAGVType.addAll(allowAGVType);
    }
    if (clusterNodeCount != null) {
      $result.clusterNodeCount = clusterNodeCount;
    }
    if (limitTaskPriority != null) {
      $result.limitTaskPriority = limitTaskPriority;
    }
    if (limitTaskNum != null) {
      $result.limitTaskNum = limitTaskNum;
    }
    if (enterNode != null) {
      $result.enterNode.addAll(enterNode);
    }
    if (exitNode != null) {
      $result.exitNode.addAll(exitNode);
    }
    if (depthX != null) {
      $result.depthX = depthX;
    }
    if (depthY != null) {
      $result.depthY = depthY;
    }
    return $result;
  }
  ConflictZone._() : super();
  factory ConflictZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConflictZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConflictZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<ElementType>(2, _omitFieldNames ? '' : 'elementType', $pb.PbFieldType.OE, protoName: 'elementType', defaultOrMaker: ElementType.ELEMENT_TYPE_UNKNOWN, valueOf: ElementType.valueOf, enumValues: ElementType.values)
    ..pc<Point>(3, _omitFieldNames ? '' : 'pointList', $pb.PbFieldType.PM, protoName: 'pointList', subBuilder: Point.create)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'includeDataId', $pb.PbFieldType.K3, protoName: 'includeDataId')
    ..e<ConflictZoneType>(5, _omitFieldNames ? '' : 'conflictZoneType', $pb.PbFieldType.OE, protoName: 'conflictZoneType', defaultOrMaker: ConflictZoneType.CONFLICT_ZONE_TYPE_UNKNOWN, valueOf: ConflictZoneType.valueOf, enumValues: ConflictZoneType.values)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'limitedAgvNum', $pb.PbFieldType.O3, protoName: 'limitedAgvNum')
    ..pPS(7, _omitFieldNames ? '' : 'allowAGVType', protoName: 'allowAGVType')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'clusterNodeCount', $pb.PbFieldType.O3, protoName: 'clusterNodeCount')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'limitTaskPriority', $pb.PbFieldType.O3, protoName: 'limitTaskPriority')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'limitTaskNum', $pb.PbFieldType.O3, protoName: 'limitTaskNum')
    ..pPS(11, _omitFieldNames ? '' : 'enterNode', protoName: 'enterNode')
    ..pPS(12, _omitFieldNames ? '' : 'exitNode', protoName: 'exitNode')
    ..aInt64(13, _omitFieldNames ? '' : 'depthX', protoName: 'depthX')
    ..aInt64(14, _omitFieldNames ? '' : 'depthY', protoName: 'depthY')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConflictZone clone() => ConflictZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConflictZone copyWith(void Function(ConflictZone) updates) => super.copyWith((message) => updates(message as ConflictZone)) as ConflictZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConflictZone create() => ConflictZone._();
  ConflictZone createEmptyInstance() => create();
  static $pb.PbList<ConflictZone> createRepeated() => $pb.PbList<ConflictZone>();
  @$core.pragma('dart2js:noInline')
  static ConflictZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConflictZone>(create);
  static ConflictZone? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  ElementType get elementType => $_getN(1);
  @$pb.TagNumber(2)
  set elementType(ElementType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasElementType() => $_has(1);
  @$pb.TagNumber(2)
  void clearElementType() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Point> get pointList => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get includeDataId => $_getList(3);

  @$pb.TagNumber(5)
  ConflictZoneType get conflictZoneType => $_getN(4);
  @$pb.TagNumber(5)
  set conflictZoneType(ConflictZoneType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasConflictZoneType() => $_has(4);
  @$pb.TagNumber(5)
  void clearConflictZoneType() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get limitedAgvNum => $_getIZ(5);
  @$pb.TagNumber(6)
  set limitedAgvNum($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLimitedAgvNum() => $_has(5);
  @$pb.TagNumber(6)
  void clearLimitedAgvNum() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.String> get allowAGVType => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get clusterNodeCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set clusterNodeCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasClusterNodeCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearClusterNodeCount() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get limitTaskPriority => $_getIZ(8);
  @$pb.TagNumber(9)
  set limitTaskPriority($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLimitTaskPriority() => $_has(8);
  @$pb.TagNumber(9)
  void clearLimitTaskPriority() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get limitTaskNum => $_getIZ(9);
  @$pb.TagNumber(10)
  set limitTaskNum($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLimitTaskNum() => $_has(9);
  @$pb.TagNumber(10)
  void clearLimitTaskNum() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.String> get enterNode => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.String> get exitNode => $_getList(11);

  @$pb.TagNumber(13)
  $fixnum.Int64 get depthX => $_getI64(12);
  @$pb.TagNumber(13)
  set depthX($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDepthX() => $_has(12);
  @$pb.TagNumber(13)
  void clearDepthX() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get depthY => $_getI64(13);
  @$pb.TagNumber(14)
  set depthY($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasDepthY() => $_has(13);
  @$pb.TagNumber(14)
  void clearDepthY() => clearField(14);
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
    final $result = create();
    if (floorName != null) {
      $result.floorName = floorName;
    }
    if (id != null) {
      $result.id = id;
    }
    if (floorNum != null) {
      $result.floorNum = floorNum;
    }
    if (node != null) {
      $result.node.addAll(node);
    }
    if (edge != null) {
      $result.edge.addAll(edge);
    }
    if (goodsSlot != null) {
      $result.goodsSlot.addAll(goodsSlot);
    }
    if (conflictZone != null) {
      $result.conflictZone.addAll(conflictZone);
    }
    if (rack != null) {
      $result.rack.addAll(rack);
    }
    if (globalDefaultData != null) {
      $result.globalDefaultData = globalDefaultData;
    }
    if (propertyObjects != null) {
      $result.propertyObjects.addAll(propertyObjects);
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    if (functionalBlock != null) {
      $result.functionalBlock.addAll(functionalBlock);
    }
    if (serverAddress != null) {
      $result.serverAddress.addAll(serverAddress);
    }
    if (goodsStackData != null) {
      $result.goodsStackData.addAll(goodsStackData);
    }
    return $result;
  }
  BusinessMap._() : super();
  factory BusinessMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'floorName', protoName: 'floorName')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'floorNum', $pb.PbFieldType.O3, protoName: 'floorNum')
    ..pc<Node>(4, _omitFieldNames ? '' : 'node', $pb.PbFieldType.PM, subBuilder: Node.create)
    ..pc<Edge>(5, _omitFieldNames ? '' : 'edge', $pb.PbFieldType.PM, subBuilder: Edge.create)
    ..pc<GoodsSlot>(6, _omitFieldNames ? '' : 'goodsSlot', $pb.PbFieldType.PM, protoName: 'goodsSlot', subBuilder: GoodsSlot.create)
    ..pc<ConflictZone>(7, _omitFieldNames ? '' : 'conflictZone', $pb.PbFieldType.PM, protoName: 'conflictZone', subBuilder: ConflictZone.create)
    ..pc<Rack>(8, _omitFieldNames ? '' : 'rack', $pb.PbFieldType.PM, subBuilder: Rack.create)
    ..aOM<GlobalDefaultData>(9, _omitFieldNames ? '' : 'globalDefaultData', protoName: 'globalDefaultData', subBuilder: GlobalDefaultData.create)
    ..pc<PropertyObject>(10, _omitFieldNames ? '' : 'propertyObjects', $pb.PbFieldType.PM, protoName: 'propertyObjects', subBuilder: PropertyObject.create)
    ..pc<Rule>(11, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: Rule.create)
    ..pc<FunctionalBlock>(12, _omitFieldNames ? '' : 'functionalBlock', $pb.PbFieldType.PM, protoName: 'functionalBlock', subBuilder: FunctionalBlock.create)
    ..pc<ServerAddress>(13, _omitFieldNames ? '' : 'serverAddress', $pb.PbFieldType.PM, protoName: 'serverAddress', subBuilder: ServerAddress.create)
    ..pc<GoodsStackData>(14, _omitFieldNames ? '' : 'goodsStackData', $pb.PbFieldType.PM, protoName: 'goodsStackData', subBuilder: GoodsStackData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessMap clone() => BusinessMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessMap copyWith(void Function(BusinessMap) updates) => super.copyWith((message) => updates(message as BusinessMap)) as BusinessMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessMap create() => BusinessMap._();
  BusinessMap createEmptyInstance() => create();
  static $pb.PbList<BusinessMap> createRepeated() => $pb.PbList<BusinessMap>();
  @$core.pragma('dart2js:noInline')
  static BusinessMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessMap>(create);
  static BusinessMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get floorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set floorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFloorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFloorName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get floorNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set floorNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFloorNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloorNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Node> get node => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Edge> get edge => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<GoodsSlot> get goodsSlot => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<ConflictZone> get conflictZone => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<Rack> get rack => $_getList(7);

  @$pb.TagNumber(9)
  GlobalDefaultData get globalDefaultData => $_getN(8);
  @$pb.TagNumber(9)
  set globalDefaultData(GlobalDefaultData v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasGlobalDefaultData() => $_has(8);
  @$pb.TagNumber(9)
  void clearGlobalDefaultData() => clearField(9);
  @$pb.TagNumber(9)
  GlobalDefaultData ensureGlobalDefaultData() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.List<PropertyObject> get propertyObjects => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<Rule> get rules => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<FunctionalBlock> get functionalBlock => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<ServerAddress> get serverAddress => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<GoodsStackData> get goodsStackData => $_getList(13);
}

class MappingData extends $pb.GeneratedMessage {
  factory MappingData({
    $core.Iterable<BusinessMap>? businessMap,
    PrivateData? privateData,
    $fixnum.Int64? internalVersion,
  }) {
    final $result = create();
    if (businessMap != null) {
      $result.businessMap.addAll(businessMap);
    }
    if (privateData != null) {
      $result.privateData = privateData;
    }
    if (internalVersion != null) {
      $result.internalVersion = internalVersion;
    }
    return $result;
  }
  MappingData._() : super();
  factory MappingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MappingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MappingData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<BusinessMap>(1, _omitFieldNames ? '' : 'businessMap', $pb.PbFieldType.PM, protoName: 'businessMap', subBuilder: BusinessMap.create)
    ..aOM<PrivateData>(2, _omitFieldNames ? '' : 'privateData', protoName: 'privateData', subBuilder: PrivateData.create)
    ..aInt64(3, _omitFieldNames ? '' : 'internalVersion', protoName: 'internalVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MappingData clone() => MappingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MappingData copyWith(void Function(MappingData) updates) => super.copyWith((message) => updates(message as MappingData)) as MappingData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MappingData create() => MappingData._();
  MappingData createEmptyInstance() => create();
  static $pb.PbList<MappingData> createRepeated() => $pb.PbList<MappingData>();
  @$core.pragma('dart2js:noInline')
  static MappingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MappingData>(create);
  static MappingData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BusinessMap> get businessMap => $_getList(0);

  @$pb.TagNumber(2)
  PrivateData get privateData => $_getN(1);
  @$pb.TagNumber(2)
  set privateData(PrivateData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrivateData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateData() => clearField(2);
  @$pb.TagNumber(2)
  PrivateData ensurePrivateData() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get internalVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set internalVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInternalVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearInternalVersion() => clearField(3);
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
    final $result = create();
    if (zoneId != null) {
      $result.zoneId = zoneId;
    }
    if (rcsServerAddr != null) {
      $result.rcsServerAddr = rcsServerAddr;
    }
    if (rcsServerPort != null) {
      $result.rcsServerPort = rcsServerPort;
    }
    if (timeServerAddr != null) {
      $result.timeServerAddr = timeServerAddr;
    }
    if (neoServerAddr != null) {
      $result.neoServerAddr = neoServerAddr;
    }
    if (neoServerPort != null) {
      $result.neoServerPort = neoServerPort;
    }
    return $result;
  }
  ServerAddress._() : super();
  factory ServerAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'zoneId', $pb.PbFieldType.O3, protoName: 'zoneId')
    ..aOS(2, _omitFieldNames ? '' : 'rcsServerAddr', protoName: 'rcsServerAddr')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rcsServerPort', $pb.PbFieldType.O3, protoName: 'rcsServerPort')
    ..aOS(4, _omitFieldNames ? '' : 'timeServerAddr', protoName: 'timeServerAddr')
    ..aOS(5, _omitFieldNames ? '' : 'neoServerAddr', protoName: 'neoServerAddr')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'neoServerPort', $pb.PbFieldType.O3, protoName: 'neoServerPort')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerAddress clone() => ServerAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerAddress copyWith(void Function(ServerAddress) updates) => super.copyWith((message) => updates(message as ServerAddress)) as ServerAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerAddress create() => ServerAddress._();
  ServerAddress createEmptyInstance() => create();
  static $pb.PbList<ServerAddress> createRepeated() => $pb.PbList<ServerAddress>();
  @$core.pragma('dart2js:noInline')
  static ServerAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerAddress>(create);
  static ServerAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get zoneId => $_getIZ(0);
  @$pb.TagNumber(1)
  set zoneId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearZoneId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get rcsServerAddr => $_getSZ(1);
  @$pb.TagNumber(2)
  set rcsServerAddr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRcsServerAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearRcsServerAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get rcsServerPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set rcsServerPort($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRcsServerPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearRcsServerPort() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get timeServerAddr => $_getSZ(3);
  @$pb.TagNumber(4)
  set timeServerAddr($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimeServerAddr() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeServerAddr() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get neoServerAddr => $_getSZ(4);
  @$pb.TagNumber(5)
  set neoServerAddr($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNeoServerAddr() => $_has(4);
  @$pb.TagNumber(5)
  void clearNeoServerAddr() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get neoServerPort => $_getIZ(5);
  @$pb.TagNumber(6)
  set neoServerPort($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNeoServerPort() => $_has(5);
  @$pb.TagNumber(6)
  void clearNeoServerPort() => clearField(6);
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
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (straightOnVelocity != null) {
      $result.straightOnVelocity.addAll(straightOnVelocity);
    }
    if (rotateVelocity != null) {
      $result.rotateVelocity.addAll(rotateVelocity);
    }
    if (markerType != null) {
      $result.markerType = markerType;
    }
    if (rackType != null) {
      $result.rackType = rackType;
    }
    if (language != null) {
      $result.language = language;
    }
    if (taskOrbitMustAlongAxis != null) {
      $result.taskOrbitMustAlongAxis = taskOrbitMustAlongAxis;
    }
    if (rcsEqualDistanceShow != null) {
      $result.rcsEqualDistanceShow = rcsEqualDistanceShow;
    }
    if (logicIsContinuous != null) {
      $result.logicIsContinuous = logicIsContinuous;
    }
    if (allowPassage != null) {
      $result.allowPassage = allowPassage;
    }
    if (partnerMapVersion != null) {
      $result.partnerMapVersion = partnerMapVersion;
    }
    if (partnerMapCode != null) {
      $result.partnerMapCode = partnerMapCode;
    }
    return $result;
  }
  GlobalDefaultData._() : super();
  factory GlobalDefaultData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GlobalDefaultData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GlobalDefaultData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..pc<StraghtOnVelocity>(2, _omitFieldNames ? '' : 'straightOnVelocity', $pb.PbFieldType.PM, protoName: 'straightOnVelocity', subBuilder: StraghtOnVelocity.create)
    ..pc<RotateVelocity>(3, _omitFieldNames ? '' : 'rotateVelocity', $pb.PbFieldType.PM, protoName: 'rotateVelocity', subBuilder: RotateVelocity.create)
    ..aInt64(4, _omitFieldNames ? '' : 'markerType', protoName: 'markerType')
    ..aOS(5, _omitFieldNames ? '' : 'rackType', protoName: 'rackType')
    ..aOS(6, _omitFieldNames ? '' : 'language')
    ..aOB(7, _omitFieldNames ? '' : 'taskOrbitMustAlongAxis', protoName: 'taskOrbitMustAlongAxis')
    ..aOB(8, _omitFieldNames ? '' : 'rcsEqualDistanceShow', protoName: 'rcsEqualDistanceShow')
    ..aOB(9, _omitFieldNames ? '' : 'logicIsContinuous', protoName: 'logicIsContinuous')
    ..aOM<AllowPassage>(10, _omitFieldNames ? '' : 'allowPassage', protoName: 'allowPassage', subBuilder: AllowPassage.create)
    ..aOS(11, _omitFieldNames ? '' : 'partnerMapVersion', protoName: 'partnerMapVersion')
    ..aOS(12, _omitFieldNames ? '' : 'partnerMapCode', protoName: 'partnerMapCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GlobalDefaultData clone() => GlobalDefaultData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GlobalDefaultData copyWith(void Function(GlobalDefaultData) updates) => super.copyWith((message) => updates(message as GlobalDefaultData)) as GlobalDefaultData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlobalDefaultData create() => GlobalDefaultData._();
  GlobalDefaultData createEmptyInstance() => create();
  static $pb.PbList<GlobalDefaultData> createRepeated() => $pb.PbList<GlobalDefaultData>();
  @$core.pragma('dart2js:noInline')
  static GlobalDefaultData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlobalDefaultData>(create);
  static GlobalDefaultData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<StraghtOnVelocity> get straightOnVelocity => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<RotateVelocity> get rotateVelocity => $_getList(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get markerType => $_getI64(3);
  @$pb.TagNumber(4)
  set markerType($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMarkerType() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarkerType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rackType => $_getSZ(4);
  @$pb.TagNumber(5)
  set rackType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRackType() => $_has(4);
  @$pb.TagNumber(5)
  void clearRackType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get language => $_getSZ(5);
  @$pb.TagNumber(6)
  set language($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLanguage() => $_has(5);
  @$pb.TagNumber(6)
  void clearLanguage() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get taskOrbitMustAlongAxis => $_getBF(6);
  @$pb.TagNumber(7)
  set taskOrbitMustAlongAxis($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTaskOrbitMustAlongAxis() => $_has(6);
  @$pb.TagNumber(7)
  void clearTaskOrbitMustAlongAxis() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get rcsEqualDistanceShow => $_getBF(7);
  @$pb.TagNumber(8)
  set rcsEqualDistanceShow($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRcsEqualDistanceShow() => $_has(7);
  @$pb.TagNumber(8)
  void clearRcsEqualDistanceShow() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get logicIsContinuous => $_getBF(8);
  @$pb.TagNumber(9)
  set logicIsContinuous($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLogicIsContinuous() => $_has(8);
  @$pb.TagNumber(9)
  void clearLogicIsContinuous() => clearField(9);

  @$pb.TagNumber(10)
  AllowPassage get allowPassage => $_getN(9);
  @$pb.TagNumber(10)
  set allowPassage(AllowPassage v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAllowPassage() => $_has(9);
  @$pb.TagNumber(10)
  void clearAllowPassage() => clearField(10);
  @$pb.TagNumber(10)
  AllowPassage ensureAllowPassage() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get partnerMapVersion => $_getSZ(10);
  @$pb.TagNumber(11)
  set partnerMapVersion($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPartnerMapVersion() => $_has(10);
  @$pb.TagNumber(11)
  void clearPartnerMapVersion() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get partnerMapCode => $_getSZ(11);
  @$pb.TagNumber(12)
  set partnerMapCode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPartnerMapCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearPartnerMapCode() => clearField(12);
}

class AllowPassage extends $pb.GeneratedMessage {
  factory AllowPassage({
    $fixnum.Int64? long,
    $fixnum.Int64? width,
    $fixnum.Int64? height,
  }) {
    final $result = create();
    if (long != null) {
      $result.long = long;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  AllowPassage._() : super();
  factory AllowPassage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllowPassage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllowPassage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'long')
    ..aInt64(2, _omitFieldNames ? '' : 'width')
    ..aInt64(3, _omitFieldNames ? '' : 'height')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllowPassage clone() => AllowPassage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllowPassage copyWith(void Function(AllowPassage) updates) => super.copyWith((message) => updates(message as AllowPassage)) as AllowPassage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllowPassage create() => AllowPassage._();
  AllowPassage createEmptyInstance() => create();
  static $pb.PbList<AllowPassage> createRepeated() => $pb.PbList<AllowPassage>();
  @$core.pragma('dart2js:noInline')
  static AllowPassage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllowPassage>(create);
  static AllowPassage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get long => $_getI64(0);
  @$pb.TagNumber(1)
  set long($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLong() => $_has(0);
  @$pb.TagNumber(1)
  void clearLong() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get width => $_getI64(1);
  @$pb.TagNumber(2)
  set width($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get height => $_getI64(2);
  @$pb.TagNumber(3)
  set height($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);
}

class VelocityItem extends $pb.GeneratedMessage {
  factory VelocityItem({
    $core.double? velocity,
    $core.double? acceleration,
  }) {
    final $result = create();
    if (velocity != null) {
      $result.velocity = velocity;
    }
    if (acceleration != null) {
      $result.acceleration = acceleration;
    }
    return $result;
  }
  VelocityItem._() : super();
  factory VelocityItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VelocityItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VelocityItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'velocity', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'acceleration', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VelocityItem clone() => VelocityItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VelocityItem copyWith(void Function(VelocityItem) updates) => super.copyWith((message) => updates(message as VelocityItem)) as VelocityItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VelocityItem create() => VelocityItem._();
  VelocityItem createEmptyInstance() => create();
  static $pb.PbList<VelocityItem> createRepeated() => $pb.PbList<VelocityItem>();
  @$core.pragma('dart2js:noInline')
  static VelocityItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VelocityItem>(create);
  static VelocityItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get velocity => $_getN(0);
  @$pb.TagNumber(1)
  set velocity($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVelocity() => $_has(0);
  @$pb.TagNumber(1)
  void clearVelocity() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get acceleration => $_getN(1);
  @$pb.TagNumber(2)
  set acceleration($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceleration() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceleration() => clearField(2);
}

class StraghtOnVelocity extends $pb.GeneratedMessage {
  factory StraghtOnVelocity({
    $core.Iterable<$core.String>? passableRobots,
    VelocityItem? forward,
    VelocityItem? backward,
    VelocityItem? forwardWithLoad,
    VelocityItem? backwardWithLoad,
  }) {
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (forward != null) {
      $result.forward = forward;
    }
    if (backward != null) {
      $result.backward = backward;
    }
    if (forwardWithLoad != null) {
      $result.forwardWithLoad = forwardWithLoad;
    }
    if (backwardWithLoad != null) {
      $result.backwardWithLoad = backwardWithLoad;
    }
    return $result;
  }
  StraghtOnVelocity._() : super();
  factory StraghtOnVelocity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StraghtOnVelocity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StraghtOnVelocity', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..aOM<VelocityItem>(2, _omitFieldNames ? '' : 'forward', subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(3, _omitFieldNames ? '' : 'backward', subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(4, _omitFieldNames ? '' : 'forwardWithLoad', protoName: 'forwardWithLoad', subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(5, _omitFieldNames ? '' : 'backwardWithLoad', protoName: 'backwardWithLoad', subBuilder: VelocityItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StraghtOnVelocity clone() => StraghtOnVelocity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StraghtOnVelocity copyWith(void Function(StraghtOnVelocity) updates) => super.copyWith((message) => updates(message as StraghtOnVelocity)) as StraghtOnVelocity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StraghtOnVelocity create() => StraghtOnVelocity._();
  StraghtOnVelocity createEmptyInstance() => create();
  static $pb.PbList<StraghtOnVelocity> createRepeated() => $pb.PbList<StraghtOnVelocity>();
  @$core.pragma('dart2js:noInline')
  static StraghtOnVelocity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StraghtOnVelocity>(create);
  static StraghtOnVelocity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  VelocityItem get forward => $_getN(1);
  @$pb.TagNumber(2)
  set forward(VelocityItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasForward() => $_has(1);
  @$pb.TagNumber(2)
  void clearForward() => clearField(2);
  @$pb.TagNumber(2)
  VelocityItem ensureForward() => $_ensure(1);

  @$pb.TagNumber(3)
  VelocityItem get backward => $_getN(2);
  @$pb.TagNumber(3)
  set backward(VelocityItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBackward() => $_has(2);
  @$pb.TagNumber(3)
  void clearBackward() => clearField(3);
  @$pb.TagNumber(3)
  VelocityItem ensureBackward() => $_ensure(2);

  @$pb.TagNumber(4)
  VelocityItem get forwardWithLoad => $_getN(3);
  @$pb.TagNumber(4)
  set forwardWithLoad(VelocityItem v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasForwardWithLoad() => $_has(3);
  @$pb.TagNumber(4)
  void clearForwardWithLoad() => clearField(4);
  @$pb.TagNumber(4)
  VelocityItem ensureForwardWithLoad() => $_ensure(3);

  @$pb.TagNumber(5)
  VelocityItem get backwardWithLoad => $_getN(4);
  @$pb.TagNumber(5)
  set backwardWithLoad(VelocityItem v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBackwardWithLoad() => $_has(4);
  @$pb.TagNumber(5)
  void clearBackwardWithLoad() => clearField(5);
  @$pb.TagNumber(5)
  VelocityItem ensureBackwardWithLoad() => $_ensure(4);
}

class RotateVelocity extends $pb.GeneratedMessage {
  factory RotateVelocity({
    $core.Iterable<$core.String>? passableRobots,
    VelocityItem? rotate,
    VelocityItem? rotateWithLoad,
  }) {
    final $result = create();
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    if (rotate != null) {
      $result.rotate = rotate;
    }
    if (rotateWithLoad != null) {
      $result.rotateWithLoad = rotateWithLoad;
    }
    return $result;
  }
  RotateVelocity._() : super();
  factory RotateVelocity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RotateVelocity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RotateVelocity', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'passableRobots', protoName: 'passableRobots')
    ..aOM<VelocityItem>(2, _omitFieldNames ? '' : 'rotate', subBuilder: VelocityItem.create)
    ..aOM<VelocityItem>(3, _omitFieldNames ? '' : 'rotateWithLoad', protoName: 'rotateWithLoad', subBuilder: VelocityItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RotateVelocity clone() => RotateVelocity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RotateVelocity copyWith(void Function(RotateVelocity) updates) => super.copyWith((message) => updates(message as RotateVelocity)) as RotateVelocity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RotateVelocity create() => RotateVelocity._();
  RotateVelocity createEmptyInstance() => create();
  static $pb.PbList<RotateVelocity> createRepeated() => $pb.PbList<RotateVelocity>();
  @$core.pragma('dart2js:noInline')
  static RotateVelocity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RotateVelocity>(create);
  static RotateVelocity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get passableRobots => $_getList(0);

  @$pb.TagNumber(2)
  VelocityItem get rotate => $_getN(1);
  @$pb.TagNumber(2)
  set rotate(VelocityItem v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRotate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRotate() => clearField(2);
  @$pb.TagNumber(2)
  VelocityItem ensureRotate() => $_ensure(1);

  @$pb.TagNumber(3)
  VelocityItem get rotateWithLoad => $_getN(2);
  @$pb.TagNumber(3)
  set rotateWithLoad(VelocityItem v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRotateWithLoad() => $_has(2);
  @$pb.TagNumber(3)
  void clearRotateWithLoad() => clearField(3);
  @$pb.TagNumber(3)
  VelocityItem ensureRotateWithLoad() => $_ensure(2);
}

class PrivateData extends $pb.GeneratedMessage {
  factory PrivateData({
    $core.Map<$core.int, MapItem>? inPathSiteIndex,
    $core.Map<$core.int, MapItem>? inSitePathIndex,
    $core.Map<$fixnum.Int64, EntityInfo>? entityInfos,
    $core.Iterable<ToolingData>? toolingData,
  }) {
    final $result = create();
    if (inPathSiteIndex != null) {
      $result.inPathSiteIndex.addAll(inPathSiteIndex);
    }
    if (inSitePathIndex != null) {
      $result.inSitePathIndex.addAll(inSitePathIndex);
    }
    if (entityInfos != null) {
      $result.entityInfos.addAll(entityInfos);
    }
    if (toolingData != null) {
      $result.toolingData.addAll(toolingData);
    }
    return $result;
  }
  PrivateData._() : super();
  factory PrivateData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrivateData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..m<$core.int, MapItem>(1, _omitFieldNames ? '' : 'inPathSiteIndex', protoName: 'inPathSiteIndex', entryClassName: 'PrivateData.InPathSiteIndexEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: MapItem.create, valueDefaultOrMaker: MapItem.getDefault, packageName: const $pb.PackageName('galaxis.map'))
    ..m<$core.int, MapItem>(2, _omitFieldNames ? '' : 'inSitePathIndex', protoName: 'inSitePathIndex', entryClassName: 'PrivateData.InSitePathIndexEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: MapItem.create, valueDefaultOrMaker: MapItem.getDefault, packageName: const $pb.PackageName('galaxis.map'))
    ..m<$fixnum.Int64, EntityInfo>(3, _omitFieldNames ? '' : 'entityInfos', protoName: 'entityInfos', entryClassName: 'PrivateData.EntityInfosEntry', keyFieldType: $pb.PbFieldType.O6, valueFieldType: $pb.PbFieldType.OM, valueCreator: EntityInfo.create, valueDefaultOrMaker: EntityInfo.getDefault, packageName: const $pb.PackageName('galaxis.map'))
    ..pc<ToolingData>(4, _omitFieldNames ? '' : 'toolingData', $pb.PbFieldType.PM, protoName: 'toolingData', subBuilder: ToolingData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateData clone() => PrivateData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateData copyWith(void Function(PrivateData) updates) => super.copyWith((message) => updates(message as PrivateData)) as PrivateData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivateData create() => PrivateData._();
  PrivateData createEmptyInstance() => create();
  static $pb.PbList<PrivateData> createRepeated() => $pb.PbList<PrivateData>();
  @$core.pragma('dart2js:noInline')
  static PrivateData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateData>(create);
  static PrivateData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, MapItem> get inPathSiteIndex => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.int, MapItem> get inSitePathIndex => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$fixnum.Int64, EntityInfo> get entityInfos => $_getMap(2);

  @$pb.TagNumber(4)
  $core.List<ToolingData> get toolingData => $_getList(3);
}

class MapItem extends $pb.GeneratedMessage {
  factory MapItem({
    $core.Iterable<$core.int>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  MapItem._() : super();
  factory MapItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapItem clone() => MapItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapItem copyWith(void Function(MapItem) updates) => super.copyWith((message) => updates(message as MapItem)) as MapItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapItem create() => MapItem._();
  MapItem createEmptyInstance() => create();
  static $pb.PbList<MapItem> createRepeated() => $pb.PbList<MapItem>();
  @$core.pragma('dart2js:noInline')
  static MapItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapItem>(create);
  static MapItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get value => $_getList(0);
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
    final $result = create();
    if (direction != null) {
      $result.direction.addAll(direction);
    }
    if (additionalWeightBehind != null) {
      $result.additionalWeightBehind = additionalWeightBehind;
    }
    if (additionalWeight != null) {
      $result.additionalWeight = additionalWeight;
    }
    if (distanceWithoutNavigation != null) {
      $result.distanceWithoutNavigation = distanceWithoutNavigation;
    }
    if (biasAttr != null) {
      $result.biasAttr = biasAttr;
    }
    if (phyX != null) {
      $result.phyX = phyX;
    }
    if (phyY != null) {
      $result.phyY = phyY;
    }
    return $result;
  }
  EntityInfo._() : super();
  factory EntityInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EntityInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EntityInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'direction')
    ..aInt64(2, _omitFieldNames ? '' : 'additionalWeightBehind', protoName: 'additionalWeightBehind')
    ..aInt64(3, _omitFieldNames ? '' : 'additionalWeight', protoName: 'additionalWeight')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'distanceWithoutNavigation', $pb.PbFieldType.OD, protoName: 'distanceWithoutNavigation')
    ..aOM<BiasAttr>(5, _omitFieldNames ? '' : 'biasAttr', protoName: 'biasAttr', subBuilder: BiasAttr.create)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'phyX', $pb.PbFieldType.OD, protoName: 'phyX')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'phyY', $pb.PbFieldType.OD, protoName: 'phyY')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EntityInfo clone() => EntityInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EntityInfo copyWith(void Function(EntityInfo) updates) => super.copyWith((message) => updates(message as EntityInfo)) as EntityInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EntityInfo create() => EntityInfo._();
  EntityInfo createEmptyInstance() => create();
  static $pb.PbList<EntityInfo> createRepeated() => $pb.PbList<EntityInfo>();
  @$core.pragma('dart2js:noInline')
  static EntityInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EntityInfo>(create);
  static EntityInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get direction => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get additionalWeightBehind => $_getI64(1);
  @$pb.TagNumber(2)
  set additionalWeightBehind($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAdditionalWeightBehind() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdditionalWeightBehind() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get additionalWeight => $_getI64(2);
  @$pb.TagNumber(3)
  set additionalWeight($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAdditionalWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearAdditionalWeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get distanceWithoutNavigation => $_getN(3);
  @$pb.TagNumber(4)
  set distanceWithoutNavigation($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDistanceWithoutNavigation() => $_has(3);
  @$pb.TagNumber(4)
  void clearDistanceWithoutNavigation() => clearField(4);

  @$pb.TagNumber(5)
  BiasAttr get biasAttr => $_getN(4);
  @$pb.TagNumber(5)
  set biasAttr(BiasAttr v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBiasAttr() => $_has(4);
  @$pb.TagNumber(5)
  void clearBiasAttr() => clearField(5);
  @$pb.TagNumber(5)
  BiasAttr ensureBiasAttr() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.double get phyX => $_getN(5);
  @$pb.TagNumber(6)
  set phyX($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPhyX() => $_has(5);
  @$pb.TagNumber(6)
  void clearPhyX() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get phyY => $_getN(6);
  @$pb.TagNumber(7)
  set phyY($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPhyY() => $_has(6);
  @$pb.TagNumber(7)
  void clearPhyY() => clearField(7);
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
    final $result = create();
    if (pathStartHeading != null) {
      $result.pathStartHeading = pathStartHeading;
    }
    if (pathEndHeading != null) {
      $result.pathEndHeading = pathEndHeading;
    }
    if (centerX != null) {
      $result.centerX = centerX;
    }
    if (centerY != null) {
      $result.centerY = centerY;
    }
    if (rotation != null) {
      $result.rotation = rotation;
    }
    if (radius != null) {
      $result.radius = radius;
    }
    return $result;
  }
  BiasAttr._() : super();
  factory BiasAttr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BiasAttr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BiasAttr', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pathStartHeading', protoName: 'pathStartHeading')
    ..aInt64(2, _omitFieldNames ? '' : 'pathEndHeading', protoName: 'pathEndHeading')
    ..aInt64(3, _omitFieldNames ? '' : 'centerX', protoName: 'centerX')
    ..aInt64(4, _omitFieldNames ? '' : 'centerY', protoName: 'centerY')
    ..aOS(5, _omitFieldNames ? '' : 'Rotation', protoName: 'Rotation')
    ..aInt64(6, _omitFieldNames ? '' : 'Radius', protoName: 'Radius')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BiasAttr clone() => BiasAttr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BiasAttr copyWith(void Function(BiasAttr) updates) => super.copyWith((message) => updates(message as BiasAttr)) as BiasAttr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BiasAttr create() => BiasAttr._();
  BiasAttr createEmptyInstance() => create();
  static $pb.PbList<BiasAttr> createRepeated() => $pb.PbList<BiasAttr>();
  @$core.pragma('dart2js:noInline')
  static BiasAttr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BiasAttr>(create);
  static BiasAttr? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pathStartHeading => $_getI64(0);
  @$pb.TagNumber(1)
  set pathStartHeading($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPathStartHeading() => $_has(0);
  @$pb.TagNumber(1)
  void clearPathStartHeading() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pathEndHeading => $_getI64(1);
  @$pb.TagNumber(2)
  set pathEndHeading($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPathEndHeading() => $_has(1);
  @$pb.TagNumber(2)
  void clearPathEndHeading() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get centerX => $_getI64(2);
  @$pb.TagNumber(3)
  set centerX($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCenterX() => $_has(2);
  @$pb.TagNumber(3)
  void clearCenterX() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get centerY => $_getI64(3);
  @$pb.TagNumber(4)
  set centerY($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCenterY() => $_has(3);
  @$pb.TagNumber(4)
  void clearCenterY() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rotation => $_getSZ(4);
  @$pb.TagNumber(5)
  set rotation($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRotation() => $_has(4);
  @$pb.TagNumber(5)
  void clearRotation() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get radius => $_getI64(5);
  @$pb.TagNumber(6)
  set radius($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRadius() => $_has(5);
  @$pb.TagNumber(6)
  void clearRadius() => clearField(6);
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
    final $result = create();
    if (isSelected != null) {
      $result.isSelected = isSelected;
    }
    if (gaps != null) {
      $result.gaps.addAll(gaps);
    }
    if (goodsPlacementOffset != null) {
      $result.goodsPlacementOffset = goodsPlacementOffset;
    }
    if (goodsStackId != null) {
      $result.goodsStackId = goodsStackId;
    }
    if (id != null) {
      $result.id = id;
    }
    if (localNumber != null) {
      $result.localNumber = localNumber;
    }
    if (goodsSlotFeatureType != null) {
      $result.goodsSlotFeatureType = goodsSlotFeatureType;
    }
    if (distanceToStation != null) {
      $result.distanceToStation = distanceToStation;
    }
    if (goodsSlotFeatureHeight != null) {
      $result.goodsSlotFeatureHeight = goodsSlotFeatureHeight;
    }
    if (boxMarkerOffsetToBottom != null) {
      $result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    }
    if (verticalGroupId != null) {
      $result.verticalGroupId = verticalGroupId;
    }
    if (horizontalGroupId != null) {
      $result.horizontalGroupId = horizontalGroupId;
    }
    if (displayNumber != null) {
      $result.displayNumber = displayNumber;
    }
    if (beamHeight != null) {
      $result.beamHeight = beamHeight;
    }
    if (layerHeight != null) {
      $result.layerHeight = layerHeight;
    }
    if (clearance != null) {
      $result.clearance = clearance;
    }
    if (width != null) {
      $result.width = width;
    }
    if (orientation != null) {
      $result.orientation.addAll(orientation);
    }
    if (goodsAllocationWidth != null) {
      $result.goodsAllocationWidth = goodsAllocationWidth;
    }
    return $result;
  }
  GoodsAllocation._() : super();
  factory GoodsAllocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsAllocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsAllocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isSelected', protoName: 'isSelected')
    ..pc<Gap>(2, _omitFieldNames ? '' : 'gaps', $pb.PbFieldType.PM, subBuilder: Gap.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'goodsPlacementOffset', $pb.PbFieldType.O3, protoName: 'goodsPlacementOffset')
    ..aInt64(4, _omitFieldNames ? '' : 'goodsStackId', protoName: 'goodsStackId')
    ..aInt64(5, _omitFieldNames ? '' : 'id')
    ..aOS(6, _omitFieldNames ? '' : 'localNumber', protoName: 'localNumber')
    ..e<FeatureType>(7, _omitFieldNames ? '' : 'goodsSlotFeatureType', $pb.PbFieldType.OE, protoName: 'goodsSlotFeatureType', defaultOrMaker: FeatureType.FEATURE_TYPE_UNKNOWN, valueOf: FeatureType.valueOf, enumValues: FeatureType.values)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'distanceToStation', $pb.PbFieldType.O3, protoName: 'distanceToStation')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'goodsSlotFeatureHeight', $pb.PbFieldType.O3, protoName: 'goodsSlotFeatureHeight')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom', $pb.PbFieldType.O3, protoName: 'boxMarkerOffsetToBottom')
    ..aOS(11, _omitFieldNames ? '' : 'verticalGroupId', protoName: 'verticalGroupId')
    ..aOS(12, _omitFieldNames ? '' : 'horizontalGroupId', protoName: 'horizontalGroupId')
    ..aOS(13, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'beamHeight', $pb.PbFieldType.O3, protoName: 'beamHeight')
    ..a<$core.int>(15, _omitFieldNames ? '' : 'layerHeight', $pb.PbFieldType.O3, protoName: 'layerHeight')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'clearance', $pb.PbFieldType.O3)
    ..a<$core.int>(17, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..p<$core.int>(18, _omitFieldNames ? '' : 'orientation', $pb.PbFieldType.K3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'goodsAllocationWidth', $pb.PbFieldType.O3, protoName: 'goodsAllocationWidth')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsAllocation clone() => GoodsAllocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsAllocation copyWith(void Function(GoodsAllocation) updates) => super.copyWith((message) => updates(message as GoodsAllocation)) as GoodsAllocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsAllocation create() => GoodsAllocation._();
  GoodsAllocation createEmptyInstance() => create();
  static $pb.PbList<GoodsAllocation> createRepeated() => $pb.PbList<GoodsAllocation>();
  @$core.pragma('dart2js:noInline')
  static GoodsAllocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsAllocation>(create);
  static GoodsAllocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSelected => $_getBF(0);
  @$pb.TagNumber(1)
  set isSelected($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSelected() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSelected() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Gap> get gaps => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get goodsPlacementOffset => $_getIZ(2);
  @$pb.TagNumber(3)
  set goodsPlacementOffset($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsPlacementOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsPlacementOffset() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get goodsStackId => $_getI64(3);
  @$pb.TagNumber(4)
  set goodsStackId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGoodsStackId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoodsStackId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get id => $_getI64(4);
  @$pb.TagNumber(5)
  set id($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(4);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get localNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set localNumber($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocalNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalNumber() => clearField(6);

  @$pb.TagNumber(7)
  FeatureType get goodsSlotFeatureType => $_getN(6);
  @$pb.TagNumber(7)
  set goodsSlotFeatureType(FeatureType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGoodsSlotFeatureType() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsSlotFeatureType() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get distanceToStation => $_getIZ(7);
  @$pb.TagNumber(8)
  set distanceToStation($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDistanceToStation() => $_has(7);
  @$pb.TagNumber(8)
  void clearDistanceToStation() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get goodsSlotFeatureHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set goodsSlotFeatureHeight($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGoodsSlotFeatureHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoodsSlotFeatureHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(9);
  @$pb.TagNumber(10)
  set boxMarkerOffsetToBottom($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(9);
  @$pb.TagNumber(10)
  void clearBoxMarkerOffsetToBottom() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get verticalGroupId => $_getSZ(10);
  @$pb.TagNumber(11)
  set verticalGroupId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasVerticalGroupId() => $_has(10);
  @$pb.TagNumber(11)
  void clearVerticalGroupId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get horizontalGroupId => $_getSZ(11);
  @$pb.TagNumber(12)
  set horizontalGroupId($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasHorizontalGroupId() => $_has(11);
  @$pb.TagNumber(12)
  void clearHorizontalGroupId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get displayNumber => $_getSZ(12);
  @$pb.TagNumber(13)
  set displayNumber($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDisplayNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearDisplayNumber() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get beamHeight => $_getIZ(13);
  @$pb.TagNumber(14)
  set beamHeight($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBeamHeight() => $_has(13);
  @$pb.TagNumber(14)
  void clearBeamHeight() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get layerHeight => $_getIZ(14);
  @$pb.TagNumber(15)
  set layerHeight($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasLayerHeight() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayerHeight() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get clearance => $_getIZ(15);
  @$pb.TagNumber(16)
  set clearance($core.int v) { $_setSignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasClearance() => $_has(15);
  @$pb.TagNumber(16)
  void clearClearance() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get width => $_getIZ(16);
  @$pb.TagNumber(17)
  set width($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasWidth() => $_has(16);
  @$pb.TagNumber(17)
  void clearWidth() => clearField(17);

  @$pb.TagNumber(18)
  $core.List<$core.int> get orientation => $_getList(17);

  @$pb.TagNumber(19)
  $core.int get goodsAllocationWidth => $_getIZ(18);
  @$pb.TagNumber(19)
  set goodsAllocationWidth($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasGoodsAllocationWidth() => $_has(18);
  @$pb.TagNumber(19)
  void clearGoodsAllocationWidth() => clearField(19);
}

class Gap extends $pb.GeneratedMessage {
  factory Gap({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Gap._() : super();
  factory Gap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Gap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Gap', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Gap clone() => Gap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Gap copyWith(void Function(Gap) updates) => super.copyWith((message) => updates(message as Gap)) as Gap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gap create() => Gap._();
  Gap createEmptyInstance() => create();
  static $pb.PbList<Gap> createRepeated() => $pb.PbList<Gap>();
  @$core.pragma('dart2js:noInline')
  static Gap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gap>(create);
  static Gap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class LayersHeight extends $pb.GeneratedMessage {
  factory LayersHeight({
    $fixnum.Int64? id,
    $core.int? layerHeight,
    $core.int? clearance,
    LayerGoodsAllocationGroup? layerGoodsAllocationGroup,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (layerHeight != null) {
      $result.layerHeight = layerHeight;
    }
    if (clearance != null) {
      $result.clearance = clearance;
    }
    if (layerGoodsAllocationGroup != null) {
      $result.layerGoodsAllocationGroup = layerGoodsAllocationGroup;
    }
    return $result;
  }
  LayersHeight._() : super();
  factory LayersHeight.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayersHeight.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayersHeight', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'layerHeight', $pb.PbFieldType.O3, protoName: 'layerHeight')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'clearance', $pb.PbFieldType.O3)
    ..aOM<LayerGoodsAllocationGroup>(4, _omitFieldNames ? '' : 'layerGoodsAllocationGroup', protoName: 'layerGoodsAllocationGroup', subBuilder: LayerGoodsAllocationGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayersHeight clone() => LayersHeight()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayersHeight copyWith(void Function(LayersHeight) updates) => super.copyWith((message) => updates(message as LayersHeight)) as LayersHeight;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayersHeight create() => LayersHeight._();
  LayersHeight createEmptyInstance() => create();
  static $pb.PbList<LayersHeight> createRepeated() => $pb.PbList<LayersHeight>();
  @$core.pragma('dart2js:noInline')
  static LayersHeight getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayersHeight>(create);
  static LayersHeight? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get layerHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set layerHeight($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLayerHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearLayerHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get clearance => $_getIZ(2);
  @$pb.TagNumber(3)
  set clearance($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClearance() => $_has(2);
  @$pb.TagNumber(3)
  void clearClearance() => clearField(3);

  @$pb.TagNumber(4)
  LayerGoodsAllocationGroup get layerGoodsAllocationGroup => $_getN(3);
  @$pb.TagNumber(4)
  set layerGoodsAllocationGroup(LayerGoodsAllocationGroup v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLayerGoodsAllocationGroup() => $_has(3);
  @$pb.TagNumber(4)
  void clearLayerGoodsAllocationGroup() => clearField(4);
  @$pb.TagNumber(4)
  LayerGoodsAllocationGroup ensureLayerGoodsAllocationGroup() => $_ensure(3);
}

class LayerGoodsAllocationGroup extends $pb.GeneratedMessage {
  factory LayerGoodsAllocationGroup({
    $core.int? goodsAllocationNum,
    $core.Iterable<GoodsSlot>? goodsSlots,
  }) {
    final $result = create();
    if (goodsAllocationNum != null) {
      $result.goodsAllocationNum = goodsAllocationNum;
    }
    if (goodsSlots != null) {
      $result.goodsSlots.addAll(goodsSlots);
    }
    return $result;
  }
  LayerGoodsAllocationGroup._() : super();
  factory LayerGoodsAllocationGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LayerGoodsAllocationGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LayerGoodsAllocationGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'goodsAllocationNum', $pb.PbFieldType.O3, protoName: 'goodsAllocationNum')
    ..pc<GoodsSlot>(2, _omitFieldNames ? '' : 'goodsSlots', $pb.PbFieldType.PM, protoName: 'goodsSlots', subBuilder: GoodsSlot.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LayerGoodsAllocationGroup clone() => LayerGoodsAllocationGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LayerGoodsAllocationGroup copyWith(void Function(LayerGoodsAllocationGroup) updates) => super.copyWith((message) => updates(message as LayerGoodsAllocationGroup)) as LayerGoodsAllocationGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerGoodsAllocationGroup create() => LayerGoodsAllocationGroup._();
  LayerGoodsAllocationGroup createEmptyInstance() => create();
  static $pb.PbList<LayerGoodsAllocationGroup> createRepeated() => $pb.PbList<LayerGoodsAllocationGroup>();
  @$core.pragma('dart2js:noInline')
  static LayerGoodsAllocationGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LayerGoodsAllocationGroup>(create);
  static LayerGoodsAllocationGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get goodsAllocationNum => $_getIZ(0);
  @$pb.TagNumber(1)
  set goodsAllocationNum($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGoodsAllocationNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearGoodsAllocationNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<GoodsSlot> get goodsSlots => $_getList(1);
}

class PropertyObject extends $pb.GeneratedMessage {
  factory PropertyObject({
    $fixnum.Int64? id,
    $core.String? propertyName,
    PropertyValueType? valueType,
    $core.String? desc,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (propertyName != null) {
      $result.propertyName = propertyName;
    }
    if (valueType != null) {
      $result.valueType = valueType;
    }
    if (desc != null) {
      $result.desc = desc;
    }
    return $result;
  }
  PropertyObject._() : super();
  factory PropertyObject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PropertyObject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PropertyObject', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'propertyName', protoName: 'propertyName')
    ..e<PropertyValueType>(3, _omitFieldNames ? '' : 'valueType', $pb.PbFieldType.OE, protoName: 'valueType', defaultOrMaker: PropertyValueType.PROPERTY_VALUE_TYPE_UNKNOWN, valueOf: PropertyValueType.valueOf, enumValues: PropertyValueType.values)
    ..aOS(4, _omitFieldNames ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PropertyObject clone() => PropertyObject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PropertyObject copyWith(void Function(PropertyObject) updates) => super.copyWith((message) => updates(message as PropertyObject)) as PropertyObject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyObject create() => PropertyObject._();
  PropertyObject createEmptyInstance() => create();
  static $pb.PbList<PropertyObject> createRepeated() => $pb.PbList<PropertyObject>();
  @$core.pragma('dart2js:noInline')
  static PropertyObject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PropertyObject>(create);
  static PropertyObject? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get propertyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set propertyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyName() => clearField(2);

  /// The value type of this property
  @$pb.TagNumber(3)
  PropertyValueType get valueType => $_getN(2);
  @$pb.TagNumber(3)
  set valueType(PropertyValueType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValueType() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueType() => clearField(3);

  /// Description of this property
  @$pb.TagNumber(4)
  $core.String get desc => $_getSZ(3);
  @$pb.TagNumber(4)
  set desc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesc() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesc() => clearField(4);
}

class Rule extends $pb.GeneratedMessage {
  factory Rule({
    $core.String? name,
    Condition? condition,
    $core.Iterable<ConductGroup>? conducts,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (condition != null) {
      $result.condition = condition;
    }
    if (conducts != null) {
      $result.conducts.addAll(conducts);
    }
    return $result;
  }
  Rule._() : super();
  factory Rule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Rule', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Condition>(2, _omitFieldNames ? '' : 'condition', subBuilder: Condition.create)
    ..pc<ConductGroup>(3, _omitFieldNames ? '' : 'conducts', $pb.PbFieldType.PM, subBuilder: ConductGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rule clone() => Rule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rule copyWith(void Function(Rule) updates) => super.copyWith((message) => updates(message as Rule)) as Rule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rule create() => Rule._();
  Rule createEmptyInstance() => create();
  static $pb.PbList<Rule> createRepeated() => $pb.PbList<Rule>();
  @$core.pragma('dart2js:noInline')
  static Rule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rule>(create);
  static Rule? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// Some condition groups of normative rules
  @$pb.TagNumber(2)
  Condition get condition => $_getN(1);
  @$pb.TagNumber(2)
  set condition(Condition v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearCondition() => clearField(2);
  @$pb.TagNumber(2)
  Condition ensureCondition() => $_ensure(1);

  /// Behavior generated by rules
  @$pb.TagNumber(3)
  $core.List<ConductGroup> get conducts => $_getList(2);
}

enum Condition_Condition {
  metaCond, 
  complexCond, 
  notSet
}

class Condition extends $pb.GeneratedMessage {
  factory Condition({
    $fixnum.Int64? id,
    MetaMessage? metaCond,
    ComplexCondition? complexCond,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (metaCond != null) {
      $result.metaCond = metaCond;
    }
    if (complexCond != null) {
      $result.complexCond = complexCond;
    }
    return $result;
  }
  Condition._() : super();
  factory Condition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Condition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Condition_Condition> _Condition_ConditionByTag = {
    2 : Condition_Condition.metaCond,
    3 : Condition_Condition.complexCond,
    0 : Condition_Condition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Condition', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<MetaMessage>(2, _omitFieldNames ? '' : 'metaCond', protoName: 'metaCond', subBuilder: MetaMessage.create)
    ..aOM<ComplexCondition>(3, _omitFieldNames ? '' : 'complexCond', protoName: 'complexCond', subBuilder: ComplexCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Condition clone() => Condition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Condition copyWith(void Function(Condition) updates) => super.copyWith((message) => updates(message as Condition)) as Condition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Condition create() => Condition._();
  Condition createEmptyInstance() => create();
  static $pb.PbList<Condition> createRepeated() => $pb.PbList<Condition>();
  @$core.pragma('dart2js:noInline')
  static Condition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Condition>(create);
  static Condition? _defaultInstance;

  Condition_Condition whichCondition() => _Condition_ConditionByTag[$_whichOneof(0)]!;
  void clearCondition() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// When under a single condition
  @$pb.TagNumber(2)
  MetaMessage get metaCond => $_getN(1);
  @$pb.TagNumber(2)
  set metaCond(MetaMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetaCond() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetaCond() => clearField(2);
  @$pb.TagNumber(2)
  MetaMessage ensureMetaCond() => $_ensure(1);

  /// When there are multiple conditions
  @$pb.TagNumber(3)
  ComplexCondition get complexCond => $_getN(2);
  @$pb.TagNumber(3)
  set complexCond(ComplexCondition v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasComplexCond() => $_has(2);
  @$pb.TagNumber(3)
  void clearComplexCond() => clearField(3);
  @$pb.TagNumber(3)
  ComplexCondition ensureComplexCond() => $_ensure(2);
}

class ComplexCondition extends $pb.GeneratedMessage {
  factory ComplexCondition({
    $core.Iterable<Condition>? conditions,
    $core.Iterable<Relationship>? relationships,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (relationships != null) {
      $result.relationships.addAll(relationships);
    }
    return $result;
  }
  ComplexCondition._() : super();
  factory ComplexCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplexCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ComplexCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<Condition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: Condition.create)
    ..pc<Relationship>(2, _omitFieldNames ? '' : 'relationships', $pb.PbFieldType.PM, subBuilder: Relationship.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplexCondition clone() => ComplexCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplexCondition copyWith(void Function(ComplexCondition) updates) => super.copyWith((message) => updates(message as ComplexCondition)) as ComplexCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComplexCondition create() => ComplexCondition._();
  ComplexCondition createEmptyInstance() => create();
  static $pb.PbList<ComplexCondition> createRepeated() => $pb.PbList<ComplexCondition>();
  @$core.pragma('dart2js:noInline')
  static ComplexCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplexCondition>(create);
  static ComplexCondition? _defaultInstance;

  /// Container for storing multiple conditions
  @$pb.TagNumber(1)
  $core.List<Condition> get conditions => $_getList(0);

  /// A container for storing logical relationships between multiple conditions
  @$pb.TagNumber(2)
  $core.List<Relationship> get relationships => $_getList(1);
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
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (conditionType != null) {
      $result.conditionType = conditionType;
    }
    if (numValue != null) {
      $result.numValue = numValue;
    }
    if (strValue != null) {
      $result.strValue = strValue;
    }
    if (rangeValue != null) {
      $result.rangeValue = rangeValue;
    }
    if (boolValue != null) {
      $result.boolValue = boolValue;
    }
    if (setValues != null) {
      $result.setValues = setValues;
    }
    if (applicationsCar != null) {
      $result.applicationsCar = applicationsCar;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    return $result;
  }
  MetaMessage._() : super();
  factory MetaMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetaMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MetaMessage_Value> _MetaMessage_ValueByTag = {
    4 : MetaMessage_Value.numValue,
    5 : MetaMessage_Value.strValue,
    6 : MetaMessage_Value.rangeValue,
    7 : MetaMessage_Value.boolValue,
    8 : MetaMessage_Value.setValues,
    0 : MetaMessage_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetaMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..oo(0, [4, 5, 6, 7, 8])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..e<ConditionType>(3, _omitFieldNames ? '' : 'conditionType', $pb.PbFieldType.OE, protoName: 'conditionType', defaultOrMaker: ConditionType.CONDITION_TYPE_UNKNOWN, valueOf: ConditionType.valueOf, enumValues: ConditionType.values)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'numValue', $pb.PbFieldType.OD, protoName: 'numValue')
    ..aOS(5, _omitFieldNames ? '' : 'strValue', protoName: 'strValue')
    ..aOM<RangeValue>(6, _omitFieldNames ? '' : 'rangeValue', protoName: 'rangeValue', subBuilder: RangeValue.create)
    ..aOB(7, _omitFieldNames ? '' : 'boolValue', protoName: 'boolValue')
    ..aOS(8, _omitFieldNames ? '' : 'setValues', protoName: 'setValues')
    ..aOS(9, _omitFieldNames ? '' : 'applicationsCar', protoName: 'applicationsCar')
    ..aOS(10, _omitFieldNames ? '' : 'unit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetaMessage clone() => MetaMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetaMessage copyWith(void Function(MetaMessage) updates) => super.copyWith((message) => updates(message as MetaMessage)) as MetaMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetaMessage create() => MetaMessage._();
  MetaMessage createEmptyInstance() => create();
  static $pb.PbList<MetaMessage> createRepeated() => $pb.PbList<MetaMessage>();
  @$core.pragma('dart2js:noInline')
  static MetaMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetaMessage>(create);
  static MetaMessage? _defaultInstance;

  MetaMessage_Value whichValue() => _MetaMessage_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Selected attributes as rule conditions
  @$pb.TagNumber(2)
  $fixnum.Int64 get propertyId => $_getI64(1);
  @$pb.TagNumber(2)
  set propertyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => clearField(2);

  @$pb.TagNumber(3)
  ConditionType get conditionType => $_getN(2);
  @$pb.TagNumber(3)
  set conditionType(ConditionType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConditionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearConditionType() => clearField(3);

  /// When inputting a numerical value
  @$pb.TagNumber(4)
  $core.double get numValue => $_getN(3);
  @$pb.TagNumber(4)
  set numValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumValue() => clearField(4);

  /// When entering a string
  @$pb.TagNumber(5)
  $core.String get strValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set strValue($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStrValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStrValue() => clearField(5);

  /// When the input is a range value
  @$pb.TagNumber(6)
  RangeValue get rangeValue => $_getN(5);
  @$pb.TagNumber(6)
  set rangeValue(RangeValue v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRangeValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearRangeValue() => clearField(6);
  @$pb.TagNumber(6)
  RangeValue ensureRangeValue() => $_ensure(5);

  /// When entering a bool
  @$pb.TagNumber(7)
  $core.bool get boolValue => $_getBF(6);
  @$pb.TagNumber(7)
  set boolValue($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBoolValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearBoolValue() => clearField(7);

  /// When the result is set
  @$pb.TagNumber(8)
  $core.String get setValues => $_getSZ(7);
  @$pb.TagNumber(8)
  set setValues($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSetValues() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetValues() => clearField(8);

  /// When the result generates a branch, it needs to be effective for the vehicle model
  @$pb.TagNumber(9)
  $core.String get applicationsCar => $_getSZ(8);
  @$pb.TagNumber(9)
  set applicationsCar($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasApplicationsCar() => $_has(8);
  @$pb.TagNumber(9)
  void clearApplicationsCar() => clearField(9);

  /// The corresponding attribute unit when the type is a numerical value
  @$pb.TagNumber(10)
  $core.String get unit => $_getSZ(9);
  @$pb.TagNumber(10)
  set unit($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => clearField(10);
}

class RangeValue extends $pb.GeneratedMessage {
  factory RangeValue({
    $core.double? startValue,
    $core.double? endValue,
    $core.bool? include,
  }) {
    final $result = create();
    if (startValue != null) {
      $result.startValue = startValue;
    }
    if (endValue != null) {
      $result.endValue = endValue;
    }
    if (include != null) {
      $result.include = include;
    }
    return $result;
  }
  RangeValue._() : super();
  factory RangeValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RangeValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RangeValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'startValue', $pb.PbFieldType.OD, protoName: 'startValue')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'endValue', $pb.PbFieldType.OD, protoName: 'endValue')
    ..aOB(3, _omitFieldNames ? '' : 'include')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RangeValue clone() => RangeValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RangeValue copyWith(void Function(RangeValue) updates) => super.copyWith((message) => updates(message as RangeValue)) as RangeValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RangeValue create() => RangeValue._();
  RangeValue createEmptyInstance() => create();
  static $pb.PbList<RangeValue> createRepeated() => $pb.PbList<RangeValue>();
  @$core.pragma('dart2js:noInline')
  static RangeValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RangeValue>(create);
  static RangeValue? _defaultInstance;

  /// Starting value within a specific range
  @$pb.TagNumber(1)
  $core.double get startValue => $_getN(0);
  @$pb.TagNumber(1)
  set startValue($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartValue() => clearField(1);

  /// End value within a specific range
  @$pb.TagNumber(2)
  $core.double get endValue => $_getN(1);
  @$pb.TagNumber(2)
  set endValue($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndValue() => clearField(2);

  /// Does it include start and end values
  @$pb.TagNumber(3)
  $core.bool get include => $_getBF(2);
  @$pb.TagNumber(3)
  set include($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInclude() => $_has(2);
  @$pb.TagNumber(3)
  void clearInclude() => clearField(3);
}

class Relationship extends $pb.GeneratedMessage {
  factory Relationship({
    $fixnum.Int64? id1,
    Logic? logic,
    $fixnum.Int64? id2,
  }) {
    final $result = create();
    if (id1 != null) {
      $result.id1 = id1;
    }
    if (logic != null) {
      $result.logic = logic;
    }
    if (id2 != null) {
      $result.id2 = id2;
    }
    return $result;
  }
  Relationship._() : super();
  factory Relationship.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relationship.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Relationship', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id1')
    ..e<Logic>(2, _omitFieldNames ? '' : 'logic', $pb.PbFieldType.OE, defaultOrMaker: Logic.LOGIC_UNKNOWN, valueOf: Logic.valueOf, enumValues: Logic.values)
    ..aInt64(3, _omitFieldNames ? '' : 'id2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Relationship clone() => Relationship()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Relationship copyWith(void Function(Relationship) updates) => super.copyWith((message) => updates(message as Relationship)) as Relationship;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Relationship create() => Relationship._();
  Relationship createEmptyInstance() => create();
  static $pb.PbList<Relationship> createRepeated() => $pb.PbList<Relationship>();
  @$core.pragma('dart2js:noInline')
  static Relationship getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relationship>(create);
  static Relationship? _defaultInstance;

  /// id1 is  id of MainCondition  or id of SharedValue
  @$pb.TagNumber(1)
  $fixnum.Int64 get id1 => $_getI64(0);
  @$pb.TagNumber(1)
  set id1($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId1() => $_has(0);
  @$pb.TagNumber(1)
  void clearId1() => clearField(1);

  @$pb.TagNumber(2)
  Logic get logic => $_getN(1);
  @$pb.TagNumber(2)
  set logic(Logic v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLogic() => $_has(1);
  @$pb.TagNumber(2)
  void clearLogic() => clearField(2);

  /// //id2 is id of MainCondition  or id of SharedValue
  @$pb.TagNumber(3)
  $fixnum.Int64 get id2 => $_getI64(2);
  @$pb.TagNumber(3)
  set id2($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId2() => $_has(2);
  @$pb.TagNumber(3)
  void clearId2() => clearField(3);
}

enum ConductGroup_Result {
  metaResult, 
  multipleResult, 
  notSet
}

class ConductGroup extends $pb.GeneratedMessage {
  factory ConductGroup({
    $fixnum.Int64? id,
    $fixnum.Int64? propertyId,
    MetaMessage? metaResult,
    ComplexResult? multipleResult,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (propertyId != null) {
      $result.propertyId = propertyId;
    }
    if (metaResult != null) {
      $result.metaResult = metaResult;
    }
    if (multipleResult != null) {
      $result.multipleResult = multipleResult;
    }
    return $result;
  }
  ConductGroup._() : super();
  factory ConductGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConductGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ConductGroup_Result> _ConductGroup_ResultByTag = {
    3 : ConductGroup_Result.metaResult,
    4 : ConductGroup_Result.multipleResult,
    0 : ConductGroup_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConductGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..aOM<MetaMessage>(3, _omitFieldNames ? '' : 'metaResult', protoName: 'metaResult', subBuilder: MetaMessage.create)
    ..aOM<ComplexResult>(4, _omitFieldNames ? '' : 'multipleResult', protoName: 'multipleResult', subBuilder: ComplexResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConductGroup clone() => ConductGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConductGroup copyWith(void Function(ConductGroup) updates) => super.copyWith((message) => updates(message as ConductGroup)) as ConductGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConductGroup create() => ConductGroup._();
  ConductGroup createEmptyInstance() => create();
  static $pb.PbList<ConductGroup> createRepeated() => $pb.PbList<ConductGroup>();
  @$core.pragma('dart2js:noInline')
  static ConductGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConductGroup>(create);
  static ConductGroup? _defaultInstance;

  ConductGroup_Result whichResult() => _ConductGroup_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Selected attributes as rule conditions
  @$pb.TagNumber(2)
  $fixnum.Int64 get propertyId => $_getI64(1);
  @$pb.TagNumber(2)
  set propertyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => clearField(2);

  /// When the result value is only a single one
  @$pb.TagNumber(3)
  MetaMessage get metaResult => $_getN(2);
  @$pb.TagNumber(3)
  set metaResult(MetaMessage v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMetaResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetaResult() => clearField(3);
  @$pb.TagNumber(3)
  MetaMessage ensureMetaResult() => $_ensure(2);

  /// When multiple result values appear
  @$pb.TagNumber(4)
  ComplexResult get multipleResult => $_getN(3);
  @$pb.TagNumber(4)
  set multipleResult(ComplexResult v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMultipleResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearMultipleResult() => clearField(4);
  @$pb.TagNumber(4)
  ComplexResult ensureMultipleResult() => $_ensure(3);
}

class ComplexResult extends $pb.GeneratedMessage {
  factory ComplexResult({
    $core.Iterable<MetaMessage>? metaResult,
  }) {
    final $result = create();
    if (metaResult != null) {
      $result.metaResult.addAll(metaResult);
    }
    return $result;
  }
  ComplexResult._() : super();
  factory ComplexResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComplexResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ComplexResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<MetaMessage>(1, _omitFieldNames ? '' : 'metaResult', $pb.PbFieldType.PM, protoName: 'metaResult', subBuilder: MetaMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComplexResult clone() => ComplexResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComplexResult copyWith(void Function(ComplexResult) updates) => super.copyWith((message) => updates(message as ComplexResult)) as ComplexResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComplexResult create() => ComplexResult._();
  ComplexResult createEmptyInstance() => create();
  static $pb.PbList<ComplexResult> createRepeated() => $pb.PbList<ComplexResult>();
  @$core.pragma('dart2js:noInline')
  static ComplexResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComplexResult>(create);
  static ComplexResult? _defaultInstance;

  /// use SharedValue
  @$pb.TagNumber(1)
  $core.List<MetaMessage> get metaResult => $_getList(0);
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
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (blockType != null) {
      $result.blockType = blockType;
    }
    if (appliedLoadStatus != null) {
      $result.appliedLoadStatus = appliedLoadStatus;
    }
    if (appliedProducts != null) {
      $result.appliedProducts.addAll(appliedProducts);
    }
    if (appliedSensors != null) {
      $result.appliedSensors.addAll(appliedSensors);
    }
    if (shape != null) {
      $result.shape = shape;
    }
    if (enabled != null) {
      $result.enabled = enabled;
    }
    if (resultReverse != null) {
      $result.resultReverse = resultReverse;
    }
    if (blockName != null) {
      $result.blockName = blockName;
    }
    return $result;
  }
  FunctionalBlock._() : super();
  factory FunctionalBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FunctionalBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FunctionalBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<BlockType>(2, _omitFieldNames ? '' : 'blockType', $pb.PbFieldType.OE, protoName: 'blockType', defaultOrMaker: BlockType.BLOCK_TYPE_UNKNOWN, valueOf: BlockType.valueOf, enumValues: BlockType.values)
    ..e<AppliedLoadStatus>(3, _omitFieldNames ? '' : 'appliedLoadStatus', $pb.PbFieldType.OE, protoName: 'appliedLoadStatus', defaultOrMaker: AppliedLoadStatus.APPLIED_LOAD_STATUS_UNKNOWN, valueOf: AppliedLoadStatus.valueOf, enumValues: AppliedLoadStatus.values)
    ..pPS(4, _omitFieldNames ? '' : 'appliedProducts', protoName: 'appliedProducts')
    ..pPS(5, _omitFieldNames ? '' : 'appliedSensors', protoName: 'appliedSensors')
    ..aOS(6, _omitFieldNames ? '' : 'shape')
    ..aOB(7, _omitFieldNames ? '' : 'enabled')
    ..aOB(8, _omitFieldNames ? '' : 'resultReverse')
    ..aOS(9, _omitFieldNames ? '' : 'blockName', protoName: 'blockName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FunctionalBlock clone() => FunctionalBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FunctionalBlock copyWith(void Function(FunctionalBlock) updates) => super.copyWith((message) => updates(message as FunctionalBlock)) as FunctionalBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FunctionalBlock create() => FunctionalBlock._();
  FunctionalBlock createEmptyInstance() => create();
  static $pb.PbList<FunctionalBlock> createRepeated() => $pb.PbList<FunctionalBlock>();
  @$core.pragma('dart2js:noInline')
  static FunctionalBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FunctionalBlock>(create);
  static FunctionalBlock? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  BlockType get blockType => $_getN(1);
  @$pb.TagNumber(2)
  set blockType(BlockType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockType() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockType() => clearField(2);

  @$pb.TagNumber(3)
  AppliedLoadStatus get appliedLoadStatus => $_getN(2);
  @$pb.TagNumber(3)
  set appliedLoadStatus(AppliedLoadStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAppliedLoadStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppliedLoadStatus() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get appliedProducts => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.String> get appliedSensors => $_getList(4);

  @$pb.TagNumber(6)
  $core.String get shape => $_getSZ(5);
  @$pb.TagNumber(6)
  set shape($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasShape() => $_has(5);
  @$pb.TagNumber(6)
  void clearShape() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get enabled => $_getBF(6);
  @$pb.TagNumber(7)
  set enabled($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasEnabled() => $_has(6);
  @$pb.TagNumber(7)
  void clearEnabled() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get resultReverse => $_getBF(7);
  @$pb.TagNumber(8)
  set resultReverse($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasResultReverse() => $_has(7);
  @$pb.TagNumber(8)
  void clearResultReverse() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get blockName => $_getSZ(8);
  @$pb.TagNumber(9)
  set blockName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlockName() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockName() => clearField(9);
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
    final $result = create();
    if (category != null) {
      $result.category = category;
    }
    if (categoryName != null) {
      $result.categoryName = categoryName;
    }
    if (goodsStackName != null) {
      $result.goodsStackName = goodsStackName;
    }
    if (goodsStackId != null) {
      $result.goodsStackId = goodsStackId;
    }
    if (goodsStackLength != null) {
      $result.goodsStackLength = goodsStackLength;
    }
    if (goodsStackWidth != null) {
      $result.goodsStackWidth = goodsStackWidth;
    }
    if (goodsStackHeight != null) {
      $result.goodsStackHeight = goodsStackHeight;
    }
    if (goodsStackLegWidth != null) {
      $result.goodsStackLegWidth = goodsStackLegWidth;
    }
    if (goodsStackFeatureHeight != null) {
      $result.goodsStackFeatureHeight = goodsStackFeatureHeight;
    }
    if (goodsStackFeatureType != null) {
      $result.goodsStackFeatureType = goodsStackFeatureType;
    }
    if (goodsStackInnerHeight != null) {
      $result.goodsStackInnerHeight = goodsStackInnerHeight;
    }
    if (boxMarkerOffsetToBottom != null) {
      $result.boxMarkerOffsetToBottom = boxMarkerOffsetToBottom;
    }
    if (goodsStackBottomCrossbeamHeight != null) {
      $result.goodsStackBottomCrossbeamHeight = goodsStackBottomCrossbeamHeight;
    }
    if (goodsStackType != null) {
      $result.goodsStackType = goodsStackType;
    }
    if (hasBottomMark != null) {
      $result.hasBottomMark = hasBottomMark;
    }
    if (goodsStackContourFileName != null) {
      $result.goodsStackContourFileName = goodsStackContourFileName;
    }
    if (goodsStackTelescopicDistanceToDetectFeature != null) {
      $result.goodsStackTelescopicDistanceToDetectFeature = goodsStackTelescopicDistanceToDetectFeature;
    }
    return $result;
  }
  GoodsStackData._() : super();
  factory GoodsStackData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsStackData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsStackData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'category', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'categoryName', protoName: 'categoryName')
    ..aOS(3, _omitFieldNames ? '' : 'goodsStackName', protoName: 'goodsStackName')
    ..aInt64(4, _omitFieldNames ? '' : 'goodsStackId', protoName: 'goodsStackId')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'goodsStackLength', $pb.PbFieldType.O3, protoName: 'goodsStackLength')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'goodsStackWidth', $pb.PbFieldType.O3, protoName: 'goodsStackWidth')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'goodsStackHeight', $pb.PbFieldType.O3, protoName: 'goodsStackHeight')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'goodsStackLegWidth', $pb.PbFieldType.O3, protoName: 'goodsStackLegWidth')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'goodsStackFeatureHeight', $pb.PbFieldType.O3, protoName: 'goodsStackFeatureHeight')
    ..aOS(10, _omitFieldNames ? '' : 'goodsStackFeatureType', protoName: 'goodsStackFeatureType')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'goodsStackInnerHeight', $pb.PbFieldType.O3, protoName: 'goodsStackInnerHeight')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'boxMarkerOffsetToBottom', $pb.PbFieldType.O3, protoName: 'boxMarkerOffsetToBottom')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'goodsStackBottomCrossbeamHeight', $pb.PbFieldType.O3, protoName: 'goodsStackBottomCrossbeamHeight')
    ..aOS(14, _omitFieldNames ? '' : 'goodsStackType', protoName: 'goodsStackType')
    ..aOB(15, _omitFieldNames ? '' : 'hasBottomMark', protoName: 'hasBottomMark')
    ..aOS(16, _omitFieldNames ? '' : 'goodsStackContourFileName', protoName: 'goodsStackContourFileName')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'goodsStackTelescopicDistanceToDetectFeature', $pb.PbFieldType.O3, protoName: 'goodsStackTelescopicDistanceToDetectFeature')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsStackData clone() => GoodsStackData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsStackData copyWith(void Function(GoodsStackData) updates) => super.copyWith((message) => updates(message as GoodsStackData)) as GoodsStackData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsStackData create() => GoodsStackData._();
  GoodsStackData createEmptyInstance() => create();
  static $pb.PbList<GoodsStackData> createRepeated() => $pb.PbList<GoodsStackData>();
  @$core.pragma('dart2js:noInline')
  static GoodsStackData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsStackData>(create);
  static GoodsStackData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get category => $_getIZ(0);
  @$pb.TagNumber(1)
  set category($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCategory() => $_has(0);
  @$pb.TagNumber(1)
  void clearCategory() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get categoryName => $_getSZ(1);
  @$pb.TagNumber(2)
  set categoryName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategoryName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategoryName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get goodsStackName => $_getSZ(2);
  @$pb.TagNumber(3)
  set goodsStackName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGoodsStackName() => $_has(2);
  @$pb.TagNumber(3)
  void clearGoodsStackName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get goodsStackId => $_getI64(3);
  @$pb.TagNumber(4)
  set goodsStackId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasGoodsStackId() => $_has(3);
  @$pb.TagNumber(4)
  void clearGoodsStackId() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get goodsStackLength => $_getIZ(4);
  @$pb.TagNumber(5)
  set goodsStackLength($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGoodsStackLength() => $_has(4);
  @$pb.TagNumber(5)
  void clearGoodsStackLength() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get goodsStackWidth => $_getIZ(5);
  @$pb.TagNumber(6)
  set goodsStackWidth($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasGoodsStackWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearGoodsStackWidth() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get goodsStackHeight => $_getIZ(6);
  @$pb.TagNumber(7)
  set goodsStackHeight($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGoodsStackHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearGoodsStackHeight() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get goodsStackLegWidth => $_getIZ(7);
  @$pb.TagNumber(8)
  set goodsStackLegWidth($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGoodsStackLegWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearGoodsStackLegWidth() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get goodsStackFeatureHeight => $_getIZ(8);
  @$pb.TagNumber(9)
  set goodsStackFeatureHeight($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGoodsStackFeatureHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoodsStackFeatureHeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get goodsStackFeatureType => $_getSZ(9);
  @$pb.TagNumber(10)
  set goodsStackFeatureType($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasGoodsStackFeatureType() => $_has(9);
  @$pb.TagNumber(10)
  void clearGoodsStackFeatureType() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get goodsStackInnerHeight => $_getIZ(10);
  @$pb.TagNumber(11)
  set goodsStackInnerHeight($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasGoodsStackInnerHeight() => $_has(10);
  @$pb.TagNumber(11)
  void clearGoodsStackInnerHeight() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get boxMarkerOffsetToBottom => $_getIZ(11);
  @$pb.TagNumber(12)
  set boxMarkerOffsetToBottom($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBoxMarkerOffsetToBottom() => $_has(11);
  @$pb.TagNumber(12)
  void clearBoxMarkerOffsetToBottom() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get goodsStackBottomCrossbeamHeight => $_getIZ(12);
  @$pb.TagNumber(13)
  set goodsStackBottomCrossbeamHeight($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasGoodsStackBottomCrossbeamHeight() => $_has(12);
  @$pb.TagNumber(13)
  void clearGoodsStackBottomCrossbeamHeight() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get goodsStackType => $_getSZ(13);
  @$pb.TagNumber(14)
  set goodsStackType($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGoodsStackType() => $_has(13);
  @$pb.TagNumber(14)
  void clearGoodsStackType() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get hasBottomMark => $_getBF(14);
  @$pb.TagNumber(15)
  set hasBottomMark($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasHasBottomMark() => $_has(14);
  @$pb.TagNumber(15)
  void clearHasBottomMark() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get goodsStackContourFileName => $_getSZ(15);
  @$pb.TagNumber(16)
  set goodsStackContourFileName($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasGoodsStackContourFileName() => $_has(15);
  @$pb.TagNumber(16)
  void clearGoodsStackContourFileName() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get goodsStackTelescopicDistanceToDetectFeature => $_getIZ(16);
  @$pb.TagNumber(17)
  set goodsStackTelescopicDistanceToDetectFeature($core.int v) { $_setSignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasGoodsStackTelescopicDistanceToDetectFeature() => $_has(16);
  @$pb.TagNumber(17)
  void clearGoodsStackTelescopicDistanceToDetectFeature() => clearField(17);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
