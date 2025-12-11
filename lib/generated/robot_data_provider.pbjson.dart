//
//  Generated code. Do not modify.
//  source: robot_data_provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use distriDeviceTypeDescriptor instead')
const DistriDeviceType$json = {
  '1': 'DistriDeviceType',
  '2': [
    {'1': 'DepthCamera', '2': 0},
    {'1': 'Mid360', '2': 1},
    {'1': 'Lidar2d', '2': 2},
  ],
};

/// Descriptor for `DistriDeviceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List distriDeviceTypeDescriptor = $convert.base64Decode(
    'ChBEaXN0cmlEZXZpY2VUeXBlEg8KC0RlcHRoQ2FtZXJhEAASCgoGTWlkMzYwEAESCwoHTGlkYX'
    'IyZBAC');

@$core.Deprecated('Use distriDataTypeDescriptor instead')
const DistriDataType$json = {
  '1': 'DistriDataType',
  '2': [
    {'1': 'Point2d', '2': 0},
    {'1': 'Point3d', '2': 1},
    {'1': 'Rgb24', '2': 2},
    {'1': 'Depth16', '2': 3},
    {'1': 'Infra8', '2': 4},
  ],
};

/// Descriptor for `DistriDataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List distriDataTypeDescriptor = $convert.base64Decode(
    'Cg5EaXN0cmlEYXRhVHlwZRILCgdQb2ludDJkEAASCwoHUG9pbnQzZBABEgkKBVJnYjI0EAISCw'
    'oHRGVwdGgxNhADEgoKBkluZnJhOBAE');

@$core.Deprecated('Use distriUsedByDescriptor instead')
const DistriUsedBy$json = {
  '1': 'DistriUsedBy',
  '2': [
    {'1': 'Walk', '2': 0},
    {'1': 'Pick', '2': 1},
  ],
};

/// Descriptor for `DistriUsedBy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List distriUsedByDescriptor = $convert.base64Decode(
    'CgxEaXN0cmlVc2VkQnkSCAoEV2FsaxAAEggKBFBpY2sQAQ==');

@$core.Deprecated('Use int32ValuesDescriptor instead')
const Int32Values$json = {
  '1': 'Int32Values',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 5, '10': 'values'},
  ],
};

/// Descriptor for `Int32Values`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32ValuesDescriptor = $convert.base64Decode(
    'CgtJbnQzMlZhbHVlcxIWCgZ2YWx1ZXMYASADKAVSBnZhbHVlcw==');

@$core.Deprecated('Use stringValuesDescriptor instead')
const StringValues$json = {
  '1': 'StringValues',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `StringValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringValuesDescriptor = $convert.base64Decode(
    'CgxTdHJpbmdWYWx1ZXMSFgoGdmFsdWVzGAEgAygJUgZ2YWx1ZXM=');

@$core.Deprecated('Use optionBoolValueDescriptor instead')
const OptionBoolValue$json = {
  '1': 'OptionBoolValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'value', '17': true},
  ],
  '8': [
    {'1': '_value'},
  ],
};

/// Descriptor for `OptionBoolValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionBoolValueDescriptor = $convert.base64Decode(
    'Cg9PcHRpb25Cb29sVmFsdWUSGQoFdmFsdWUYASABKAhIAFIFdmFsdWWIAQFCCAoGX3ZhbHVl');

@$core.Deprecated('Use optionDoubleValueDescriptor instead')
const OptionDoubleValue$json = {
  '1': 'OptionDoubleValue',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 1, '9': 0, '10': 'value', '17': true},
  ],
  '8': [
    {'1': '_value'},
  ],
};

/// Descriptor for `OptionDoubleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDoubleValueDescriptor = $convert.base64Decode(
    'ChFPcHRpb25Eb3VibGVWYWx1ZRIZCgV2YWx1ZRgBIAEoAUgAUgV2YWx1ZYgBAUIICgZfdmFsdW'
    'U=');

@$core.Deprecated('Use intStringMapDescriptor instead')
const IntStringMap$json = {
  '1': 'IntStringMap',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.IntStringMap.ItemsEntry', '10': 'items'},
  ],
  '3': [IntStringMap_ItemsEntry$json],
};

@$core.Deprecated('Use intStringMapDescriptor instead')
const IntStringMap_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `IntStringMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intStringMapDescriptor = $convert.base64Decode(
    'CgxJbnRTdHJpbmdNYXASRAoFaXRlbXMYASADKAsyLi5nYWxheGlzLmRhdGEucHJvdmlkZXIuSW'
    '50U3RyaW5nTWFwLkl0ZW1zRW50cnlSBWl0ZW1zGjgKCkl0ZW1zRW50cnkSEAoDa2V5GAEgASgF'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use userLanguageTypeDescriptor instead')
const UserLanguageType$json = {
  '1': 'UserLanguageType',
  '2': [
    {'1': 'locale', '3': 1, '4': 1, '5': 9, '10': 'locale'},
  ],
};

/// Descriptor for `UserLanguageType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLanguageTypeDescriptor = $convert.base64Decode(
    'ChBVc2VyTGFuZ3VhZ2VUeXBlEhYKBmxvY2FsZRgBIAEoCVIGbG9jYWxl');

@$core.Deprecated('Use userSessionDescriptor instead')
const UserSession$json = {
  '1': 'UserSession',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
  ],
};

/// Descriptor for `UserSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSessionDescriptor = $convert.base64Decode(
    'CgtVc2VyU2Vzc2lvbhIdCgpzZXNzaW9uX2lkGAEgASgDUglzZXNzaW9uSWQ=');

@$core.Deprecated('Use userLanguageSessionDescriptor instead')
const UserLanguageSession$json = {
  '1': 'UserLanguageSession',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    {'1': 'locale', '3': 2, '4': 1, '5': 9, '10': 'locale'},
  ],
};

/// Descriptor for `UserLanguageSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userLanguageSessionDescriptor = $convert.base64Decode(
    'ChNVc2VyTGFuZ3VhZ2VTZXNzaW9uEh0KCnNlc3Npb25faWQYASABKANSCXNlc3Npb25JZBIWCg'
    'Zsb2NhbGUYAiABKAlSBmxvY2FsZQ==');

@$core.Deprecated('Use timeDescriptor instead')
const Time$json = {
  '1': 'Time',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
  ],
};

/// Descriptor for `Time`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeDescriptor = $convert.base64Decode(
    'CgRUaW1lEikKEHRpbWVzdGFtcF9taWNyb3MYASABKANSD3RpbWVzdGFtcE1pY3Jvcw==');

@$core.Deprecated('Use replayInfoDescriptor instead')
const ReplayInfo$json = {
  '1': 'ReplayInfo',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '10': 'sessionId'},
    {'1': 'timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'speed', '3': 3, '4': 1, '5': 1, '10': 'speed'},
    {'1': 'framerate', '3': 4, '4': 1, '5': 5, '10': 'framerate'},
  ],
};

/// Descriptor for `ReplayInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replayInfoDescriptor = $convert.base64Decode(
    'CgpSZXBsYXlJbmZvEh0KCnNlc3Npb25faWQYASABKANSCXNlc3Npb25JZBIpChB0aW1lc3RhbX'
    'BfbWljcm9zGAIgASgDUg90aW1lc3RhbXBNaWNyb3MSFAoFc3BlZWQYAyABKAFSBXNwZWVkEhwK'
    'CWZyYW1lcmF0ZRgEIAEoBVIJZnJhbWVyYXRl');

@$core.Deprecated('Use timesDescriptor instead')
const Times$json = {
  '1': 'Times',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.Time', '10': 'items'},
  ],
};

/// Descriptor for `Times`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timesDescriptor = $convert.base64Decode(
    'CgVUaW1lcxIxCgVpdGVtcxgBIAMoCzIbLmdhbGF4aXMuZGF0YS5wcm92aWRlci5UaW1lUgVpdG'
    'Vtcw==');

@$core.Deprecated('Use steadyTimeRangeDescriptor instead')
const SteadyTimeRange$json = {
  '1': 'SteadyTimeRange',
  '2': [
    {'1': 'steady_millis_begin', '3': 1, '4': 1, '5': 3, '10': 'steadyMillisBegin'},
    {'1': 'steady_millis_end', '3': 2, '4': 1, '5': 3, '10': 'steadyMillisEnd'},
  ],
};

/// Descriptor for `SteadyTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List steadyTimeRangeDescriptor = $convert.base64Decode(
    'Cg9TdGVhZHlUaW1lUmFuZ2USLgoTc3RlYWR5X21pbGxpc19iZWdpbhgBIAEoA1IRc3RlYWR5TW'
    'lsbGlzQmVnaW4SKgoRc3RlYWR5X21pbGxpc19lbmQYAiABKANSD3N0ZWFkeU1pbGxpc0VuZA==');

@$core.Deprecated('Use timeRangeDescriptor instead')
const TimeRange$json = {
  '1': 'TimeRange',
  '2': [
    {'1': 'timestamp_micros_begin', '3': 1, '4': 1, '5': 3, '10': 'timestampMicrosBegin'},
    {'1': 'timestamp_micros_end', '3': 2, '4': 1, '5': 3, '10': 'timestampMicrosEnd'},
  ],
};

/// Descriptor for `TimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeRangeDescriptor = $convert.base64Decode(
    'CglUaW1lUmFuZ2USNAoWdGltZXN0YW1wX21pY3Jvc19iZWdpbhgBIAEoA1IUdGltZXN0YW1wTW'
    'ljcm9zQmVnaW4SMAoUdGltZXN0YW1wX21pY3Jvc19lbmQYAiABKANSEnRpbWVzdGFtcE1pY3Jv'
    'c0VuZA==');

@$core.Deprecated('Use timeViewDescriptor instead')
const TimeView$json = {
  '1': 'TimeView',
  '2': [
    {'1': 'global_time_range', '3': 1, '4': 1, '5': 11, '6': '.galaxis.data.provider.TimeRange', '10': 'globalTimeRange'},
    {'1': 'view_time_range', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.TimeRange', '9': 0, '10': 'viewTimeRange'},
    {'1': 'view_time_point', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'viewTimePoint'},
    {'1': 'is_realtime', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'isRealtime'},
  ],
  '8': [
    {'1': 'time_view_item'},
  ],
};

/// Descriptor for `TimeView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeViewDescriptor = $convert.base64Decode(
    'CghUaW1lVmlldxJMChFnbG9iYWxfdGltZV9yYW5nZRgBIAEoCzIgLmdhbGF4aXMuZGF0YS5wcm'
    '92aWRlci5UaW1lUmFuZ2VSD2dsb2JhbFRpbWVSYW5nZRJKCg92aWV3X3RpbWVfcmFuZ2UYAiAB'
    'KAsyIC5nYWxheGlzLmRhdGEucHJvdmlkZXIuVGltZVJhbmdlSABSDXZpZXdUaW1lUmFuZ2USKA'
    'oPdmlld190aW1lX3BvaW50GAMgASgDSABSDXZpZXdUaW1lUG9pbnQSIQoLaXNfcmVhbHRpbWUY'
    'BCABKAhIAFIKaXNSZWFsdGltZUIQCg50aW1lX3ZpZXdfaXRlbQ==');

@$core.Deprecated('Use timeViewsDescriptor instead')
const TimeViews$json = {
  '1': 'TimeViews',
  '2': [
    {'1': 'time_views', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.TimeView', '10': 'timeViews'},
  ],
};

/// Descriptor for `TimeViews`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeViewsDescriptor = $convert.base64Decode(
    'CglUaW1lVmlld3MSPgoKdGltZV92aWV3cxgBIAMoCzIfLmdhbGF4aXMuZGF0YS5wcm92aWRlci'
    '5UaW1lVmlld1IJdGltZVZpZXdz');

@$core.Deprecated('Use optionTimeDescriptor instead')
const OptionTime$json = {
  '1': 'OptionTime',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'timestampMicros', '17': true},
  ],
  '8': [
    {'1': '_timestamp_micros'},
  ],
};

/// Descriptor for `OptionTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionTimeDescriptor = $convert.base64Decode(
    'CgpPcHRpb25UaW1lEi4KEHRpbWVzdGFtcF9taWNyb3MYASABKANIAFIPdGltZXN0YW1wTWljcm'
    '9ziAEBQhMKEV90aW1lc3RhbXBfbWljcm9z');

@$core.Deprecated('Use resampleTimeRangeDescriptor instead')
const ResampleTimeRange$json = {
  '1': 'ResampleTimeRange',
  '2': [
    {'1': 'timestamp_micros_begin', '3': 1, '4': 1, '5': 3, '10': 'timestampMicrosBegin'},
    {'1': 'timestamp_micros_end', '3': 2, '4': 1, '5': 3, '10': 'timestampMicrosEnd'},
    {'1': 'micros_per_item', '3': 3, '4': 1, '5': 3, '10': 'microsPerItem'},
  ],
};

/// Descriptor for `ResampleTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resampleTimeRangeDescriptor = $convert.base64Decode(
    'ChFSZXNhbXBsZVRpbWVSYW5nZRI0ChZ0aW1lc3RhbXBfbWljcm9zX2JlZ2luGAEgASgDUhR0aW'
    '1lc3RhbXBNaWNyb3NCZWdpbhIwChR0aW1lc3RhbXBfbWljcm9zX2VuZBgCIAEoA1ISdGltZXN0'
    'YW1wTWljcm9zRW5kEiYKD21pY3Jvc19wZXJfaXRlbRgDIAEoA1INbWljcm9zUGVySXRlbQ==');

@$core.Deprecated('Use countedRangeDescriptor instead')
const CountedRange$json = {
  '1': 'CountedRange',
  '2': [
    {'1': 'locale', '3': 1, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'timestamp_type', '3': 3, '4': 1, '5': 14, '6': '.galaxis.data.provider.CountedRange.TimestampType', '10': 'timestampType'},
    {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
  ],
  '4': [CountedRange_TimestampType$json],
};

@$core.Deprecated('Use countedRangeDescriptor instead')
const CountedRange_TimestampType$json = {
  '1': 'TimestampType',
  '2': [
    {'1': 'START', '2': 0},
    {'1': 'MIDDLE', '2': 1},
    {'1': 'END', '2': 2},
  ],
};

/// Descriptor for `CountedRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List countedRangeDescriptor = $convert.base64Decode(
    'CgxDb3VudGVkUmFuZ2USFgoGbG9jYWxlGAEgASgJUgZsb2NhbGUSKQoQdGltZXN0YW1wX21pY3'
    'JvcxgCIAEoA1IPdGltZXN0YW1wTWljcm9zElgKDnRpbWVzdGFtcF90eXBlGAMgASgOMjEuZ2Fs'
    'YXhpcy5kYXRhLnByb3ZpZGVyLkNvdW50ZWRSYW5nZS5UaW1lc3RhbXBUeXBlUg10aW1lc3RhbX'
    'BUeXBlEhQKBWNvdW50GAQgASgDUgVjb3VudCIvCg1UaW1lc3RhbXBUeXBlEgkKBVNUQVJUEAAS'
    'CgoGTUlERExFEAESBwoDRU5EEAI=');

@$core.Deprecated('Use agvLogCountedRangeDescriptor instead')
const AgvLogCountedRange$json = {
  '1': 'AgvLogCountedRange',
  '2': [
    {'1': 'locale', '3': 1, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'timestamp_type', '3': 3, '4': 1, '5': 14, '6': '.galaxis.data.provider.CountedRange.TimestampType', '10': 'timestampType'},
    {'1': 'count', '3': 4, '4': 1, '5': 3, '10': 'count'},
    {'1': 'level_type', '3': 5, '4': 1, '5': 14, '6': '.galaxis.data.provider.AgvLogCountedRange.LevelType', '9': 0, '10': 'levelType'},
    {'1': 'select_item_types', '3': 6, '4': 1, '5': 11, '6': '.galaxis.data.provider.Int32Values', '9': 0, '10': 'selectItemTypes'},
  ],
  '4': [AgvLogCountedRange_LevelType$json],
  '8': [
    {'1': 'filter_type'},
  ],
};

@$core.Deprecated('Use agvLogCountedRangeDescriptor instead')
const AgvLogCountedRange_LevelType$json = {
  '1': 'LevelType',
  '2': [
    {'1': 'DETAIL', '2': 0},
    {'1': 'EXCEPTION', '2': 1},
  ],
};

/// Descriptor for `AgvLogCountedRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agvLogCountedRangeDescriptor = $convert.base64Decode(
    'ChJBZ3ZMb2dDb3VudGVkUmFuZ2USFgoGbG9jYWxlGAEgASgJUgZsb2NhbGUSKQoQdGltZXN0YW'
    '1wX21pY3JvcxgCIAEoA1IPdGltZXN0YW1wTWljcm9zElgKDnRpbWVzdGFtcF90eXBlGAMgASgO'
    'MjEuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkNvdW50ZWRSYW5nZS5UaW1lc3RhbXBUeXBlUg10aW'
    '1lc3RhbXBUeXBlEhQKBWNvdW50GAQgASgDUgVjb3VudBJUCgpsZXZlbF90eXBlGAUgASgOMjMu'
    'Z2FsYXhpcy5kYXRhLnByb3ZpZGVyLkFndkxvZ0NvdW50ZWRSYW5nZS5MZXZlbFR5cGVIAFIJbG'
    'V2ZWxUeXBlElAKEXNlbGVjdF9pdGVtX3R5cGVzGAYgASgLMiIuZ2FsYXhpcy5kYXRhLnByb3Zp'
    'ZGVyLkludDMyVmFsdWVzSABSD3NlbGVjdEl0ZW1UeXBlcyImCglMZXZlbFR5cGUSCgoGREVUQU'
    'lMEAASDQoJRVhDRVBUSU9OEAFCDQoLZmlsdGVyX3R5cGU=');

@$core.Deprecated('Use rosbagTimeRangeDescriptor instead')
const RosbagTimeRange$json = {
  '1': 'RosbagTimeRange',
  '2': [
    {'1': 'timestamp_micros_begin', '3': 1, '4': 1, '5': 3, '10': 'timestampMicrosBegin'},
    {'1': 'timestamp_micros_end', '3': 2, '4': 1, '5': 3, '10': 'timestampMicrosEnd'},
    {'1': 'rosbag_type', '3': 3, '4': 1, '5': 14, '6': '.galaxis.data.provider.RosbagTypeItem.RosbagType', '10': 'rosbagType'},
    {'1': 'topic_ids', '3': 4, '4': 3, '5': 5, '10': 'topicIds'},
    {'1': 'file_name', '3': 5, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `RosbagTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosbagTimeRangeDescriptor = $convert.base64Decode(
    'Cg9Sb3NiYWdUaW1lUmFuZ2USNAoWdGltZXN0YW1wX21pY3Jvc19iZWdpbhgBIAEoA1IUdGltZX'
    'N0YW1wTWljcm9zQmVnaW4SMAoUdGltZXN0YW1wX21pY3Jvc19lbmQYAiABKANSEnRpbWVzdGFt'
    'cE1pY3Jvc0VuZBJRCgtyb3NiYWdfdHlwZRgDIAEoDjIwLmdhbGF4aXMuZGF0YS5wcm92aWRlci'
    '5Sb3NiYWdUeXBlSXRlbS5Sb3NiYWdUeXBlUgpyb3NiYWdUeXBlEhsKCXRvcGljX2lkcxgEIAMo'
    'BVIIdG9waWNJZHMSGwoJZmlsZV9uYW1lGAUgASgJUghmaWxlTmFtZQ==');

@$core.Deprecated('Use extTimeRangeDescriptor instead')
const ExtTimeRange$json = {
  '1': 'ExtTimeRange',
  '2': [
    {'1': 'timestamp_micros_begin', '3': 1, '4': 1, '5': 3, '10': 'timestampMicrosBegin'},
    {'1': 'timestamp_micros_end', '3': 2, '4': 1, '5': 3, '10': 'timestampMicrosEnd'},
    {'1': 'ext_items', '3': 3, '4': 3, '5': 9, '10': 'extItems'},
  ],
};

/// Descriptor for `ExtTimeRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extTimeRangeDescriptor = $convert.base64Decode(
    'CgxFeHRUaW1lUmFuZ2USNAoWdGltZXN0YW1wX21pY3Jvc19iZWdpbhgBIAEoA1IUdGltZXN0YW'
    '1wTWljcm9zQmVnaW4SMAoUdGltZXN0YW1wX21pY3Jvc19lbmQYAiABKANSEnRpbWVzdGFtcE1p'
    'Y3Jvc0VuZBIbCglleHRfaXRlbXMYAyADKAlSCGV4dEl0ZW1z');

@$core.Deprecated('Use rosbagTypeItemDescriptor instead')
const RosbagTypeItem$json = {
  '1': 'RosbagTypeItem',
  '2': [
    {'1': 'rosbag_type', '3': 1, '4': 1, '5': 14, '6': '.galaxis.data.provider.RosbagTypeItem.RosbagType', '10': 'rosbagType'},
    {'1': 'file_name', '3': 2, '4': 1, '5': 9, '10': 'fileName'},
  ],
  '4': [RosbagTypeItem_RosbagType$json],
};

@$core.Deprecated('Use rosbagTypeItemDescriptor instead')
const RosbagTypeItem_RosbagType$json = {
  '1': 'RosbagType',
  '2': [
    {'1': 'ROSBAG2', '2': 0},
    {'1': 'MCAP', '2': 1},
  ],
};

/// Descriptor for `RosbagTypeItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rosbagTypeItemDescriptor = $convert.base64Decode(
    'Cg5Sb3NiYWdUeXBlSXRlbRJRCgtyb3NiYWdfdHlwZRgBIAEoDjIwLmdhbGF4aXMuZGF0YS5wcm'
    '92aWRlci5Sb3NiYWdUeXBlSXRlbS5Sb3NiYWdUeXBlUgpyb3NiYWdUeXBlEhsKCWZpbGVfbmFt'
    'ZRgCIAEoCVIIZmlsZU5hbWUiIwoKUm9zYmFnVHlwZRILCgdST1NCQUcyEAASCAoETUNBUBAB');

@$core.Deprecated('Use processStatusDescriptor instead')
const ProcessStatus$json = {
  '1': 'ProcessStatus',
  '2': [
    {'1': 'percent', '3': 1, '4': 1, '5': 5, '10': 'percent'},
  ],
};

/// Descriptor for `ProcessStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List processStatusDescriptor = $convert.base64Decode(
    'Cg1Qcm9jZXNzU3RhdHVzEhgKB3BlcmNlbnQYASABKAVSB3BlcmNlbnQ=');

@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = {
  '1': 'FileInfo',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'size', '3': 2, '4': 1, '5': 3, '10': 'size'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode(
    'CghGaWxlSW5mbxISCgRwYXRoGAEgASgJUgRwYXRoEhIKBHNpemUYAiABKANSBHNpemU=');

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'x', '3': 1, '4': 1, '5': 1, '10': 'x'},
    {'1': 'y', '3': 2, '4': 1, '5': 1, '10': 'y'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIMCgF4GAEgASgBUgF4EgwKAXkYAiABKAFSAXk=');

@$core.Deprecated('Use curveItemDescriptor instead')
const CurveItem$json = {
  '1': 'CurveItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CurveItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curveItemDescriptor = $convert.base64Decode(
    'CglDdXJ2ZUl0ZW0SEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZG'
    'VzY3JpcHRpb24=');

@$core.Deprecated('Use curveItemsDescriptor instead')
const CurveItems$json = {
  '1': 'CurveItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.CurveItems.ItemsEntry', '10': 'items'},
  ],
  '3': [CurveItems_ItemsEntry$json],
};

@$core.Deprecated('Use curveItemsDescriptor instead')
const CurveItems_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.CurveItem', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CurveItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curveItemsDescriptor = $convert.base64Decode(
    'CgpDdXJ2ZUl0ZW1zEkIKBWl0ZW1zGAEgAygLMiwuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkN1cn'
    'ZlSXRlbXMuSXRlbXNFbnRyeVIFaXRlbXMaWgoKSXRlbXNFbnRyeRIQCgNrZXkYASABKAVSA2tl'
    'eRI2CgV2YWx1ZRgCIAEoCzIgLmdhbGF4aXMuZGF0YS5wcm92aWRlci5DdXJ2ZUl0ZW1SBXZhbH'
    'VlOgI4AQ==');

@$core.Deprecated('Use radarItemDescriptor instead')
const RadarItem$json = {
  '1': 'RadarItem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    {'1': 'component_name', '3': 3, '4': 1, '5': 9, '10': 'componentName'},
  ],
};

/// Descriptor for `RadarItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarItemDescriptor = $convert.base64Decode(
    'CglSYWRhckl0ZW0SEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZG'
    'VzY3JpcHRpb24SJQoOY29tcG9uZW50X25hbWUYAyABKAlSDWNvbXBvbmVudE5hbWU=');

@$core.Deprecated('Use radarItemsDescriptor instead')
const RadarItems$json = {
  '1': 'RadarItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.RadarItems.ItemsEntry', '10': 'items'},
  ],
  '3': [RadarItems_ItemsEntry$json],
};

@$core.Deprecated('Use radarItemsDescriptor instead')
const RadarItems_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.RadarItem', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `RadarItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarItemsDescriptor = $convert.base64Decode(
    'CgpSYWRhckl0ZW1zEkIKBWl0ZW1zGAEgAygLMiwuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLlJhZG'
    'FySXRlbXMuSXRlbXNFbnRyeVIFaXRlbXMaWgoKSXRlbXNFbnRyeRIQCgNrZXkYASABKAVSA2tl'
    'eRI2CgV2YWx1ZRgCIAEoCzIgLmdhbGF4aXMuZGF0YS5wcm92aWRlci5SYWRhckl0ZW1SBXZhbH'
    'VlOgI4AQ==');

@$core.Deprecated('Use agvLogDescriptor instead')
const AgvLog$json = {
  '1': 'AgvLog',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'group_type', '3': 2, '4': 1, '5': 5, '10': 'groupType'},
    {'1': 'item_type', '3': 3, '4': 1, '5': 5, '10': 'itemType'},
    {'1': 'logic_x', '3': 4, '4': 1, '5': 5, '9': 0, '10': 'logicX', '17': true},
    {'1': 'logic_y', '3': 5, '4': 1, '5': 5, '9': 1, '10': 'logicY', '17': true},
    {'1': 'err_code', '3': 6, '4': 1, '5': 5, '9': 2, '10': 'errCode', '17': true},
    {'1': 'content', '3': 7, '4': 1, '5': 9, '10': 'content'},
    {'1': 'raw_json', '3': 8, '4': 1, '5': 9, '10': 'rawJson'},
  ],
  '8': [
    {'1': '_logic_x'},
    {'1': '_logic_y'},
    {'1': '_err_code'},
  ],
};

/// Descriptor for `AgvLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agvLogDescriptor = $convert.base64Decode(
    'CgZBZ3ZMb2cSKQoQdGltZXN0YW1wX21pY3JvcxgBIAEoA1IPdGltZXN0YW1wTWljcm9zEh0KCm'
    'dyb3VwX3R5cGUYAiABKAVSCWdyb3VwVHlwZRIbCglpdGVtX3R5cGUYAyABKAVSCGl0ZW1UeXBl'
    'EhwKB2xvZ2ljX3gYBCABKAVIAFIGbG9naWNYiAEBEhwKB2xvZ2ljX3kYBSABKAVIAVIGbG9naW'
    'NZiAEBEh4KCGVycl9jb2RlGAYgASgFSAJSB2VyckNvZGWIAQESGAoHY29udGVudBgHIAEoCVIH'
    'Y29udGVudBIZCghyYXdfanNvbhgIIAEoCVIHcmF3SnNvbkIKCghfbG9naWNfeEIKCghfbG9naW'
    'NfeUILCglfZXJyX2NvZGU=');

@$core.Deprecated('Use agvLogsDescriptor instead')
const AgvLogs$json = {
  '1': 'AgvLogs',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.AgvLog', '10': 'items'},
  ],
};

/// Descriptor for `AgvLogs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agvLogsDescriptor = $convert.base64Decode(
    'CgdBZ3ZMb2dzEjMKBWl0ZW1zGAEgAygLMh0uZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkFndkxvZ1'
    'IFaXRlbXM=');

@$core.Deprecated('Use agvStateLogDescriptor instead')
const AgvStateLog$json = {
  '1': 'AgvStateLog',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'item_type', '3': 2, '4': 1, '5': 14, '6': '.galaxis.data.provider.AgvStateLog.StateType', '10': 'itemType'},
    {'1': 'content_data', '3': 3, '4': 1, '5': 9, '10': 'contentData'},
    {'1': 'args_data', '3': 4, '4': 1, '5': 9, '10': 'argsData'},
    {'1': 'tooltip_data', '3': 5, '4': 1, '5': 9, '10': 'tooltipData'},
  ],
  '4': [AgvStateLog_StateType$json],
};

@$core.Deprecated('Use agvStateLogDescriptor instead')
const AgvStateLog_StateType$json = {
  '1': 'StateType',
  '2': [
    {'1': 'READY', '2': 0},
    {'1': 'INFO', '2': 1},
    {'1': 'WARNING', '2': 2},
    {'1': 'CRITICAL', '2': 3},
    {'1': 'FATAL', '2': 4},
    {'1': 'CHARGE', '2': 5},
  ],
};

/// Descriptor for `AgvStateLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agvStateLogDescriptor = $convert.base64Decode(
    'CgtBZ3ZTdGF0ZUxvZxIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3RhbXBNaWNyb3'
    'MSSQoJaXRlbV90eXBlGAIgASgOMiwuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkFndlN0YXRlTG9n'
    'LlN0YXRlVHlwZVIIaXRlbVR5cGUSIQoMY29udGVudF9kYXRhGAMgASgJUgtjb250ZW50RGF0YR'
    'IbCglhcmdzX2RhdGEYBCABKAlSCGFyZ3NEYXRhEiEKDHRvb2x0aXBfZGF0YRgFIAEoCVILdG9v'
    'bHRpcERhdGEiUgoJU3RhdGVUeXBlEgkKBVJFQURZEAASCAoESU5GTxABEgsKB1dBUk5JTkcQAh'
    'IMCghDUklUSUNBTBADEgkKBUZBVEFMEAQSCgoGQ0hBUkdFEAU=');

@$core.Deprecated('Use agvStateLogsDescriptor instead')
const AgvStateLogs$json = {
  '1': 'AgvStateLogs',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.AgvStateLog', '10': 'items'},
  ],
};

/// Descriptor for `AgvStateLogs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agvStateLogsDescriptor = $convert.base64Decode(
    'CgxBZ3ZTdGF0ZUxvZ3MSOAoFaXRlbXMYASADKAsyIi5nYWxheGlzLmRhdGEucHJvdmlkZXIuQW'
    'd2U3RhdGVMb2dSBWl0ZW1z');

@$core.Deprecated('Use batteryStatusDescriptor instead')
const BatteryStatus$json = {
  '1': 'BatteryStatus',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'soc', '3': 2, '4': 1, '5': 5, '10': 'soc'},
    {'1': 'voltage', '3': 3, '4': 1, '5': 1, '10': 'voltage'},
    {'1': 'charge_current', '3': 4, '4': 1, '5': 1, '10': 'chargeCurrent'},
    {'1': 'discharge_current', '3': 5, '4': 1, '5': 1, '10': 'dischargeCurrent'},
    {'1': 'remaining_capacity', '3': 6, '4': 1, '5': 1, '10': 'remainingCapacity'},
    {'1': 'full_charge_capacity', '3': 7, '4': 1, '5': 1, '10': 'fullChargeCapacity'},
    {'1': 'designed_capacity', '3': 8, '4': 1, '5': 1, '10': 'designedCapacity'},
    {'1': 'charge_cycles', '3': 9, '4': 1, '5': 5, '10': 'chargeCycles'},
    {'1': 'cells_voltage', '3': 10, '4': 3, '5': 11, '6': '.galaxis.data.provider.BatteryStatus.CellVoltage', '10': 'cellsVoltage'},
    {'1': 'thermometers', '3': 11, '4': 3, '5': 11, '6': '.galaxis.data.provider.BatteryStatus.ThermometerValue', '10': 'thermometers'},
    {'1': 'exceptions', '3': 12, '4': 3, '5': 5, '10': 'exceptions'},
    {'1': 'on_off_status', '3': 13, '4': 3, '5': 11, '6': '.galaxis.data.provider.BatteryStatus.OnOffValue', '10': 'onOffStatus'},
    {'1': 'cells_balance_status', '3': 14, '4': 3, '5': 11, '6': '.galaxis.data.provider.BatteryStatus.CellBalanceStatus', '10': 'cellsBalanceStatus'},
  ],
  '3': [BatteryStatus_CellVoltage$json, BatteryStatus_ThermometerValue$json, BatteryStatus_OnOffValue$json, BatteryStatus_CellBalanceStatus$json],
};

@$core.Deprecated('Use batteryStatusDescriptor instead')
const BatteryStatus_CellVoltage$json = {
  '1': 'CellVoltage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'voltage', '3': 2, '4': 1, '5': 1, '10': 'voltage'},
  ],
};

@$core.Deprecated('Use batteryStatusDescriptor instead')
const BatteryStatus_ThermometerValue$json = {
  '1': 'ThermometerValue',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 1, '10': 'temperature'},
  ],
};

@$core.Deprecated('Use batteryStatusDescriptor instead')
const BatteryStatus_OnOffValue$json = {
  '1': 'OnOffValue',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'value', '3': 2, '4': 1, '5': 8, '10': 'value'},
  ],
};

@$core.Deprecated('Use batteryStatusDescriptor instead')
const BatteryStatus_CellBalanceStatus$json = {
  '1': 'CellBalanceStatus',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'is_balanced', '3': 2, '4': 1, '5': 8, '10': 'isBalanced'},
  ],
};

/// Descriptor for `BatteryStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batteryStatusDescriptor = $convert.base64Decode(
    'Cg1CYXR0ZXJ5U3RhdHVzEikKEHRpbWVzdGFtcF9taWNyb3MYASABKANSD3RpbWVzdGFtcE1pY3'
    'JvcxIQCgNzb2MYAiABKAVSA3NvYxIYCgd2b2x0YWdlGAMgASgBUgd2b2x0YWdlEiUKDmNoYXJn'
    'ZV9jdXJyZW50GAQgASgBUg1jaGFyZ2VDdXJyZW50EisKEWRpc2NoYXJnZV9jdXJyZW50GAUgAS'
    'gBUhBkaXNjaGFyZ2VDdXJyZW50Ei0KEnJlbWFpbmluZ19jYXBhY2l0eRgGIAEoAVIRcmVtYWlu'
    'aW5nQ2FwYWNpdHkSMAoUZnVsbF9jaGFyZ2VfY2FwYWNpdHkYByABKAFSEmZ1bGxDaGFyZ2VDYX'
    'BhY2l0eRIrChFkZXNpZ25lZF9jYXBhY2l0eRgIIAEoAVIQZGVzaWduZWRDYXBhY2l0eRIjCg1j'
    'aGFyZ2VfY3ljbGVzGAkgASgFUgxjaGFyZ2VDeWNsZXMSVQoNY2VsbHNfdm9sdGFnZRgKIAMoCz'
    'IwLmdhbGF4aXMuZGF0YS5wcm92aWRlci5CYXR0ZXJ5U3RhdHVzLkNlbGxWb2x0YWdlUgxjZWxs'
    'c1ZvbHRhZ2USWQoMdGhlcm1vbWV0ZXJzGAsgAygLMjUuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLk'
    'JhdHRlcnlTdGF0dXMuVGhlcm1vbWV0ZXJWYWx1ZVIMdGhlcm1vbWV0ZXJzEh4KCmV4Y2VwdGlv'
    'bnMYDCADKAVSCmV4Y2VwdGlvbnMSUwoNb25fb2ZmX3N0YXR1cxgNIAMoCzIvLmdhbGF4aXMuZG'
    'F0YS5wcm92aWRlci5CYXR0ZXJ5U3RhdHVzLk9uT2ZmVmFsdWVSC29uT2ZmU3RhdHVzEmgKFGNl'
    'bGxzX2JhbGFuY2Vfc3RhdHVzGA4gAygLMjYuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkJhdHRlcn'
    'lTdGF0dXMuQ2VsbEJhbGFuY2VTdGF0dXNSEmNlbGxzQmFsYW5jZVN0YXR1cxo3CgtDZWxsVm9s'
    'dGFnZRIOCgJpZBgBIAEoBVICaWQSGAoHdm9sdGFnZRgCIAEoAVIHdm9sdGFnZRpEChBUaGVybW'
    '9tZXRlclZhbHVlEg4KAmlkGAEgASgFUgJpZBIgCgt0ZW1wZXJhdHVyZRgCIAEoAVILdGVtcGVy'
    'YXR1cmUaMgoKT25PZmZWYWx1ZRIOCgJpZBgBIAEoBVICaWQSFAoFdmFsdWUYAiABKAhSBXZhbH'
    'VlGkQKEUNlbGxCYWxhbmNlU3RhdHVzEg4KAmlkGAEgASgFUgJpZBIfCgtpc19iYWxhbmNlZBgC'
    'IAEoCFIKaXNCYWxhbmNlZA==');

@$core.Deprecated('Use batteryStatusesDescriptor instead')
const BatteryStatuses$json = {
  '1': 'BatteryStatuses',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.BatteryStatus', '10': 'items'},
  ],
};

/// Descriptor for `BatteryStatuses`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batteryStatusesDescriptor = $convert.base64Decode(
    'Cg9CYXR0ZXJ5U3RhdHVzZXMSOgoFaXRlbXMYASADKAsyJC5nYWxheGlzLmRhdGEucHJvdmlkZX'
    'IuQmF0dGVyeVN0YXR1c1IFaXRlbXM=');

@$core.Deprecated('Use exceptionStatusEventDescriptor instead')
const ExceptionStatusEvent$json = {
  '1': 'ExceptionStatusEvent',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'level', '3': 2, '4': 1, '5': 14, '6': '.galaxis.data.provider.ExceptionStatusEvent.Level', '10': 'level'},
    {'1': 'event_id', '3': 3, '4': 1, '5': 14, '6': '.galaxis.data.provider.ExceptionStatusEvent.EventId', '10': 'eventId'},
    {'1': 'exception_type', '3': 4, '4': 1, '5': 5, '10': 'exceptionType'},
    {'1': 'description', '3': 5, '4': 1, '5': 9, '10': 'description'},
  ],
  '4': [ExceptionStatusEvent_Level$json, ExceptionStatusEvent_EventId$json],
};

@$core.Deprecated('Use exceptionStatusEventDescriptor instead')
const ExceptionStatusEvent_Level$json = {
  '1': 'Level',
  '2': [
    {'1': 'UNDETERMINED', '2': 0},
    {'1': 'INFORMATIONAL', '2': 12},
    {'1': 'WARNING', '2': 13},
    {'1': 'CRITICAL', '2': 14},
    {'1': 'FATAL', '2': 15},
  ],
};

@$core.Deprecated('Use exceptionStatusEventDescriptor instead')
const ExceptionStatusEvent_EventId$json = {
  '1': 'EventId',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'START', '2': 1},
    {'1': 'UPDATE', '2': 2},
    {'1': 'END', '2': 3},
    {'1': 'START_AND_END', '2': 4},
  ],
};

/// Descriptor for `ExceptionStatusEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exceptionStatusEventDescriptor = $convert.base64Decode(
    'ChRFeGNlcHRpb25TdGF0dXNFdmVudBIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3'
    'RhbXBNaWNyb3MSRwoFbGV2ZWwYAiABKA4yMS5nYWxheGlzLmRhdGEucHJvdmlkZXIuRXhjZXB0'
    'aW9uU3RhdHVzRXZlbnQuTGV2ZWxSBWxldmVsEk4KCGV2ZW50X2lkGAMgASgOMjMuZ2FsYXhpcy'
    '5kYXRhLnByb3ZpZGVyLkV4Y2VwdGlvblN0YXR1c0V2ZW50LkV2ZW50SWRSB2V2ZW50SWQSJQoO'
    'ZXhjZXB0aW9uX3R5cGUYBCABKAVSDWV4Y2VwdGlvblR5cGUSIAoLZGVzY3JpcHRpb24YBSABKA'
    'lSC2Rlc2NyaXB0aW9uIlIKBUxldmVsEhAKDFVOREVURVJNSU5FRBAAEhEKDUlORk9STUFUSU9O'
    'QUwQDBILCgdXQVJOSU5HEA0SDAoIQ1JJVElDQUwQDhIJCgVGQVRBTBAPIkYKB0V2ZW50SWQSCA'
    'oETk9ORRAAEgkKBVNUQVJUEAESCgoGVVBEQVRFEAISBwoDRU5EEAMSEQoNU1RBUlRfQU5EX0VO'
    'RBAE');

@$core.Deprecated('Use exceptionStatusEventsDescriptor instead')
const ExceptionStatusEvents$json = {
  '1': 'ExceptionStatusEvents',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.ExceptionStatusEvent', '10': 'items'},
  ],
};

/// Descriptor for `ExceptionStatusEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exceptionStatusEventsDescriptor = $convert.base64Decode(
    'ChVFeGNlcHRpb25TdGF0dXNFdmVudHMSQQoFaXRlbXMYASADKAsyKy5nYWxheGlzLmRhdGEucH'
    'JvdmlkZXIuRXhjZXB0aW9uU3RhdHVzRXZlbnRSBWl0ZW1z');

@$core.Deprecated('Use radarDataDescriptor instead')
const RadarData$json = {
  '1': 'RadarData',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'radar_id', '3': 2, '4': 1, '5': 5, '10': 'radarId'},
    {'1': 'scan_data', '3': 3, '4': 1, '5': 12, '10': 'scanData'},
    {'1': 'obstacle_data', '3': 4, '4': 1, '5': 12, '10': 'obstacleData'},
  ],
};

/// Descriptor for `RadarData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarDataDescriptor = $convert.base64Decode(
    'CglSYWRhckRhdGESKQoQdGltZXN0YW1wX21pY3JvcxgBIAEoA1IPdGltZXN0YW1wTWljcm9zEh'
    'kKCHJhZGFyX2lkGAIgASgFUgdyYWRhcklkEhsKCXNjYW5fZGF0YRgDIAEoDFIIc2NhbkRhdGES'
    'IwoNb2JzdGFjbGVfZGF0YRgEIAEoDFIMb2JzdGFjbGVEYXRh');

@$core.Deprecated('Use radarDatasDescriptor instead')
const RadarDatas$json = {
  '1': 'RadarDatas',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.RadarData', '10': 'items'},
  ],
};

/// Descriptor for `RadarDatas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarDatasDescriptor = $convert.base64Decode(
    'CgpSYWRhckRhdGFzEjYKBWl0ZW1zGAEgAygLMiAuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLlJhZG'
    'FyRGF0YVIFaXRlbXM=');

@$core.Deprecated('Use componentInfosDescriptor instead')
const ComponentInfos$json = {
  '1': 'ComponentInfos',
  '2': [
    {'1': 'component_datas', '3': 1, '4': 1, '5': 12, '10': 'componentDatas'},
  ],
};

/// Descriptor for `ComponentInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentInfosDescriptor = $convert.base64Decode(
    'Cg5Db21wb25lbnRJbmZvcxInCg9jb21wb25lbnRfZGF0YXMYASABKAxSDmNvbXBvbmVudERhdG'
    'Fz');

@$core.Deprecated('Use motionItemDescriptor instead')
const MotionItem$json = {
  '1': 'MotionItem',
  '2': [
    {'1': 'motion_start_timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'motionStartTimestampMicros'},
    {'1': 'motion_end_timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'motionEndTimestampMicros'},
    {'1': 'motion_type', '3': 3, '4': 1, '5': 5, '10': 'motionType'},
    {'1': 'raw_json', '3': 4, '4': 1, '5': 9, '10': 'rawJson'},
  ],
};

/// Descriptor for `MotionItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List motionItemDescriptor = $convert.base64Decode(
    'CgpNb3Rpb25JdGVtEkEKHW1vdGlvbl9zdGFydF90aW1lc3RhbXBfbWljcm9zGAEgASgDUhptb3'
    'Rpb25TdGFydFRpbWVzdGFtcE1pY3JvcxI9Chttb3Rpb25fZW5kX3RpbWVzdGFtcF9taWNyb3MY'
    'AiABKANSGG1vdGlvbkVuZFRpbWVzdGFtcE1pY3JvcxIfCgttb3Rpb25fdHlwZRgDIAEoBVIKbW'
    '90aW9uVHlwZRIZCghyYXdfanNvbhgEIAEoCVIHcmF3SnNvbg==');

@$core.Deprecated('Use motionItemsDescriptor instead')
const MotionItems$json = {
  '1': 'MotionItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.MotionItem', '10': 'items'},
  ],
};

/// Descriptor for `MotionItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List motionItemsDescriptor = $convert.base64Decode(
    'CgtNb3Rpb25JdGVtcxI3CgVpdGVtcxgBIAMoCzIhLmdhbGF4aXMuZGF0YS5wcm92aWRlci5Nb3'
    'Rpb25JdGVtUgVpdGVtcw==');

@$core.Deprecated('Use radarPageDatasDescriptor instead')
const RadarPageDatas$json = {
  '1': 'RadarPageDatas',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'sketchy_items', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.RadarDataSketchys', '10': 'sketchyItems'},
    {'1': 'radar_datas', '3': 3, '4': 3, '5': 11, '6': '.galaxis.data.provider.RadarData', '10': 'radarDatas'},
    {'1': 'component_datas', '3': 4, '4': 1, '5': 12, '10': 'componentDatas'},
    {'1': 'distance_sensor_datas', '3': 5, '4': 3, '5': 12, '10': 'distanceSensorDatas'},
    {'1': 'motion_items', '3': 6, '4': 1, '5': 11, '6': '.galaxis.data.provider.MotionItems', '10': 'motionItems'},
  ],
};

/// Descriptor for `RadarPageDatas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarPageDatasDescriptor = $convert.base64Decode(
    'Cg5SYWRhclBhZ2VEYXRhcxIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3RhbXBNaW'
    'Nyb3MSTQoNc2tldGNoeV9pdGVtcxgCIAEoCzIoLmdhbGF4aXMuZGF0YS5wcm92aWRlci5SYWRh'
    'ckRhdGFTa2V0Y2h5c1IMc2tldGNoeUl0ZW1zEkEKC3JhZGFyX2RhdGFzGAMgAygLMiAuZ2FsYX'
    'hpcy5kYXRhLnByb3ZpZGVyLlJhZGFyRGF0YVIKcmFkYXJEYXRhcxInCg9jb21wb25lbnRfZGF0'
    'YXMYBCABKAxSDmNvbXBvbmVudERhdGFzEjIKFWRpc3RhbmNlX3NlbnNvcl9kYXRhcxgFIAMoDF'
    'ITZGlzdGFuY2VTZW5zb3JEYXRhcxJFCgxtb3Rpb25faXRlbXMYBiABKAsyIi5nYWxheGlzLmRh'
    'dGEucHJvdmlkZXIuTW90aW9uSXRlbXNSC21vdGlvbkl0ZW1z');

@$core.Deprecated('Use radarDataSketchyDescriptor instead')
const RadarDataSketchy$json = {
  '1': 'RadarDataSketchy',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'radar_id', '3': 2, '4': 1, '5': 5, '10': 'radarId'},
    {'1': 'steady_clock_ms', '3': 3, '4': 1, '5': 3, '10': 'steadyClockMs'},
    {'1': 'valid_types', '3': 4, '4': 3, '5': 14, '6': '.galaxis.data.provider.DistriDataType', '10': 'validTypes'},
  ],
};

/// Descriptor for `RadarDataSketchy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarDataSketchyDescriptor = $convert.base64Decode(
    'ChBSYWRhckRhdGFTa2V0Y2h5EikKEHRpbWVzdGFtcF9taWNyb3MYASABKANSD3RpbWVzdGFtcE'
    '1pY3JvcxIZCghyYWRhcl9pZBgCIAEoBVIHcmFkYXJJZBImCg9zdGVhZHlfY2xvY2tfbXMYAyAB'
    'KANSDXN0ZWFkeUNsb2NrTXMSRgoLdmFsaWRfdHlwZXMYBCADKA4yJS5nYWxheGlzLmRhdGEucH'
    'JvdmlkZXIuRGlzdHJpRGF0YVR5cGVSCnZhbGlkVHlwZXM=');

@$core.Deprecated('Use radarDataSketchysDescriptor instead')
const RadarDataSketchys$json = {
  '1': 'RadarDataSketchys',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.RadarDataSketchy', '10': 'items'},
  ],
};

/// Descriptor for `RadarDataSketchys`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarDataSketchysDescriptor = $convert.base64Decode(
    'ChFSYWRhckRhdGFTa2V0Y2h5cxI9CgVpdGVtcxgBIAMoCzInLmdhbGF4aXMuZGF0YS5wcm92aW'
    'Rlci5SYWRhckRhdGFTa2V0Y2h5UgVpdGVtcw==');

@$core.Deprecated('Use fetchRadarDataRequestDescriptor instead')
const FetchRadarDataRequest$json = {
  '1': 'FetchRadarDataRequest',
  '2': [
    {'1': 'radar_sketchy', '3': 1, '4': 1, '5': 11, '6': '.galaxis.data.provider.RadarDataSketchy', '10': 'radarSketchy'},
    {'1': 'data_type', '3': 2, '4': 1, '5': 14, '6': '.galaxis.data.provider.DistriDataType', '10': 'dataType'},
  ],
};

/// Descriptor for `FetchRadarDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchRadarDataRequestDescriptor = $convert.base64Decode(
    'ChVGZXRjaFJhZGFyRGF0YVJlcXVlc3QSTAoNcmFkYXJfc2tldGNoeRgBIAEoCzInLmdhbGF4aX'
    'MuZGF0YS5wcm92aWRlci5SYWRhckRhdGFTa2V0Y2h5UgxyYWRhclNrZXRjaHkSQgoJZGF0YV90'
    'eXBlGAIgASgOMiUuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkRpc3RyaURhdGFUeXBlUghkYXRhVH'
    'lwZQ==');

@$core.Deprecated('Use radarRunningInfoDescriptor instead')
const RadarRunningInfo$json = {
  '1': 'RadarRunningInfo',
  '2': [
    {'1': 'radar_id', '3': 1, '4': 1, '5': 5, '10': 'radarId'},
    {'1': 'begin_timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'beginTimestampMicros'},
    {'1': 'end_timestamp_micros', '3': 3, '4': 1, '5': 3, '10': 'endTimestampMicros'},
    {'1': 'range_type', '3': 4, '4': 1, '5': 14, '6': '.galaxis.data.provider.RadarRunningInfo.RangeType', '10': 'rangeType'},
  ],
  '4': [RadarRunningInfo_RangeType$json],
};

@$core.Deprecated('Use radarRunningInfoDescriptor instead')
const RadarRunningInfo_RangeType$json = {
  '1': 'RangeType',
  '2': [
    {'1': 'RUN', '2': 0},
    {'1': 'RUN_WITH_OBST', '2': 1},
  ],
};

/// Descriptor for `RadarRunningInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarRunningInfoDescriptor = $convert.base64Decode(
    'ChBSYWRhclJ1bm5pbmdJbmZvEhkKCHJhZGFyX2lkGAEgASgFUgdyYWRhcklkEjQKFmJlZ2luX3'
    'RpbWVzdGFtcF9taWNyb3MYAiABKANSFGJlZ2luVGltZXN0YW1wTWljcm9zEjAKFGVuZF90aW1l'
    'c3RhbXBfbWljcm9zGAMgASgDUhJlbmRUaW1lc3RhbXBNaWNyb3MSUAoKcmFuZ2VfdHlwZRgEIA'
    'EoDjIxLmdhbGF4aXMuZGF0YS5wcm92aWRlci5SYWRhclJ1bm5pbmdJbmZvLlJhbmdlVHlwZVIJ'
    'cmFuZ2VUeXBlIicKCVJhbmdlVHlwZRIHCgNSVU4QABIRCg1SVU5fV0lUSF9PQlNUEAE=');

@$core.Deprecated('Use radarRunningInfosDescriptor instead')
const RadarRunningInfos$json = {
  '1': 'RadarRunningInfos',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.RadarRunningInfo', '10': 'items'},
    {'1': 'begin_timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'beginTimestampMicros'},
    {'1': 'end_timestamp_micros', '3': 3, '4': 1, '5': 3, '10': 'endTimestampMicros'},
  ],
};

/// Descriptor for `RadarRunningInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radarRunningInfosDescriptor = $convert.base64Decode(
    'ChFSYWRhclJ1bm5pbmdJbmZvcxI9CgVpdGVtcxgBIAMoCzInLmdhbGF4aXMuZGF0YS5wcm92aW'
    'Rlci5SYWRhclJ1bm5pbmdJbmZvUgVpdGVtcxI0ChZiZWdpbl90aW1lc3RhbXBfbWljcm9zGAIg'
    'ASgDUhRiZWdpblRpbWVzdGFtcE1pY3JvcxIwChRlbmRfdGltZXN0YW1wX21pY3JvcxgDIAEoA1'
    'ISZW5kVGltZXN0YW1wTWljcm9z');

@$core.Deprecated('Use robotStatusDescriptor instead')
const RobotStatus$json = {
  '1': 'RobotStatus',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'cpu', '3': 2, '4': 1, '5': 1, '10': 'cpu'},
    {'1': 'mem', '3': 3, '4': 1, '5': 1, '10': 'mem'},
    {'1': 'location', '3': 4, '4': 1, '5': 11, '6': '.galaxis.data.provider.Point', '10': 'location'},
    {'1': 'logic_location', '3': 5, '4': 1, '5': 11, '6': '.galaxis.data.provider.Point', '10': 'logicLocation'},
    {'1': 'so_speed', '3': 6, '4': 1, '5': 1, '10': 'soSpeed'},
    {'1': 'turn_speed', '3': 7, '4': 1, '5': 1, '10': 'turnSpeed'},
    {'1': 'jack_position', '3': 8, '4': 1, '5': 1, '9': 0, '10': 'jackPosition', '17': true},
    {'1': 'telescoping_position', '3': 9, '4': 3, '5': 1, '10': 'telescopingPosition'},
    {'1': 'support_position', '3': 10, '4': 3, '5': 1, '10': 'supportPosition'},
    {'1': 'battery', '3': 11, '4': 1, '5': 5, '10': 'battery'},
  ],
  '8': [
    {'1': '_jack_position'},
  ],
};

/// Descriptor for `RobotStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotStatusDescriptor = $convert.base64Decode(
    'CgtSb2JvdFN0YXR1cxIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3RhbXBNaWNyb3'
    'MSEAoDY3B1GAIgASgBUgNjcHUSEAoDbWVtGAMgASgBUgNtZW0SOAoIbG9jYXRpb24YBCABKAsy'
    'HC5nYWxheGlzLmRhdGEucHJvdmlkZXIuUG9pbnRSCGxvY2F0aW9uEkMKDmxvZ2ljX2xvY2F0aW'
    '9uGAUgASgLMhwuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLlBvaW50Ug1sb2dpY0xvY2F0aW9uEhkK'
    'CHNvX3NwZWVkGAYgASgBUgdzb1NwZWVkEh0KCnR1cm5fc3BlZWQYByABKAFSCXR1cm5TcGVlZB'
    'IoCg1qYWNrX3Bvc2l0aW9uGAggASgBSABSDGphY2tQb3NpdGlvbogBARIxChR0ZWxlc2NvcGlu'
    'Z19wb3NpdGlvbhgJIAMoAVITdGVsZXNjb3BpbmdQb3NpdGlvbhIpChBzdXBwb3J0X3Bvc2l0aW'
    '9uGAogAygBUg9zdXBwb3J0UG9zaXRpb24SGAoHYmF0dGVyeRgLIAEoBVIHYmF0dGVyeUIQCg5f'
    'amFja19wb3NpdGlvbg==');

@$core.Deprecated('Use sensorSwitchItemDescriptor instead')
const SensorSwitchItem$json = {
  '1': 'SensorSwitchItem',
  '2': [
    {'1': 'sw_id', '3': 1, '4': 1, '5': 5, '10': 'swId'},
    {'1': 'timestamp_micross', '3': 2, '4': 3, '5': 3, '10': 'timestampMicross'},
    {'1': 'values', '3': 3, '4': 3, '5': 5, '10': 'values'},
  ],
};

/// Descriptor for `SensorSwitchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorSwitchItemDescriptor = $convert.base64Decode(
    'ChBTZW5zb3JTd2l0Y2hJdGVtEhMKBXN3X2lkGAEgASgFUgRzd0lkEisKEXRpbWVzdGFtcF9taW'
    'Nyb3NzGAIgAygDUhB0aW1lc3RhbXBNaWNyb3NzEhYKBnZhbHVlcxgDIAMoBVIGdmFsdWVz');

@$core.Deprecated('Use sensorSwitchItemsDescriptor instead')
const SensorSwitchItems$json = {
  '1': 'SensorSwitchItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.SensorSwitchItem', '10': 'items'},
    {'1': 'current_timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'currentTimestampMicros'},
  ],
};

/// Descriptor for `SensorSwitchItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sensorSwitchItemsDescriptor = $convert.base64Decode(
    'ChFTZW5zb3JTd2l0Y2hJdGVtcxI9CgVpdGVtcxgBIAMoCzInLmdhbGF4aXMuZGF0YS5wcm92aW'
    'Rlci5TZW5zb3JTd2l0Y2hJdGVtUgVpdGVtcxI4ChhjdXJyZW50X3RpbWVzdGFtcF9taWNyb3MY'
    'AiABKANSFmN1cnJlbnRUaW1lc3RhbXBNaWNyb3M=');

@$core.Deprecated('Use curveItemDataDescriptor instead')
const CurveItemData$json = {
  '1': 'CurveItemData',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'timestamp_micross', '3': 2, '4': 3, '5': 3, '10': 'timestampMicross'},
    {'1': 'values', '3': 3, '4': 3, '5': 1, '10': 'values'},
  ],
};

/// Descriptor for `CurveItemData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curveItemDataDescriptor = $convert.base64Decode(
    'Cg1DdXJ2ZUl0ZW1EYXRhEg4KAmlkGAEgASgFUgJpZBIrChF0aW1lc3RhbXBfbWljcm9zcxgCIA'
    'MoA1IQdGltZXN0YW1wTWljcm9zcxIWCgZ2YWx1ZXMYAyADKAFSBnZhbHVlcw==');

@$core.Deprecated('Use curveItemDatasDescriptor instead')
const CurveItemDatas$json = {
  '1': 'CurveItemDatas',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.CurveItemDatas.ItemsEntry', '10': 'items'},
  ],
  '3': [CurveItemDatas_ItemsEntry$json],
};

@$core.Deprecated('Use curveItemDatasDescriptor instead')
const CurveItemDatas_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.CurveItemData', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CurveItemDatas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List curveItemDatasDescriptor = $convert.base64Decode(
    'Cg5DdXJ2ZUl0ZW1EYXRhcxJGCgVpdGVtcxgBIAMoCzIwLmdhbGF4aXMuZGF0YS5wcm92aWRlci'
    '5DdXJ2ZUl0ZW1EYXRhcy5JdGVtc0VudHJ5UgVpdGVtcxpeCgpJdGVtc0VudHJ5EhAKA2tleRgB'
    'IAEoBVIDa2V5EjoKBXZhbHVlGAIgASgLMiQuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkN1cnZlSX'
    'RlbURhdGFSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use timeaxisValueItemDescriptor instead')
const TimeaxisValueItem$json = {
  '1': 'TimeaxisValueItem',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'duration_micros', '3': 2, '4': 1, '5': 3, '10': 'durationMicros'},
    {'1': 'level', '3': 3, '4': 1, '5': 5, '10': 'level'},
  ],
};

/// Descriptor for `TimeaxisValueItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeaxisValueItemDescriptor = $convert.base64Decode(
    'ChFUaW1lYXhpc1ZhbHVlSXRlbRIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3RhbX'
    'BNaWNyb3MSJwoPZHVyYXRpb25fbWljcm9zGAIgASgDUg5kdXJhdGlvbk1pY3JvcxIUCgVsZXZl'
    'bBgDIAEoBVIFbGV2ZWw=');

@$core.Deprecated('Use timeaxisValueItemsDescriptor instead')
const TimeaxisValueItems$json = {
  '1': 'TimeaxisValueItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.TimeaxisValueItem', '10': 'items'},
  ],
};

/// Descriptor for `TimeaxisValueItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeaxisValueItemsDescriptor = $convert.base64Decode(
    'ChJUaW1lYXhpc1ZhbHVlSXRlbXMSPgoFaXRlbXMYASADKAsyKC5nYWxheGlzLmRhdGEucHJvdm'
    'lkZXIuVGltZWF4aXNWYWx1ZUl0ZW1SBWl0ZW1z');

@$core.Deprecated('Use timeaxisAbnormalItemDescriptor instead')
const TimeaxisAbnormalItem$json = {
  '1': 'TimeaxisAbnormalItem',
  '2': [
    {'1': 'timestamp_micros', '3': 1, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'duration_micros', '3': 2, '4': 1, '5': 3, '10': 'durationMicros'},
  ],
};

/// Descriptor for `TimeaxisAbnormalItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeaxisAbnormalItemDescriptor = $convert.base64Decode(
    'ChRUaW1lYXhpc0Fibm9ybWFsSXRlbRIpChB0aW1lc3RhbXBfbWljcm9zGAEgASgDUg90aW1lc3'
    'RhbXBNaWNyb3MSJwoPZHVyYXRpb25fbWljcm9zGAIgASgDUg5kdXJhdGlvbk1pY3Jvcw==');

@$core.Deprecated('Use timeaxisItemsDescriptor instead')
const TimeaxisItems$json = {
  '1': 'TimeaxisItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.TimeaxisItems.ItemsEntry', '10': 'items'},
    {'1': 'abnormal_items', '3': 2, '4': 3, '5': 11, '6': '.galaxis.data.provider.TimeaxisAbnormalItem', '10': 'abnormalItems'},
  ],
  '3': [TimeaxisItems_ItemsEntry$json],
};

@$core.Deprecated('Use timeaxisItemsDescriptor instead')
const TimeaxisItems_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.TimeaxisValueItems', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TimeaxisItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeaxisItemsDescriptor = $convert.base64Decode(
    'Cg1UaW1lYXhpc0l0ZW1zEkUKBWl0ZW1zGAEgAygLMi8uZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLl'
    'RpbWVheGlzSXRlbXMuSXRlbXNFbnRyeVIFaXRlbXMSUgoOYWJub3JtYWxfaXRlbXMYAiADKAsy'
    'Ky5nYWxheGlzLmRhdGEucHJvdmlkZXIuVGltZWF4aXNBYm5vcm1hbEl0ZW1SDWFibm9ybWFsSX'
    'RlbXMaYwoKSXRlbXNFbnRyeRIQCgNrZXkYASABKAVSA2tleRI/CgV2YWx1ZRgCIAEoCzIpLmdh'
    'bGF4aXMuZGF0YS5wcm92aWRlci5UaW1lYXhpc1ZhbHVlSXRlbXNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use matchingConditionsDescriptor instead')
const MatchingConditions$json = {
  '1': 'MatchingConditions',
  '2': [
    {'1': 'err_codes', '3': 1, '4': 1, '5': 11, '6': '.galaxis.data.provider.Int32Values', '10': 'errCodes'},
    {'1': 'motion_ids', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.Int32Values', '10': 'motionIds'},
    {'1': 'bncmd_ids', '3': 3, '4': 1, '5': 11, '6': '.galaxis.data.provider.Int32Values', '10': 'bncmdIds'},
    {'1': 'bnreport_ids', '3': 4, '4': 1, '5': 11, '6': '.galaxis.data.provider.Int32Values', '10': 'bnreportIds'},
  ],
};

/// Descriptor for `MatchingConditions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchingConditionsDescriptor = $convert.base64Decode(
    'ChJNYXRjaGluZ0NvbmRpdGlvbnMSPwoJZXJyX2NvZGVzGAEgASgLMiIuZ2FsYXhpcy5kYXRhLn'
    'Byb3ZpZGVyLkludDMyVmFsdWVzUghlcnJDb2RlcxJBCgptb3Rpb25faWRzGAIgASgLMiIuZ2Fs'
    'YXhpcy5kYXRhLnByb3ZpZGVyLkludDMyVmFsdWVzUgltb3Rpb25JZHMSPwoJYm5jbWRfaWRzGA'
    'MgASgLMiIuZ2FsYXhpcy5kYXRhLnByb3ZpZGVyLkludDMyVmFsdWVzUghibmNtZElkcxJFCgxi'
    'bnJlcG9ydF9pZHMYBCABKAsyIi5nYWxheGlzLmRhdGEucHJvdmlkZXIuSW50MzJWYWx1ZXNSC2'
    'JucmVwb3J0SWRz');

@$core.Deprecated('Use matchingCountedConditionsDescriptor instead')
const MatchingCountedConditions$json = {
  '1': 'MatchingCountedConditions',
  '2': [
    {'1': 'err_codes', '3': 1, '4': 3, '5': 11, '6': '.galaxis.data.provider.MatchingCountedConditions.ErrCodesEntry', '10': 'errCodes'},
    {'1': 'motion_ids', '3': 2, '4': 3, '5': 11, '6': '.galaxis.data.provider.MatchingCountedConditions.MotionIdsEntry', '10': 'motionIds'},
    {'1': 'bncmd_ids', '3': 3, '4': 3, '5': 11, '6': '.galaxis.data.provider.MatchingCountedConditions.BncmdIdsEntry', '10': 'bncmdIds'},
    {'1': 'bnreport_ids', '3': 4, '4': 3, '5': 11, '6': '.galaxis.data.provider.MatchingCountedConditions.BnreportIdsEntry', '10': 'bnreportIds'},
  ],
  '3': [MatchingCountedConditions_ErrCodesEntry$json, MatchingCountedConditions_MotionIdsEntry$json, MatchingCountedConditions_BncmdIdsEntry$json, MatchingCountedConditions_BnreportIdsEntry$json],
};

@$core.Deprecated('Use matchingCountedConditionsDescriptor instead')
const MatchingCountedConditions_ErrCodesEntry$json = {
  '1': 'ErrCodesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use matchingCountedConditionsDescriptor instead')
const MatchingCountedConditions_MotionIdsEntry$json = {
  '1': 'MotionIdsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use matchingCountedConditionsDescriptor instead')
const MatchingCountedConditions_BncmdIdsEntry$json = {
  '1': 'BncmdIdsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use matchingCountedConditionsDescriptor instead')
const MatchingCountedConditions_BnreportIdsEntry$json = {
  '1': 'BnreportIdsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `MatchingCountedConditions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchingCountedConditionsDescriptor = $convert.base64Decode(
    'ChlNYXRjaGluZ0NvdW50ZWRDb25kaXRpb25zElsKCWVycl9jb2RlcxgBIAMoCzI+LmdhbGF4aX'
    'MuZGF0YS5wcm92aWRlci5NYXRjaGluZ0NvdW50ZWRDb25kaXRpb25zLkVyckNvZGVzRW50cnlS'
    'CGVyckNvZGVzEl4KCm1vdGlvbl9pZHMYAiADKAsyPy5nYWxheGlzLmRhdGEucHJvdmlkZXIuTW'
    'F0Y2hpbmdDb3VudGVkQ29uZGl0aW9ucy5Nb3Rpb25JZHNFbnRyeVIJbW90aW9uSWRzElsKCWJu'
    'Y21kX2lkcxgDIAMoCzI+LmdhbGF4aXMuZGF0YS5wcm92aWRlci5NYXRjaGluZ0NvdW50ZWRDb2'
    '5kaXRpb25zLkJuY21kSWRzRW50cnlSCGJuY21kSWRzEmQKDGJucmVwb3J0X2lkcxgEIAMoCzJB'
    'LmdhbGF4aXMuZGF0YS5wcm92aWRlci5NYXRjaGluZ0NvdW50ZWRDb25kaXRpb25zLkJucmVwb3'
    'J0SWRzRW50cnlSC2JucmVwb3J0SWRzGjsKDUVyckNvZGVzRW50cnkSEAoDa2V5GAEgASgFUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ARo8Cg5Nb3Rpb25JZHNFbnRyeRIQCgNrZXkYAS'
    'ABKAVSA2tleRIUCgV2YWx1ZRgCIAEoBVIFdmFsdWU6AjgBGjsKDUJuY21kSWRzRW50cnkSEAoD'
    'a2V5GAEgASgFUgNrZXkSFAoFdmFsdWUYAiABKAVSBXZhbHVlOgI4ARo+ChBCbnJlcG9ydElkc0'
    'VudHJ5EhAKA2tleRgBIAEoBVIDa2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use matchingRequestDescriptor instead')
const MatchingRequest$json = {
  '1': 'MatchingRequest',
  '2': [
    {'1': 'locale', '3': 1, '4': 1, '5': 9, '10': 'locale'},
    {'1': 'timestamp_micros', '3': 2, '4': 1, '5': 3, '10': 'timestampMicros'},
    {'1': 'conditions', '3': 3, '4': 1, '5': 11, '6': '.galaxis.data.provider.MatchingConditions', '10': 'conditions'},
    {'1': 'max_count', '3': 5, '4': 1, '5': 3, '10': 'maxCount'},
    {'1': 'advise_finish_timestamp_micros', '3': 6, '4': 1, '5': 3, '10': 'adviseFinishTimestampMicros'},
    {'1': 'direct_new', '3': 7, '4': 1, '5': 8, '10': 'directNew'},
  ],
};

/// Descriptor for `MatchingRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchingRequestDescriptor = $convert.base64Decode(
    'Cg9NYXRjaGluZ1JlcXVlc3QSFgoGbG9jYWxlGAEgASgJUgZsb2NhbGUSKQoQdGltZXN0YW1wX2'
    '1pY3JvcxgCIAEoA1IPdGltZXN0YW1wTWljcm9zEkkKCmNvbmRpdGlvbnMYAyABKAsyKS5nYWxh'
    'eGlzLmRhdGEucHJvdmlkZXIuTWF0Y2hpbmdDb25kaXRpb25zUgpjb25kaXRpb25zEhsKCW1heF'
    '9jb3VudBgFIAEoA1IIbWF4Q291bnQSQwoeYWR2aXNlX2ZpbmlzaF90aW1lc3RhbXBfbWljcm9z'
    'GAYgASgDUhthZHZpc2VGaW5pc2hUaW1lc3RhbXBNaWNyb3MSHQoKZGlyZWN0X25ldxgHIAEoCF'
    'IJZGlyZWN0TmV3');

@$core.Deprecated('Use matchingResponseDescriptor instead')
const MatchingResponse$json = {
  '1': 'MatchingResponse',
  '2': [
    {'1': 'logs', '3': 1, '4': 1, '5': 11, '6': '.galaxis.data.provider.AgvLogs', '10': 'logs'},
    {'1': 'timerange', '3': 2, '4': 1, '5': 11, '6': '.galaxis.data.provider.TimeRange', '10': 'timerange'},
    {'1': 'complete', '3': 3, '4': 1, '5': 8, '10': 'complete'},
  ],
};

/// Descriptor for `MatchingResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchingResponseDescriptor = $convert.base64Decode(
    'ChBNYXRjaGluZ1Jlc3BvbnNlEjIKBGxvZ3MYASABKAsyHi5nYWxheGlzLmRhdGEucHJvdmlkZX'
    'IuQWd2TG9nc1IEbG9ncxI+Cgl0aW1lcmFuZ2UYAiABKAsyIC5nYWxheGlzLmRhdGEucHJvdmlk'
    'ZXIuVGltZVJhbmdlUgl0aW1lcmFuZ2USGgoIY29tcGxldGUYAyABKAhSCGNvbXBsZXRl');

@$core.Deprecated('Use fetchDataResponseDescriptor instead')
const FetchDataResponse$json = {
  '1': 'FetchDataResponse',
  '2': [
    {'1': 'filename', '3': 1, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'content', '3': 2, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `FetchDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fetchDataResponseDescriptor = $convert.base64Decode(
    'ChFGZXRjaERhdGFSZXNwb25zZRIaCghmaWxlbmFtZRgBIAEoCVIIZmlsZW5hbWUSGAoHY29udG'
    'VudBgCIAEoDFIHY29udGVudA==');

@$core.Deprecated('Use distriDeviceItemDescriptor instead')
const DistriDeviceItem$json = {
  '1': 'DistriDeviceItem',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 5, '10': 'deviceId'},
    {'1': 'device_type', '3': 2, '4': 1, '5': 14, '6': '.galaxis.data.provider.DistriDeviceType', '10': 'deviceType'},
  ],
};

/// Descriptor for `DistriDeviceItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List distriDeviceItemDescriptor = $convert.base64Decode(
    'ChBEaXN0cmlEZXZpY2VJdGVtEhsKCWRldmljZV9pZBgBIAEoBVIIZGV2aWNlSWQSSAoLZGV2aW'
    'NlX3R5cGUYAiABKA4yJy5nYWxheGlzLmRhdGEucHJvdmlkZXIuRGlzdHJpRGV2aWNlVHlwZVIK'
    'ZGV2aWNlVHlwZQ==');

