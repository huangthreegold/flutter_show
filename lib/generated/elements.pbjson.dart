// This is a generated file - do not edit.
//
// Generated from elements.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use elementTypeDescriptor instead')
const ElementType$json = {
  '1': 'ElementType',
  '2': [
    {'1': 'ELEMENT_TYPE_UNKNOWN', '2': 0},
    {'1': 'ELEMENT_TYPE_NODE', '2': 1},
    {'1': 'ELEMENT_TYPE_EDGE', '2': 2},
    {'1': 'ELEMENT_TYPE_BLOCK', '2': 3},
    {'1': 'ELEMENT_TYPE_CONFLICT_ZONE', '2': 4},
  ],
};

/// Descriptor for `ElementType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List elementTypeDescriptor = $convert.base64Decode(
    'CgtFbGVtZW50VHlwZRIYChRFTEVNRU5UX1RZUEVfVU5LTk9XThAAEhUKEUVMRU1FTlRfVFlQRV'
    '9OT0RFEAESFQoRRUxFTUVOVF9UWVBFX0VER0UQAhIWChJFTEVNRU5UX1RZUEVfQkxPQ0sQAxIe'
    'ChpFTEVNRU5UX1RZUEVfQ09ORkxJQ1RfWk9ORRAE');

@$core.Deprecated('Use edgeTypeDescriptor instead')
const EdgeType$json = {
  '1': 'EdgeType',
  '2': [
    {'1': 'EDGE_TYPE_UNKNOWN', '2': 0},
    {'1': 'EDGE_TYPE_ROUTE', '2': 1},
    {'1': 'EDGE_TYPE_ROUTE_STATION_TO_STORAGE_SPACE', '2': 2},
    {'1': 'EDGE_TYPE_CUSTOM_EDGE', '2': 3},
  ],
};

/// Descriptor for `EdgeType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List edgeTypeDescriptor = $convert.base64Decode(
    'CghFZGdlVHlwZRIVChFFREdFX1RZUEVfVU5LTk9XThAAEhMKD0VER0VfVFlQRV9ST1VURRABEi'
    'wKKEVER0VfVFlQRV9ST1VURV9TVEFUSU9OX1RPX1NUT1JBR0VfU1BBQ0UQAhIZChVFREdFX1RZ'
    'UEVfQ1VTVE9NX0VER0UQAw==');

@$core.Deprecated('Use markerTypeDescriptor instead')
const MarkerType$json = {
  '1': 'MarkerType',
  '2': [
    {'1': 'MARKER_TYPE_UNKNOWN', '2': 0},
    {'1': 'MARKER_TYPE_REAL_MARKER', '2': 1},
    {'1': 'MARKER_TYPE_VIRTUAL_MARKER', '2': 2},
    {'1': 'MARKER_TYPE_NON_STATION_REAL_MARKER', '2': 3},
    {'1': 'MARKER_TYPE_VIRTUAL_MARKER_IN_SLAM_AREA', '2': 4},
  ],
};

/// Descriptor for `MarkerType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List markerTypeDescriptor = $convert.base64Decode(
    'CgpNYXJrZXJUeXBlEhcKE01BUktFUl9UWVBFX1VOS05PV04QABIbChdNQVJLRVJfVFlQRV9SRU'
    'FMX01BUktFUhABEh4KGk1BUktFUl9UWVBFX1ZJUlRVQUxfTUFSS0VSEAISJwojTUFSS0VSX1RZ'
    'UEVfTk9OX1NUQVRJT05fUkVBTF9NQVJLRVIQAxIrCidNQVJLRVJfVFlQRV9WSVJUVUFMX01BUk'
    'tFUl9JTl9TTEFNX0FSRUEQBA==');

@$core.Deprecated('Use featureTypeDescriptor instead')
const FeatureType$json = {
  '1': 'FeatureType',
  '2': [
    {'1': 'FEATURE_TYPE_UNKNOWN', '2': 0},
    {'1': 'FEATURE_TYPE_DEFAULT', '2': 1},
    {'1': 'FEATURE_TYPE_FIT_MARKER', '2': 2},
    {'1': 'FEATURE_TYPE_COLUMN', '2': 3},
    {'1': 'FEATURE_TYPE_PALLET_RACK_3D', '2': 4},
    {'1': 'FEATURE_TYPE_ELEVEN_SHAPE', '2': 5},
  ],
};

/// Descriptor for `FeatureType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureTypeDescriptor = $convert.base64Decode(
    'CgtGZWF0dXJlVHlwZRIYChRGRUFUVVJFX1RZUEVfVU5LTk9XThAAEhgKFEZFQVRVUkVfVFlQRV'
    '9ERUZBVUxUEAESGwoXRkVBVFVSRV9UWVBFX0ZJVF9NQVJLRVIQAhIXChNGRUFUVVJFX1RZUEVf'
    'Q09MVU1OEAMSHwobRkVBVFVSRV9UWVBFX1BBTExFVF9SQUNLXzNEEAQSHQoZRkVBVFVSRV9UWV'
    'BFX0VMRVZFTl9TSEFQRRAF');

@$core.Deprecated('Use constraintTypeDescriptor instead')
const ConstraintType$json = {
  '1': 'ConstraintType',
  '2': [
    {'1': 'CONSTRAINT_TYPE_UNKNOWN', '2': 0},
    {'1': 'CONSTRAINT_TYPE_MUST_NOT_TURNING', '2': 1},
    {'1': 'CONSTRAINT_TYPE_TRY_NOT_TURNING', '2': 2},
    {'1': 'CONSTRAINT_TYPE_LOAD_NOT_TURNING_BUT_SPECIAL', '2': 5},
    {'1': 'CONSTRAINT_TYPE_LOAD_MUST_NOT_TURNING', '2': 6},
    {'1': 'CONSTRAINT_TYPE_UNLOAD_NOT_TURNING_BUT_SPECIAL', '2': 7},
    {'1': 'CONSTRAINT_TYPE_LOAD_TURNING_WITH_OBSTACLE_CHECK', '2': 8},
    {'1': 'CONSTRAINT_TYPE_UNLOAD_TURNING_WITH_OBSTACLE_CHECK', '2': 9},
    {'1': 'CONSTRAINT_TYPE_MUST_NOT_FINE_TUNING', '2': 10},
    {'1': 'CONSTRAINT_TYPE_LOAD_MUST_NOT_ROTATE_FORK', '2': 11},
  ],
};

/// Descriptor for `ConstraintType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List constraintTypeDescriptor = $convert.base64Decode(
    'Cg5Db25zdHJhaW50VHlwZRIbChdDT05TVFJBSU5UX1RZUEVfVU5LTk9XThAAEiQKIENPTlNUUk'
    'FJTlRfVFlQRV9NVVNUX05PVF9UVVJOSU5HEAESIwofQ09OU1RSQUlOVF9UWVBFX1RSWV9OT1Rf'
    'VFVSTklORxACEjAKLENPTlNUUkFJTlRfVFlQRV9MT0FEX05PVF9UVVJOSU5HX0JVVF9TUEVDSU'
    'FMEAUSKQolQ09OU1RSQUlOVF9UWVBFX0xPQURfTVVTVF9OT1RfVFVSTklORxAGEjIKLkNPTlNU'
    'UkFJTlRfVFlQRV9VTkxPQURfTk9UX1RVUk5JTkdfQlVUX1NQRUNJQUwQBxI0CjBDT05TVFJBSU'
    '5UX1RZUEVfTE9BRF9UVVJOSU5HX1dJVEhfT0JTVEFDTEVfQ0hFQ0sQCBI2CjJDT05TVFJBSU5U'
    'X1RZUEVfVU5MT0FEX1RVUk5JTkdfV0lUSF9PQlNUQUNMRV9DSEVDSxAJEigKJENPTlNUUkFJTl'
    'RfVFlQRV9NVVNUX05PVF9GSU5FX1RVTklORxAKEi0KKUNPTlNUUkFJTlRfVFlQRV9MT0FEX01V'
    'U1RfTk9UX1JPVEFURV9GT1JLEAs=');

@$core.Deprecated('Use quadrantDescriptor instead')
const Quadrant$json = {
  '1': 'Quadrant',
  '2': [
    {'1': 'QUADRANT_UNKNOWN', '2': 0},
    {'1': 'QUADRANT_FIRST', '2': 1},
    {'1': 'QUADRANT_SECOND', '2': 2},
    {'1': 'QUADRANT_THIRD', '2': 3},
    {'1': 'QUADRANT_FOURTH', '2': 4},
  ],
};

/// Descriptor for `Quadrant`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List quadrantDescriptor = $convert.base64Decode(
    'CghRdWFkcmFudBIUChBRVUFEUkFOVF9VTktOT1dOEAASEgoOUVVBRFJBTlRfRklSU1QQARITCg'
    '9RVUFEUkFOVF9TRUNPTkQQAhISCg5RVUFEUkFOVF9USElSRBADEhMKD1FVQURSQU5UX0ZPVVJU'
    'SBAE');

@$core.Deprecated('Use walkingTypeDescriptor instead')
const WalkingType$json = {
  '1': 'WalkingType',
  '2': [
    {'1': 'WALKING_TYPE_UNKNOWN', '2': 0},
    {'1': 'WALKING_TYPE_PROHIBIT_WALK', '2': 1},
    {'1': 'WALKING_TYPE_FORWARD_WALK', '2': 2},
    {'1': 'WALKING_TYPE_BACKWARD_WALK', '2': 3},
    {'1': 'WALKING_TYPE_FORWARD_AND_BACKWARD_WALK', '2': 4},
  ],
};

/// Descriptor for `WalkingType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List walkingTypeDescriptor = $convert.base64Decode(
    'CgtXYWxraW5nVHlwZRIYChRXQUxLSU5HX1RZUEVfVU5LTk9XThAAEh4KGldBTEtJTkdfVFlQRV'
    '9QUk9ISUJJVF9XQUxLEAESHQoZV0FMS0lOR19UWVBFX0ZPUldBUkRfV0FMSxACEh4KGldBTEtJ'
    'TkdfVFlQRV9CQUNLV0FSRF9XQUxLEAMSKgomV0FMS0lOR19UWVBFX0ZPUldBUkRfQU5EX0JBQ0'
    'tXQVJEX1dBTEsQBA==');

@$core.Deprecated('Use conflictZoneTypeDescriptor instead')
const ConflictZoneType$json = {
  '1': 'ConflictZoneType',
  '2': [
    {'1': 'CONFLICT_ZONE_TYPE_UNKNOWN', '2': 0},
    {'1': 'CONFLICT_ZONE_TYPE_ALL_OCCUPIED', '2': 1},
    {'1': 'CONFLICT_ZONE_TYPE_KEY_AREA', '2': 2},
    {'1': 'CONFLICT_ZONE_TYPE_DEPTH_AREA', '2': 3},
    {'1': 'CONFLICT_ZONE_TYPE_PIPE_CTRL', '2': 4},
    {'1': 'CONFLICT_ZONE_TYPE_TASK_LIMIT', '2': 5},
    {'1': 'CONFLICT_ZONE_TYPE_TARGET_CTRL', '2': 6},
  ],
};

/// Descriptor for `ConflictZoneType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List conflictZoneTypeDescriptor = $convert.base64Decode(
    'ChBDb25mbGljdFpvbmVUeXBlEh4KGkNPTkZMSUNUX1pPTkVfVFlQRV9VTktOT1dOEAASIwofQ0'
    '9ORkxJQ1RfWk9ORV9UWVBFX0FMTF9PQ0NVUElFRBABEh8KG0NPTkZMSUNUX1pPTkVfVFlQRV9L'
    'RVlfQVJFQRACEiEKHUNPTkZMSUNUX1pPTkVfVFlQRV9ERVBUSF9BUkVBEAMSIAocQ09ORkxJQ1'
    'RfWk9ORV9UWVBFX1BJUEVfQ1RSTBAEEiEKHUNPTkZMSUNUX1pPTkVfVFlQRV9UQVNLX0xJTUlU'
    'EAUSIgoeQ09ORkxJQ1RfWk9ORV9UWVBFX1RBUkdFVF9DVFJMEAY=');

@$core.Deprecated('Use nodePropertyTypeDescriptor instead')
const NodePropertyType$json = {
  '1': 'NodePropertyType',
  '2': [
    {'1': 'NODE_PROPERTY_TYPE_UNKNOWN', '2': 0},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_GENERAL_STATION', '2': 1},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_CHARGE_STATION', '2': 4},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_TURN', '2': 5},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_RACK_LOCATION', '2': 6},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_PICK_STATION', '2': 9},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_PACKAGE_STATION', '2': 10},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TASK_ENABLE_RACK', '2': 11},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_REPLENISH_STATION', '2': 12},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_FRAME_ENTITY', '2': 13},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_PRODUCTION_LINE', '2': 14},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_GET_PRODUCT', '2': 18},
    {'1': 'NODE_PROPERTY_TYPE_ALLOW_VEHICLE', '2': 19},
    {'1': 'NODE_PROPERTY_TYPE_ALLOW_PALLET', '2': 20},
    {'1': 'NODE_PROPERTY_TYPE_ALLOW_ONLY_EMPTY', '2': 21},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_LIFT', '2': 22},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_SPIN_STATION', '2': 24},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_LIFT_WAIT', '2': 27},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_PALLET', '2': 28},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_REST', '2': 29},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_CY_BOARD', '2': 30},
    {'1': 'NODE_PROPERTY_TYPE_DYNAMIC_STATIONS', '2': 32},
    {'1': 'NODE_PROPERTY_TYPE_TRANS_NODE', '2': 33},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_STACKED_STATION', '2': 34},
    {'1': 'NODE_PROPERTY_TYPE_FORK_ARM_WITH_LOAD_STATION', '2': 35},
    {'1': 'NODE_PROPERTY_TYPE_DISABLED_STATION', '2': 36},
    {'1': 'NODE_PROPERTY_TYPE_CELL_TYPE_MULTI_RACK_STATION', '2': 37},
  ],
};

/// Descriptor for `NodePropertyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodePropertyTypeDescriptor = $convert.base64Decode(
    'ChBOb2RlUHJvcGVydHlUeXBlEh4KGk5PREVfUFJPUEVSVFlfVFlQRV9VTktOT1dOEAASMAosTk'
    '9ERV9QUk9QRVJUWV9UWVBFX0NFTExfVFlQRV9HRU5FUkFMX1NUQVRJT04QARIvCitOT0RFX1BS'
    'T1BFUlRZX1RZUEVfQ0VMTF9UWVBFX0NIQVJHRV9TVEFUSU9OEAQSJQohTk9ERV9QUk9QRVJUWV'
    '9UWVBFX0NFTExfVFlQRV9UVVJOEAUSLgoqTk9ERV9QUk9QRVJUWV9UWVBFX0NFTExfVFlQRV9S'
    'QUNLX0xPQ0FUSU9OEAYSLQopTk9ERV9QUk9QRVJUWV9UWVBFX0NFTExfVFlQRV9QSUNLX1NUQV'
    'RJT04QCRIwCixOT0RFX1BST1BFUlRZX1RZUEVfQ0VMTF9UWVBFX1BBQ0tBR0VfU1RBVElPThAK'
    'EiwKKE5PREVfUFJPUEVSVFlfVFlQRV9DRUxMX1RBU0tfRU5BQkxFX1JBQ0sQCxIyCi5OT0RFX1'
    'BST1BFUlRZX1RZUEVfQ0VMTF9UWVBFX1JFUExFTklTSF9TVEFUSU9OEAwSLQopTk9ERV9QUk9Q'
    'RVJUWV9UWVBFX0NFTExfVFlQRV9GUkFNRV9FTlRJVFkQDRIwCixOT0RFX1BST1BFUlRZX1RZUE'
    'VfQ0VMTF9UWVBFX1BST0RVQ1RJT05fTElORRAOEiwKKE5PREVfUFJPUEVSVFlfVFlQRV9DRUxM'
    'X1RZUEVfR0VUX1BST0RVQ1QQEhIkCiBOT0RFX1BST1BFUlRZX1RZUEVfQUxMT1dfVkVISUNMRR'
    'ATEiMKH05PREVfUFJPUEVSVFlfVFlQRV9BTExPV19QQUxMRVQQFBInCiNOT0RFX1BST1BFUlRZ'
    'X1RZUEVfQUxMT1dfT05MWV9FTVBUWRAVEiUKIU5PREVfUFJPUEVSVFlfVFlQRV9DRUxMX1RZUE'
    'VfTElGVBAWEi0KKU5PREVfUFJPUEVSVFlfVFlQRV9DRUxMX1RZUEVfU1BJTl9TVEFUSU9OEBgS'
    'KgomTk9ERV9QUk9QRVJUWV9UWVBFX0NFTExfVFlQRV9MSUZUX1dBSVQQGxInCiNOT0RFX1BST1'
    'BFUlRZX1RZUEVfQ0VMTF9UWVBFX1BBTExFVBAcEiUKIU5PREVfUFJPUEVSVFlfVFlQRV9DRUxM'
    'X1RZUEVfUkVTVBAdEikKJU5PREVfUFJPUEVSVFlfVFlQRV9DRUxMX1RZUEVfQ1lfQk9BUkQQHh'
    'InCiNOT0RFX1BST1BFUlRZX1RZUEVfRFlOQU1JQ19TVEFUSU9OUxAgEiEKHU5PREVfUFJPUEVS'
    'VFlfVFlQRV9UUkFOU19OT0RFECESMAosTk9ERV9QUk9QRVJUWV9UWVBFX0NFTExfVFlQRV9TVE'
    'FDS0VEX1NUQVRJT04QIhIxCi1OT0RFX1BST1BFUlRZX1RZUEVfRk9SS19BUk1fV0lUSF9MT0FE'
    'X1NUQVRJT04QIxInCiNOT0RFX1BST1BFUlRZX1RZUEVfRElTQUJMRURfU1RBVElPThAkEjMKL0'
    '5PREVfUFJPUEVSVFlfVFlQRV9DRUxMX1RZUEVfTVVMVElfUkFDS19TVEFUSU9OECU=');

@$core.Deprecated('Use propertyValueTypeDescriptor instead')
const PropertyValueType$json = {
  '1': 'PropertyValueType',
  '2': [
    {'1': 'PROPERTY_VALUE_TYPE_UNKNOWN', '2': 0},
    {'1': 'PROPERTY_VALUE_TYPE_NUMBER', '2': 1},
    {'1': 'PROPERTY_VALUE_TYPE_STRING', '2': 2},
    {'1': 'PROPERTY_VALUE_TYPE_BOOLE', '2': 3},
    {'1': 'PROPERTY_VALUE_TYPE_SET', '2': 4},
  ],
};

/// Descriptor for `PropertyValueType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List propertyValueTypeDescriptor = $convert.base64Decode(
    'ChFQcm9wZXJ0eVZhbHVlVHlwZRIfChtQUk9QRVJUWV9WQUxVRV9UWVBFX1VOS05PV04QABIeCh'
    'pQUk9QRVJUWV9WQUxVRV9UWVBFX05VTUJFUhABEh4KGlBST1BFUlRZX1ZBTFVFX1RZUEVfU1RS'
    'SU5HEAISHQoZUFJPUEVSVFlfVkFMVUVfVFlQRV9CT09MRRADEhsKF1BST1BFUlRZX1ZBTFVFX1'
    'RZUEVfU0VUEAQ=');

@$core.Deprecated('Use conditionTypeDescriptor instead')
const ConditionType$json = {
  '1': 'ConditionType',
  '2': [
    {'1': 'CONDITION_TYPE_UNKNOWN', '2': 0},
    {'1': 'CONDITION_TYPE_ALLOW', '2': 1},
    {'1': 'CONDITION_TYPE_NOT_ALLOW', '2': 2},
    {'1': 'CONDITION_TYPE_EQUAL_TO', '2': 3},
    {'1': 'CONDITION_TYPE_NOT_EQUAL_TO', '2': 4},
    {'1': 'CONDITION_TYPE_GREATER_THAN', '2': 5},
    {'1': 'CONDITION_TYPE_LESS_THAN', '2': 6},
    {'1': 'CONDITION_TYPE_GREATER_THAN_OR_EQUAL', '2': 7},
    {'1': 'CONDITION_TYPE_LESS_THAN_OR_EQUAL', '2': 8},
    {'1': 'CONDITION_TYPE_RANGE', '2': 9},
    {'1': 'CONDITION_TYPE_CONTAIN', '2': 10},
    {'1': 'CONDITION_TYPE_NOT_CONTAIN', '2': 11},
  ],
};

/// Descriptor for `ConditionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List conditionTypeDescriptor = $convert.base64Decode(
    'Cg1Db25kaXRpb25UeXBlEhoKFkNPTkRJVElPTl9UWVBFX1VOS05PV04QABIYChRDT05ESVRJT0'
    '5fVFlQRV9BTExPVxABEhwKGENPTkRJVElPTl9UWVBFX05PVF9BTExPVxACEhsKF0NPTkRJVElP'
    'Tl9UWVBFX0VRVUFMX1RPEAMSHwobQ09ORElUSU9OX1RZUEVfTk9UX0VRVUFMX1RPEAQSHwobQ0'
    '9ORElUSU9OX1RZUEVfR1JFQVRFUl9USEFOEAUSHAoYQ09ORElUSU9OX1RZUEVfTEVTU19USEFO'
    'EAYSKAokQ09ORElUSU9OX1RZUEVfR1JFQVRFUl9USEFOX09SX0VRVUFMEAcSJQohQ09ORElUSU'
    '9OX1RZUEVfTEVTU19USEFOX09SX0VRVUFMEAgSGAoUQ09ORElUSU9OX1RZUEVfUkFOR0UQCRIa'
    'ChZDT05ESVRJT05fVFlQRV9DT05UQUlOEAoSHgoaQ09ORElUSU9OX1RZUEVfTk9UX0NPTlRBSU'
    '4QCw==');

@$core.Deprecated('Use logicDescriptor instead')
const Logic$json = {
  '1': 'Logic',
  '2': [
    {'1': 'LOGIC_UNKNOWN', '2': 0},
    {'1': 'LOGIC_OR', '2': 1},
    {'1': 'LOGIC_AND', '2': 2},
  ],
};

/// Descriptor for `Logic`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List logicDescriptor = $convert.base64Decode(
    'CgVMb2dpYxIRCg1MT0dJQ19VTktOT1dOEAASDAoITE9HSUNfT1IQARINCglMT0dJQ19BTkQQAg'
    '==');

@$core.Deprecated('Use blockTypeDescriptor instead')
const BlockType$json = {
  '1': 'BlockType',
  '2': [
    {'1': 'BLOCK_TYPE_UNKNOWN', '2': 0},
    {'1': 'BLOCK_TYPE_EXTEND', '2': 1},
    {'1': 'BLOCK_TYPE_SHIELD', '2': 2},
    {'1': 'BLOCK_TYPE_PASS_COND', '2': 3},
  ],
};

/// Descriptor for `BlockType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blockTypeDescriptor = $convert.base64Decode(
    'CglCbG9ja1R5cGUSFgoSQkxPQ0tfVFlQRV9VTktOT1dOEAASFQoRQkxPQ0tfVFlQRV9FWFRFTk'
    'QQARIVChFCTE9DS19UWVBFX1NISUVMRBACEhgKFEJMT0NLX1RZUEVfUEFTU19DT05EEAM=');

@$core.Deprecated('Use appliedLoadStatusDescriptor instead')
const AppliedLoadStatus$json = {
  '1': 'AppliedLoadStatus',
  '2': [
    {'1': 'APPLIED_LOAD_STATUS_UNKNOWN', '2': 0},
    {'1': 'APPLIED_LOAD_STATUS_ANY_STATE', '2': 1},
    {'1': 'APPLIED_LOAD_STATUS_EMPTY_LOAD', '2': 2},
    {'1': 'APPLIED_LOAD_STATUS_LOAD', '2': 3},
  ],
};

/// Descriptor for `AppliedLoadStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List appliedLoadStatusDescriptor = $convert.base64Decode(
    'ChFBcHBsaWVkTG9hZFN0YXR1cxIfChtBUFBMSUVEX0xPQURfU1RBVFVTX1VOS05PV04QABIhCh'
    '1BUFBMSUVEX0xPQURfU1RBVFVTX0FOWV9TVEFURRABEiIKHkFQUExJRURfTE9BRF9TVEFUVVNf'
    'RU1QVFlfTE9BRBACEhwKGEFQUExJRURfTE9BRF9TVEFUVVNfTE9BRBAD');

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
    {'1': 'z', '3': 3, '4': 1, '5': 1, '9': 0, '10': 'z', '17': true},
  ],
  '8': [
    {'1': '_z'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXkSEQoBehgDIAEoAUgAUgF6iAEBQg'
    'QKAl96');

@$core.Deprecated('Use routeStationPropertiesDescriptor instead')
const RouteStationProperties$json = {
  '1': 'RouteStationProperties',
  '2': [
    {
      '1': 'rcsPrivate',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.RcsPrivate',
      '10': 'rcsPrivate'
    },
    {
      '1': 'goodsSlotOrientation',
      '3': 2,
      '4': 3,
      '5': 5,
      '10': 'goodsSlotOrientation'
    },
    {
      '1': 'goodsSlotLayerHeight',
      '3': 3,
      '4': 3,
      '5': 5,
      '10': 'goodsSlotLayerHeight'
    },
    {'1': 'goodsSlotId', '3': 4, '4': 3, '5': 3, '10': 'goodsSlotId'},
  ],
};

/// Descriptor for `RouteStationProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeStationPropertiesDescriptor = $convert.base64Decode(
    'ChZSb3V0ZVN0YXRpb25Qcm9wZXJ0aWVzEjcKCnJjc1ByaXZhdGUYASABKAsyFy5nYWxheGlzLm'
    '1hcC5SY3NQcml2YXRlUgpyY3NQcml2YXRlEjIKFGdvb2RzU2xvdE9yaWVudGF0aW9uGAIgAygF'
    'UhRnb29kc1Nsb3RPcmllbnRhdGlvbhIyChRnb29kc1Nsb3RMYXllckhlaWdodBgDIAMoBVIUZ2'
    '9vZHNTbG90TGF5ZXJIZWlnaHQSIAoLZ29vZHNTbG90SWQYBCADKANSC2dvb2RzU2xvdElk');

@$core.Deprecated('Use storageSpacePropertiesDescriptor instead')
const StorageSpaceProperties$json = {
  '1': 'StorageSpaceProperties',
  '2': [
    {'1': 'goodsSlotIds', '3': 1, '4': 3, '5': 3, '10': 'goodsSlotIds'},
    {
      '1': 'associatedContainerTypes',
      '3': 2,
      '4': 3,
      '5': 1,
      '10': 'associatedContainerTypes'
    },
    {
      '1': 'associatedGoodsSlotGroups',
      '3': 3,
      '4': 3,
      '5': 9,
      '10': 'associatedGoodsSlotGroups'
    },
  ],
};

/// Descriptor for `StorageSpaceProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageSpacePropertiesDescriptor = $convert.base64Decode(
    'ChZTdG9yYWdlU3BhY2VQcm9wZXJ0aWVzEiIKDGdvb2RzU2xvdElkcxgBIAMoA1IMZ29vZHNTbG'
    '90SWRzEjoKGGFzc29jaWF0ZWRDb250YWluZXJUeXBlcxgCIAMoAVIYYXNzb2NpYXRlZENvbnRh'
    'aW5lclR5cGVzEjwKGWFzc29jaWF0ZWRHb29kc1Nsb3RHcm91cHMYAyADKAlSGWFzc29jaWF0ZW'
    'RHb29kc1Nsb3RHcm91cHM=');

@$core.Deprecated('Use chargerStationPropertiesDescriptor instead')
const ChargerStationProperties$json = {
  '1': 'ChargerStationProperties',
  '2': [
    {
      '1': 'distanceToCharger',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'distanceToCharger'
    },
    {
      '1': 'chargerOrientation',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'chargerOrientation'
    },
    {'1': 'passableRobots', '3': 3, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'optionVehicle',
      '3': 4,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'optionVehicle',
      '17': true
    },
  ],
  '8': [
    {'1': '_optionVehicle'},
  ],
};

/// Descriptor for `ChargerStationProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargerStationPropertiesDescriptor = $convert.base64Decode(
    'ChhDaGFyZ2VyU3RhdGlvblByb3BlcnRpZXMSLAoRZGlzdGFuY2VUb0NoYXJnZXIYASABKANSEW'
    'Rpc3RhbmNlVG9DaGFyZ2VyEi4KEmNoYXJnZXJPcmllbnRhdGlvbhgCIAEoA1ISY2hhcmdlck9y'
    'aWVudGF0aW9uEiYKDnBhc3NhYmxlUm9ib3RzGAMgAygJUg5wYXNzYWJsZVJvYm90cxIpCg1vcH'
    'Rpb25WZWhpY2xlGAQgASgFSABSDW9wdGlvblZlaGljbGWIAQFCEAoOX29wdGlvblZlaGljbGU=');

@$core.Deprecated('Use dynamicStationPropertiesDescriptor instead')
const DynamicStationProperties$json = {
  '1': 'DynamicStationProperties',
  '2': [
    {'1': 'liftNo', '3': 1, '4': 1, '5': 3, '10': 'liftNo'},
    {
      '1': 'dynamicStationIds',
      '3': 2,
      '4': 3,
      '5': 3,
      '10': 'dynamicStationIds'
    },
  ],
};

/// Descriptor for `DynamicStationProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dynamicStationPropertiesDescriptor =
    $convert.base64Decode(
        'ChhEeW5hbWljU3RhdGlvblByb3BlcnRpZXMSFgoGbGlmdE5vGAEgASgDUgZsaWZ0Tm8SLAoRZH'
        'luYW1pY1N0YXRpb25JZHMYAiADKANSEWR5bmFtaWNTdGF0aW9uSWRz');

@$core.Deprecated('Use liftWaitStationPropertiesDescriptor instead')
const LiftWaitStationProperties$json = {
  '1': 'LiftWaitStationProperties',
  '2': [
    {'1': 'waitLiftId', '3': 1, '4': 1, '5': 3, '10': 'waitLiftId'},
    {'1': 'next_station_id', '3': 2, '4': 3, '5': 3, '10': 'nextStationId'},
    {'1': 'type', '3': 3, '4': 3, '5': 3, '10': 'type'},
    {'1': 'block_groups', '3': 4, '4': 3, '5': 9, '10': 'blockGroups'},
  ],
};

/// Descriptor for `LiftWaitStationProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List liftWaitStationPropertiesDescriptor = $convert.base64Decode(
    'ChlMaWZ0V2FpdFN0YXRpb25Qcm9wZXJ0aWVzEh4KCndhaXRMaWZ0SWQYASABKANSCndhaXRMaW'
    'Z0SWQSJgoPbmV4dF9zdGF0aW9uX2lkGAIgAygDUg1uZXh0U3RhdGlvbklkEhIKBHR5cGUYAyAD'
    'KANSBHR5cGUSIQoMYmxvY2tfZ3JvdXBzGAQgAygJUgtibG9ja0dyb3Vwcw==');

@$core.Deprecated('Use nodeSpecificPropertiesDescriptor instead')
const NodeSpecificProperties$json = {
  '1': 'NodeSpecificProperties',
  '2': [
    {
      '1': 'routeStationProperties',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.RouteStationProperties',
      '9': 0,
      '10': 'routeStationProperties'
    },
    {
      '1': 'storageSpaceProperties',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.StorageSpaceProperties',
      '9': 0,
      '10': 'storageSpaceProperties'
    },
    {
      '1': 'chargerStationProperties',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ChargerStationProperties',
      '9': 0,
      '10': 'chargerStationProperties'
    },
    {
      '1': 'dynamicStationProperties',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.DynamicStationProperties',
      '9': 0,
      '10': 'dynamicStationProperties'
    },
    {
      '1': 'liftWaitStationProperties',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.LiftWaitStationProperties',
      '9': 0,
      '10': 'liftWaitStationProperties'
    },
  ],
  '8': [
    {'1': 'nodeProperties'},
  ],
};

/// Descriptor for `NodeSpecificProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSpecificPropertiesDescriptor = $convert.base64Decode(
    'ChZOb2RlU3BlY2lmaWNQcm9wZXJ0aWVzEl0KFnJvdXRlU3RhdGlvblByb3BlcnRpZXMYAiABKA'
    'syIy5nYWxheGlzLm1hcC5Sb3V0ZVN0YXRpb25Qcm9wZXJ0aWVzSABSFnJvdXRlU3RhdGlvblBy'
    'b3BlcnRpZXMSXQoWc3RvcmFnZVNwYWNlUHJvcGVydGllcxgDIAEoCzIjLmdhbGF4aXMubWFwLl'
    'N0b3JhZ2VTcGFjZVByb3BlcnRpZXNIAFIWc3RvcmFnZVNwYWNlUHJvcGVydGllcxJjChhjaGFy'
    'Z2VyU3RhdGlvblByb3BlcnRpZXMYBCABKAsyJS5nYWxheGlzLm1hcC5DaGFyZ2VyU3RhdGlvbl'
    'Byb3BlcnRpZXNIAFIYY2hhcmdlclN0YXRpb25Qcm9wZXJ0aWVzEmMKGGR5bmFtaWNTdGF0aW9u'
    'UHJvcGVydGllcxgFIAEoCzIlLmdhbGF4aXMubWFwLkR5bmFtaWNTdGF0aW9uUHJvcGVydGllc0'
    'gAUhhkeW5hbWljU3RhdGlvblByb3BlcnRpZXMSZgoZbGlmdFdhaXRTdGF0aW9uUHJvcGVydGll'
    'cxgGIAEoCzImLmdhbGF4aXMubWFwLkxpZnRXYWl0U3RhdGlvblByb3BlcnRpZXNIAFIZbGlmdF'
    'dhaXRTdGF0aW9uUHJvcGVydGllc0IQCg5ub2RlUHJvcGVydGllcw==');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {
      '1': 'elementType',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ElementType',
      '9': 0,
      '10': 'elementType',
      '17': true
    },
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'markerType',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.MarkerType',
      '10': 'markerType'
    },
    {
      '1': 'location',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.Point',
      '9': 1,
      '10': 'location',
      '17': true
    },
    {
      '1': 'logicLocation',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.Point',
      '9': 2,
      '10': 'logicLocation',
      '17': true
    },
    {'1': 'zoneId', '3': 7, '4': 3, '5': 3, '10': 'zoneId'},
    {
      '1': 'properties',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodeSpecificProperties',
      '10': 'properties'
    },
    {
      '1': 'yardDistances',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.YardDistances',
      '10': 'yardDistances'
    },
    {
      '1': 'markerValue',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'markerValue',
      '17': true
    },
    {
      '1': 'nodeTypes',
      '3': 11,
      '4': 3,
      '5': 14,
      '6': '.galaxis.map.NodePropertyType',
      '10': 'nodeTypes'
    },
    {
      '1': 'velocity',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.RotateVelocity',
      '10': 'velocity'
    },
    {'1': 'passableRobots', '3': 13, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodeConstraintProperties',
      '10': 'constraints'
    },
    {
      '1': 'forkArmWithLoad',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ForkArmWithLoad',
      '9': 4,
      '10': 'forkArmWithLoad',
      '17': true
    },
    {
      '1': 'partnerNodeCode',
      '3': 16,
      '4': 1,
      '5': 9,
      '9': 5,
      '10': 'partnerNodeCode',
      '17': true
    },
    {
      '1': 'slamMapOrigin',
      '3': 17,
      '4': 1,
      '5': 8,
      '9': 6,
      '10': 'slamMapOrigin',
      '17': true
    },
    {
      '1': 'nodeArea',
      '3': 18,
      '4': 1,
      '5': 3,
      '9': 7,
      '10': 'nodeArea',
      '17': true
    },
  ],
  '8': [
    {'1': '_elementType'},
    {'1': '_location'},
    {'1': '_logicLocation'},
    {'1': '_markerValue'},
    {'1': '_forkArmWithLoad'},
    {'1': '_partnerNodeCode'},
    {'1': '_slamMapOrigin'},
    {'1': '_nodeArea'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEj8KC2VsZW1lbnRUeXBlGAEgASgOMhguZ2FsYXhpcy5tYXAuRWxlbWVudFR5cGVIAF'
    'ILZWxlbWVudFR5cGWIAQESDgoCaWQYAiABKANSAmlkEjcKCm1hcmtlclR5cGUYBCABKA4yFy5n'
    'YWxheGlzLm1hcC5NYXJrZXJUeXBlUgptYXJrZXJUeXBlEjMKCGxvY2F0aW9uGAUgASgLMhIuZ2'
    'FsYXhpcy5tYXAuUG9pbnRIAVIIbG9jYXRpb26IAQESPQoNbG9naWNMb2NhdGlvbhgGIAEoCzIS'
    'LmdhbGF4aXMubWFwLlBvaW50SAJSDWxvZ2ljTG9jYXRpb26IAQESFgoGem9uZUlkGAcgAygDUg'
    'Z6b25lSWQSQwoKcHJvcGVydGllcxgIIAMoCzIjLmdhbGF4aXMubWFwLk5vZGVTcGVjaWZpY1By'
    'b3BlcnRpZXNSCnByb3BlcnRpZXMSQAoNeWFyZERpc3RhbmNlcxgJIAMoCzIaLmdhbGF4aXMubW'
    'FwLllhcmREaXN0YW5jZXNSDXlhcmREaXN0YW5jZXMSJQoLbWFya2VyVmFsdWUYCiABKAlIA1IL'
    'bWFya2VyVmFsdWWIAQESOwoJbm9kZVR5cGVzGAsgAygOMh0uZ2FsYXhpcy5tYXAuTm9kZVByb3'
    'BlcnR5VHlwZVIJbm9kZVR5cGVzEjcKCHZlbG9jaXR5GAwgAygLMhsuZ2FsYXhpcy5tYXAuUm90'
    'YXRlVmVsb2NpdHlSCHZlbG9jaXR5EiYKDnBhc3NhYmxlUm9ib3RzGA0gAygJUg5wYXNzYWJsZV'
    'JvYm90cxJHCgtjb25zdHJhaW50cxgOIAMoCzIlLmdhbGF4aXMubWFwLk5vZGVDb25zdHJhaW50'
    'UHJvcGVydGllc1ILY29uc3RyYWludHMSSwoPZm9ya0FybVdpdGhMb2FkGA8gASgLMhwuZ2FsYX'
    'hpcy5tYXAuRm9ya0FybVdpdGhMb2FkSARSD2ZvcmtBcm1XaXRoTG9hZIgBARItCg9wYXJ0bmVy'
    'Tm9kZUNvZGUYECABKAlIBVIPcGFydG5lck5vZGVDb2RliAEBEikKDXNsYW1NYXBPcmlnaW4YES'
    'ABKAhIBlINc2xhbU1hcE9yaWdpbogBARIfCghub2RlQXJlYRgSIAEoA0gHUghub2RlQXJlYYgB'
    'AUIOCgxfZWxlbWVudFR5cGVCCwoJX2xvY2F0aW9uQhAKDl9sb2dpY0xvY2F0aW9uQg4KDF9tYX'
    'JrZXJWYWx1ZUISChBfZm9ya0FybVdpdGhMb2FkQhIKEF9wYXJ0bmVyTm9kZUNvZGVCEAoOX3Ns'
    'YW1NYXBPcmlnaW5CCwoJX25vZGVBcmVh');

@$core.Deprecated('Use forkArmWithLoadDescriptor instead')
const ForkArmWithLoad$json = {
  '1': 'ForkArmWithLoad',
  '2': [
    {
      '1': 'forkArmWithLoadExpectedHeight',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'forkArmWithLoadExpectedHeight'
    },
    {
      '1': 'forkArmWithLoadExpectedHeightMax',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'forkArmWithLoadExpectedHeightMax'
    },
    {
      '1': 'forkArmWithLoadExpectedHeightMin',
      '3': 3,
      '4': 1,
      '5': 3,
      '10': 'forkArmWithLoadExpectedHeightMin'
    },
  ],
};

/// Descriptor for `ForkArmWithLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forkArmWithLoadDescriptor = $convert.base64Decode(
    'Cg9Gb3JrQXJtV2l0aExvYWQSRAodZm9ya0FybVdpdGhMb2FkRXhwZWN0ZWRIZWlnaHQYASABKA'
    'NSHWZvcmtBcm1XaXRoTG9hZEV4cGVjdGVkSGVpZ2h0EkoKIGZvcmtBcm1XaXRoTG9hZEV4cGVj'
    'dGVkSGVpZ2h0TWF4GAIgASgDUiBmb3JrQXJtV2l0aExvYWRFeHBlY3RlZEhlaWdodE1heBJKCi'
    'Bmb3JrQXJtV2l0aExvYWRFeHBlY3RlZEhlaWdodE1pbhgDIAEoA1IgZm9ya0FybVdpdGhMb2Fk'
    'RXhwZWN0ZWRIZWlnaHRNaW4=');

@$core.Deprecated('Use nodeConstraintPropertiesDescriptor instead')
const NodeConstraintProperties$json = {
  '1': 'NodeConstraintProperties',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'cstType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ConstraintType',
      '10': 'cstType'
    },
    {
      '1': 'quadrant',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.galaxis.map.Quadrant',
      '10': 'quadrant'
    },
  ],
};

/// Descriptor for `NodeConstraintProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeConstraintPropertiesDescriptor = $convert.base64Decode(
    'ChhOb2RlQ29uc3RyYWludFByb3BlcnRpZXMSJgoOcGFzc2FibGVSb2JvdHMYASADKAlSDnBhc3'
    'NhYmxlUm9ib3RzEjUKB2NzdFR5cGUYAiABKA4yGy5nYWxheGlzLm1hcC5Db25zdHJhaW50VHlw'
    'ZVIHY3N0VHlwZRIxCghxdWFkcmFudBgDIAMoDjIVLmdhbGF4aXMubWFwLlF1YWRyYW50UghxdW'
    'FkcmFudA==');

@$core.Deprecated('Use rcsPrivateDescriptor instead')
const RcsPrivate$json = {
  '1': 'RcsPrivate',
  '2': [
    {'1': 'rackDirection', '3': 1, '4': 1, '5': 3, '10': 'rackDirection'},
    {'1': 'parkingDirection', '3': 2, '4': 1, '5': 3, '10': 'parkingDirection'},
    {'1': 'roadway', '3': 3, '4': 1, '5': 3, '10': 'roadway'},
    {'1': 'transNodeRobots', '3': 4, '4': 3, '5': 9, '10': 'transNodeRobots'},
    {
      '1': 'cellTypeRestRobots',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'cellTypeRestRobots'
    },
  ],
};

/// Descriptor for `RcsPrivate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rcsPrivateDescriptor = $convert.base64Decode(
    'CgpSY3NQcml2YXRlEiQKDXJhY2tEaXJlY3Rpb24YASABKANSDXJhY2tEaXJlY3Rpb24SKgoQcG'
    'Fya2luZ0RpcmVjdGlvbhgCIAEoA1IQcGFya2luZ0RpcmVjdGlvbhIYCgdyb2Fkd2F5GAMgASgD'
    'Ugdyb2Fkd2F5EigKD3RyYW5zTm9kZVJvYm90cxgEIAMoCVIPdHJhbnNOb2RlUm9ib3RzEi4KEm'
    'NlbGxUeXBlUmVzdFJvYm90cxgFIAMoCVISY2VsbFR5cGVSZXN0Um9ib3Rz');

@$core.Deprecated('Use yardDistancesDescriptor instead')
const YardDistances$json = {
  '1': 'YardDistances',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {'1': 'offset_x', '3': 2, '4': 1, '5': 1, '10': 'offsetX'},
    {'1': 'offset_y', '3': 3, '4': 1, '5': 1, '10': 'offsetY'},
  ],
};

/// Descriptor for `YardDistances`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yardDistancesDescriptor = $convert.base64Decode(
    'Cg1ZYXJkRGlzdGFuY2VzEiYKDnBhc3NhYmxlUm9ib3RzGAEgAygJUg5wYXNzYWJsZVJvYm90cx'
    'IZCghvZmZzZXRfeBgCIAEoAVIHb2Zmc2V0WBIZCghvZmZzZXRfeRgDIAEoAVIHb2Zmc2V0WQ==');

@$core.Deprecated('Use routeEdgePropertiesDescriptor instead')
const RouteEdgeProperties$json = {
  '1': 'RouteEdgeProperties',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'velocity',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.StraghtOnVelocity',
      '9': 0,
      '10': 'velocity',
      '17': true
    },
    {
      '1': 'endPoint1to2',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.WalkingType',
      '9': 1,
      '10': 'endPoint1to2',
      '17': true
    },
    {
      '1': 'endPoint2to1',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.WalkingType',
      '9': 2,
      '10': 'endPoint2to1',
      '17': true
    },
    {
      '1': 'withLoad',
      '3': 5,
      '4': 1,
      '5': 8,
      '9': 3,
      '10': 'withLoad',
      '17': true
    },
  ],
  '8': [
    {'1': '_velocity'},
    {'1': '_endPoint1to2'},
    {'1': '_endPoint2to1'},
    {'1': '_withLoad'},
  ],
};

/// Descriptor for `RouteEdgeProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeEdgePropertiesDescriptor = $convert.base64Decode(
    'ChNSb3V0ZUVkZ2VQcm9wZXJ0aWVzEiYKDnBhc3NhYmxlUm9ib3RzGAEgAygJUg5wYXNzYWJsZV'
    'JvYm90cxI/Cgh2ZWxvY2l0eRgCIAEoCzIeLmdhbGF4aXMubWFwLlN0cmFnaHRPblZlbG9jaXR5'
    'SABSCHZlbG9jaXR5iAEBEkEKDGVuZFBvaW50MXRvMhgDIAEoDjIYLmdhbGF4aXMubWFwLldhbG'
    'tpbmdUeXBlSAFSDGVuZFBvaW50MXRvMogBARJBCgxlbmRQb2ludDJ0bzEYBCABKA4yGC5nYWxh'
    'eGlzLm1hcC5XYWxraW5nVHlwZUgCUgxlbmRQb2ludDJ0bzGIAQESHwoId2l0aExvYWQYBSABKA'
    'hIA1IId2l0aExvYWSIAQFCCwoJX3ZlbG9jaXR5Qg8KDV9lbmRQb2ludDF0bzJCDwoNX2VuZFBv'
    'aW50MnRvMUILCglfd2l0aExvYWQ=');

@$core.Deprecated('Use edgeSpecificPropertiesDescriptor instead')
const EdgeSpecificProperties$json = {
  '1': 'EdgeSpecificProperties',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.EdgeType',
      '10': 'type'
    },
    {
      '1': 'routeEdgeProperties',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.RouteEdgeProperties',
      '10': 'routeEdgeProperties'
    },
  ],
};

/// Descriptor for `EdgeSpecificProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeSpecificPropertiesDescriptor = $convert.base64Decode(
    'ChZFZGdlU3BlY2lmaWNQcm9wZXJ0aWVzEikKBHR5cGUYASABKA4yFS5nYWxheGlzLm1hcC5FZG'
    'dlVHlwZVIEdHlwZRJSChNyb3V0ZUVkZ2VQcm9wZXJ0aWVzGAIgAygLMiAuZ2FsYXhpcy5tYXAu'
    'Um91dGVFZGdlUHJvcGVydGllc1ITcm91dGVFZGdlUHJvcGVydGllcw==');

@$core.Deprecated('Use edgeDescriptor instead')
const Edge$json = {
  '1': 'Edge',
  '2': [
    {
      '1': 'elementType',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ElementType',
      '10': 'elementType'
    },
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'zoneId', '3': 4, '4': 1, '5': 3, '10': 'zoneId'},
    {'1': 'endpoint1Id', '3': 6, '4': 1, '5': 3, '10': 'endpoint1Id'},
    {'1': 'endpoint2Id', '3': 7, '4': 1, '5': 3, '10': 'endpoint2Id'},
    {
      '1': 'properties',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.EdgeSpecificProperties',
      '10': 'properties'
    },
    {'1': 'length', '3': 9, '4': 1, '5': 1, '10': 'length'},
    {'1': 'rcsPrivate', '3': 10, '4': 1, '5': 9, '10': 'rcsPrivate'},
    {'1': 'standardEdge', '3': 11, '4': 1, '5': 8, '10': 'standardEdge'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodeConstraintProperties',
      '10': 'constraints'
    },
    {
      '1': 'allowPassage',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.AllowPassage',
      '9': 0,
      '10': 'allowPassage',
      '17': true
    },
    {
      '1': 'partnerEdgeCode',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'partnerEdgeCode',
      '17': true
    },
  ],
  '8': [
    {'1': '_allowPassage'},
    {'1': '_partnerEdgeCode'},
  ],
};

/// Descriptor for `Edge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeDescriptor = $convert.base64Decode(
    'CgRFZGdlEjoKC2VsZW1lbnRUeXBlGAEgASgOMhguZ2FsYXhpcy5tYXAuRWxlbWVudFR5cGVSC2'
    'VsZW1lbnRUeXBlEg4KAmlkGAIgASgDUgJpZBIWCgZ6b25lSWQYBCABKANSBnpvbmVJZBIgCgtl'
    'bmRwb2ludDFJZBgGIAEoA1ILZW5kcG9pbnQxSWQSIAoLZW5kcG9pbnQySWQYByABKANSC2VuZH'
    'BvaW50MklkEkMKCnByb3BlcnRpZXMYCCABKAsyIy5nYWxheGlzLm1hcC5FZGdlU3BlY2lmaWNQ'
    'cm9wZXJ0aWVzUgpwcm9wZXJ0aWVzEhYKBmxlbmd0aBgJIAEoAVIGbGVuZ3RoEh4KCnJjc1ByaX'
    'ZhdGUYCiABKAlSCnJjc1ByaXZhdGUSIgoMc3RhbmRhcmRFZGdlGAsgASgIUgxzdGFuZGFyZEVk'
    'Z2USRwoLY29uc3RyYWludHMYDCADKAsyJS5nYWxheGlzLm1hcC5Ob2RlQ29uc3RyYWludFByb3'
    'BlcnRpZXNSC2NvbnN0cmFpbnRzEkIKDGFsbG93UGFzc2FnZRgNIAEoCzIZLmdhbGF4aXMubWFw'
    'LkFsbG93UGFzc2FnZUgAUgxhbGxvd1Bhc3NhZ2WIAQESLQoPcGFydG5lckVkZ2VDb2RlGA4gAS'
    'gJSAFSD3BhcnRuZXJFZGdlQ29kZYgBAUIPCg1fYWxsb3dQYXNzYWdlQhIKEF9wYXJ0bmVyRWRn'
    'ZUNvZGU=');

@$core.Deprecated('Use goodsSlotGroupDescriptor instead')
const GoodsSlotGroup$json = {
  '1': 'GoodsSlotGroup',
  '2': [
    {'1': 'groupId', '3': 1, '4': 1, '5': 9, '10': 'groupId'},
    {
      '1': 'goodsSlotLocalIds',
      '3': 2,
      '4': 3,
      '5': 9,
      '10': 'goodsSlotLocalIds'
    },
  ],
};

/// Descriptor for `GoodsSlotGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsSlotGroupDescriptor = $convert.base64Decode(
    'Cg5Hb29kc1Nsb3RHcm91cBIYCgdncm91cElkGAEgASgJUgdncm91cElkEiwKEWdvb2RzU2xvdE'
    'xvY2FsSWRzGAIgAygJUhFnb29kc1Nsb3RMb2NhbElkcw==');

@$core.Deprecated('Use rackDescriptor instead')
const Rack$json = {
  '1': 'Rack',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 13, '10': 'type'},
    {'1': 'orientation', '3': 2, '4': 3, '5': 1, '10': 'orientation'},
    {'1': 'displayNumber', '3': 3, '4': 1, '5': 9, '10': 'displayNumber'},
    {'1': 'number', '3': 4, '4': 1, '5': 9, '10': 'number'},
    {'1': 'beamHeight', '3': 5, '4': 1, '5': 13, '10': 'beamHeight'},
    {'1': 'uprightWidth', '3': 6, '4': 1, '5': 13, '10': 'uprightWidth'},
    {
      '1': 'topLayerClearance',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'topLayerClearance'
    },
    {
      '1': 'distanceToStation',
      '3': 8,
      '4': 1,
      '5': 13,
      '10': 'distanceToStation'
    },
    {
      '1': 'positioningMarker',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'positioningMarker',
      '17': true
    },
    {
      '1': 'goodsSlotFeatureType',
      '3': 10,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.FeatureType',
      '10': 'goodsSlotFeatureType'
    },
    {
      '1': 'goodsSlotFeatureHeight',
      '3': 11,
      '4': 1,
      '5': 17,
      '10': 'goodsSlotFeatureHeight'
    },
    {
      '1': 'goodsPlacementOffset',
      '3': 12,
      '4': 1,
      '5': 5,
      '10': 'goodsPlacementOffset'
    },
    {'1': 'mobile', '3': 13, '4': 1, '5': 8, '10': 'mobile'},
    {'1': 'layersHeight', '3': 14, '4': 3, '5': 13, '10': 'layersHeight'},
    {'1': 'dockingOffsets', '3': 15, '4': 3, '5': 13, '10': 'dockingOffsets'},
    {
      '1': 'horizontalGoodsSlotGroups',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlotGroup',
      '10': 'horizontalGoodsSlotGroups'
    },
    {
      '1': 'verticalGoodsSlotGroups',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlotGroup',
      '10': 'verticalGoodsSlotGroups'
    },
    {'1': 'id', '3': 18, '4': 1, '5': 3, '10': 'id'},
    {'1': 'toolingDataId', '3': 19, '4': 1, '5': 3, '10': 'toolingDataId'},
    {
      '1': 'boxMarkerOffsetToBottom',
      '3': 20,
      '4': 1,
      '5': 13,
      '10': 'boxMarkerOffsetToBottom'
    },
  ],
  '8': [
    {'1': '_positioningMarker'},
  ],
};

/// Descriptor for `Rack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rackDescriptor = $convert.base64Decode(
    'CgRSYWNrEhIKBHR5cGUYASABKA1SBHR5cGUSIAoLb3JpZW50YXRpb24YAiADKAFSC29yaWVudG'
    'F0aW9uEiQKDWRpc3BsYXlOdW1iZXIYAyABKAlSDWRpc3BsYXlOdW1iZXISFgoGbnVtYmVyGAQg'
    'ASgJUgZudW1iZXISHgoKYmVhbUhlaWdodBgFIAEoDVIKYmVhbUhlaWdodBIiCgx1cHJpZ2h0V2'
    'lkdGgYBiABKA1SDHVwcmlnaHRXaWR0aBIsChF0b3BMYXllckNsZWFyYW5jZRgHIAEoDVIRdG9w'
    'TGF5ZXJDbGVhcmFuY2USLAoRZGlzdGFuY2VUb1N0YXRpb24YCCABKA1SEWRpc3RhbmNlVG9TdG'
    'F0aW9uEjEKEXBvc2l0aW9uaW5nTWFya2VyGAkgASgJSABSEXBvc2l0aW9uaW5nTWFya2VyiAEB'
    'EkwKFGdvb2RzU2xvdEZlYXR1cmVUeXBlGAogASgOMhguZ2FsYXhpcy5tYXAuRmVhdHVyZVR5cG'
    'VSFGdvb2RzU2xvdEZlYXR1cmVUeXBlEjYKFmdvb2RzU2xvdEZlYXR1cmVIZWlnaHQYCyABKBFS'
    'Fmdvb2RzU2xvdEZlYXR1cmVIZWlnaHQSMgoUZ29vZHNQbGFjZW1lbnRPZmZzZXQYDCABKAVSFG'
    'dvb2RzUGxhY2VtZW50T2Zmc2V0EhYKBm1vYmlsZRgNIAEoCFIGbW9iaWxlEiIKDGxheWVyc0hl'
    'aWdodBgOIAMoDVIMbGF5ZXJzSGVpZ2h0EiYKDmRvY2tpbmdPZmZzZXRzGA8gAygNUg5kb2NraW'
    '5nT2Zmc2V0cxJZChlob3Jpem9udGFsR29vZHNTbG90R3JvdXBzGBAgAygLMhsuZ2FsYXhpcy5t'
    'YXAuR29vZHNTbG90R3JvdXBSGWhvcml6b250YWxHb29kc1Nsb3RHcm91cHMSVQoXdmVydGljYW'
    'xHb29kc1Nsb3RHcm91cHMYESADKAsyGy5nYWxheGlzLm1hcC5Hb29kc1Nsb3RHcm91cFIXdmVy'
    'dGljYWxHb29kc1Nsb3RHcm91cHMSDgoCaWQYEiABKANSAmlkEiQKDXRvb2xpbmdEYXRhSWQYEy'
    'ABKANSDXRvb2xpbmdEYXRhSWQSOAoXYm94TWFya2VyT2Zmc2V0VG9Cb3R0b20YFCABKA1SF2Jv'
    'eE1hcmtlck9mZnNldFRvQm90dG9tQhQKEl9wb3NpdGlvbmluZ01hcmtlcg==');

@$core.Deprecated('Use toolingDataDescriptor instead')
const ToolingData$json = {
  '1': 'ToolingData',
  '2': [
    {
      '1': 'categoryId',
      '3': 1,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'categoryId',
      '17': true
    },
    {
      '1': 'uprightWidth',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'uprightWidth',
      '17': true
    },
    {'1': 'width', '3': 3, '4': 1, '5': 13, '9': 2, '10': 'width', '17': true},
    {
      '1': 'length',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'length',
      '17': true
    },
    {
      '1': 'categoryName',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 4,
      '10': 'categoryName',
      '17': true
    },
    {
      '1': 'topLayerClearance',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 5,
      '10': 'topLayerClearance',
      '17': true
    },
    {'1': 'name', '3': 7, '4': 1, '5': 9, '9': 6, '10': 'name', '17': true},
    {'1': 'id', '3': 8, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'layersHeight',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.LayersHeight',
      '10': 'layersHeight'
    },
    {
      '1': 'positioningMarker',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 7,
      '10': 'positioningMarker',
      '17': true
    },
    {
      '1': 'distanceToStation',
      '3': 11,
      '4': 1,
      '5': 13,
      '9': 8,
      '10': 'distanceToStation',
      '17': true
    },
    {'1': 'mobile', '3': 12, '4': 1, '5': 8, '10': 'mobile'},
    {
      '1': 'goodsStackId',
      '3': 13,
      '4': 1,
      '5': 3,
      '9': 9,
      '10': 'goodsStackId',
      '17': true
    },
    {'1': 'stacking', '3': 14, '4': 1, '5': 8, '10': 'stacking'},
    {'1': 'slideChute', '3': 15, '4': 1, '5': 8, '10': 'slideChute'},
    {
      '1': 'goodsSlotFeatureHeight',
      '3': 16,
      '4': 1,
      '5': 17,
      '9': 10,
      '10': 'goodsSlotFeatureHeight',
      '17': true
    },
    {
      '1': 'boxMarkerOffsetToBottom',
      '3': 17,
      '4': 1,
      '5': 13,
      '9': 11,
      '10': 'boxMarkerOffsetToBottom',
      '17': true
    },
    {
      '1': 'goodsSlotTelescopicDistanceToDetectFeature',
      '3': 18,
      '4': 1,
      '5': 13,
      '9': 12,
      '10': 'goodsSlotTelescopicDistanceToDetectFeature',
      '17': true
    },
    {
      '1': 'heightOverGoodsSlotWhenPut',
      '3': 19,
      '4': 1,
      '5': 13,
      '9': 13,
      '10': 'heightOverGoodsSlotWhenPut',
      '17': true
    },
    {
      '1': 'heightOverGoodsSlotWhenGet',
      '3': 20,
      '4': 1,
      '5': 13,
      '9': 14,
      '10': 'heightOverGoodsSlotWhenGet',
      '17': true
    },
    {
      '1': 'heightGapBetweenForkAndGoodsWhenGet',
      '3': 21,
      '4': 1,
      '5': 13,
      '9': 15,
      '10': 'heightGapBetweenForkAndGoodsWhenGet',
      '17': true
    },
    {
      '1': 'heightGapBetweenForkAndGoodsWhenPut',
      '3': 22,
      '4': 1,
      '5': 13,
      '9': 16,
      '10': 'heightGapBetweenForkAndGoodsWhenPut',
      '17': true
    },
    {
      '1': 'goodsSlotPillarHeight',
      '3': 23,
      '4': 1,
      '5': 13,
      '9': 17,
      '10': 'goodsSlotPillarHeight',
      '17': true
    },
    {
      '1': 'goodsSlotStatusCheckHeight',
      '3': 24,
      '4': 1,
      '5': 13,
      '9': 18,
      '10': 'goodsSlotStatusCheckHeight',
      '17': true
    },
    {
      '1': 'rackLegSideOffset',
      '3': 25,
      '4': 1,
      '5': 13,
      '9': 19,
      '10': 'rackLegSideOffset',
      '17': true
    },
    {
      '1': 'rackLegFrontOffset',
      '3': 26,
      '4': 1,
      '5': 13,
      '9': 20,
      '10': 'rackLegFrontOffset',
      '17': true
    },
    {
      '1': 'goodsAllocationNum',
      '3': 27,
      '4': 1,
      '5': 13,
      '9': 21,
      '10': 'goodsAllocationNum',
      '17': true
    },
    {
      '1': 'beamHeight',
      '3': 28,
      '4': 1,
      '5': 13,
      '9': 22,
      '10': 'beamHeight',
      '17': true
    },
    {
      '1': 'goodsSlotFeatureType',
      '3': 29,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.FeatureType',
      '10': 'goodsSlotFeatureType'
    },
    {
      '1': 'goodsAlloc',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.GoodsAllocation',
      '9': 23,
      '10': 'goodsAlloc',
      '17': true
    },
    {
      '1': 'verticalGoodsSlotGroups',
      '3': 31,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlotGroup',
      '10': 'verticalGoodsSlotGroups'
    },
    {
      '1': 'horizontalGoodsSlotGroups',
      '3': 32,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlotGroup',
      '10': 'horizontalGoodsSlotGroups'
    },
  ],
  '8': [
    {'1': '_categoryId'},
    {'1': '_uprightWidth'},
    {'1': '_width'},
    {'1': '_length'},
    {'1': '_categoryName'},
    {'1': '_topLayerClearance'},
    {'1': '_name'},
    {'1': '_positioningMarker'},
    {'1': '_distanceToStation'},
    {'1': '_goodsStackId'},
    {'1': '_goodsSlotFeatureHeight'},
    {'1': '_boxMarkerOffsetToBottom'},
    {'1': '_goodsSlotTelescopicDistanceToDetectFeature'},
    {'1': '_heightOverGoodsSlotWhenPut'},
    {'1': '_heightOverGoodsSlotWhenGet'},
    {'1': '_heightGapBetweenForkAndGoodsWhenGet'},
    {'1': '_heightGapBetweenForkAndGoodsWhenPut'},
    {'1': '_goodsSlotPillarHeight'},
    {'1': '_goodsSlotStatusCheckHeight'},
    {'1': '_rackLegSideOffset'},
    {'1': '_rackLegFrontOffset'},
    {'1': '_goodsAllocationNum'},
    {'1': '_beamHeight'},
    {'1': '_goodsAlloc'},
  ],
};

/// Descriptor for `ToolingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List toolingDataDescriptor = $convert.base64Decode(
    'CgtUb29saW5nRGF0YRIjCgpjYXRlZ29yeUlkGAEgASgDSABSCmNhdGVnb3J5SWSIAQESJwoMdX'
    'ByaWdodFdpZHRoGAIgASgNSAFSDHVwcmlnaHRXaWR0aIgBARIZCgV3aWR0aBgDIAEoDUgCUgV3'
    'aWR0aIgBARIbCgZsZW5ndGgYBCABKA1IA1IGbGVuZ3RoiAEBEicKDGNhdGVnb3J5TmFtZRgFIA'
    'EoCUgEUgxjYXRlZ29yeU5hbWWIAQESMQoRdG9wTGF5ZXJDbGVhcmFuY2UYBiABKA1IBVIRdG9w'
    'TGF5ZXJDbGVhcmFuY2WIAQESFwoEbmFtZRgHIAEoCUgGUgRuYW1liAEBEg4KAmlkGAggASgDUg'
    'JpZBI9CgxsYXllcnNIZWlnaHQYCSADKAsyGS5nYWxheGlzLm1hcC5MYXllcnNIZWlnaHRSDGxh'
    'eWVyc0hlaWdodBIxChFwb3NpdGlvbmluZ01hcmtlchgKIAEoCUgHUhFwb3NpdGlvbmluZ01hcm'
    'tlcogBARIxChFkaXN0YW5jZVRvU3RhdGlvbhgLIAEoDUgIUhFkaXN0YW5jZVRvU3RhdGlvbogB'
    'ARIWCgZtb2JpbGUYDCABKAhSBm1vYmlsZRInCgxnb29kc1N0YWNrSWQYDSABKANICVIMZ29vZH'
    'NTdGFja0lkiAEBEhoKCHN0YWNraW5nGA4gASgIUghzdGFja2luZxIeCgpzbGlkZUNodXRlGA8g'
    'ASgIUgpzbGlkZUNodXRlEjsKFmdvb2RzU2xvdEZlYXR1cmVIZWlnaHQYECABKBFIClIWZ29vZH'
    'NTbG90RmVhdHVyZUhlaWdodIgBARI9Chdib3hNYXJrZXJPZmZzZXRUb0JvdHRvbRgRIAEoDUgL'
    'Uhdib3hNYXJrZXJPZmZzZXRUb0JvdHRvbYgBARJjCipnb29kc1Nsb3RUZWxlc2NvcGljRGlzdG'
    'FuY2VUb0RldGVjdEZlYXR1cmUYEiABKA1IDFIqZ29vZHNTbG90VGVsZXNjb3BpY0Rpc3RhbmNl'
    'VG9EZXRlY3RGZWF0dXJliAEBEkMKGmhlaWdodE92ZXJHb29kc1Nsb3RXaGVuUHV0GBMgASgNSA'
    '1SGmhlaWdodE92ZXJHb29kc1Nsb3RXaGVuUHV0iAEBEkMKGmhlaWdodE92ZXJHb29kc1Nsb3RX'
    'aGVuR2V0GBQgASgNSA5SGmhlaWdodE92ZXJHb29kc1Nsb3RXaGVuR2V0iAEBElUKI2hlaWdodE'
    'dhcEJldHdlZW5Gb3JrQW5kR29vZHNXaGVuR2V0GBUgASgNSA9SI2hlaWdodEdhcEJldHdlZW5G'
    'b3JrQW5kR29vZHNXaGVuR2V0iAEBElUKI2hlaWdodEdhcEJldHdlZW5Gb3JrQW5kR29vZHNXaG'
    'VuUHV0GBYgASgNSBBSI2hlaWdodEdhcEJldHdlZW5Gb3JrQW5kR29vZHNXaGVuUHV0iAEBEjkK'
    'FWdvb2RzU2xvdFBpbGxhckhlaWdodBgXIAEoDUgRUhVnb29kc1Nsb3RQaWxsYXJIZWlnaHSIAQ'
    'ESQwoaZ29vZHNTbG90U3RhdHVzQ2hlY2tIZWlnaHQYGCABKA1IElIaZ29vZHNTbG90U3RhdHVz'
    'Q2hlY2tIZWlnaHSIAQESMQoRcmFja0xlZ1NpZGVPZmZzZXQYGSABKA1IE1IRcmFja0xlZ1NpZG'
    'VPZmZzZXSIAQESMwoScmFja0xlZ0Zyb250T2Zmc2V0GBogASgNSBRSEnJhY2tMZWdGcm9udE9m'
    'ZnNldIgBARIzChJnb29kc0FsbG9jYXRpb25OdW0YGyABKA1IFVISZ29vZHNBbGxvY2F0aW9uTn'
    'VtiAEBEiMKCmJlYW1IZWlnaHQYHCABKA1IFlIKYmVhbUhlaWdodIgBARJMChRnb29kc1Nsb3RG'
    'ZWF0dXJlVHlwZRgdIAEoDjIYLmdhbGF4aXMubWFwLkZlYXR1cmVUeXBlUhRnb29kc1Nsb3RGZW'
    'F0dXJlVHlwZRJBCgpnb29kc0FsbG9jGB4gASgLMhwuZ2FsYXhpcy5tYXAuR29vZHNBbGxvY2F0'
    'aW9uSBdSCmdvb2RzQWxsb2OIAQESVQoXdmVydGljYWxHb29kc1Nsb3RHcm91cHMYHyADKAsyGy'
    '5nYWxheGlzLm1hcC5Hb29kc1Nsb3RHcm91cFIXdmVydGljYWxHb29kc1Nsb3RHcm91cHMSWQoZ'
    'aG9yaXpvbnRhbEdvb2RzU2xvdEdyb3VwcxggIAMoCzIbLmdhbGF4aXMubWFwLkdvb2RzU2xvdE'
    'dyb3VwUhlob3Jpem9udGFsR29vZHNTbG90R3JvdXBzQg0KC19jYXRlZ29yeUlkQg8KDV91cHJp'
    'Z2h0V2lkdGhCCAoGX3dpZHRoQgkKB19sZW5ndGhCDwoNX2NhdGVnb3J5TmFtZUIUChJfdG9wTG'
    'F5ZXJDbGVhcmFuY2VCBwoFX25hbWVCFAoSX3Bvc2l0aW9uaW5nTWFya2VyQhQKEl9kaXN0YW5j'
    'ZVRvU3RhdGlvbkIPCg1fZ29vZHNTdGFja0lkQhkKF19nb29kc1Nsb3RGZWF0dXJlSGVpZ2h0Qh'
    'oKGF9ib3hNYXJrZXJPZmZzZXRUb0JvdHRvbUItCitfZ29vZHNTbG90VGVsZXNjb3BpY0Rpc3Rh'
    'bmNlVG9EZXRlY3RGZWF0dXJlQh0KG19oZWlnaHRPdmVyR29vZHNTbG90V2hlblB1dEIdChtfaG'
    'VpZ2h0T3Zlckdvb2RzU2xvdFdoZW5HZXRCJgokX2hlaWdodEdhcEJldHdlZW5Gb3JrQW5kR29v'
    'ZHNXaGVuR2V0QiYKJF9oZWlnaHRHYXBCZXR3ZWVuRm9ya0FuZEdvb2RzV2hlblB1dEIYChZfZ2'
    '9vZHNTbG90UGlsbGFySGVpZ2h0Qh0KG19nb29kc1Nsb3RTdGF0dXNDaGVja0hlaWdodEIUChJf'
    'cmFja0xlZ1NpZGVPZmZzZXRCFQoTX3JhY2tMZWdGcm9udE9mZnNldEIVChNfZ29vZHNBbGxvY2'
    'F0aW9uTnVtQg0KC19iZWFtSGVpZ2h0Qg0KC19nb29kc0FsbG9j');

@$core.Deprecated('Use goodsSlotDescriptor instead')
const GoodsSlot$json = {
  '1': 'GoodsSlot',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'horizontalGroupId',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'horizontalGroupId',
      '17': true
    },
    {
      '1': 'verticalGroupId',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'verticalGroupId',
      '17': true
    },
    {
      '1': 'localNumber',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'localNumber',
      '17': true
    },
    {
      '1': 'displayNumber',
      '3': 6,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'displayNumber',
      '17': true
    },
    {'1': 'orientation', '3': 7, '4': 3, '5': 1, '10': 'orientation'},
    {
      '1': 'goodsSlotFeatureType',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.FeatureType',
      '10': 'goodsSlotFeatureType'
    },
    {
      '1': 'beamHeight',
      '3': 9,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'beamHeight',
      '17': true
    },
    {'1': 'layerHeight', '3': 10, '4': 1, '5': 5, '10': 'layerHeight'},
    {
      '1': 'clearance',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 5,
      '10': 'clearance',
      '17': true
    },
    {'1': 'width', '3': 12, '4': 1, '5': 5, '9': 6, '10': 'width', '17': true},
    {
      '1': 'distanceToStation',
      '3': 13,
      '4': 1,
      '5': 5,
      '10': 'distanceToStation'
    },
    {
      '1': 'goodsPlacementOffset',
      '3': 14,
      '4': 1,
      '5': 5,
      '9': 7,
      '10': 'goodsPlacementOffset',
      '17': true
    },
    {
      '1': 'gaps',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Gap',
      '10': 'gaps'
    },
    {
      '1': 'goodsStackId',
      '3': 16,
      '4': 1,
      '5': 3,
      '9': 8,
      '10': 'goodsStackId',
      '17': true
    },
    {
      '1': 'goodsSlotFeatureHeight',
      '3': 17,
      '4': 1,
      '5': 5,
      '9': 9,
      '10': 'goodsSlotFeatureHeight',
      '17': true
    },
    {
      '1': 'linkId',
      '3': 18,
      '4': 1,
      '5': 3,
      '9': 10,
      '10': 'linkId',
      '17': true
    },
    {
      '1': 'toolId',
      '3': 19,
      '4': 1,
      '5': 3,
      '9': 11,
      '10': 'toolId',
      '17': true
    },
    {
      '1': 'slideChute',
      '3': 20,
      '4': 1,
      '5': 8,
      '9': 12,
      '10': 'slideChute',
      '17': true
    },
    {
      '1': 'heightOverGoodsSlotWhenPut',
      '3': 21,
      '4': 1,
      '5': 5,
      '9': 13,
      '10': 'heightOverGoodsSlotWhenPut',
      '17': true
    },
    {
      '1': 'heightOverGoodsSlotWhenGet',
      '3': 22,
      '4': 1,
      '5': 5,
      '9': 14,
      '10': 'heightOverGoodsSlotWhenGet',
      '17': true
    },
    {
      '1': 'heightGapBetweenForkAndGoodsWhenGet',
      '3': 23,
      '4': 1,
      '5': 5,
      '9': 15,
      '10': 'heightGapBetweenForkAndGoodsWhenGet',
      '17': true
    },
    {
      '1': 'heightGapBetweenForkAndGoodsWhenPut',
      '3': 24,
      '4': 1,
      '5': 5,
      '9': 16,
      '10': 'heightGapBetweenForkAndGoodsWhenPut',
      '17': true
    },
    {
      '1': 'goodsSlotPillarHeight',
      '3': 25,
      '4': 1,
      '5': 5,
      '9': 17,
      '10': 'goodsSlotPillarHeight',
      '17': true
    },
    {
      '1': 'goodsSlotTelescopicDistanceToDetectFeature',
      '3': 26,
      '4': 1,
      '5': 5,
      '9': 18,
      '10': 'goodsSlotTelescopicDistanceToDetectFeature',
      '17': true
    },
    {
      '1': 'boxMarkerOffsetToBottom',
      '3': 27,
      '4': 1,
      '5': 5,
      '9': 19,
      '10': 'boxMarkerOffsetToBottom',
      '17': true
    },
    {
      '1': 'rackOrientation',
      '3': 28,
      '4': 1,
      '5': 5,
      '9': 20,
      '10': 'rackOrientation',
      '17': true
    },
    {
      '1': 'goodsSlotStatusCheckHeight',
      '3': 29,
      '4': 1,
      '5': 5,
      '9': 21,
      '10': 'goodsSlotStatusCheckHeight',
      '17': true
    },
    {
      '1': 'goodsSlotOffset',
      '3': 30,
      '4': 1,
      '5': 5,
      '9': 22,
      '10': 'goodsSlotOffset',
      '17': true
    },
    {
      '1': 'goodsSlotAdjustGoodsModeWhenPut',
      '3': 31,
      '4': 1,
      '5': 5,
      '9': 23,
      '10': 'goodsSlotAdjustGoodsModeWhenPut',
      '17': true
    },
    {
      '1': 'goodsSlotAdjustGoodsModeWhenGet',
      '3': 32,
      '4': 1,
      '5': 5,
      '9': 24,
      '10': 'goodsSlotAdjustGoodsModeWhenGet',
      '17': true
    },
    {
      '1': 'goodsSlotForkGoodsClearance',
      '3': 33,
      '4': 1,
      '5': 5,
      '9': 25,
      '10': 'goodsSlotForkGoodsClearance',
      '17': true
    },
    {
      '1': 'goodsSlotWaitTimeForExternalSlotEmpty',
      '3': 34,
      '4': 1,
      '5': 5,
      '9': 26,
      '10': 'goodsSlotWaitTimeForExternalSlotEmpty',
      '17': true
    },
    {
      '1': 'rackTypeId',
      '3': 35,
      '4': 1,
      '5': 3,
      '9': 27,
      '10': 'rackTypeId',
      '17': true
    },
    {
      '1': 'length',
      '3': 36,
      '4': 1,
      '5': 5,
      '9': 28,
      '10': 'length',
      '17': true
    },
    {
      '1': 'goodsAllocationNum',
      '3': 37,
      '4': 1,
      '5': 5,
      '9': 29,
      '10': 'goodsAllocationNum',
      '17': true
    },
    {
      '1': 'goodsAllocationWidth',
      '3': 38,
      '4': 1,
      '5': 5,
      '9': 30,
      '10': 'goodsAllocationWidth',
      '17': true
    },
  ],
  '8': [
    {'1': '_horizontalGroupId'},
    {'1': '_verticalGroupId'},
    {'1': '_localNumber'},
    {'1': '_displayNumber'},
    {'1': '_beamHeight'},
    {'1': '_clearance'},
    {'1': '_width'},
    {'1': '_goodsPlacementOffset'},
    {'1': '_goodsStackId'},
    {'1': '_goodsSlotFeatureHeight'},
    {'1': '_linkId'},
    {'1': '_toolId'},
    {'1': '_slideChute'},
    {'1': '_heightOverGoodsSlotWhenPut'},
    {'1': '_heightOverGoodsSlotWhenGet'},
    {'1': '_heightGapBetweenForkAndGoodsWhenGet'},
    {'1': '_heightGapBetweenForkAndGoodsWhenPut'},
    {'1': '_goodsSlotPillarHeight'},
    {'1': '_goodsSlotTelescopicDistanceToDetectFeature'},
    {'1': '_boxMarkerOffsetToBottom'},
    {'1': '_rackOrientation'},
    {'1': '_goodsSlotStatusCheckHeight'},
    {'1': '_goodsSlotOffset'},
    {'1': '_goodsSlotAdjustGoodsModeWhenPut'},
    {'1': '_goodsSlotAdjustGoodsModeWhenGet'},
    {'1': '_goodsSlotForkGoodsClearance'},
    {'1': '_goodsSlotWaitTimeForExternalSlotEmpty'},
    {'1': '_rackTypeId'},
    {'1': '_length'},
    {'1': '_goodsAllocationNum'},
    {'1': '_goodsAllocationWidth'},
  ],
};

/// Descriptor for `GoodsSlot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsSlotDescriptor = $convert.base64Decode(
    'CglHb29kc1Nsb3QSDgoCaWQYASABKANSAmlkEjEKEWhvcml6b250YWxHcm91cElkGAMgASgJSA'
    'BSEWhvcml6b250YWxHcm91cElkiAEBEi0KD3ZlcnRpY2FsR3JvdXBJZBgEIAEoCUgBUg92ZXJ0'
    'aWNhbEdyb3VwSWSIAQESJQoLbG9jYWxOdW1iZXIYBSABKAlIAlILbG9jYWxOdW1iZXKIAQESKQ'
    'oNZGlzcGxheU51bWJlchgGIAEoCUgDUg1kaXNwbGF5TnVtYmVyiAEBEiAKC29yaWVudGF0aW9u'
    'GAcgAygBUgtvcmllbnRhdGlvbhJMChRnb29kc1Nsb3RGZWF0dXJlVHlwZRgIIAEoDjIYLmdhbG'
    'F4aXMubWFwLkZlYXR1cmVUeXBlUhRnb29kc1Nsb3RGZWF0dXJlVHlwZRIjCgpiZWFtSGVpZ2h0'
    'GAkgASgFSARSCmJlYW1IZWlnaHSIAQESIAoLbGF5ZXJIZWlnaHQYCiABKAVSC2xheWVySGVpZ2'
    'h0EiEKCWNsZWFyYW5jZRgLIAEoBUgFUgljbGVhcmFuY2WIAQESGQoFd2lkdGgYDCABKAVIBlIF'
    'd2lkdGiIAQESLAoRZGlzdGFuY2VUb1N0YXRpb24YDSABKAVSEWRpc3RhbmNlVG9TdGF0aW9uEj'
    'cKFGdvb2RzUGxhY2VtZW50T2Zmc2V0GA4gASgFSAdSFGdvb2RzUGxhY2VtZW50T2Zmc2V0iAEB'
    'EiQKBGdhcHMYDyADKAsyEC5nYWxheGlzLm1hcC5HYXBSBGdhcHMSJwoMZ29vZHNTdGFja0lkGB'
    'AgASgDSAhSDGdvb2RzU3RhY2tJZIgBARI7ChZnb29kc1Nsb3RGZWF0dXJlSGVpZ2h0GBEgASgF'
    'SAlSFmdvb2RzU2xvdEZlYXR1cmVIZWlnaHSIAQESGwoGbGlua0lkGBIgASgDSApSBmxpbmtJZI'
    'gBARIbCgZ0b29sSWQYEyABKANIC1IGdG9vbElkiAEBEiMKCnNsaWRlQ2h1dGUYFCABKAhIDFIK'
    'c2xpZGVDaHV0ZYgBARJDChpoZWlnaHRPdmVyR29vZHNTbG90V2hlblB1dBgVIAEoBUgNUhpoZW'
    'lnaHRPdmVyR29vZHNTbG90V2hlblB1dIgBARJDChpoZWlnaHRPdmVyR29vZHNTbG90V2hlbkdl'
    'dBgWIAEoBUgOUhpoZWlnaHRPdmVyR29vZHNTbG90V2hlbkdldIgBARJVCiNoZWlnaHRHYXBCZX'
    'R3ZWVuRm9ya0FuZEdvb2RzV2hlbkdldBgXIAEoBUgPUiNoZWlnaHRHYXBCZXR3ZWVuRm9ya0Fu'
    'ZEdvb2RzV2hlbkdldIgBARJVCiNoZWlnaHRHYXBCZXR3ZWVuRm9ya0FuZEdvb2RzV2hlblB1dB'
    'gYIAEoBUgQUiNoZWlnaHRHYXBCZXR3ZWVuRm9ya0FuZEdvb2RzV2hlblB1dIgBARI5ChVnb29k'
    'c1Nsb3RQaWxsYXJIZWlnaHQYGSABKAVIEVIVZ29vZHNTbG90UGlsbGFySGVpZ2h0iAEBEmMKKm'
    'dvb2RzU2xvdFRlbGVzY29waWNEaXN0YW5jZVRvRGV0ZWN0RmVhdHVyZRgaIAEoBUgSUipnb29k'
    'c1Nsb3RUZWxlc2NvcGljRGlzdGFuY2VUb0RldGVjdEZlYXR1cmWIAQESPQoXYm94TWFya2VyT2'
    'Zmc2V0VG9Cb3R0b20YGyABKAVIE1IXYm94TWFya2VyT2Zmc2V0VG9Cb3R0b22IAQESLQoPcmFj'
    'a09yaWVudGF0aW9uGBwgASgFSBRSD3JhY2tPcmllbnRhdGlvbogBARJDChpnb29kc1Nsb3RTdG'
    'F0dXNDaGVja0hlaWdodBgdIAEoBUgVUhpnb29kc1Nsb3RTdGF0dXNDaGVja0hlaWdodIgBARIt'
    'Cg9nb29kc1Nsb3RPZmZzZXQYHiABKAVIFlIPZ29vZHNTbG90T2Zmc2V0iAEBEk0KH2dvb2RzU2'
    'xvdEFkanVzdEdvb2RzTW9kZVdoZW5QdXQYHyABKAVIF1IfZ29vZHNTbG90QWRqdXN0R29vZHNN'
    'b2RlV2hlblB1dIgBARJNCh9nb29kc1Nsb3RBZGp1c3RHb29kc01vZGVXaGVuR2V0GCAgASgFSB'
    'hSH2dvb2RzU2xvdEFkanVzdEdvb2RzTW9kZVdoZW5HZXSIAQESRQobZ29vZHNTbG90Rm9ya0dv'
    'b2RzQ2xlYXJhbmNlGCEgASgFSBlSG2dvb2RzU2xvdEZvcmtHb29kc0NsZWFyYW5jZYgBARJZCi'
    'Vnb29kc1Nsb3RXYWl0VGltZUZvckV4dGVybmFsU2xvdEVtcHR5GCIgASgFSBpSJWdvb2RzU2xv'
    'dFdhaXRUaW1lRm9yRXh0ZXJuYWxTbG90RW1wdHmIAQESIwoKcmFja1R5cGVJZBgjIAEoA0gbUg'
    'pyYWNrVHlwZUlkiAEBEhsKBmxlbmd0aBgkIAEoBUgcUgZsZW5ndGiIAQESMwoSZ29vZHNBbGxv'
    'Y2F0aW9uTnVtGCUgASgFSB1SEmdvb2RzQWxsb2NhdGlvbk51bYgBARI3ChRnb29kc0FsbG9jYX'
    'Rpb25XaWR0aBgmIAEoBUgeUhRnb29kc0FsbG9jYXRpb25XaWR0aIgBAUIUChJfaG9yaXpvbnRh'
    'bEdyb3VwSWRCEgoQX3ZlcnRpY2FsR3JvdXBJZEIOCgxfbG9jYWxOdW1iZXJCEAoOX2Rpc3BsYX'
    'lOdW1iZXJCDQoLX2JlYW1IZWlnaHRCDAoKX2NsZWFyYW5jZUIICgZfd2lkdGhCFwoVX2dvb2Rz'
    'UGxhY2VtZW50T2Zmc2V0Qg8KDV9nb29kc1N0YWNrSWRCGQoXX2dvb2RzU2xvdEZlYXR1cmVIZW'
    'lnaHRCCQoHX2xpbmtJZEIJCgdfdG9vbElkQg0KC19zbGlkZUNodXRlQh0KG19oZWlnaHRPdmVy'
    'R29vZHNTbG90V2hlblB1dEIdChtfaGVpZ2h0T3Zlckdvb2RzU2xvdFdoZW5HZXRCJgokX2hlaW'
    'dodEdhcEJldHdlZW5Gb3JrQW5kR29vZHNXaGVuR2V0QiYKJF9oZWlnaHRHYXBCZXR3ZWVuRm9y'
    'a0FuZEdvb2RzV2hlblB1dEIYChZfZ29vZHNTbG90UGlsbGFySGVpZ2h0Qi0KK19nb29kc1Nsb3'
    'RUZWxlc2NvcGljRGlzdGFuY2VUb0RldGVjdEZlYXR1cmVCGgoYX2JveE1hcmtlck9mZnNldFRv'
    'Qm90dG9tQhIKEF9yYWNrT3JpZW50YXRpb25CHQobX2dvb2RzU2xvdFN0YXR1c0NoZWNrSGVpZ2'
    'h0QhIKEF9nb29kc1Nsb3RPZmZzZXRCIgogX2dvb2RzU2xvdEFkanVzdEdvb2RzTW9kZVdoZW5Q'
    'dXRCIgogX2dvb2RzU2xvdEFkanVzdEdvb2RzTW9kZVdoZW5HZXRCHgocX2dvb2RzU2xvdEZvcm'
    'tHb29kc0NsZWFyYW5jZUIoCiZfZ29vZHNTbG90V2FpdFRpbWVGb3JFeHRlcm5hbFNsb3RFbXB0'
    'eUINCgtfcmFja1R5cGVJZEIJCgdfbGVuZ3RoQhUKE19nb29kc0FsbG9jYXRpb25OdW1CFwoVX2'
    'dvb2RzQWxsb2NhdGlvbldpZHRo');

@$core.Deprecated('Use conflictZoneDescriptor instead')
const ConflictZone$json = {
  '1': 'ConflictZone',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'elementType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ElementType',
      '10': 'elementType'
    },
    {
      '1': 'pointList',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Point',
      '10': 'pointList'
    },
    {'1': 'includeDataId', '3': 4, '4': 3, '5': 5, '10': 'includeDataId'},
    {
      '1': 'conflictZoneType',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ConflictZoneType',
      '10': 'conflictZoneType'
    },
    {'1': 'limitedAgvNum', '3': 6, '4': 1, '5': 5, '10': 'limitedAgvNum'},
    {'1': 'allowAGVType', '3': 7, '4': 3, '5': 9, '10': 'allowAGVType'},
    {'1': 'clusterNodeCount', '3': 8, '4': 1, '5': 5, '10': 'clusterNodeCount'},
    {
      '1': 'limitTaskPriority',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'limitTaskPriority'
    },
    {'1': 'limitTaskNum', '3': 10, '4': 1, '5': 5, '10': 'limitTaskNum'},
    {'1': 'enterNode', '3': 11, '4': 3, '5': 9, '10': 'enterNode'},
    {'1': 'exitNode', '3': 12, '4': 3, '5': 9, '10': 'exitNode'},
    {'1': 'depthX', '3': 13, '4': 1, '5': 3, '10': 'depthX'},
    {'1': 'depthY', '3': 14, '4': 1, '5': 3, '10': 'depthY'},
  ],
};

/// Descriptor for `ConflictZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conflictZoneDescriptor = $convert.base64Decode(
    'CgxDb25mbGljdFpvbmUSDgoCaWQYASABKANSAmlkEjoKC2VsZW1lbnRUeXBlGAIgASgOMhguZ2'
    'FsYXhpcy5tYXAuRWxlbWVudFR5cGVSC2VsZW1lbnRUeXBlEjAKCXBvaW50TGlzdBgDIAMoCzIS'
    'LmdhbGF4aXMubWFwLlBvaW50Uglwb2ludExpc3QSJAoNaW5jbHVkZURhdGFJZBgEIAMoBVINaW'
    '5jbHVkZURhdGFJZBJJChBjb25mbGljdFpvbmVUeXBlGAUgASgOMh0uZ2FsYXhpcy5tYXAuQ29u'
    'ZmxpY3Rab25lVHlwZVIQY29uZmxpY3Rab25lVHlwZRIkCg1saW1pdGVkQWd2TnVtGAYgASgFUg'
    '1saW1pdGVkQWd2TnVtEiIKDGFsbG93QUdWVHlwZRgHIAMoCVIMYWxsb3dBR1ZUeXBlEioKEGNs'
    'dXN0ZXJOb2RlQ291bnQYCCABKAVSEGNsdXN0ZXJOb2RlQ291bnQSLAoRbGltaXRUYXNrUHJpb3'
    'JpdHkYCSABKAVSEWxpbWl0VGFza1ByaW9yaXR5EiIKDGxpbWl0VGFza051bRgKIAEoBVIMbGlt'
    'aXRUYXNrTnVtEhwKCWVudGVyTm9kZRgLIAMoCVIJZW50ZXJOb2RlEhoKCGV4aXROb2RlGAwgAy'
    'gJUghleGl0Tm9kZRIWCgZkZXB0aFgYDSABKANSBmRlcHRoWBIWCgZkZXB0aFkYDiABKANSBmRl'
    'cHRoWQ==');

@$core.Deprecated('Use businessMapDescriptor instead')
const BusinessMap$json = {
  '1': 'BusinessMap',
  '2': [
    {'1': 'floorName', '3': 1, '4': 1, '5': 9, '10': 'floorName'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'floorNum', '3': 3, '4': 1, '5': 5, '10': 'floorNum'},
    {
      '1': 'node',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Node',
      '10': 'node'
    },
    {
      '1': 'edge',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Edge',
      '10': 'edge'
    },
    {
      '1': 'goodsSlot',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlot',
      '10': 'goodsSlot'
    },
    {
      '1': 'conflictZone',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ConflictZone',
      '10': 'conflictZone'
    },
    {
      '1': 'rack',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Rack',
      '10': 'rack'
    },
    {
      '1': 'globalDefaultData',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.GlobalDefaultData',
      '10': 'globalDefaultData'
    },
    {
      '1': 'propertyObjects',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PropertyObject',
      '10': 'propertyObjects'
    },
    {
      '1': 'rules',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Rule',
      '10': 'rules'
    },
    {
      '1': 'functionalBlock',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.FunctionalBlock',
      '10': 'functionalBlock'
    },
    {
      '1': 'serverAddress',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ServerAddress',
      '10': 'serverAddress'
    },
    {
      '1': 'goodsStackData',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsStackData',
      '10': 'goodsStackData'
    },
  ],
};

/// Descriptor for `BusinessMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessMapDescriptor = $convert.base64Decode(
    'CgtCdXNpbmVzc01hcBIcCglmbG9vck5hbWUYASABKAlSCWZsb29yTmFtZRIOCgJpZBgCIAEoA1'
    'ICaWQSGgoIZmxvb3JOdW0YAyABKAVSCGZsb29yTnVtEiUKBG5vZGUYBCADKAsyES5nYWxheGlz'
    'Lm1hcC5Ob2RlUgRub2RlEiUKBGVkZ2UYBSADKAsyES5nYWxheGlzLm1hcC5FZGdlUgRlZGdlEj'
    'QKCWdvb2RzU2xvdBgGIAMoCzIWLmdhbGF4aXMubWFwLkdvb2RzU2xvdFIJZ29vZHNTbG90Ej0K'
    'DGNvbmZsaWN0Wm9uZRgHIAMoCzIZLmdhbGF4aXMubWFwLkNvbmZsaWN0Wm9uZVIMY29uZmxpY3'
    'Rab25lEiUKBHJhY2sYCCADKAsyES5nYWxheGlzLm1hcC5SYWNrUgRyYWNrEkwKEWdsb2JhbERl'
    'ZmF1bHREYXRhGAkgASgLMh4uZ2FsYXhpcy5tYXAuR2xvYmFsRGVmYXVsdERhdGFSEWdsb2JhbE'
    'RlZmF1bHREYXRhEkUKD3Byb3BlcnR5T2JqZWN0cxgKIAMoCzIbLmdhbGF4aXMubWFwLlByb3Bl'
    'cnR5T2JqZWN0Ug9wcm9wZXJ0eU9iamVjdHMSJwoFcnVsZXMYCyADKAsyES5nYWxheGlzLm1hcC'
    '5SdWxlUgVydWxlcxJGCg9mdW5jdGlvbmFsQmxvY2sYDCADKAsyHC5nYWxheGlzLm1hcC5GdW5j'
    'dGlvbmFsQmxvY2tSD2Z1bmN0aW9uYWxCbG9jaxJACg1zZXJ2ZXJBZGRyZXNzGA0gAygLMhouZ2'
    'FsYXhpcy5tYXAuU2VydmVyQWRkcmVzc1INc2VydmVyQWRkcmVzcxJDCg5nb29kc1N0YWNrRGF0'
    'YRgOIAMoCzIbLmdhbGF4aXMubWFwLkdvb2RzU3RhY2tEYXRhUg5nb29kc1N0YWNrRGF0YQ==');

@$core.Deprecated('Use mappingDataDescriptor instead')
const MappingData$json = {
  '1': 'MappingData',
  '2': [
    {
      '1': 'businessMap',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.BusinessMap',
      '10': 'businessMap'
    },
    {
      '1': 'privateData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.PrivateData',
      '10': 'privateData'
    },
    {
      '1': 'internalVersion',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'internalVersion',
      '17': true
    },
  ],
  '8': [
    {'1': '_internalVersion'},
  ],
};

/// Descriptor for `MappingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mappingDataDescriptor = $convert.base64Decode(
    'CgtNYXBwaW5nRGF0YRI6CgtidXNpbmVzc01hcBgBIAMoCzIYLmdhbGF4aXMubWFwLkJ1c2luZX'
    'NzTWFwUgtidXNpbmVzc01hcBI6Cgtwcml2YXRlRGF0YRgCIAEoCzIYLmdhbGF4aXMubWFwLlBy'
    'aXZhdGVEYXRhUgtwcml2YXRlRGF0YRItCg9pbnRlcm5hbFZlcnNpb24YAyABKANIAFIPaW50ZX'
    'JuYWxWZXJzaW9uiAEBQhIKEF9pbnRlcm5hbFZlcnNpb24=');

@$core.Deprecated('Use serverAddressDescriptor instead')
const ServerAddress$json = {
  '1': 'ServerAddress',
  '2': [
    {'1': 'zoneId', '3': 1, '4': 1, '5': 5, '10': 'zoneId'},
    {'1': 'rcsServerAddr', '3': 2, '4': 1, '5': 9, '10': 'rcsServerAddr'},
    {'1': 'rcsServerPort', '3': 3, '4': 1, '5': 5, '10': 'rcsServerPort'},
    {'1': 'timeServerAddr', '3': 4, '4': 1, '5': 9, '10': 'timeServerAddr'},
    {'1': 'neoServerAddr', '3': 5, '4': 1, '5': 9, '10': 'neoServerAddr'},
    {'1': 'neoServerPort', '3': 6, '4': 1, '5': 5, '10': 'neoServerPort'},
  ],
};

/// Descriptor for `ServerAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverAddressDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJBZGRyZXNzEhYKBnpvbmVJZBgBIAEoBVIGem9uZUlkEiQKDXJjc1NlcnZlckFkZH'
    'IYAiABKAlSDXJjc1NlcnZlckFkZHISJAoNcmNzU2VydmVyUG9ydBgDIAEoBVINcmNzU2VydmVy'
    'UG9ydBImCg50aW1lU2VydmVyQWRkchgEIAEoCVIOdGltZVNlcnZlckFkZHISJAoNbmVvU2Vydm'
    'VyQWRkchgFIAEoCVINbmVvU2VydmVyQWRkchIkCg1uZW9TZXJ2ZXJQb3J0GAYgASgFUg1uZW9T'
    'ZXJ2ZXJQb3J0');

@$core.Deprecated('Use globalDefaultDataDescriptor instead')
const GlobalDefaultData$json = {
  '1': 'GlobalDefaultData',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'straightOnVelocity',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.StraghtOnVelocity',
      '10': 'straightOnVelocity'
    },
    {
      '1': 'rotateVelocity',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.RotateVelocity',
      '10': 'rotateVelocity'
    },
    {'1': 'markerType', '3': 4, '4': 1, '5': 3, '10': 'markerType'},
    {'1': 'rackType', '3': 5, '4': 1, '5': 9, '10': 'rackType'},
    {'1': 'language', '3': 6, '4': 1, '5': 9, '10': 'language'},
    {
      '1': 'taskOrbitMustAlongAxis',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'taskOrbitMustAlongAxis'
    },
    {
      '1': 'rcsEqualDistanceShow',
      '3': 8,
      '4': 1,
      '5': 8,
      '10': 'rcsEqualDistanceShow'
    },
    {
      '1': 'logicIsContinuous',
      '3': 9,
      '4': 1,
      '5': 8,
      '10': 'logicIsContinuous'
    },
    {
      '1': 'allowPassage',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.AllowPassage',
      '10': 'allowPassage'
    },
    {
      '1': 'partnerMapVersion',
      '3': 11,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'partnerMapVersion',
      '17': true
    },
    {
      '1': 'partnerMapCode',
      '3': 12,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'partnerMapCode',
      '17': true
    },
  ],
  '8': [
    {'1': '_partnerMapVersion'},
    {'1': '_partnerMapCode'},
  ],
};

/// Descriptor for `GlobalDefaultData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List globalDefaultDataDescriptor = $convert.base64Decode(
    'ChFHbG9iYWxEZWZhdWx0RGF0YRImCg5wYXNzYWJsZVJvYm90cxgBIAMoCVIOcGFzc2FibGVSb2'
    'JvdHMSTgoSc3RyYWlnaHRPblZlbG9jaXR5GAIgAygLMh4uZ2FsYXhpcy5tYXAuU3RyYWdodE9u'
    'VmVsb2NpdHlSEnN0cmFpZ2h0T25WZWxvY2l0eRJDCg5yb3RhdGVWZWxvY2l0eRgDIAMoCzIbLm'
    'dhbGF4aXMubWFwLlJvdGF0ZVZlbG9jaXR5Ug5yb3RhdGVWZWxvY2l0eRIeCgptYXJrZXJUeXBl'
    'GAQgASgDUgptYXJrZXJUeXBlEhoKCHJhY2tUeXBlGAUgASgJUghyYWNrVHlwZRIaCghsYW5ndW'
    'FnZRgGIAEoCVIIbGFuZ3VhZ2USNgoWdGFza09yYml0TXVzdEFsb25nQXhpcxgHIAEoCFIWdGFz'
    'a09yYml0TXVzdEFsb25nQXhpcxIyChRyY3NFcXVhbERpc3RhbmNlU2hvdxgIIAEoCFIUcmNzRX'
    'F1YWxEaXN0YW5jZVNob3cSLAoRbG9naWNJc0NvbnRpbnVvdXMYCSABKAhSEWxvZ2ljSXNDb250'
    'aW51b3VzEj0KDGFsbG93UGFzc2FnZRgKIAEoCzIZLmdhbGF4aXMubWFwLkFsbG93UGFzc2FnZV'
    'IMYWxsb3dQYXNzYWdlEjEKEXBhcnRuZXJNYXBWZXJzaW9uGAsgASgJSABSEXBhcnRuZXJNYXBW'
    'ZXJzaW9uiAEBEisKDnBhcnRuZXJNYXBDb2RlGAwgASgJSAFSDnBhcnRuZXJNYXBDb2RliAEBQh'
    'QKEl9wYXJ0bmVyTWFwVmVyc2lvbkIRCg9fcGFydG5lck1hcENvZGU=');

@$core.Deprecated('Use allowPassageDescriptor instead')
const AllowPassage$json = {
  '1': 'AllowPassage',
  '2': [
    {'1': 'long', '3': 1, '4': 1, '5': 3, '10': 'long'},
    {'1': 'width', '3': 2, '4': 1, '5': 3, '10': 'width'},
    {'1': 'height', '3': 3, '4': 1, '5': 3, '10': 'height'},
  ],
};

/// Descriptor for `AllowPassage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allowPassageDescriptor = $convert.base64Decode(
    'CgxBbGxvd1Bhc3NhZ2USEgoEbG9uZxgBIAEoA1IEbG9uZxIUCgV3aWR0aBgCIAEoA1IFd2lkdG'
    'gSFgoGaGVpZ2h0GAMgASgDUgZoZWlnaHQ=');

@$core.Deprecated('Use velocityItemDescriptor instead')
const VelocityItem$json = {
  '1': 'VelocityItem',
  '2': [
    {'1': 'velocity', '3': 1, '4': 1, '5': 1, '10': 'velocity'},
    {
      '1': 'acceleration',
      '3': 2,
      '4': 1,
      '5': 1,
      '9': 0,
      '10': 'acceleration',
      '17': true
    },
  ],
  '8': [
    {'1': '_acceleration'},
  ],
};

/// Descriptor for `VelocityItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List velocityItemDescriptor = $convert.base64Decode(
    'CgxWZWxvY2l0eUl0ZW0SGgoIdmVsb2NpdHkYASABKAFSCHZlbG9jaXR5EicKDGFjY2VsZXJhdG'
    'lvbhgCIAEoAUgAUgxhY2NlbGVyYXRpb26IAQFCDwoNX2FjY2VsZXJhdGlvbg==');

@$core.Deprecated('Use straghtOnVelocityDescriptor instead')
const StraghtOnVelocity$json = {
  '1': 'StraghtOnVelocity',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'forward',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 0,
      '10': 'forward',
      '17': true
    },
    {
      '1': 'backward',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 1,
      '10': 'backward',
      '17': true
    },
    {
      '1': 'forwardWithLoad',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 2,
      '10': 'forwardWithLoad',
      '17': true
    },
    {
      '1': 'backwardWithLoad',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 3,
      '10': 'backwardWithLoad',
      '17': true
    },
  ],
  '8': [
    {'1': '_forward'},
    {'1': '_backward'},
    {'1': '_forwardWithLoad'},
    {'1': '_backwardWithLoad'},
  ],
};

/// Descriptor for `StraghtOnVelocity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List straghtOnVelocityDescriptor = $convert.base64Decode(
    'ChFTdHJhZ2h0T25WZWxvY2l0eRImCg5wYXNzYWJsZVJvYm90cxgBIAMoCVIOcGFzc2FibGVSb2'
    'JvdHMSOAoHZm9yd2FyZBgCIAEoCzIZLmdhbGF4aXMubWFwLlZlbG9jaXR5SXRlbUgAUgdmb3J3'
    'YXJkiAEBEjoKCGJhY2t3YXJkGAMgASgLMhkuZ2FsYXhpcy5tYXAuVmVsb2NpdHlJdGVtSAFSCG'
    'JhY2t3YXJkiAEBEkgKD2ZvcndhcmRXaXRoTG9hZBgEIAEoCzIZLmdhbGF4aXMubWFwLlZlbG9j'
    'aXR5SXRlbUgCUg9mb3J3YXJkV2l0aExvYWSIAQESSgoQYmFja3dhcmRXaXRoTG9hZBgFIAEoCz'
    'IZLmdhbGF4aXMubWFwLlZlbG9jaXR5SXRlbUgDUhBiYWNrd2FyZFdpdGhMb2FkiAEBQgoKCF9m'
    'b3J3YXJkQgsKCV9iYWNrd2FyZEISChBfZm9yd2FyZFdpdGhMb2FkQhMKEV9iYWNrd2FyZFdpdG'
    'hMb2Fk');

@$core.Deprecated('Use rotateVelocityDescriptor instead')
const RotateVelocity$json = {
  '1': 'RotateVelocity',
  '2': [
    {'1': 'passableRobots', '3': 1, '4': 3, '5': 9, '10': 'passableRobots'},
    {
      '1': 'rotate',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 0,
      '10': 'rotate',
      '17': true
    },
    {
      '1': 'rotateWithLoad',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VelocityItem',
      '9': 1,
      '10': 'rotateWithLoad',
      '17': true
    },
  ],
  '8': [
    {'1': '_rotate'},
    {'1': '_rotateWithLoad'},
  ],
};

/// Descriptor for `RotateVelocity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rotateVelocityDescriptor = $convert.base64Decode(
    'Cg5Sb3RhdGVWZWxvY2l0eRImCg5wYXNzYWJsZVJvYm90cxgBIAMoCVIOcGFzc2FibGVSb2JvdH'
    'MSNgoGcm90YXRlGAIgASgLMhkuZ2FsYXhpcy5tYXAuVmVsb2NpdHlJdGVtSABSBnJvdGF0ZYgB'
    'ARJGCg5yb3RhdGVXaXRoTG9hZBgDIAEoCzIZLmdhbGF4aXMubWFwLlZlbG9jaXR5SXRlbUgBUg'
    '5yb3RhdGVXaXRoTG9hZIgBAUIJCgdfcm90YXRlQhEKD19yb3RhdGVXaXRoTG9hZA==');

@$core.Deprecated('Use privateDataDescriptor instead')
const PrivateData$json = {
  '1': 'PrivateData',
  '2': [
    {
      '1': 'inPathSiteIndex',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PrivateData.InPathSiteIndexEntry',
      '10': 'inPathSiteIndex'
    },
    {
      '1': 'inSitePathIndex',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PrivateData.InSitePathIndexEntry',
      '10': 'inSitePathIndex'
    },
    {
      '1': 'entityInfos',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PrivateData.EntityInfosEntry',
      '10': 'entityInfos'
    },
    {
      '1': 'toolingData',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ToolingData',
      '10': 'toolingData'
    },
  ],
  '3': [
    PrivateData_InPathSiteIndexEntry$json,
    PrivateData_InSitePathIndexEntry$json,
    PrivateData_EntityInfosEntry$json
  ],
};

@$core.Deprecated('Use privateDataDescriptor instead')
const PrivateData_InPathSiteIndexEntry$json = {
  '1': 'InPathSiteIndexEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MapItem',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use privateDataDescriptor instead')
const PrivateData_InSitePathIndexEntry$json = {
  '1': 'InSitePathIndexEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MapItem',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use privateDataDescriptor instead')
const PrivateData_EntityInfosEntry$json = {
  '1': 'EntityInfosEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.EntityInfo',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `PrivateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateDataDescriptor = $convert.base64Decode(
    'CgtQcml2YXRlRGF0YRJXCg9pblBhdGhTaXRlSW5kZXgYASADKAsyLS5nYWxheGlzLm1hcC5Qcm'
    'l2YXRlRGF0YS5JblBhdGhTaXRlSW5kZXhFbnRyeVIPaW5QYXRoU2l0ZUluZGV4ElcKD2luU2l0'
    'ZVBhdGhJbmRleBgCIAMoCzItLmdhbGF4aXMubWFwLlByaXZhdGVEYXRhLkluU2l0ZVBhdGhJbm'
    'RleEVudHJ5Ug9pblNpdGVQYXRoSW5kZXgSSwoLZW50aXR5SW5mb3MYAyADKAsyKS5nYWxheGlz'
    'Lm1hcC5Qcml2YXRlRGF0YS5FbnRpdHlJbmZvc0VudHJ5UgtlbnRpdHlJbmZvcxI6Cgt0b29saW'
    '5nRGF0YRgEIAMoCzIYLmdhbGF4aXMubWFwLlRvb2xpbmdEYXRhUgt0b29saW5nRGF0YRpYChRJ'
    'blBhdGhTaXRlSW5kZXhFbnRyeRIQCgNrZXkYASABKAVSA2tleRIqCgV2YWx1ZRgCIAEoCzIULm'
    'dhbGF4aXMubWFwLk1hcEl0ZW1SBXZhbHVlOgI4ARpYChRJblNpdGVQYXRoSW5kZXhFbnRyeRIQ'
    'CgNrZXkYASABKAVSA2tleRIqCgV2YWx1ZRgCIAEoCzIULmdhbGF4aXMubWFwLk1hcEl0ZW1SBX'
    'ZhbHVlOgI4ARpXChBFbnRpdHlJbmZvc0VudHJ5EhAKA2tleRgBIAEoA1IDa2V5Ei0KBXZhbHVl'
    'GAIgASgLMhcuZ2FsYXhpcy5tYXAuRW50aXR5SW5mb1IFdmFsdWU6AjgB');

@$core.Deprecated('Use mapItemDescriptor instead')
const MapItem$json = {
  '1': 'MapItem',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `MapItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapItemDescriptor =
    $convert.base64Decode('CgdNYXBJdGVtEhQKBXZhbHVlGAEgAygFUgV2YWx1ZQ==');

@$core.Deprecated('Use entityInfoDescriptor instead')
const EntityInfo$json = {
  '1': 'EntityInfo',
  '2': [
    {'1': 'direction', '3': 1, '4': 3, '5': 9, '10': 'direction'},
    {
      '1': 'additionalWeightBehind',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'additionalWeightBehind'
    },
    {'1': 'additionalWeight', '3': 3, '4': 1, '5': 3, '10': 'additionalWeight'},
    {
      '1': 'distanceWithoutNavigation',
      '3': 4,
      '4': 1,
      '5': 1,
      '10': 'distanceWithoutNavigation'
    },
    {
      '1': 'biasAttr',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.BiasAttr',
      '10': 'biasAttr'
    },
    {'1': 'phyX', '3': 6, '4': 1, '5': 1, '9': 0, '10': 'phyX', '17': true},
    {'1': 'phyY', '3': 7, '4': 1, '5': 1, '9': 1, '10': 'phyY', '17': true},
  ],
  '8': [
    {'1': '_phyX'},
    {'1': '_phyY'},
  ],
};

/// Descriptor for `EntityInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entityInfoDescriptor = $convert.base64Decode(
    'CgpFbnRpdHlJbmZvEhwKCWRpcmVjdGlvbhgBIAMoCVIJZGlyZWN0aW9uEjYKFmFkZGl0aW9uYW'
    'xXZWlnaHRCZWhpbmQYAiABKANSFmFkZGl0aW9uYWxXZWlnaHRCZWhpbmQSKgoQYWRkaXRpb25h'
    'bFdlaWdodBgDIAEoA1IQYWRkaXRpb25hbFdlaWdodBI8ChlkaXN0YW5jZVdpdGhvdXROYXZpZ2'
    'F0aW9uGAQgASgBUhlkaXN0YW5jZVdpdGhvdXROYXZpZ2F0aW9uEjEKCGJpYXNBdHRyGAUgASgL'
    'MhUuZ2FsYXhpcy5tYXAuQmlhc0F0dHJSCGJpYXNBdHRyEhcKBHBoeVgYBiABKAFIAFIEcGh5WI'
    'gBARIXCgRwaHlZGAcgASgBSAFSBHBoeVmIAQFCBwoFX3BoeVhCBwoFX3BoeVk=');

@$core.Deprecated('Use biasAttrDescriptor instead')
const BiasAttr$json = {
  '1': 'BiasAttr',
  '2': [
    {'1': 'pathStartHeading', '3': 1, '4': 1, '5': 3, '10': 'pathStartHeading'},
    {'1': 'pathEndHeading', '3': 2, '4': 1, '5': 3, '10': 'pathEndHeading'},
    {'1': 'centerX', '3': 3, '4': 1, '5': 3, '10': 'centerX'},
    {'1': 'centerY', '3': 4, '4': 1, '5': 3, '10': 'centerY'},
    {'1': 'Rotation', '3': 5, '4': 1, '5': 9, '10': 'Rotation'},
    {'1': 'Radius', '3': 6, '4': 1, '5': 3, '10': 'Radius'},
  ],
};

/// Descriptor for `BiasAttr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List biasAttrDescriptor = $convert.base64Decode(
    'CghCaWFzQXR0chIqChBwYXRoU3RhcnRIZWFkaW5nGAEgASgDUhBwYXRoU3RhcnRIZWFkaW5nEi'
    'YKDnBhdGhFbmRIZWFkaW5nGAIgASgDUg5wYXRoRW5kSGVhZGluZxIYCgdjZW50ZXJYGAMgASgD'
    'UgdjZW50ZXJYEhgKB2NlbnRlclkYBCABKANSB2NlbnRlclkSGgoIUm90YXRpb24YBSABKAlSCF'
    'JvdGF0aW9uEhYKBlJhZGl1cxgGIAEoA1IGUmFkaXVz');

@$core.Deprecated('Use goodsAllocationDescriptor instead')
const GoodsAllocation$json = {
  '1': 'GoodsAllocation',
  '2': [
    {'1': 'isSelected', '3': 1, '4': 1, '5': 8, '10': 'isSelected'},
    {
      '1': 'gaps',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Gap',
      '10': 'gaps'
    },
    {
      '1': 'goodsPlacementOffset',
      '3': 3,
      '4': 1,
      '5': 5,
      '10': 'goodsPlacementOffset'
    },
    {'1': 'goodsStackId', '3': 4, '4': 1, '5': 3, '10': 'goodsStackId'},
    {'1': 'id', '3': 5, '4': 1, '5': 3, '10': 'id'},
    {'1': 'localNumber', '3': 6, '4': 1, '5': 9, '10': 'localNumber'},
    {
      '1': 'goodsSlotFeatureType',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.FeatureType',
      '10': 'goodsSlotFeatureType'
    },
    {
      '1': 'distanceToStation',
      '3': 8,
      '4': 1,
      '5': 5,
      '10': 'distanceToStation'
    },
    {
      '1': 'goodsSlotFeatureHeight',
      '3': 9,
      '4': 1,
      '5': 5,
      '10': 'goodsSlotFeatureHeight'
    },
    {
      '1': 'boxMarkerOffsetToBottom',
      '3': 10,
      '4': 1,
      '5': 5,
      '10': 'boxMarkerOffsetToBottom'
    },
    {'1': 'verticalGroupId', '3': 11, '4': 1, '5': 9, '10': 'verticalGroupId'},
    {
      '1': 'horizontalGroupId',
      '3': 12,
      '4': 1,
      '5': 9,
      '10': 'horizontalGroupId'
    },
    {'1': 'displayNumber', '3': 13, '4': 1, '5': 9, '10': 'displayNumber'},
    {'1': 'beamHeight', '3': 14, '4': 1, '5': 5, '10': 'beamHeight'},
    {'1': 'layerHeight', '3': 15, '4': 1, '5': 5, '10': 'layerHeight'},
    {'1': 'clearance', '3': 16, '4': 1, '5': 5, '10': 'clearance'},
    {'1': 'width', '3': 17, '4': 1, '5': 5, '10': 'width'},
    {'1': 'orientation', '3': 18, '4': 3, '5': 5, '10': 'orientation'},
    {
      '1': 'goodsAllocationWidth',
      '3': 19,
      '4': 1,
      '5': 5,
      '10': 'goodsAllocationWidth'
    },
  ],
};

/// Descriptor for `GoodsAllocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsAllocationDescriptor = $convert.base64Decode(
    'Cg9Hb29kc0FsbG9jYXRpb24SHgoKaXNTZWxlY3RlZBgBIAEoCFIKaXNTZWxlY3RlZBIkCgRnYX'
    'BzGAIgAygLMhAuZ2FsYXhpcy5tYXAuR2FwUgRnYXBzEjIKFGdvb2RzUGxhY2VtZW50T2Zmc2V0'
    'GAMgASgFUhRnb29kc1BsYWNlbWVudE9mZnNldBIiCgxnb29kc1N0YWNrSWQYBCABKANSDGdvb2'
    'RzU3RhY2tJZBIOCgJpZBgFIAEoA1ICaWQSIAoLbG9jYWxOdW1iZXIYBiABKAlSC2xvY2FsTnVt'
    'YmVyEkwKFGdvb2RzU2xvdEZlYXR1cmVUeXBlGAcgASgOMhguZ2FsYXhpcy5tYXAuRmVhdHVyZV'
    'R5cGVSFGdvb2RzU2xvdEZlYXR1cmVUeXBlEiwKEWRpc3RhbmNlVG9TdGF0aW9uGAggASgFUhFk'
    'aXN0YW5jZVRvU3RhdGlvbhI2ChZnb29kc1Nsb3RGZWF0dXJlSGVpZ2h0GAkgASgFUhZnb29kc1'
    'Nsb3RGZWF0dXJlSGVpZ2h0EjgKF2JveE1hcmtlck9mZnNldFRvQm90dG9tGAogASgFUhdib3hN'
    'YXJrZXJPZmZzZXRUb0JvdHRvbRIoCg92ZXJ0aWNhbEdyb3VwSWQYCyABKAlSD3ZlcnRpY2FsR3'
    'JvdXBJZBIsChFob3Jpem9udGFsR3JvdXBJZBgMIAEoCVIRaG9yaXpvbnRhbEdyb3VwSWQSJAoN'
    'ZGlzcGxheU51bWJlchgNIAEoCVINZGlzcGxheU51bWJlchIeCgpiZWFtSGVpZ2h0GA4gASgFUg'
    'piZWFtSGVpZ2h0EiAKC2xheWVySGVpZ2h0GA8gASgFUgtsYXllckhlaWdodBIcCgljbGVhcmFu'
    'Y2UYECABKAVSCWNsZWFyYW5jZRIUCgV3aWR0aBgRIAEoBVIFd2lkdGgSIAoLb3JpZW50YXRpb2'
    '4YEiADKAVSC29yaWVudGF0aW9uEjIKFGdvb2RzQWxsb2NhdGlvbldpZHRoGBMgASgFUhRnb29k'
    'c0FsbG9jYXRpb25XaWR0aA==');

@$core.Deprecated('Use gapDescriptor instead')
const Gap$json = {
  '1': 'Gap',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
  ],
};

/// Descriptor for `Gap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gapDescriptor =
    $convert.base64Decode('CgNHYXASFAoFdmFsdWUYASABKAFSBXZhbHVl');

@$core.Deprecated('Use layersHeightDescriptor instead')
const LayersHeight$json = {
  '1': 'LayersHeight',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'layerHeight', '3': 2, '4': 1, '5': 5, '10': 'layerHeight'},
    {'1': 'clearance', '3': 3, '4': 1, '5': 5, '10': 'clearance'},
    {
      '1': 'layerGoodsAllocationGroup',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.LayerGoodsAllocationGroup',
      '10': 'layerGoodsAllocationGroup'
    },
  ],
};

/// Descriptor for `LayersHeight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layersHeightDescriptor = $convert.base64Decode(
    'CgxMYXllcnNIZWlnaHQSDgoCaWQYASABKANSAmlkEiAKC2xheWVySGVpZ2h0GAIgASgFUgtsYX'
    'llckhlaWdodBIcCgljbGVhcmFuY2UYAyABKAVSCWNsZWFyYW5jZRJkChlsYXllckdvb2RzQWxs'
    'b2NhdGlvbkdyb3VwGAQgASgLMiYuZ2FsYXhpcy5tYXAuTGF5ZXJHb29kc0FsbG9jYXRpb25Hcm'
    '91cFIZbGF5ZXJHb29kc0FsbG9jYXRpb25Hcm91cA==');

@$core.Deprecated('Use layerGoodsAllocationGroupDescriptor instead')
const LayerGoodsAllocationGroup$json = {
  '1': 'LayerGoodsAllocationGroup',
  '2': [
    {
      '1': 'goodsAllocationNum',
      '3': 1,
      '4': 1,
      '5': 5,
      '10': 'goodsAllocationNum'
    },
    {
      '1': 'goodsSlots',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlot',
      '10': 'goodsSlots'
    },
  ],
};

/// Descriptor for `LayerGoodsAllocationGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerGoodsAllocationGroupDescriptor = $convert.base64Decode(
    'ChlMYXllckdvb2RzQWxsb2NhdGlvbkdyb3VwEi4KEmdvb2RzQWxsb2NhdGlvbk51bRgBIAEoBV'
    'ISZ29vZHNBbGxvY2F0aW9uTnVtEjYKCmdvb2RzU2xvdHMYAiADKAsyFi5nYWxheGlzLm1hcC5H'
    'b29kc1Nsb3RSCmdvb2RzU2xvdHM=');

@$core.Deprecated('Use propertyObjectDescriptor instead')
const PropertyObject$json = {
  '1': 'PropertyObject',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'propertyName', '3': 2, '4': 1, '5': 9, '10': 'propertyName'},
    {
      '1': 'valueType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.PropertyValueType',
      '10': 'valueType'
    },
    {'1': 'desc', '3': 4, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `PropertyObject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyObjectDescriptor = $convert.base64Decode(
    'Cg5Qcm9wZXJ0eU9iamVjdBIOCgJpZBgBIAEoA1ICaWQSIgoMcHJvcGVydHlOYW1lGAIgASgJUg'
    'xwcm9wZXJ0eU5hbWUSPAoJdmFsdWVUeXBlGAMgASgOMh4uZ2FsYXhpcy5tYXAuUHJvcGVydHlW'
    'YWx1ZVR5cGVSCXZhbHVlVHlwZRISCgRkZXNjGAQgASgJUgRkZXNj');

@$core.Deprecated('Use ruleDescriptor instead')
const Rule$json = {
  '1': 'Rule',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.Condition',
      '10': 'condition'
    },
    {
      '1': 'conducts',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ConductGroup',
      '10': 'conducts'
    },
  ],
};

/// Descriptor for `Rule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleDescriptor = $convert.base64Decode(
    'CgRSdWxlEhIKBG5hbWUYASABKAlSBG5hbWUSNAoJY29uZGl0aW9uGAIgASgLMhYuZ2FsYXhpcy'
    '5tYXAuQ29uZGl0aW9uUgljb25kaXRpb24SNQoIY29uZHVjdHMYAyADKAsyGS5nYWxheGlzLm1h'
    'cC5Db25kdWN0R3JvdXBSCGNvbmR1Y3Rz');

@$core.Deprecated('Use conditionDescriptor instead')
const Condition$json = {
  '1': 'Condition',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'metaCond',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MetaMessage',
      '9': 0,
      '10': 'metaCond'
    },
    {
      '1': 'complexCond',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ComplexCondition',
      '9': 0,
      '10': 'complexCond'
    },
  ],
  '8': [
    {'1': 'condition'},
  ],
};

/// Descriptor for `Condition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conditionDescriptor = $convert.base64Decode(
    'CglDb25kaXRpb24SDgoCaWQYASABKANSAmlkEjYKCG1ldGFDb25kGAIgASgLMhguZ2FsYXhpcy'
    '5tYXAuTWV0YU1lc3NhZ2VIAFIIbWV0YUNvbmQSQQoLY29tcGxleENvbmQYAyABKAsyHS5nYWxh'
    'eGlzLm1hcC5Db21wbGV4Q29uZGl0aW9uSABSC2NvbXBsZXhDb25kQgsKCWNvbmRpdGlvbg==');

@$core.Deprecated('Use complexConditionDescriptor instead')
const ComplexCondition$json = {
  '1': 'ComplexCondition',
  '2': [
    {
      '1': 'conditions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Condition',
      '10': 'conditions'
    },
    {
      '1': 'relationships',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Relationship',
      '10': 'relationships'
    },
  ],
};

/// Descriptor for `ComplexCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complexConditionDescriptor = $convert.base64Decode(
    'ChBDb21wbGV4Q29uZGl0aW9uEjYKCmNvbmRpdGlvbnMYASADKAsyFi5nYWxheGlzLm1hcC5Db2'
    '5kaXRpb25SCmNvbmRpdGlvbnMSPwoNcmVsYXRpb25zaGlwcxgCIAMoCzIZLmdhbGF4aXMubWFw'
    'LlJlbGF0aW9uc2hpcFINcmVsYXRpb25zaGlwcw==');

@$core.Deprecated('Use metaMessageDescriptor instead')
const MetaMessage$json = {
  '1': 'MetaMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'propertyId', '3': 2, '4': 1, '5': 3, '10': 'propertyId'},
    {
      '1': 'conditionType',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ConditionType',
      '10': 'conditionType'
    },
    {'1': 'numValue', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'numValue'},
    {'1': 'strValue', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'strValue'},
    {
      '1': 'rangeValue',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.RangeValue',
      '9': 0,
      '10': 'rangeValue'
    },
    {'1': 'boolValue', '3': 7, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'setValues', '3': 8, '4': 1, '5': 9, '9': 0, '10': 'setValues'},
    {'1': 'applicationsCar', '3': 9, '4': 1, '5': 9, '10': 'applicationsCar'},
    {'1': 'unit', '3': 10, '4': 1, '5': 9, '10': 'unit'},
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `MetaMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metaMessageDescriptor = $convert.base64Decode(
    'CgtNZXRhTWVzc2FnZRIOCgJpZBgBIAEoA1ICaWQSHgoKcHJvcGVydHlJZBgCIAEoA1IKcHJvcG'
    'VydHlJZBJACg1jb25kaXRpb25UeXBlGAMgASgOMhouZ2FsYXhpcy5tYXAuQ29uZGl0aW9uVHlw'
    'ZVINY29uZGl0aW9uVHlwZRIcCghudW1WYWx1ZRgEIAEoAUgAUghudW1WYWx1ZRIcCghzdHJWYW'
    'x1ZRgFIAEoCUgAUghzdHJWYWx1ZRI5CgpyYW5nZVZhbHVlGAYgASgLMhcuZ2FsYXhpcy5tYXAu'
    'UmFuZ2VWYWx1ZUgAUgpyYW5nZVZhbHVlEh4KCWJvb2xWYWx1ZRgHIAEoCEgAUglib29sVmFsdW'
    'USHgoJc2V0VmFsdWVzGAggASgJSABSCXNldFZhbHVlcxIoCg9hcHBsaWNhdGlvbnNDYXIYCSAB'
    'KAlSD2FwcGxpY2F0aW9uc0NhchISCgR1bml0GAogASgJUgR1bml0QgcKBXZhbHVl');

@$core.Deprecated('Use rangeValueDescriptor instead')
const RangeValue$json = {
  '1': 'RangeValue',
  '2': [
    {'1': 'startValue', '3': 1, '4': 1, '5': 1, '10': 'startValue'},
    {'1': 'endValue', '3': 2, '4': 1, '5': 1, '10': 'endValue'},
    {'1': 'include', '3': 3, '4': 1, '5': 8, '10': 'include'},
  ],
};

/// Descriptor for `RangeValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeValueDescriptor = $convert.base64Decode(
    'CgpSYW5nZVZhbHVlEh4KCnN0YXJ0VmFsdWUYASABKAFSCnN0YXJ0VmFsdWUSGgoIZW5kVmFsdW'
    'UYAiABKAFSCGVuZFZhbHVlEhgKB2luY2x1ZGUYAyABKAhSB2luY2x1ZGU=');

@$core.Deprecated('Use relationshipDescriptor instead')
const Relationship$json = {
  '1': 'Relationship',
  '2': [
    {'1': 'id1', '3': 1, '4': 1, '5': 3, '10': 'id1'},
    {
      '1': 'logic',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.Logic',
      '10': 'logic'
    },
    {'1': 'id2', '3': 3, '4': 1, '5': 3, '10': 'id2'},
  ],
};

/// Descriptor for `Relationship`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationshipDescriptor = $convert.base64Decode(
    'CgxSZWxhdGlvbnNoaXASEAoDaWQxGAEgASgDUgNpZDESKAoFbG9naWMYAiABKA4yEi5nYWxheG'
    'lzLm1hcC5Mb2dpY1IFbG9naWMSEAoDaWQyGAMgASgDUgNpZDI=');

@$core.Deprecated('Use conductGroupDescriptor instead')
const ConductGroup$json = {
  '1': 'ConductGroup',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'propertyId', '3': 2, '4': 1, '5': 3, '10': 'propertyId'},
    {
      '1': 'metaResult',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MetaMessage',
      '9': 0,
      '10': 'metaResult'
    },
    {
      '1': 'multipleResult',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ComplexResult',
      '9': 0,
      '10': 'multipleResult'
    },
  ],
  '8': [
    {'1': 'result'},
  ],
};

/// Descriptor for `ConductGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conductGroupDescriptor = $convert.base64Decode(
    'CgxDb25kdWN0R3JvdXASDgoCaWQYASABKANSAmlkEh4KCnByb3BlcnR5SWQYAiABKANSCnByb3'
    'BlcnR5SWQSOgoKbWV0YVJlc3VsdBgDIAEoCzIYLmdhbGF4aXMubWFwLk1ldGFNZXNzYWdlSABS'
    'Cm1ldGFSZXN1bHQSRAoObXVsdGlwbGVSZXN1bHQYBCABKAsyGi5nYWxheGlzLm1hcC5Db21wbG'
    'V4UmVzdWx0SABSDm11bHRpcGxlUmVzdWx0QggKBnJlc3VsdA==');

@$core.Deprecated('Use complexResultDescriptor instead')
const ComplexResult$json = {
  '1': 'ComplexResult',
  '2': [
    {
      '1': 'metaResult',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MetaMessage',
      '10': 'metaResult'
    },
  ],
};

/// Descriptor for `ComplexResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List complexResultDescriptor = $convert.base64Decode(
    'Cg1Db21wbGV4UmVzdWx0EjgKCm1ldGFSZXN1bHQYASADKAsyGC5nYWxheGlzLm1hcC5NZXRhTW'
    'Vzc2FnZVIKbWV0YVJlc3VsdA==');

@$core.Deprecated('Use functionalBlockDescriptor instead')
const FunctionalBlock$json = {
  '1': 'FunctionalBlock',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'blockType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.BlockType',
      '10': 'blockType'
    },
    {
      '1': 'appliedLoadStatus',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.AppliedLoadStatus',
      '10': 'appliedLoadStatus'
    },
    {'1': 'appliedProducts', '3': 4, '4': 3, '5': 9, '10': 'appliedProducts'},
    {'1': 'appliedSensors', '3': 5, '4': 3, '5': 9, '10': 'appliedSensors'},
    {'1': 'shape', '3': 6, '4': 1, '5': 9, '10': 'shape'},
    {'1': 'enabled', '3': 7, '4': 1, '5': 8, '10': 'enabled'},
    {
      '1': 'result_reverse',
      '3': 8,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'resultReverse',
      '17': true
    },
    {
      '1': 'blockName',
      '3': 9,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'blockName',
      '17': true
    },
  ],
  '8': [
    {'1': '_result_reverse'},
    {'1': '_blockName'},
  ],
};

/// Descriptor for `FunctionalBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List functionalBlockDescriptor = $convert.base64Decode(
    'Cg9GdW5jdGlvbmFsQmxvY2sSDgoCaWQYASABKANSAmlkEjQKCWJsb2NrVHlwZRgCIAEoDjIWLm'
    'dhbGF4aXMubWFwLkJsb2NrVHlwZVIJYmxvY2tUeXBlEkwKEWFwcGxpZWRMb2FkU3RhdHVzGAMg'
    'ASgOMh4uZ2FsYXhpcy5tYXAuQXBwbGllZExvYWRTdGF0dXNSEWFwcGxpZWRMb2FkU3RhdHVzEi'
    'gKD2FwcGxpZWRQcm9kdWN0cxgEIAMoCVIPYXBwbGllZFByb2R1Y3RzEiYKDmFwcGxpZWRTZW5z'
    'b3JzGAUgAygJUg5hcHBsaWVkU2Vuc29ycxIUCgVzaGFwZRgGIAEoCVIFc2hhcGUSGAoHZW5hYm'
    'xlZBgHIAEoCFIHZW5hYmxlZBIqCg5yZXN1bHRfcmV2ZXJzZRgIIAEoCEgAUg1yZXN1bHRSZXZl'
    'cnNliAEBEiEKCWJsb2NrTmFtZRgJIAEoCUgBUglibG9ja05hbWWIAQFCEQoPX3Jlc3VsdF9yZX'
    'ZlcnNlQgwKCl9ibG9ja05hbWU=');

@$core.Deprecated('Use goodsStackDataDescriptor instead')
const GoodsStackData$json = {
  '1': 'GoodsStackData',
  '2': [
    {
      '1': 'category',
      '3': 1,
      '4': 1,
      '5': 5,
      '9': 0,
      '10': 'category',
      '17': true
    },
    {
      '1': 'categoryName',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'categoryName',
      '17': true
    },
    {
      '1': 'goodsStackName',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'goodsStackName',
      '17': true
    },
    {'1': 'goodsStackId', '3': 4, '4': 1, '5': 3, '10': 'goodsStackId'},
    {
      '1': 'goodsStackLength',
      '3': 5,
      '4': 1,
      '5': 5,
      '9': 3,
      '10': 'goodsStackLength',
      '17': true
    },
    {
      '1': 'goodsStackWidth',
      '3': 6,
      '4': 1,
      '5': 5,
      '9': 4,
      '10': 'goodsStackWidth',
      '17': true
    },
    {
      '1': 'goodsStackHeight',
      '3': 7,
      '4': 1,
      '5': 5,
      '9': 5,
      '10': 'goodsStackHeight',
      '17': true
    },
    {
      '1': 'goodsStackLegWidth',
      '3': 8,
      '4': 1,
      '5': 5,
      '9': 6,
      '10': 'goodsStackLegWidth',
      '17': true
    },
    {
      '1': 'goodsStackFeatureHeight',
      '3': 9,
      '4': 1,
      '5': 5,
      '9': 7,
      '10': 'goodsStackFeatureHeight',
      '17': true
    },
    {
      '1': 'goodsStackFeatureType',
      '3': 10,
      '4': 1,
      '5': 9,
      '9': 8,
      '10': 'goodsStackFeatureType',
      '17': true
    },
    {
      '1': 'goodsStackInnerHeight',
      '3': 11,
      '4': 1,
      '5': 5,
      '9': 9,
      '10': 'goodsStackInnerHeight',
      '17': true
    },
    {
      '1': 'boxMarkerOffsetToBottom',
      '3': 12,
      '4': 1,
      '5': 5,
      '9': 10,
      '10': 'boxMarkerOffsetToBottom',
      '17': true
    },
    {
      '1': 'goodsStackBottomCrossbeamHeight',
      '3': 13,
      '4': 1,
      '5': 5,
      '9': 11,
      '10': 'goodsStackBottomCrossbeamHeight',
      '17': true
    },
    {
      '1': 'goodsStackType',
      '3': 14,
      '4': 1,
      '5': 9,
      '9': 12,
      '10': 'goodsStackType',
      '17': true
    },
    {
      '1': 'hasBottomMark',
      '3': 15,
      '4': 1,
      '5': 8,
      '9': 13,
      '10': 'hasBottomMark',
      '17': true
    },
    {
      '1': 'goodsStackContourFileName',
      '3': 16,
      '4': 1,
      '5': 9,
      '9': 14,
      '10': 'goodsStackContourFileName',
      '17': true
    },
    {
      '1': 'goodsStackTelescopicDistanceToDetectFeature',
      '3': 17,
      '4': 1,
      '5': 5,
      '9': 15,
      '10': 'goodsStackTelescopicDistanceToDetectFeature',
      '17': true
    },
  ],
  '8': [
    {'1': '_category'},
    {'1': '_categoryName'},
    {'1': '_goodsStackName'},
    {'1': '_goodsStackLength'},
    {'1': '_goodsStackWidth'},
    {'1': '_goodsStackHeight'},
    {'1': '_goodsStackLegWidth'},
    {'1': '_goodsStackFeatureHeight'},
    {'1': '_goodsStackFeatureType'},
    {'1': '_goodsStackInnerHeight'},
    {'1': '_boxMarkerOffsetToBottom'},
    {'1': '_goodsStackBottomCrossbeamHeight'},
    {'1': '_goodsStackType'},
    {'1': '_hasBottomMark'},
    {'1': '_goodsStackContourFileName'},
    {'1': '_goodsStackTelescopicDistanceToDetectFeature'},
  ],
};

/// Descriptor for `GoodsStackData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsStackDataDescriptor = $convert.base64Decode(
    'Cg5Hb29kc1N0YWNrRGF0YRIfCghjYXRlZ29yeRgBIAEoBUgAUghjYXRlZ29yeYgBARInCgxjYX'
    'RlZ29yeU5hbWUYAiABKAlIAVIMY2F0ZWdvcnlOYW1liAEBEisKDmdvb2RzU3RhY2tOYW1lGAMg'
    'ASgJSAJSDmdvb2RzU3RhY2tOYW1liAEBEiIKDGdvb2RzU3RhY2tJZBgEIAEoA1IMZ29vZHNTdG'
    'Fja0lkEi8KEGdvb2RzU3RhY2tMZW5ndGgYBSABKAVIA1IQZ29vZHNTdGFja0xlbmd0aIgBARIt'
    'Cg9nb29kc1N0YWNrV2lkdGgYBiABKAVIBFIPZ29vZHNTdGFja1dpZHRoiAEBEi8KEGdvb2RzU3'
    'RhY2tIZWlnaHQYByABKAVIBVIQZ29vZHNTdGFja0hlaWdodIgBARIzChJnb29kc1N0YWNrTGVn'
    'V2lkdGgYCCABKAVIBlISZ29vZHNTdGFja0xlZ1dpZHRoiAEBEj0KF2dvb2RzU3RhY2tGZWF0dX'
    'JlSGVpZ2h0GAkgASgFSAdSF2dvb2RzU3RhY2tGZWF0dXJlSGVpZ2h0iAEBEjkKFWdvb2RzU3Rh'
    'Y2tGZWF0dXJlVHlwZRgKIAEoCUgIUhVnb29kc1N0YWNrRmVhdHVyZVR5cGWIAQESOQoVZ29vZH'
    'NTdGFja0lubmVySGVpZ2h0GAsgASgFSAlSFWdvb2RzU3RhY2tJbm5lckhlaWdodIgBARI9Chdi'
    'b3hNYXJrZXJPZmZzZXRUb0JvdHRvbRgMIAEoBUgKUhdib3hNYXJrZXJPZmZzZXRUb0JvdHRvbY'
    'gBARJNCh9nb29kc1N0YWNrQm90dG9tQ3Jvc3NiZWFtSGVpZ2h0GA0gASgFSAtSH2dvb2RzU3Rh'
    'Y2tCb3R0b21Dcm9zc2JlYW1IZWlnaHSIAQESKwoOZ29vZHNTdGFja1R5cGUYDiABKAlIDFIOZ2'
    '9vZHNTdGFja1R5cGWIAQESKQoNaGFzQm90dG9tTWFyaxgPIAEoCEgNUg1oYXNCb3R0b21NYXJr'
    'iAEBEkEKGWdvb2RzU3RhY2tDb250b3VyRmlsZU5hbWUYECABKAlIDlIZZ29vZHNTdGFja0Nvbn'
    'RvdXJGaWxlTmFtZYgBARJlCitnb29kc1N0YWNrVGVsZXNjb3BpY0Rpc3RhbmNlVG9EZXRlY3RG'
    'ZWF0dXJlGBEgASgFSA9SK2dvb2RzU3RhY2tUZWxlc2NvcGljRGlzdGFuY2VUb0RldGVjdEZlYX'
    'R1cmWIAQFCCwoJX2NhdGVnb3J5Qg8KDV9jYXRlZ29yeU5hbWVCEQoPX2dvb2RzU3RhY2tOYW1l'
    'QhMKEV9nb29kc1N0YWNrTGVuZ3RoQhIKEF9nb29kc1N0YWNrV2lkdGhCEwoRX2dvb2RzU3RhY2'
    'tIZWlnaHRCFQoTX2dvb2RzU3RhY2tMZWdXaWR0aEIaChhfZ29vZHNTdGFja0ZlYXR1cmVIZWln'
    'aHRCGAoWX2dvb2RzU3RhY2tGZWF0dXJlVHlwZUIYChZfZ29vZHNTdGFja0lubmVySGVpZ2h0Qh'
    'oKGF9ib3hNYXJrZXJPZmZzZXRUb0JvdHRvbUIiCiBfZ29vZHNTdGFja0JvdHRvbUNyb3NzYmVh'
    'bUhlaWdodEIRCg9fZ29vZHNTdGFja1R5cGVCEAoOX2hhc0JvdHRvbU1hcmtCHAoaX2dvb2RzU3'
    'RhY2tDb250b3VyRmlsZU5hbWVCLgosX2dvb2RzU3RhY2tUZWxlc2NvcGljRGlzdGFuY2VUb0Rl'
    'dGVjdEZlYXR1cmU=');
