// This is a generated file - do not edit.
//
// Generated from types.proto.

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

@$core.Deprecated('Use nodeDeviationDataDescriptor instead')
const NodeDeviationData$json = {
  '1': 'NodeDeviationData',
  '2': [
    {'1': 'diff_x', '3': 1, '4': 1, '5': 3, '10': 'diffX'},
    {'1': 'diff_y', '3': 2, '4': 1, '5': 3, '10': 'diffY'},
    {'1': 'rotate', '3': 3, '4': 1, '5': 1, '10': 'rotate'},
  ],
};

/// Descriptor for `NodeDeviationData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDeviationDataDescriptor = $convert.base64Decode(
    'ChFOb2RlRGV2aWF0aW9uRGF0YRIVCgZkaWZmX3gYASABKANSBWRpZmZYEhUKBmRpZmZfeRgCIA'
    'EoA1IFZGlmZlkSFgoGcm90YXRlGAMgASgBUgZyb3RhdGU=');

@$core.Deprecated('Use mapNodeHealthInfoDescriptor instead')
const MapNodeHealthInfo$json = {
  '1': 'MapNodeHealthInfo',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'marker_code', '3': 2, '4': 1, '5': 9, '10': 'markerCode'},
    {
      '1': 'decode_success_rate',
      '3': 3,
      '4': 1,
      '5': 1,
      '10': 'decodeSuccessRate'
    },
    {
      '1': 'deviation',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.site.health.NodeDeviationData',
      '9': 0,
      '10': 'deviation',
      '17': true
    },
  ],
  '8': [
    {'1': '_deviation'},
  ],
};

/// Descriptor for `MapNodeHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapNodeHealthInfoDescriptor = $convert.base64Decode(
    'ChFNYXBOb2RlSGVhbHRoSW5mbxIXCgdub2RlX2lkGAEgASgDUgZub2RlSWQSHwoLbWFya2VyX2'
    'NvZGUYAiABKAlSCm1hcmtlckNvZGUSLgoTZGVjb2RlX3N1Y2Nlc3NfcmF0ZRgDIAEoAVIRZGVj'
    'b2RlU3VjY2Vzc1JhdGUSSQoJZGV2aWF0aW9uGAQgASgLMiYuZ2FsYXhpcy5zaXRlLmhlYWx0aC'
    '5Ob2RlRGV2aWF0aW9uRGF0YUgAUglkZXZpYXRpb26IAQFCDAoKX2RldmlhdGlvbg==');

@$core.Deprecated('Use positionData_tDescriptor instead')
const PositionData_t$json = {
  '1': 'PositionData_t',
  '2': [
    {'1': 'local_x', '3': 1, '4': 1, '5': 3, '10': 'localX'},
    {'1': 'local_y', '3': 2, '4': 1, '5': 3, '10': 'localY'},
  ],
};

/// Descriptor for `PositionData_t`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionData_tDescriptor = $convert.base64Decode(
    'Cg5Qb3NpdGlvbkRhdGFfdBIXCgdsb2NhbF94GAEgASgDUgZsb2NhbFgSFwoHbG9jYWxfeRgCIA'
    'EoA1IGbG9jYWxZ');

@$core.Deprecated('Use positionData_fDescriptor instead')
const PositionData_f$json = {
  '1': 'PositionData_f',
  '2': [
    {'1': 'local_x', '3': 1, '4': 1, '5': 1, '10': 'localX'},
    {'1': 'local_y', '3': 2, '4': 1, '5': 1, '10': 'localY'},
  ],
};

/// Descriptor for `PositionData_f`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionData_fDescriptor = $convert.base64Decode(
    'Cg5Qb3NpdGlvbkRhdGFfZhIXCgdsb2NhbF94GAEgASgBUgZsb2NhbFgSFwoHbG9jYWxfeRgCIA'
    'EoAVIGbG9jYWxZ');

@$core.Deprecated('Use currentMarkDataDescriptor instead')
const CurrentMarkData$json = {
  '1': 'CurrentMarkData',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'marker_code', '3': 3, '4': 1, '5': 9, '10': 'markerCode'},
    {
      '1': 'currentlogiclocation',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.site.health.PositionData_t',
      '9': 0,
      '10': 'currentlogiclocation',
      '17': true
    },
    {
      '1': 'currentstandardlocation',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.site.health.PositionData_t',
      '9': 1,
      '10': 'currentstandardlocation',
      '17': true
    },
    {
      '1': 'currentcomputedlocation',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.site.health.PositionData_f',
      '9': 2,
      '10': 'currentcomputedlocation',
      '17': true
    },
    {'1': 'current_degree', '3': 7, '4': 1, '5': 1, '10': 'currentDegree'},
  ],
  '8': [
    {'1': '_currentlogiclocation'},
    {'1': '_currentstandardlocation'},
    {'1': '_currentcomputedlocation'},
  ],
};

/// Descriptor for `CurrentMarkData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currentMarkDataDescriptor = $convert.base64Decode(
    'Cg9DdXJyZW50TWFya0RhdGESFQoGY2FyX2lkGAEgASgDUgVjYXJJZBIXCgdub2RlX2lkGAIgAS'
    'gDUgZub2RlSWQSHwoLbWFya2VyX2NvZGUYAyABKAlSCm1hcmtlckNvZGUSXAoUY3VycmVudGxv'
    'Z2ljbG9jYXRpb24YBCABKAsyIy5nYWxheGlzLnNpdGUuaGVhbHRoLlBvc2l0aW9uRGF0YV90SA'
    'BSFGN1cnJlbnRsb2dpY2xvY2F0aW9uiAEBEmIKF2N1cnJlbnRzdGFuZGFyZGxvY2F0aW9uGAUg'
    'ASgLMiMuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Qb3NpdGlvbkRhdGFfdEgBUhdjdXJyZW50c3Rhbm'
    'RhcmRsb2NhdGlvbogBARJiChdjdXJyZW50Y29tcHV0ZWRsb2NhdGlvbhgGIAEoCzIjLmdhbGF4'
    'aXMuc2l0ZS5oZWFsdGguUG9zaXRpb25EYXRhX2ZIAlIXY3VycmVudGNvbXB1dGVkbG9jYXRpb2'
    '6IAQESJQoOY3VycmVudF9kZWdyZWUYByABKAFSDWN1cnJlbnREZWdyZWVCFwoVX2N1cnJlbnRs'
    'b2dpY2xvY2F0aW9uQhoKGF9jdXJyZW50c3RhbmRhcmRsb2NhdGlvbkIaChhfY3VycmVudGNvbX'
    'B1dGVkbG9jYXRpb24=');

@$core.Deprecated('Use codeHealthInfoDescriptor instead')
const CodeHealthInfo$json = {
  '1': 'CodeHealthInfo',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'marker_code', '3': 3, '4': 1, '5': 9, '10': 'markerCode'},
    {
      '1': 'decode_success_rate',
      '3': 4,
      '4': 1,
      '5': 1,
      '10': 'decodeSuccessRate'
    },
    {'1': 'diff_x', '3': 5, '4': 1, '5': 3, '10': 'diffX'},
    {'1': 'diff_y', '3': 6, '4': 1, '5': 3, '10': 'diffY'},
    {'1': 'angle', '3': 7, '4': 1, '5': 1, '10': 'angle'},
  ],
};

/// Descriptor for `CodeHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codeHealthInfoDescriptor = $convert.base64Decode(
    'Cg5Db2RlSGVhbHRoSW5mbxIVCgZjYXJfaWQYASABKANSBWNhcklkEhcKB25vZGVfaWQYAiABKA'
    'NSBm5vZGVJZBIfCgttYXJrZXJfY29kZRgDIAEoCVIKbWFya2VyQ29kZRIuChNkZWNvZGVfc3Vj'
    'Y2Vzc19yYXRlGAQgASgBUhFkZWNvZGVTdWNjZXNzUmF0ZRIVCgZkaWZmX3gYBSABKANSBWRpZm'
    'ZYEhUKBmRpZmZfeRgGIAEoA1IFZGlmZlkSFAoFYW5nbGUYByABKAFSBWFuZ2xl');
