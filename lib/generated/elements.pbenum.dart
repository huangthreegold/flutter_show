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

import 'package:protobuf/protobuf.dart' as $pb;

class ElementType extends $pb.ProtobufEnum {
  static const ElementType ELEMENT_TYPE_UNKNOWN = ElementType._(0, _omitEnumNames ? '' : 'ELEMENT_TYPE_UNKNOWN');
  static const ElementType ELEMENT_TYPE_NODE = ElementType._(1, _omitEnumNames ? '' : 'ELEMENT_TYPE_NODE');
  static const ElementType ELEMENT_TYPE_EDGE = ElementType._(2, _omitEnumNames ? '' : 'ELEMENT_TYPE_EDGE');
  static const ElementType ELEMENT_TYPE_BLOCK = ElementType._(3, _omitEnumNames ? '' : 'ELEMENT_TYPE_BLOCK');
  static const ElementType ELEMENT_TYPE_CONFLICT_ZONE = ElementType._(4, _omitEnumNames ? '' : 'ELEMENT_TYPE_CONFLICT_ZONE');

  static const $core.List<ElementType> values = <ElementType> [
    ELEMENT_TYPE_UNKNOWN,
    ELEMENT_TYPE_NODE,
    ELEMENT_TYPE_EDGE,
    ELEMENT_TYPE_BLOCK,
    ELEMENT_TYPE_CONFLICT_ZONE,
  ];

  static final $core.Map<$core.int, ElementType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ElementType? valueOf($core.int value) => _byValue[value];

  const ElementType._($core.int v, $core.String n) : super(v, n);
}

class EdgeType extends $pb.ProtobufEnum {
  static const EdgeType EDGE_TYPE_UNKNOWN = EdgeType._(0, _omitEnumNames ? '' : 'EDGE_TYPE_UNKNOWN');
  static const EdgeType EDGE_TYPE_ROUTE = EdgeType._(1, _omitEnumNames ? '' : 'EDGE_TYPE_ROUTE');
  static const EdgeType EDGE_TYPE_ROUTE_STATION_TO_STORAGE_SPACE = EdgeType._(2, _omitEnumNames ? '' : 'EDGE_TYPE_ROUTE_STATION_TO_STORAGE_SPACE');
  static const EdgeType EDGE_TYPE_CUSTOM_EDGE = EdgeType._(3, _omitEnumNames ? '' : 'EDGE_TYPE_CUSTOM_EDGE');

  static const $core.List<EdgeType> values = <EdgeType> [
    EDGE_TYPE_UNKNOWN,
    EDGE_TYPE_ROUTE,
    EDGE_TYPE_ROUTE_STATION_TO_STORAGE_SPACE,
    EDGE_TYPE_CUSTOM_EDGE,
  ];

  static final $core.Map<$core.int, EdgeType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EdgeType? valueOf($core.int value) => _byValue[value];

  const EdgeType._($core.int v, $core.String n) : super(v, n);
}

class MarkerType extends $pb.ProtobufEnum {
  static const MarkerType MARKER_TYPE_UNKNOWN = MarkerType._(0, _omitEnumNames ? '' : 'MARKER_TYPE_UNKNOWN');
  static const MarkerType MARKER_TYPE_REAL_MARKER = MarkerType._(1, _omitEnumNames ? '' : 'MARKER_TYPE_REAL_MARKER');
  static const MarkerType MARKER_TYPE_VIRTUAL_MARKER = MarkerType._(2, _omitEnumNames ? '' : 'MARKER_TYPE_VIRTUAL_MARKER');
  static const MarkerType MARKER_TYPE_NON_STATION_REAL_MARKER = MarkerType._(3, _omitEnumNames ? '' : 'MARKER_TYPE_NON_STATION_REAL_MARKER');
  static const MarkerType MARKER_TYPE_VIRTUAL_MARKER_IN_SLAM_AREA = MarkerType._(4, _omitEnumNames ? '' : 'MARKER_TYPE_VIRTUAL_MARKER_IN_SLAM_AREA');

  static const $core.List<MarkerType> values = <MarkerType> [
    MARKER_TYPE_UNKNOWN,
    MARKER_TYPE_REAL_MARKER,
    MARKER_TYPE_VIRTUAL_MARKER,
    MARKER_TYPE_NON_STATION_REAL_MARKER,
    MARKER_TYPE_VIRTUAL_MARKER_IN_SLAM_AREA,
  ];

  static final $core.Map<$core.int, MarkerType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarkerType? valueOf($core.int value) => _byValue[value];

  const MarkerType._($core.int v, $core.String n) : super(v, n);
}

class FeatureType extends $pb.ProtobufEnum {
  static const FeatureType FEATURE_TYPE_UNKNOWN = FeatureType._(0, _omitEnumNames ? '' : 'FEATURE_TYPE_UNKNOWN');
  static const FeatureType FEATURE_TYPE_DEFAULT = FeatureType._(1, _omitEnumNames ? '' : 'FEATURE_TYPE_DEFAULT');
  static const FeatureType FEATURE_TYPE_FIT_MARKER = FeatureType._(2, _omitEnumNames ? '' : 'FEATURE_TYPE_FIT_MARKER');
  static const FeatureType FEATURE_TYPE_COLUMN = FeatureType._(3, _omitEnumNames ? '' : 'FEATURE_TYPE_COLUMN');
  static const FeatureType FEATURE_TYPE_PALLET_RACK_3D = FeatureType._(4, _omitEnumNames ? '' : 'FEATURE_TYPE_PALLET_RACK_3D');
  static const FeatureType FEATURE_TYPE_ELEVEN_SHAPE = FeatureType._(5, _omitEnumNames ? '' : 'FEATURE_TYPE_ELEVEN_SHAPE');

  static const $core.List<FeatureType> values = <FeatureType> [
    FEATURE_TYPE_UNKNOWN,
    FEATURE_TYPE_DEFAULT,
    FEATURE_TYPE_FIT_MARKER,
    FEATURE_TYPE_COLUMN,
    FEATURE_TYPE_PALLET_RACK_3D,
    FEATURE_TYPE_ELEVEN_SHAPE,
  ];

  static final $core.Map<$core.int, FeatureType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FeatureType? valueOf($core.int value) => _byValue[value];

  const FeatureType._($core.int v, $core.String n) : super(v, n);
}

class ConstraintType extends $pb.ProtobufEnum {
  static const ConstraintType CONSTRAINT_TYPE_UNKNOWN = ConstraintType._(0, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_UNKNOWN');
  static const ConstraintType CONSTRAINT_TYPE_MUST_NOT_TURNING = ConstraintType._(1, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_MUST_NOT_TURNING');
  static const ConstraintType CONSTRAINT_TYPE_TRY_NOT_TURNING = ConstraintType._(2, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_TRY_NOT_TURNING');
  static const ConstraintType CONSTRAINT_TYPE_LOAD_NOT_TURNING_BUT_SPECIAL = ConstraintType._(5, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_LOAD_NOT_TURNING_BUT_SPECIAL');
  static const ConstraintType CONSTRAINT_TYPE_LOAD_MUST_NOT_TURNING = ConstraintType._(6, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_LOAD_MUST_NOT_TURNING');
  static const ConstraintType CONSTRAINT_TYPE_UNLOAD_NOT_TURNING_BUT_SPECIAL = ConstraintType._(7, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_UNLOAD_NOT_TURNING_BUT_SPECIAL');
  static const ConstraintType CONSTRAINT_TYPE_LOAD_TURNING_WITH_OBSTACLE_CHECK = ConstraintType._(8, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_LOAD_TURNING_WITH_OBSTACLE_CHECK');
  static const ConstraintType CONSTRAINT_TYPE_UNLOAD_TURNING_WITH_OBSTACLE_CHECK = ConstraintType._(9, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_UNLOAD_TURNING_WITH_OBSTACLE_CHECK');
  static const ConstraintType CONSTRAINT_TYPE_MUST_NOT_FINE_TUNING = ConstraintType._(10, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_MUST_NOT_FINE_TUNING');
  static const ConstraintType CONSTRAINT_TYPE_LOAD_MUST_NOT_ROTATE_FORK = ConstraintType._(11, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_LOAD_MUST_NOT_ROTATE_FORK');

  static const $core.List<ConstraintType> values = <ConstraintType> [
    CONSTRAINT_TYPE_UNKNOWN,
    CONSTRAINT_TYPE_MUST_NOT_TURNING,
    CONSTRAINT_TYPE_TRY_NOT_TURNING,
    CONSTRAINT_TYPE_LOAD_NOT_TURNING_BUT_SPECIAL,
    CONSTRAINT_TYPE_LOAD_MUST_NOT_TURNING,
    CONSTRAINT_TYPE_UNLOAD_NOT_TURNING_BUT_SPECIAL,
    CONSTRAINT_TYPE_LOAD_TURNING_WITH_OBSTACLE_CHECK,
    CONSTRAINT_TYPE_UNLOAD_TURNING_WITH_OBSTACLE_CHECK,
    CONSTRAINT_TYPE_MUST_NOT_FINE_TUNING,
    CONSTRAINT_TYPE_LOAD_MUST_NOT_ROTATE_FORK,
  ];

  static final $core.Map<$core.int, ConstraintType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConstraintType? valueOf($core.int value) => _byValue[value];

  const ConstraintType._($core.int v, $core.String n) : super(v, n);
}

class Quadrant extends $pb.ProtobufEnum {
  static const Quadrant QUADRANT_UNKNOWN = Quadrant._(0, _omitEnumNames ? '' : 'QUADRANT_UNKNOWN');
  static const Quadrant QUADRANT_FIRST = Quadrant._(1, _omitEnumNames ? '' : 'QUADRANT_FIRST');
  static const Quadrant QUADRANT_SECOND = Quadrant._(2, _omitEnumNames ? '' : 'QUADRANT_SECOND');
  static const Quadrant QUADRANT_THIRD = Quadrant._(3, _omitEnumNames ? '' : 'QUADRANT_THIRD');
  static const Quadrant QUADRANT_FOURTH = Quadrant._(4, _omitEnumNames ? '' : 'QUADRANT_FOURTH');

  static const $core.List<Quadrant> values = <Quadrant> [
    QUADRANT_UNKNOWN,
    QUADRANT_FIRST,
    QUADRANT_SECOND,
    QUADRANT_THIRD,
    QUADRANT_FOURTH,
  ];

  static final $core.Map<$core.int, Quadrant> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Quadrant? valueOf($core.int value) => _byValue[value];

  const Quadrant._($core.int v, $core.String n) : super(v, n);
}

class WalkingType extends $pb.ProtobufEnum {
  static const WalkingType WALKING_TYPE_UNKNOWN = WalkingType._(0, _omitEnumNames ? '' : 'WALKING_TYPE_UNKNOWN');
  static const WalkingType WALKING_TYPE_PROHIBIT_WALK = WalkingType._(1, _omitEnumNames ? '' : 'WALKING_TYPE_PROHIBIT_WALK');
  static const WalkingType WALKING_TYPE_FORWARD_WALK = WalkingType._(2, _omitEnumNames ? '' : 'WALKING_TYPE_FORWARD_WALK');
  static const WalkingType WALKING_TYPE_BACKWARD_WALK = WalkingType._(3, _omitEnumNames ? '' : 'WALKING_TYPE_BACKWARD_WALK');
  static const WalkingType WALKING_TYPE_FORWARD_AND_BACKWARD_WALK = WalkingType._(4, _omitEnumNames ? '' : 'WALKING_TYPE_FORWARD_AND_BACKWARD_WALK');

  static const $core.List<WalkingType> values = <WalkingType> [
    WALKING_TYPE_UNKNOWN,
    WALKING_TYPE_PROHIBIT_WALK,
    WALKING_TYPE_FORWARD_WALK,
    WALKING_TYPE_BACKWARD_WALK,
    WALKING_TYPE_FORWARD_AND_BACKWARD_WALK,
  ];

  static final $core.Map<$core.int, WalkingType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WalkingType? valueOf($core.int value) => _byValue[value];

  const WalkingType._($core.int v, $core.String n) : super(v, n);
}

class ConflictZoneType extends $pb.ProtobufEnum {
  static const ConflictZoneType CONFLICT_ZONE_TYPE_UNKNOWN = ConflictZoneType._(0, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_UNKNOWN');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_ALL_OCCUPIED = ConflictZoneType._(1, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_ALL_OCCUPIED');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_KEY_AREA = ConflictZoneType._(2, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_KEY_AREA');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_DEPTH_AREA = ConflictZoneType._(3, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_DEPTH_AREA');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_PIPE_CTRL = ConflictZoneType._(4, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_PIPE_CTRL');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_TASK_LIMIT = ConflictZoneType._(5, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_TASK_LIMIT');
  static const ConflictZoneType CONFLICT_ZONE_TYPE_TARGET_CTRL = ConflictZoneType._(6, _omitEnumNames ? '' : 'CONFLICT_ZONE_TYPE_TARGET_CTRL');

  static const $core.List<ConflictZoneType> values = <ConflictZoneType> [
    CONFLICT_ZONE_TYPE_UNKNOWN,
    CONFLICT_ZONE_TYPE_ALL_OCCUPIED,
    CONFLICT_ZONE_TYPE_KEY_AREA,
    CONFLICT_ZONE_TYPE_DEPTH_AREA,
    CONFLICT_ZONE_TYPE_PIPE_CTRL,
    CONFLICT_ZONE_TYPE_TASK_LIMIT,
    CONFLICT_ZONE_TYPE_TARGET_CTRL,
  ];

  static final $core.Map<$core.int, ConflictZoneType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConflictZoneType? valueOf($core.int value) => _byValue[value];

  const ConflictZoneType._($core.int v, $core.String n) : super(v, n);
}

class NodePropertyType extends $pb.ProtobufEnum {
  static const NodePropertyType NODE_PROPERTY_TYPE_UNKNOWN = NodePropertyType._(0, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_UNKNOWN');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_GENERAL_STATION = NodePropertyType._(1, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_GENERAL_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_CHARGE_STATION = NodePropertyType._(4, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_CHARGE_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_TURN = NodePropertyType._(5, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_TURN');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_RACK_LOCATION = NodePropertyType._(6, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_RACK_LOCATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_PICK_STATION = NodePropertyType._(9, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_PICK_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_PACKAGE_STATION = NodePropertyType._(10, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_PACKAGE_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TASK_ENABLE_RACK = NodePropertyType._(11, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TASK_ENABLE_RACK');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_REPLENISH_STATION = NodePropertyType._(12, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_REPLENISH_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_FRAME_ENTITY = NodePropertyType._(13, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_FRAME_ENTITY');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_PRODUCTION_LINE = NodePropertyType._(14, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_PRODUCTION_LINE');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_GET_PRODUCT = NodePropertyType._(18, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_GET_PRODUCT');
  static const NodePropertyType NODE_PROPERTY_TYPE_ALLOW_VEHICLE = NodePropertyType._(19, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_ALLOW_VEHICLE');
  static const NodePropertyType NODE_PROPERTY_TYPE_ALLOW_PALLET = NodePropertyType._(20, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_ALLOW_PALLET');
  static const NodePropertyType NODE_PROPERTY_TYPE_ALLOW_ONLY_EMPTY = NodePropertyType._(21, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_ALLOW_ONLY_EMPTY');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_LIFT = NodePropertyType._(22, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_LIFT');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_SPIN_STATION = NodePropertyType._(24, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_SPIN_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_LIFT_WAIT = NodePropertyType._(27, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_LIFT_WAIT');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_PALLET = NodePropertyType._(28, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_PALLET');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_REST = NodePropertyType._(29, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_REST');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_CY_BOARD = NodePropertyType._(30, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_CY_BOARD');
  static const NodePropertyType NODE_PROPERTY_TYPE_DYNAMIC_STATIONS = NodePropertyType._(32, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_DYNAMIC_STATIONS');
  static const NodePropertyType NODE_PROPERTY_TYPE_TRANS_NODE = NodePropertyType._(33, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_TRANS_NODE');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_STACKED_STATION = NodePropertyType._(34, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_STACKED_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_FORK_ARM_WITH_LOAD_STATION = NodePropertyType._(35, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_FORK_ARM_WITH_LOAD_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_DISABLED_STATION = NodePropertyType._(36, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_DISABLED_STATION');
  static const NodePropertyType NODE_PROPERTY_TYPE_CELL_TYPE_MULTI_RACK_STATION = NodePropertyType._(37, _omitEnumNames ? '' : 'NODE_PROPERTY_TYPE_CELL_TYPE_MULTI_RACK_STATION');

  static const $core.List<NodePropertyType> values = <NodePropertyType> [
    NODE_PROPERTY_TYPE_UNKNOWN,
    NODE_PROPERTY_TYPE_CELL_TYPE_GENERAL_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_CHARGE_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_TURN,
    NODE_PROPERTY_TYPE_CELL_TYPE_RACK_LOCATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_PICK_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_PACKAGE_STATION,
    NODE_PROPERTY_TYPE_CELL_TASK_ENABLE_RACK,
    NODE_PROPERTY_TYPE_CELL_TYPE_REPLENISH_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_FRAME_ENTITY,
    NODE_PROPERTY_TYPE_CELL_TYPE_PRODUCTION_LINE,
    NODE_PROPERTY_TYPE_CELL_TYPE_GET_PRODUCT,
    NODE_PROPERTY_TYPE_ALLOW_VEHICLE,
    NODE_PROPERTY_TYPE_ALLOW_PALLET,
    NODE_PROPERTY_TYPE_ALLOW_ONLY_EMPTY,
    NODE_PROPERTY_TYPE_CELL_TYPE_LIFT,
    NODE_PROPERTY_TYPE_CELL_TYPE_SPIN_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_LIFT_WAIT,
    NODE_PROPERTY_TYPE_CELL_TYPE_PALLET,
    NODE_PROPERTY_TYPE_CELL_TYPE_REST,
    NODE_PROPERTY_TYPE_CELL_TYPE_CY_BOARD,
    NODE_PROPERTY_TYPE_DYNAMIC_STATIONS,
    NODE_PROPERTY_TYPE_TRANS_NODE,
    NODE_PROPERTY_TYPE_CELL_TYPE_STACKED_STATION,
    NODE_PROPERTY_TYPE_FORK_ARM_WITH_LOAD_STATION,
    NODE_PROPERTY_TYPE_DISABLED_STATION,
    NODE_PROPERTY_TYPE_CELL_TYPE_MULTI_RACK_STATION,
  ];

  static final $core.Map<$core.int, NodePropertyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NodePropertyType? valueOf($core.int value) => _byValue[value];

  const NodePropertyType._($core.int v, $core.String n) : super(v, n);
}

class PropertyValueType extends $pb.ProtobufEnum {
  static const PropertyValueType PROPERTY_VALUE_TYPE_UNKNOWN = PropertyValueType._(0, _omitEnumNames ? '' : 'PROPERTY_VALUE_TYPE_UNKNOWN');
  static const PropertyValueType PROPERTY_VALUE_TYPE_NUMBER = PropertyValueType._(1, _omitEnumNames ? '' : 'PROPERTY_VALUE_TYPE_NUMBER');
  static const PropertyValueType PROPERTY_VALUE_TYPE_STRING = PropertyValueType._(2, _omitEnumNames ? '' : 'PROPERTY_VALUE_TYPE_STRING');
  static const PropertyValueType PROPERTY_VALUE_TYPE_BOOLE = PropertyValueType._(3, _omitEnumNames ? '' : 'PROPERTY_VALUE_TYPE_BOOLE');
  static const PropertyValueType PROPERTY_VALUE_TYPE_SET = PropertyValueType._(4, _omitEnumNames ? '' : 'PROPERTY_VALUE_TYPE_SET');

  static const $core.List<PropertyValueType> values = <PropertyValueType> [
    PROPERTY_VALUE_TYPE_UNKNOWN,
    PROPERTY_VALUE_TYPE_NUMBER,
    PROPERTY_VALUE_TYPE_STRING,
    PROPERTY_VALUE_TYPE_BOOLE,
    PROPERTY_VALUE_TYPE_SET,
  ];

  static final $core.Map<$core.int, PropertyValueType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PropertyValueType? valueOf($core.int value) => _byValue[value];

  const PropertyValueType._($core.int v, $core.String n) : super(v, n);
}

class ConditionType extends $pb.ProtobufEnum {
  static const ConditionType CONDITION_TYPE_UNKNOWN = ConditionType._(0, _omitEnumNames ? '' : 'CONDITION_TYPE_UNKNOWN');
  static const ConditionType CONDITION_TYPE_ALLOW = ConditionType._(1, _omitEnumNames ? '' : 'CONDITION_TYPE_ALLOW');
  static const ConditionType CONDITION_TYPE_NOT_ALLOW = ConditionType._(2, _omitEnumNames ? '' : 'CONDITION_TYPE_NOT_ALLOW');
  static const ConditionType CONDITION_TYPE_EQUAL_TO = ConditionType._(3, _omitEnumNames ? '' : 'CONDITION_TYPE_EQUAL_TO');
  static const ConditionType CONDITION_TYPE_NOT_EQUAL_TO = ConditionType._(4, _omitEnumNames ? '' : 'CONDITION_TYPE_NOT_EQUAL_TO');
  static const ConditionType CONDITION_TYPE_GREATER_THAN = ConditionType._(5, _omitEnumNames ? '' : 'CONDITION_TYPE_GREATER_THAN');
  static const ConditionType CONDITION_TYPE_LESS_THAN = ConditionType._(6, _omitEnumNames ? '' : 'CONDITION_TYPE_LESS_THAN');
  static const ConditionType CONDITION_TYPE_GREATER_THAN_OR_EQUAL = ConditionType._(7, _omitEnumNames ? '' : 'CONDITION_TYPE_GREATER_THAN_OR_EQUAL');
  static const ConditionType CONDITION_TYPE_LESS_THAN_OR_EQUAL = ConditionType._(8, _omitEnumNames ? '' : 'CONDITION_TYPE_LESS_THAN_OR_EQUAL');
  static const ConditionType CONDITION_TYPE_RANGE = ConditionType._(9, _omitEnumNames ? '' : 'CONDITION_TYPE_RANGE');
  static const ConditionType CONDITION_TYPE_CONTAIN = ConditionType._(10, _omitEnumNames ? '' : 'CONDITION_TYPE_CONTAIN');
  static const ConditionType CONDITION_TYPE_NOT_CONTAIN = ConditionType._(11, _omitEnumNames ? '' : 'CONDITION_TYPE_NOT_CONTAIN');

  static const $core.List<ConditionType> values = <ConditionType> [
    CONDITION_TYPE_UNKNOWN,
    CONDITION_TYPE_ALLOW,
    CONDITION_TYPE_NOT_ALLOW,
    CONDITION_TYPE_EQUAL_TO,
    CONDITION_TYPE_NOT_EQUAL_TO,
    CONDITION_TYPE_GREATER_THAN,
    CONDITION_TYPE_LESS_THAN,
    CONDITION_TYPE_GREATER_THAN_OR_EQUAL,
    CONDITION_TYPE_LESS_THAN_OR_EQUAL,
    CONDITION_TYPE_RANGE,
    CONDITION_TYPE_CONTAIN,
    CONDITION_TYPE_NOT_CONTAIN,
  ];

  static final $core.Map<$core.int, ConditionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConditionType? valueOf($core.int value) => _byValue[value];

  const ConditionType._($core.int v, $core.String n) : super(v, n);
}

class Logic extends $pb.ProtobufEnum {
  static const Logic LOGIC_UNKNOWN = Logic._(0, _omitEnumNames ? '' : 'LOGIC_UNKNOWN');
  static const Logic LOGIC_OR = Logic._(1, _omitEnumNames ? '' : 'LOGIC_OR');
  static const Logic LOGIC_AND = Logic._(2, _omitEnumNames ? '' : 'LOGIC_AND');

  static const $core.List<Logic> values = <Logic> [
    LOGIC_UNKNOWN,
    LOGIC_OR,
    LOGIC_AND,
  ];

  static final $core.Map<$core.int, Logic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Logic? valueOf($core.int value) => _byValue[value];

  const Logic._($core.int v, $core.String n) : super(v, n);
}

class BlockType extends $pb.ProtobufEnum {
  static const BlockType BLOCK_TYPE_UNKNOWN = BlockType._(0, _omitEnumNames ? '' : 'BLOCK_TYPE_UNKNOWN');
  static const BlockType BLOCK_TYPE_EXTEND = BlockType._(1, _omitEnumNames ? '' : 'BLOCK_TYPE_EXTEND');
  static const BlockType BLOCK_TYPE_SHIELD = BlockType._(2, _omitEnumNames ? '' : 'BLOCK_TYPE_SHIELD');
  static const BlockType BLOCK_TYPE_PASS_COND = BlockType._(3, _omitEnumNames ? '' : 'BLOCK_TYPE_PASS_COND');

  static const $core.List<BlockType> values = <BlockType> [
    BLOCK_TYPE_UNKNOWN,
    BLOCK_TYPE_EXTEND,
    BLOCK_TYPE_SHIELD,
    BLOCK_TYPE_PASS_COND,
  ];

  static final $core.Map<$core.int, BlockType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BlockType? valueOf($core.int value) => _byValue[value];

  const BlockType._($core.int v, $core.String n) : super(v, n);
}

class AppliedLoadStatus extends $pb.ProtobufEnum {
  static const AppliedLoadStatus APPLIED_LOAD_STATUS_UNKNOWN = AppliedLoadStatus._(0, _omitEnumNames ? '' : 'APPLIED_LOAD_STATUS_UNKNOWN');
  static const AppliedLoadStatus APPLIED_LOAD_STATUS_ANY_STATE = AppliedLoadStatus._(1, _omitEnumNames ? '' : 'APPLIED_LOAD_STATUS_ANY_STATE');
  static const AppliedLoadStatus APPLIED_LOAD_STATUS_EMPTY_LOAD = AppliedLoadStatus._(2, _omitEnumNames ? '' : 'APPLIED_LOAD_STATUS_EMPTY_LOAD');
  static const AppliedLoadStatus APPLIED_LOAD_STATUS_LOAD = AppliedLoadStatus._(3, _omitEnumNames ? '' : 'APPLIED_LOAD_STATUS_LOAD');

  static const $core.List<AppliedLoadStatus> values = <AppliedLoadStatus> [
    APPLIED_LOAD_STATUS_UNKNOWN,
    APPLIED_LOAD_STATUS_ANY_STATE,
    APPLIED_LOAD_STATUS_EMPTY_LOAD,
    APPLIED_LOAD_STATUS_LOAD,
  ];

  static final $core.Map<$core.int, AppliedLoadStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AppliedLoadStatus? valueOf($core.int value) => _byValue[value];

  const AppliedLoadStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
