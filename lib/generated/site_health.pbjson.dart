//
//  Generated code. Do not modify.
//  source: site_health.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use healthStatusDescriptor instead')
const HealthStatus$json = {
  '1': 'HealthStatus',
  '2': [
    {'1': 'HEALTH_STATUS_UNKNOWN', '2': 0},
    {'1': 'HEALTH_STATUS_NORMAL', '2': 1},
    {'1': 'HEALTH_STATUS_WARNING', '2': 2},
    {'1': 'HEALTH_STATUS_ERROR', '2': 3},
    {'1': 'HEALTH_STATUS_CRITICAL', '2': 4},
  ],
};

/// Descriptor for `HealthStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List healthStatusDescriptor = $convert.base64Decode(
    'CgxIZWFsdGhTdGF0dXMSGQoVSEVBTFRIX1NUQVRVU19VTktOT1dOEAASGAoUSEVBTFRIX1NUQV'
    'RVU19OT1JNQUwQARIZChVIRUFMVEhfU1RBVFVTX1dBUk5JTkcQAhIXChNIRUFMVEhfU1RBVFVT'
    'X0VSUk9SEAMSGgoWSEVBTFRIX1NUQVRVU19DUklUSUNBTBAE');

@$core.Deprecated('Use markerIssueTypeDescriptor instead')
const MarkerIssueType$json = {
  '1': 'MarkerIssueType',
  '2': [
    {'1': 'MARKER_ISSUE_NONE', '2': 0},
    {'1': 'MARKER_ISSUE_DAMAGED', '2': 1},
    {'1': 'MARKER_ISSUE_MISALIGNED', '2': 2},
    {'1': 'MARKER_ISSUE_ANGLE_DEVIATION', '2': 3},
    {'1': 'MARKER_ISSUE_WRONG_CODE', '2': 4},
  ],
};

/// Descriptor for `MarkerIssueType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List markerIssueTypeDescriptor = $convert.base64Decode(
    'Cg9NYXJrZXJJc3N1ZVR5cGUSFQoRTUFSS0VSX0lTU1VFX05PTkUQABIYChRNQVJLRVJfSVNTVU'
    'VfREFNQUdFRBABEhsKF01BUktFUl9JU1NVRV9NSVNBTElHTkVEEAISIAocTUFSS0VSX0lTU1VF'
    'X0FOR0xFX0RFVklBVElPThADEhsKF01BUktFUl9JU1NVRV9XUk9OR19DT0RFEAQ=');

@$core.Deprecated('Use groundIssueTypeDescriptor instead')
const GroundIssueType$json = {
  '1': 'GroundIssueType',
  '2': [
    {'1': 'GROUND_ISSUE_NONE', '2': 0},
    {'1': 'GROUND_ISSUE_UNEVEN', '2': 1},
    {'1': 'GROUND_ISSUE_OBSTACLE', '2': 2},
    {'1': 'GROUND_ISSUE_SLOPE', '2': 3},
  ],
};

/// Descriptor for `GroundIssueType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List groundIssueTypeDescriptor = $convert.base64Decode(
    'Cg9Hcm91bmRJc3N1ZVR5cGUSFQoRR1JPVU5EX0lTU1VFX05PTkUQABIXChNHUk9VTkRfSVNTVU'
    'VfVU5FVkVOEAESGQoVR1JPVU5EX0lTU1VFX09CU1RBQ0xFEAISFgoSR1JPVU5EX0lTU1VFX1NM'
    'T1BFEAM=');

@$core.Deprecated('Use goodsSlotIssueTypeDescriptor instead')
const GoodsSlotIssueType$json = {
  '1': 'GoodsSlotIssueType',
  '2': [
    {'1': 'GOODS_SLOT_ISSUE_NONE', '2': 0},
    {'1': 'GOODS_SLOT_ISSUE_HEIGHT_MISMATCH', '2': 1},
    {'1': 'GOODS_SLOT_ISSUE_POSITION_ERROR', '2': 2},
    {'1': 'GOODS_SLOT_ISSUE_DAMAGED', '2': 3},
  ],
};

/// Descriptor for `GoodsSlotIssueType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List goodsSlotIssueTypeDescriptor = $convert.base64Decode(
    'ChJHb29kc1Nsb3RJc3N1ZVR5cGUSGQoVR09PRFNfU0xPVF9JU1NVRV9OT05FEAASJAogR09PRF'
    'NfU0xPVF9JU1NVRV9IRUlHSFRfTUlTTUFUQ0gQARIjCh9HT09EU19TTE9UX0lTU1VFX1BPU0lU'
    'SU9OX0VSUk9SEAISHAoYR09PRFNfU0xPVF9JU1NVRV9EQU1BR0VEEAM=');

@$core.Deprecated('Use exceptionCategoryDescriptor instead')
const ExceptionCategory$json = {
  '1': 'ExceptionCategory',
  '2': [
    {'1': 'EXCEPTION_CATEGORY_UNKNOWN', '2': 0},
    {'1': 'EXCEPTION_CATEGORY_MARKER', '2': 1},
    {'1': 'EXCEPTION_CATEGORY_GROUND', '2': 2},
    {'1': 'EXCEPTION_CATEGORY_GOODS_SLOT', '2': 3},
  ],
};

/// Descriptor for `ExceptionCategory`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List exceptionCategoryDescriptor = $convert.base64Decode(
    'ChFFeGNlcHRpb25DYXRlZ29yeRIeChpFWENFUFRJT05fQ0FURUdPUllfVU5LTk9XThAAEh0KGU'
    'VYQ0VQVElPTl9DQVRFR09SWV9NQVJLRVIQARIdChlFWENFUFRJT05fQ0FURUdPUllfR1JPVU5E'
    'EAISIQodRVhDRVBUSU9OX0NBVEVHT1JZX0dPT0RTX1NMT1QQAw==');

@$core.Deprecated('Use markerHealthInfoDescriptor instead')
const MarkerHealthInfo$json = {
  '1': 'MarkerHealthInfo',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'node_logic_location', '3': 3, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '9': 0, '10': 'nodeLogicLocation', '17': true},
    {'1': 'exception_type', '3': 4, '4': 1, '5': 9, '10': 'exceptionType'},
    {'1': 'detected_marker_code', '3': 5, '4': 1, '5': 9, '10': 'detectedMarkerCode'},
    {'1': 'decode_success_rate', '3': 6, '4': 1, '5': 1, '10': 'decodeSuccessRate'},
    {'1': 'deviation', '3': 7, '4': 1, '5': 11, '6': '.galaxis.site.health.NodeDeviationData', '9': 1, '10': 'deviation', '17': true},
    {'1': 'issue_type', '3': 8, '4': 1, '5': 14, '6': '.galaxis.site.health.MarkerIssueType', '10': 'issueType'},
    {'1': 'health_status', '3': 9, '4': 1, '5': 14, '6': '.galaxis.site.health.HealthStatus', '10': 'healthStatus'},
    {'1': 'description', '3': 10, '4': 1, '5': 9, '10': 'description'},
    {'1': 'timestamp', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
  '8': [
    {'1': '_node_logic_location'},
    {'1': '_deviation'},
  ],
};

/// Descriptor for `MarkerHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markerHealthInfoDescriptor = $convert.base64Decode(
    'ChBNYXJrZXJIZWFsdGhJbmZvEhUKBmNhcl9pZBgBIAEoA1IFY2FySWQSFwoHbm9kZV9pZBgCIA'
    'EoA1IGbm9kZUlkElgKE25vZGVfbG9naWNfbG9jYXRpb24YAyABKAsyIy5nYWxheGlzLnNpdGUu'
    'aGVhbHRoLlBvc2l0aW9uRGF0YV90SABSEW5vZGVMb2dpY0xvY2F0aW9uiAEBEiUKDmV4Y2VwdG'
    'lvbl90eXBlGAQgASgJUg1leGNlcHRpb25UeXBlEjAKFGRldGVjdGVkX21hcmtlcl9jb2RlGAUg'
    'ASgJUhJkZXRlY3RlZE1hcmtlckNvZGUSLgoTZGVjb2RlX3N1Y2Nlc3NfcmF0ZRgGIAEoAVIRZG'
    'Vjb2RlU3VjY2Vzc1JhdGUSSQoJZGV2aWF0aW9uGAcgASgLMiYuZ2FsYXhpcy5zaXRlLmhlYWx0'
    'aC5Ob2RlRGV2aWF0aW9uRGF0YUgBUglkZXZpYXRpb26IAQESQwoKaXNzdWVfdHlwZRgIIAEoDj'
    'IkLmdhbGF4aXMuc2l0ZS5oZWFsdGguTWFya2VySXNzdWVUeXBlUglpc3N1ZVR5cGUSRgoNaGVh'
    'bHRoX3N0YXR1cxgJIAEoDjIhLmdhbGF4aXMuc2l0ZS5oZWFsdGguSGVhbHRoU3RhdHVzUgxoZW'
    'FsdGhTdGF0dXMSIAoLZGVzY3JpcHRpb24YCiABKAlSC2Rlc2NyaXB0aW9uEjgKCXRpbWVzdGFt'
    'cBgLIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcEIWChRfbm9kZV'
    '9sb2dpY19sb2NhdGlvbkIMCgpfZGV2aWF0aW9u');

@$core.Deprecated('Use groundHealthInfoDescriptor instead')
const GroundHealthInfo$json = {
  '1': 'GroundHealthInfo',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'start_node', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '9': 0, '10': 'startNode', '17': true},
    {'1': 'end_node', '3': 3, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '9': 1, '10': 'endNode', '17': true},
    {'1': 'floor_flatness', '3': 4, '4': 1, '5': 1, '10': 'floorFlatness'},
    {'1': 'max_deviation', '3': 5, '4': 1, '5': 1, '10': 'maxDeviation'},
    {'1': 'average_deviation', '3': 6, '4': 1, '5': 1, '10': 'averageDeviation'},
    {'1': 'issue_type', '3': 7, '4': 1, '5': 14, '6': '.galaxis.site.health.GroundIssueType', '10': 'issueType'},
    {'1': 'health_status', '3': 8, '4': 1, '5': 14, '6': '.galaxis.site.health.HealthStatus', '10': 'healthStatus'},
    {'1': 'description', '3': 9, '4': 1, '5': 9, '10': 'description'},
    {'1': 'timestamp', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
  '8': [
    {'1': '_start_node'},
    {'1': '_end_node'},
  ],
};

/// Descriptor for `GroundHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groundHealthInfoDescriptor = $convert.base64Decode(
    'ChBHcm91bmRIZWFsdGhJbmZvEhUKBmNhcl9pZBgBIAEoA1IFY2FySWQSRwoKc3RhcnRfbm9kZR'
    'gCIAEoCzIjLmdhbGF4aXMuc2l0ZS5oZWFsdGguUG9zaXRpb25EYXRhX3RIAFIJc3RhcnROb2Rl'
    'iAEBEkMKCGVuZF9ub2RlGAMgASgLMiMuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Qb3NpdGlvbkRhdG'
    'FfdEgBUgdlbmROb2RliAEBEiUKDmZsb29yX2ZsYXRuZXNzGAQgASgBUg1mbG9vckZsYXRuZXNz'
    'EiMKDW1heF9kZXZpYXRpb24YBSABKAFSDG1heERldmlhdGlvbhIrChFhdmVyYWdlX2RldmlhdG'
    'lvbhgGIAEoAVIQYXZlcmFnZURldmlhdGlvbhJDCgppc3N1ZV90eXBlGAcgASgOMiQuZ2FsYXhp'
    'cy5zaXRlLmhlYWx0aC5Hcm91bmRJc3N1ZVR5cGVSCWlzc3VlVHlwZRJGCg1oZWFsdGhfc3RhdH'
    'VzGAggASgOMiEuZ2FsYXhpcy5zaXRlLmhlYWx0aC5IZWFsdGhTdGF0dXNSDGhlYWx0aFN0YXR1'
    'cxIgCgtkZXNjcmlwdGlvbhgJIAEoCVILZGVzY3JpcHRpb24SOAoJdGltZXN0YW1wGAogASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1wQg0KC19zdGFydF9ub2RlQgsK'
    'CV9lbmRfbm9kZQ==');

@$core.Deprecated('Use goodsSlotHealthInfoDescriptor instead')
const GoodsSlotHealthInfo$json = {
  '1': 'GoodsSlotHealthInfo',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'goods_slot_id', '3': 2, '4': 1, '5': 3, '10': 'goodsSlotId'},
    {'1': 'expected_height', '3': 3, '4': 1, '5': 3, '10': 'expectedHeight'},
    {'1': 'detected_height', '3': 4, '4': 1, '5': 3, '10': 'detectedHeight'},
    {'1': 'height_difference', '3': 5, '4': 1, '5': 3, '10': 'heightDifference'},
    {'1': 'issue_type', '3': 6, '4': 1, '5': 14, '6': '.galaxis.site.health.GoodsSlotIssueType', '10': 'issueType'},
    {'1': 'health_status', '3': 7, '4': 1, '5': 14, '6': '.galaxis.site.health.HealthStatus', '10': 'healthStatus'},
    {'1': 'description', '3': 8, '4': 1, '5': 9, '10': 'description'},
    {'1': 'timestamp', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    {'1': 'goods_slot_direction', '3': 10, '4': 1, '5': 3, '10': 'goodsSlotDirection'},
    {'1': 'goods_slot_jack_height', '3': 11, '4': 1, '5': 3, '10': 'goodsSlotJackHeight'},
    {'1': 'goods_slot_distance_to_station', '3': 12, '4': 1, '5': 3, '10': 'goodsSlotDistanceToStation'},
    {'1': 'goods_slot_pallet_feature_height', '3': 13, '4': 1, '5': 3, '10': 'goodsSlotPalletFeatureHeight'},
    {'1': 'goods_slot_type_id', '3': 14, '4': 1, '5': 3, '10': 'goodsSlotTypeId'},
    {'1': 'detected_goods_slot_beam_line_distance', '3': 15, '4': 1, '5': 3, '10': 'detectedGoodsSlotBeamLineDistance'},
    {'1': 'detected_goods_slot_beam_line_angle', '3': 16, '4': 1, '5': 3, '10': 'detectedGoodsSlotBeamLineAngle'},
    {'1': 'detected_goods_slot_pallet_distance', '3': 17, '4': 1, '5': 3, '10': 'detectedGoodsSlotPalletDistance'},
    {'1': 'detected_goods_slot_pallet_angle', '3': 18, '4': 1, '5': 1, '10': 'detectedGoodsSlotPalletAngle'},
    {'1': 'detected_goods_slot_upright_distance', '3': 19, '4': 1, '5': 3, '10': 'detectedGoodsSlotUprightDistance'},
    {'1': 'detected_goods_slot_and_car_angle', '3': 20, '4': 1, '5': 1, '10': 'detectedGoodsSlotAndCarAngle'},
    {'1': 'detected_goods_slot_pallet_entry_height', '3': 21, '4': 1, '5': 3, '10': 'detectedGoodsSlotPalletEntryHeight'},
    {'1': 'detected_goods_slot_raw_height', '3': 22, '4': 1, '5': 3, '10': 'detectedGoodsSlotRawHeight'},
    {'1': 'detected_goods_slot_beam_line_raw_distance', '3': 23, '4': 1, '5': 3, '10': 'detectedGoodsSlotBeamLineRawDistance'},
    {'1': 'detected_goods_slot_pallet_raw_distance', '3': 24, '4': 1, '5': 3, '10': 'detectedGoodsSlotPalletRawDistance'},
    {'1': 'detected_goods_slot_upright_raw_distance', '3': 25, '4': 1, '5': 3, '10': 'detectedGoodsSlotUprightRawDistance'},
  ],
};

/// Descriptor for `GoodsSlotHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsSlotHealthInfoDescriptor = $convert.base64Decode(
    'ChNHb29kc1Nsb3RIZWFsdGhJbmZvEhUKBmNhcl9pZBgBIAEoA1IFY2FySWQSIgoNZ29vZHNfc2'
    'xvdF9pZBgCIAEoA1ILZ29vZHNTbG90SWQSJwoPZXhwZWN0ZWRfaGVpZ2h0GAMgASgDUg5leHBl'
    'Y3RlZEhlaWdodBInCg9kZXRlY3RlZF9oZWlnaHQYBCABKANSDmRldGVjdGVkSGVpZ2h0EisKEW'
    'hlaWdodF9kaWZmZXJlbmNlGAUgASgDUhBoZWlnaHREaWZmZXJlbmNlEkYKCmlzc3VlX3R5cGUY'
    'BiABKA4yJy5nYWxheGlzLnNpdGUuaGVhbHRoLkdvb2RzU2xvdElzc3VlVHlwZVIJaXNzdWVUeX'
    'BlEkYKDWhlYWx0aF9zdGF0dXMYByABKA4yIS5nYWxheGlzLnNpdGUuaGVhbHRoLkhlYWx0aFN0'
    'YXR1c1IMaGVhbHRoU3RhdHVzEiAKC2Rlc2NyaXB0aW9uGAggASgJUgtkZXNjcmlwdGlvbhI4Cg'
    'l0aW1lc3RhbXAYCSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXAS'
    'MAoUZ29vZHNfc2xvdF9kaXJlY3Rpb24YCiABKANSEmdvb2RzU2xvdERpcmVjdGlvbhIzChZnb2'
    '9kc19zbG90X2phY2tfaGVpZ2h0GAsgASgDUhNnb29kc1Nsb3RKYWNrSGVpZ2h0EkIKHmdvb2Rz'
    'X3Nsb3RfZGlzdGFuY2VfdG9fc3RhdGlvbhgMIAEoA1IaZ29vZHNTbG90RGlzdGFuY2VUb1N0YX'
    'Rpb24SRgogZ29vZHNfc2xvdF9wYWxsZXRfZmVhdHVyZV9oZWlnaHQYDSABKANSHGdvb2RzU2xv'
    'dFBhbGxldEZlYXR1cmVIZWlnaHQSKwoSZ29vZHNfc2xvdF90eXBlX2lkGA4gASgDUg9nb29kc1'
    'Nsb3RUeXBlSWQSUQomZGV0ZWN0ZWRfZ29vZHNfc2xvdF9iZWFtX2xpbmVfZGlzdGFuY2UYDyAB'
    'KANSIWRldGVjdGVkR29vZHNTbG90QmVhbUxpbmVEaXN0YW5jZRJLCiNkZXRlY3RlZF9nb29kc1'
    '9zbG90X2JlYW1fbGluZV9hbmdsZRgQIAEoA1IeZGV0ZWN0ZWRHb29kc1Nsb3RCZWFtTGluZUFu'
    'Z2xlEkwKI2RldGVjdGVkX2dvb2RzX3Nsb3RfcGFsbGV0X2Rpc3RhbmNlGBEgASgDUh9kZXRlY3'
    'RlZEdvb2RzU2xvdFBhbGxldERpc3RhbmNlEkYKIGRldGVjdGVkX2dvb2RzX3Nsb3RfcGFsbGV0'
    'X2FuZ2xlGBIgASgBUhxkZXRlY3RlZEdvb2RzU2xvdFBhbGxldEFuZ2xlEk4KJGRldGVjdGVkX2'
    'dvb2RzX3Nsb3RfdXByaWdodF9kaXN0YW5jZRgTIAEoA1IgZGV0ZWN0ZWRHb29kc1Nsb3RVcHJp'
    'Z2h0RGlzdGFuY2USRwohZGV0ZWN0ZWRfZ29vZHNfc2xvdF9hbmRfY2FyX2FuZ2xlGBQgASgBUh'
    'xkZXRlY3RlZEdvb2RzU2xvdEFuZENhckFuZ2xlElMKJ2RldGVjdGVkX2dvb2RzX3Nsb3RfcGFs'
    'bGV0X2VudHJ5X2hlaWdodBgVIAEoA1IiZGV0ZWN0ZWRHb29kc1Nsb3RQYWxsZXRFbnRyeUhlaW'
    'dodBJCCh5kZXRlY3RlZF9nb29kc19zbG90X3Jhd19oZWlnaHQYFiABKANSGmRldGVjdGVkR29v'
    'ZHNTbG90UmF3SGVpZ2h0ElgKKmRldGVjdGVkX2dvb2RzX3Nsb3RfYmVhbV9saW5lX3Jhd19kaX'
    'N0YW5jZRgXIAEoA1IkZGV0ZWN0ZWRHb29kc1Nsb3RCZWFtTGluZVJhd0Rpc3RhbmNlElMKJ2Rl'
    'dGVjdGVkX2dvb2RzX3Nsb3RfcGFsbGV0X3Jhd19kaXN0YW5jZRgYIAEoA1IiZGV0ZWN0ZWRHb2'
    '9kc1Nsb3RQYWxsZXRSYXdEaXN0YW5jZRJVCihkZXRlY3RlZF9nb29kc19zbG90X3VwcmlnaHRf'
    'cmF3X2Rpc3RhbmNlGBkgASgDUiNkZXRlY3RlZEdvb2RzU2xvdFVwcmlnaHRSYXdEaXN0YW5jZQ'
    '==');

@$core.Deprecated('Use siteHealthInfoDescriptor instead')
const SiteHealthInfo$json = {
  '1': 'SiteHealthInfo',
  '2': [
    {'1': 'marker_health', '3': 1, '4': 1, '5': 11, '6': '.galaxis.site.health.MarkerHealthInfo', '9': 0, '10': 'markerHealth'},
    {'1': 'ground_health', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.GroundHealthInfo', '9': 0, '10': 'groundHealth'},
    {'1': 'goods_slot_health', '3': 3, '4': 1, '5': 11, '6': '.galaxis.site.health.GoodsSlotHealthInfo', '9': 0, '10': 'goodsSlotHealth'},
  ],
  '8': [
    {'1': 'health_info'},
  ],
};

/// Descriptor for `SiteHealthInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List siteHealthInfoDescriptor = $convert.base64Decode(
    'Cg5TaXRlSGVhbHRoSW5mbxJMCg1tYXJrZXJfaGVhbHRoGAEgASgLMiUuZ2FsYXhpcy5zaXRlLm'
    'hlYWx0aC5NYXJrZXJIZWFsdGhJbmZvSABSDG1hcmtlckhlYWx0aBJMCg1ncm91bmRfaGVhbHRo'
    'GAIgASgLMiUuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Hcm91bmRIZWFsdGhJbmZvSABSDGdyb3VuZE'
    'hlYWx0aBJWChFnb29kc19zbG90X2hlYWx0aBgDIAEoCzIoLmdhbGF4aXMuc2l0ZS5oZWFsdGgu'
    'R29vZHNTbG90SGVhbHRoSW5mb0gAUg9nb29kc1Nsb3RIZWFsdGhCDQoLaGVhbHRoX2luZm8=');

@$core.Deprecated('Use healthInfoQueryRequestDescriptor instead')
const HealthInfoQueryRequest$json = {
  '1': 'HealthInfoQueryRequest',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'nodeId', '17': true},
    {'1': 'logic_location', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '9': 1, '10': 'logicLocation', '17': true},
    {'1': 'goods_slot_id', '3': 3, '4': 1, '5': 3, '9': 2, '10': 'goodsSlotId', '17': true},
    {'1': 'min_status', '3': 4, '4': 1, '5': 14, '6': '.galaxis.site.health.HealthStatus', '9': 3, '10': 'minStatus', '17': true},
    {'1': 'start_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 4, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 5, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_node_id'},
    {'1': '_logic_location'},
    {'1': '_goods_slot_id'},
    {'1': '_min_status'},
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `HealthInfoQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthInfoQueryRequestDescriptor = $convert.base64Decode(
    'ChZIZWFsdGhJbmZvUXVlcnlSZXF1ZXN0EhwKB25vZGVfaWQYASABKANIAFIGbm9kZUlkiAEBEk'
    '8KDmxvZ2ljX2xvY2F0aW9uGAIgASgLMiMuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Qb3NpdGlvbkRh'
    'dGFfdEgBUg1sb2dpY0xvY2F0aW9uiAEBEicKDWdvb2RzX3Nsb3RfaWQYAyABKANIAlILZ29vZH'
    'NTbG90SWSIAQESRQoKbWluX3N0YXR1cxgEIAEoDjIhLmdhbGF4aXMuc2l0ZS5oZWFsdGguSGVh'
    'bHRoU3RhdHVzSANSCW1pblN0YXR1c4gBARI+CgpzdGFydF90aW1lGAUgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcEgEUglzdGFydFRpbWWIAQESOgoIZW5kX3RpbWUYBiABKAsyGi5n'
    'b29nbGUucHJvdG9idWYuVGltZXN0YW1wSAVSB2VuZFRpbWWIAQFCCgoIX25vZGVfaWRCEQoPX2'
    'xvZ2ljX2xvY2F0aW9uQhAKDl9nb29kc19zbG90X2lkQg0KC19taW5fc3RhdHVzQg0KC19zdGFy'
    'dF90aW1lQgsKCV9lbmRfdGltZQ==');

@$core.Deprecated('Use healthInfoQueryResponseDescriptor instead')
const HealthInfoQueryResponse$json = {
  '1': 'HealthInfoQueryResponse',
  '2': [
    {'1': 'marker_healths', '3': 1, '4': 3, '5': 11, '6': '.galaxis.site.health.MarkerHealthInfo', '10': 'markerHealths'},
    {'1': 'ground_healths', '3': 2, '4': 3, '5': 11, '6': '.galaxis.site.health.GroundHealthInfo', '10': 'groundHealths'},
    {'1': 'goods_slot_healths', '3': 3, '4': 3, '5': 11, '6': '.galaxis.site.health.GoodsSlotHealthInfo', '10': 'goodsSlotHealths'},
  ],
};

/// Descriptor for `HealthInfoQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthInfoQueryResponseDescriptor = $convert.base64Decode(
    'ChdIZWFsdGhJbmZvUXVlcnlSZXNwb25zZRJMCg5tYXJrZXJfaGVhbHRocxgBIAMoCzIlLmdhbG'
    'F4aXMuc2l0ZS5oZWFsdGguTWFya2VySGVhbHRoSW5mb1INbWFya2VySGVhbHRocxJMCg5ncm91'
    'bmRfaGVhbHRocxgCIAMoCzIlLmdhbGF4aXMuc2l0ZS5oZWFsdGguR3JvdW5kSGVhbHRoSW5mb1'
    'INZ3JvdW5kSGVhbHRocxJWChJnb29kc19zbG90X2hlYWx0aHMYAyADKAsyKC5nYWxheGlzLnNp'
    'dGUuaGVhbHRoLkdvb2RzU2xvdEhlYWx0aEluZm9SEGdvb2RzU2xvdEhlYWx0aHM=');

@$core.Deprecated('Use healthStatisticsDescriptor instead')
const HealthStatistics$json = {
  '1': 'HealthStatistics',
  '2': [
    {'1': 'total_nodes', '3': 1, '4': 1, '5': 3, '10': 'totalNodes'},
    {'1': 'normal_nodes', '3': 2, '4': 1, '5': 3, '10': 'normalNodes'},
    {'1': 'warning_nodes', '3': 3, '4': 1, '5': 3, '10': 'warningNodes'},
    {'1': 'error_nodes', '3': 4, '4': 1, '5': 3, '10': 'errorNodes'},
    {'1': 'critical_nodes', '3': 5, '4': 1, '5': 3, '10': 'criticalNodes'},
    {'1': 'total_goods_slots', '3': 6, '4': 1, '5': 3, '10': 'totalGoodsSlots'},
    {'1': 'normal_goods_slots', '3': 7, '4': 1, '5': 3, '10': 'normalGoodsSlots'},
    {'1': 'warning_goods_slots', '3': 8, '4': 1, '5': 3, '10': 'warningGoodsSlots'},
    {'1': 'error_goods_slots', '3': 9, '4': 1, '5': 3, '10': 'errorGoodsSlots'},
    {'1': 'overall_health_score', '3': 10, '4': 1, '5': 1, '10': 'overallHealthScore'},
    {'1': 'per_car_exception_counts', '3': 11, '4': 3, '5': 11, '6': '.galaxis.site.health.CarExceptionSummary', '10': 'perCarExceptionCounts'},
    {'1': 'total_ground_areas', '3': 12, '4': 1, '5': 3, '10': 'totalGroundAreas'},
    {'1': 'normal_ground_areas', '3': 13, '4': 1, '5': 3, '10': 'normalGroundAreas'},
    {'1': 'warning_ground_areas', '3': 14, '4': 1, '5': 3, '10': 'warningGroundAreas'},
    {'1': 'error_ground_areas', '3': 15, '4': 1, '5': 3, '10': 'errorGroundAreas'},
    {'1': 'critical_ground_areas', '3': 16, '4': 1, '5': 3, '10': 'criticalGroundAreas'},
  ],
};

/// Descriptor for `HealthStatistics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List healthStatisticsDescriptor = $convert.base64Decode(
    'ChBIZWFsdGhTdGF0aXN0aWNzEh8KC3RvdGFsX25vZGVzGAEgASgDUgp0b3RhbE5vZGVzEiEKDG'
    '5vcm1hbF9ub2RlcxgCIAEoA1ILbm9ybWFsTm9kZXMSIwoNd2FybmluZ19ub2RlcxgDIAEoA1IM'
    'd2FybmluZ05vZGVzEh8KC2Vycm9yX25vZGVzGAQgASgDUgplcnJvck5vZGVzEiUKDmNyaXRpY2'
    'FsX25vZGVzGAUgASgDUg1jcml0aWNhbE5vZGVzEioKEXRvdGFsX2dvb2RzX3Nsb3RzGAYgASgD'
    'Ug90b3RhbEdvb2RzU2xvdHMSLAoSbm9ybWFsX2dvb2RzX3Nsb3RzGAcgASgDUhBub3JtYWxHb2'
    '9kc1Nsb3RzEi4KE3dhcm5pbmdfZ29vZHNfc2xvdHMYCCABKANSEXdhcm5pbmdHb29kc1Nsb3Rz'
    'EioKEWVycm9yX2dvb2RzX3Nsb3RzGAkgASgDUg9lcnJvckdvb2RzU2xvdHMSMAoUb3ZlcmFsbF'
    '9oZWFsdGhfc2NvcmUYCiABKAFSEm92ZXJhbGxIZWFsdGhTY29yZRJhChhwZXJfY2FyX2V4Y2Vw'
    'dGlvbl9jb3VudHMYCyADKAsyKC5nYWxheGlzLnNpdGUuaGVhbHRoLkNhckV4Y2VwdGlvblN1bW'
    '1hcnlSFXBlckNhckV4Y2VwdGlvbkNvdW50cxIsChJ0b3RhbF9ncm91bmRfYXJlYXMYDCABKANS'
    'EHRvdGFsR3JvdW5kQXJlYXMSLgoTbm9ybWFsX2dyb3VuZF9hcmVhcxgNIAEoA1IRbm9ybWFsR3'
    'JvdW5kQXJlYXMSMAoUd2FybmluZ19ncm91bmRfYXJlYXMYDiABKANSEndhcm5pbmdHcm91bmRB'
    'cmVhcxIsChJlcnJvcl9ncm91bmRfYXJlYXMYDyABKANSEGVycm9yR3JvdW5kQXJlYXMSMgoVY3'
    'JpdGljYWxfZ3JvdW5kX2FyZWFzGBAgASgDUhNjcml0aWNhbEdyb3VuZEFyZWFz');

@$core.Deprecated('Use carExceptionSummaryDescriptor instead')
const CarExceptionSummary$json = {
  '1': 'CarExceptionSummary',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'exception_count', '3': 2, '4': 1, '5': 3, '10': 'exceptionCount'},
  ],
};

/// Descriptor for `CarExceptionSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carExceptionSummaryDescriptor = $convert.base64Decode(
    'ChNDYXJFeGNlcHRpb25TdW1tYXJ5EhUKBmNhcl9pZBgBIAEoA1IFY2FySWQSJwoPZXhjZXB0aW'
    '9uX2NvdW50GAIgASgDUg5leGNlcHRpb25Db3VudA==');

@$core.Deprecated('Use locationExceptionAnalysisRequestDescriptor instead')
const LocationExceptionAnalysisRequest$json = {
  '1': 'LocationExceptionAnalysisRequest',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'logic_location', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '10': 'logicLocation'},
    {'1': 'category', '3': 3, '4': 1, '5': 14, '6': '.galaxis.site.health.ExceptionCategory', '10': 'category'},
    {'1': 'start_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 1, '10': 'endTime', '17': true},
    {'1': 'marker_code', '3': 6, '4': 1, '5': 9, '9': 2, '10': 'markerCode', '17': true},
  ],
  '8': [
    {'1': '_start_time'},
    {'1': '_end_time'},
    {'1': '_marker_code'},
  ],
};

/// Descriptor for `LocationExceptionAnalysisRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationExceptionAnalysisRequestDescriptor = $convert.base64Decode(
    'CiBMb2NhdGlvbkV4Y2VwdGlvbkFuYWx5c2lzUmVxdWVzdBIXCgdub2RlX2lkGAEgASgDUgZub2'
    'RlSWQSSgoObG9naWNfbG9jYXRpb24YAiABKAsyIy5nYWxheGlzLnNpdGUuaGVhbHRoLlBvc2l0'
    'aW9uRGF0YV90Ug1sb2dpY0xvY2F0aW9uEkIKCGNhdGVnb3J5GAMgASgOMiYuZ2FsYXhpcy5zaX'
    'RlLmhlYWx0aC5FeGNlcHRpb25DYXRlZ29yeVIIY2F0ZWdvcnkSPgoKc3RhcnRfdGltZRgEIAEo'
    'CzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJc3RhcnRUaW1liAEBEjoKCGVuZF90aW'
    '1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgBUgdlbmRUaW1liAEBEiQKC21h'
    'cmtlcl9jb2RlGAYgASgJSAJSCm1hcmtlckNvZGWIAQFCDQoLX3N0YXJ0X3RpbWVCCwoJX2VuZF'
    '90aW1lQg4KDF9tYXJrZXJfY29kZQ==');

@$core.Deprecated('Use locationExceptionAnalysisResponseDescriptor instead')
const LocationExceptionAnalysisResponse$json = {
  '1': 'LocationExceptionAnalysisResponse',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.galaxis.site.health.ExceptionCategory', '10': 'category'},
    {'1': 'total_detections', '3': 3, '4': 1, '5': 3, '10': 'totalDetections'},
    {'1': 'exception_count', '3': 4, '4': 1, '5': 3, '10': 'exceptionCount'},
    {'1': 'exception_rate', '3': 5, '4': 1, '5': 1, '10': 'exceptionRate'},
    {'1': 'unique_car_count', '3': 6, '4': 1, '5': 3, '10': 'uniqueCarCount'},
    {'1': 'total_car_count', '3': 7, '4': 1, '5': 3, '10': 'totalCarCount'},
    {'1': 'is_location_related', '3': 8, '4': 1, '5': 8, '10': 'isLocationRelated'},
    {'1': 'affected_car_ids', '3': 9, '4': 3, '5': 3, '10': 'affectedCarIds'},
    {'1': 'last_exception_time', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastExceptionTime'},
  ],
};

/// Descriptor for `LocationExceptionAnalysisResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationExceptionAnalysisResponseDescriptor = $convert.base64Decode(
    'CiFMb2NhdGlvbkV4Y2VwdGlvbkFuYWx5c2lzUmVzcG9uc2USFwoHbm9kZV9pZBgBIAEoA1IGbm'
    '9kZUlkEkIKCGNhdGVnb3J5GAIgASgOMiYuZ2FsYXhpcy5zaXRlLmhlYWx0aC5FeGNlcHRpb25D'
    'YXRlZ29yeVIIY2F0ZWdvcnkSKQoQdG90YWxfZGV0ZWN0aW9ucxgDIAEoA1IPdG90YWxEZXRlY3'
    'Rpb25zEicKD2V4Y2VwdGlvbl9jb3VudBgEIAEoA1IOZXhjZXB0aW9uQ291bnQSJQoOZXhjZXB0'
    'aW9uX3JhdGUYBSABKAFSDWV4Y2VwdGlvblJhdGUSKAoQdW5pcXVlX2Nhcl9jb3VudBgGIAEoA1'
    'IOdW5pcXVlQ2FyQ291bnQSJgoPdG90YWxfY2FyX2NvdW50GAcgASgDUg10b3RhbENhckNvdW50'
    'Ei4KE2lzX2xvY2F0aW9uX3JlbGF0ZWQYCCABKAhSEWlzTG9jYXRpb25SZWxhdGVkEigKEGFmZm'
    'VjdGVkX2Nhcl9pZHMYCSADKANSDmFmZmVjdGVkQ2FySWRzEkoKE2xhc3RfZXhjZXB0aW9uX3Rp'
    'bWUYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUhFsYXN0RXhjZXB0aW9uVGltZQ'
    '==');

@$core.Deprecated('Use carExceptionAnalysisRequestDescriptor instead')
const CarExceptionAnalysisRequest$json = {
  '1': 'CarExceptionAnalysisRequest',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.galaxis.site.health.ExceptionCategory', '10': 'category'},
    {'1': 'marker_issue_type', '3': 3, '4': 1, '5': 14, '6': '.galaxis.site.health.MarkerIssueType', '9': 0, '10': 'markerIssueType', '17': true},
    {'1': 'ground_issue_type', '3': 4, '4': 1, '5': 14, '6': '.galaxis.site.health.GroundIssueType', '9': 1, '10': 'groundIssueType', '17': true},
    {'1': 'goods_slot_issue_type', '3': 5, '4': 1, '5': 14, '6': '.galaxis.site.health.GoodsSlotIssueType', '9': 2, '10': 'goodsSlotIssueType', '17': true},
    {'1': 'start_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 3, '10': 'startTime', '17': true},
    {'1': 'end_time', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 4, '10': 'endTime', '17': true},
  ],
  '8': [
    {'1': '_marker_issue_type'},
    {'1': '_ground_issue_type'},
    {'1': '_goods_slot_issue_type'},
    {'1': '_start_time'},
    {'1': '_end_time'},
  ],
};

/// Descriptor for `CarExceptionAnalysisRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carExceptionAnalysisRequestDescriptor = $convert.base64Decode(
    'ChtDYXJFeGNlcHRpb25BbmFseXNpc1JlcXVlc3QSFQoGY2FyX2lkGAEgASgDUgVjYXJJZBJCCg'
    'hjYXRlZ29yeRgCIAEoDjImLmdhbGF4aXMuc2l0ZS5oZWFsdGguRXhjZXB0aW9uQ2F0ZWdvcnlS'
    'CGNhdGVnb3J5ElUKEW1hcmtlcl9pc3N1ZV90eXBlGAMgASgOMiQuZ2FsYXhpcy5zaXRlLmhlYW'
    'x0aC5NYXJrZXJJc3N1ZVR5cGVIAFIPbWFya2VySXNzdWVUeXBliAEBElUKEWdyb3VuZF9pc3N1'
    'ZV90eXBlGAQgASgOMiQuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Hcm91bmRJc3N1ZVR5cGVIAVIPZ3'
    'JvdW5kSXNzdWVUeXBliAEBEl8KFWdvb2RzX3Nsb3RfaXNzdWVfdHlwZRgFIAEoDjInLmdhbGF4'
    'aXMuc2l0ZS5oZWFsdGguR29vZHNTbG90SXNzdWVUeXBlSAJSEmdvb2RzU2xvdElzc3VlVHlwZY'
    'gBARI+CgpzdGFydF90aW1lGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEgDUglz'
    'dGFydFRpbWWIAQESOgoIZW5kX3RpbWUYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW'
    '1wSARSB2VuZFRpbWWIAQFCFAoSX21hcmtlcl9pc3N1ZV90eXBlQhQKEl9ncm91bmRfaXNzdWVf'
    'dHlwZUIYChZfZ29vZHNfc2xvdF9pc3N1ZV90eXBlQg0KC19zdGFydF90aW1lQgsKCV9lbmRfdG'
    'ltZQ==');

@$core.Deprecated('Use carExceptionAnalysisResponseDescriptor instead')
const CarExceptionAnalysisResponse$json = {
  '1': 'CarExceptionAnalysisResponse',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'category', '3': 2, '4': 1, '5': 14, '6': '.galaxis.site.health.ExceptionCategory', '10': 'category'},
    {'1': 'total_detections', '3': 3, '4': 1, '5': 3, '10': 'totalDetections'},
    {'1': 'exception_count', '3': 4, '4': 1, '5': 3, '10': 'exceptionCount'},
    {'1': 'exception_rate', '3': 5, '4': 1, '5': 1, '10': 'exceptionRate'},
    {'1': 'affected_location_count', '3': 6, '4': 1, '5': 3, '10': 'affectedLocationCount'},
    {'1': 'is_car_related', '3': 7, '4': 1, '5': 8, '10': 'isCarRelated'},
    {'1': 'affected_node_ids', '3': 8, '4': 3, '5': 3, '10': 'affectedNodeIds'},
    {'1': 'last_exception_time', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastExceptionTime'},
  ],
};

/// Descriptor for `CarExceptionAnalysisResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carExceptionAnalysisResponseDescriptor = $convert.base64Decode(
    'ChxDYXJFeGNlcHRpb25BbmFseXNpc1Jlc3BvbnNlEhUKBmNhcl9pZBgBIAEoA1IFY2FySWQSQg'
    'oIY2F0ZWdvcnkYAiABKA4yJi5nYWxheGlzLnNpdGUuaGVhbHRoLkV4Y2VwdGlvbkNhdGVnb3J5'
    'UghjYXRlZ29yeRIpChB0b3RhbF9kZXRlY3Rpb25zGAMgASgDUg90b3RhbERldGVjdGlvbnMSJw'
    'oPZXhjZXB0aW9uX2NvdW50GAQgASgDUg5leGNlcHRpb25Db3VudBIlCg5leGNlcHRpb25fcmF0'
    'ZRgFIAEoAVINZXhjZXB0aW9uUmF0ZRI2ChdhZmZlY3RlZF9sb2NhdGlvbl9jb3VudBgGIAEoA1'
    'IVYWZmZWN0ZWRMb2NhdGlvbkNvdW50EiQKDmlzX2Nhcl9yZWxhdGVkGAcgASgIUgxpc0NhclJl'
    'bGF0ZWQSKgoRYWZmZWN0ZWRfbm9kZV9pZHMYCCADKANSD2FmZmVjdGVkTm9kZUlkcxJKChNsYX'
    'N0X2V4Y2VwdGlvbl90aW1lGAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIRbGFz'
    'dEV4Y2VwdGlvblRpbWU=');

@$core.Deprecated('Use dataCleanupRequestDescriptor instead')
const DataCleanupRequest$json = {
  '1': 'DataCleanupRequest',
  '2': [
    {'1': 'category', '3': 1, '4': 1, '5': 14, '6': '.galaxis.site.health.ExceptionCategory', '10': 'category'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'nodeId', '17': true},
    {'1': 'logic_location', '3': 3, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '9': 1, '10': 'logicLocation', '17': true},
    {'1': 'marker_code', '3': 4, '4': 1, '5': 9, '9': 2, '10': 'markerCode', '17': true},
    {'1': 'before_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 3, '10': 'beforeTime', '17': true},
    {'1': 'clear_all', '3': 6, '4': 1, '5': 8, '10': 'clearAll'},
  ],
  '8': [
    {'1': '_node_id'},
    {'1': '_logic_location'},
    {'1': '_marker_code'},
    {'1': '_before_time'},
  ],
};

/// Descriptor for `DataCleanupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataCleanupRequestDescriptor = $convert.base64Decode(
    'ChJEYXRhQ2xlYW51cFJlcXVlc3QSQgoIY2F0ZWdvcnkYASABKA4yJi5nYWxheGlzLnNpdGUuaG'
    'VhbHRoLkV4Y2VwdGlvbkNhdGVnb3J5UghjYXRlZ29yeRIcCgdub2RlX2lkGAIgASgDSABSBm5v'
    'ZGVJZIgBARJPCg5sb2dpY19sb2NhdGlvbhgDIAEoCzIjLmdhbGF4aXMuc2l0ZS5oZWFsdGguUG'
    '9zaXRpb25EYXRhX3RIAVINbG9naWNMb2NhdGlvbogBARIkCgttYXJrZXJfY29kZRgEIAEoCUgC'
    'UgptYXJrZXJDb2RliAEBEkAKC2JlZm9yZV90aW1lGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcEgDUgpiZWZvcmVUaW1liAEBEhsKCWNsZWFyX2FsbBgGIAEoCFIIY2xlYXJBbGxC'
    'CgoIX25vZGVfaWRCEQoPX2xvZ2ljX2xvY2F0aW9uQg4KDF9tYXJrZXJfY29kZUIOCgxfYmVmb3'
    'JlX3RpbWU=');

@$core.Deprecated('Use dataCleanupResponseDescriptor instead')
const DataCleanupResponse$json = {
  '1': 'DataCleanupResponse',
  '2': [
    {'1': 'cleaned_count', '3': 1, '4': 1, '5': 3, '10': 'cleanedCount'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DataCleanupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataCleanupResponseDescriptor = $convert.base64Decode(
    'ChNEYXRhQ2xlYW51cFJlc3BvbnNlEiMKDWNsZWFuZWRfY291bnQYASABKANSDGNsZWFuZWRDb3'
    'VudBIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use carLocationStatsRequestDescriptor instead')
const CarLocationStatsRequest$json = {
  '1': 'CarLocationStatsRequest',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'logic_location', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '10': 'logicLocation'},
  ],
};

/// Descriptor for `CarLocationStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carLocationStatsRequestDescriptor = $convert.base64Decode(
    'ChdDYXJMb2NhdGlvblN0YXRzUmVxdWVzdBIVCgZjYXJfaWQYASABKANSBWNhcklkEkoKDmxvZ2'
    'ljX2xvY2F0aW9uGAIgASgLMiMuZ2FsYXhpcy5zaXRlLmhlYWx0aC5Qb3NpdGlvbkRhdGFfdFIN'
    'bG9naWNMb2NhdGlvbg==');

@$core.Deprecated('Use carLocationStatsResponseDescriptor instead')
const CarLocationStatsResponse$json = {
  '1': 'CarLocationStatsResponse',
  '2': [
    {'1': 'car_id', '3': 1, '4': 1, '5': 3, '10': 'carId'},
    {'1': 'logic_location', '3': 2, '4': 1, '5': 11, '6': '.galaxis.site.health.PositionData_t', '10': 'logicLocation'},
    {'1': 'total_count', '3': 3, '4': 1, '5': 3, '10': 'totalCount'},
    {'1': 'normal_count', '3': 4, '4': 1, '5': 3, '10': 'normalCount'},
    {'1': 'warning_count', '3': 5, '4': 1, '5': 3, '10': 'warningCount'},
    {'1': 'error_count', '3': 6, '4': 1, '5': 3, '10': 'errorCount'},
    {'1': 'critical_count', '3': 7, '4': 1, '5': 3, '10': 'criticalCount'},
    {'1': 'normal_rate', '3': 8, '4': 1, '5': 1, '10': 'normalRate'},
    {'1': 'warning_rate', '3': 9, '4': 1, '5': 1, '10': 'warningRate'},
    {'1': 'error_rate', '3': 10, '4': 1, '5': 1, '10': 'errorRate'},
    {'1': 'critical_rate', '3': 11, '4': 1, '5': 1, '10': 'criticalRate'},
  ],
};

/// Descriptor for `CarLocationStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carLocationStatsResponseDescriptor = $convert.base64Decode(
    'ChhDYXJMb2NhdGlvblN0YXRzUmVzcG9uc2USFQoGY2FyX2lkGAEgASgDUgVjYXJJZBJKCg5sb2'
    'dpY19sb2NhdGlvbhgCIAEoCzIjLmdhbGF4aXMuc2l0ZS5oZWFsdGguUG9zaXRpb25EYXRhX3RS'
    'DWxvZ2ljTG9jYXRpb24SHwoLdG90YWxfY291bnQYAyABKANSCnRvdGFsQ291bnQSIQoMbm9ybW'
    'FsX2NvdW50GAQgASgDUgtub3JtYWxDb3VudBIjCg13YXJuaW5nX2NvdW50GAUgASgDUgx3YXJu'
    'aW5nQ291bnQSHwoLZXJyb3JfY291bnQYBiABKANSCmVycm9yQ291bnQSJQoOY3JpdGljYWxfY2'
    '91bnQYByABKANSDWNyaXRpY2FsQ291bnQSHwoLbm9ybWFsX3JhdGUYCCABKAFSCm5vcm1hbFJh'
    'dGUSIQoMd2FybmluZ19yYXRlGAkgASgBUgt3YXJuaW5nUmF0ZRIdCgplcnJvcl9yYXRlGAogAS'
    'gBUgllcnJvclJhdGUSIwoNY3JpdGljYWxfcmF0ZRgLIAEoAVIMY3JpdGljYWxSYXRl');

