// This is a generated file - do not edit.
//
// Generated from robot_data_provider.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DistriDeviceType extends $pb.ProtobufEnum {
  static const DistriDeviceType DepthCamera =
      DistriDeviceType._(0, _omitEnumNames ? '' : 'DepthCamera');
  static const DistriDeviceType Mid360 =
      DistriDeviceType._(1, _omitEnumNames ? '' : 'Mid360');
  static const DistriDeviceType Lidar2d =
      DistriDeviceType._(2, _omitEnumNames ? '' : 'Lidar2d');

  static const $core.List<DistriDeviceType> values = <DistriDeviceType>[
    DepthCamera,
    Mid360,
    Lidar2d,
  ];

  static final $core.List<DistriDeviceType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static DistriDeviceType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DistriDeviceType._(super.value, super.name);
}

class DistriDataType extends $pb.ProtobufEnum {
  static const DistriDataType Point2d =
      DistriDataType._(0, _omitEnumNames ? '' : 'Point2d');
  static const DistriDataType Point3d =
      DistriDataType._(1, _omitEnumNames ? '' : 'Point3d');
  static const DistriDataType Rgb24 =
      DistriDataType._(2, _omitEnumNames ? '' : 'Rgb24');
  static const DistriDataType Depth16 =
      DistriDataType._(3, _omitEnumNames ? '' : 'Depth16');
  static const DistriDataType Infra8 =
      DistriDataType._(4, _omitEnumNames ? '' : 'Infra8');

  static const $core.List<DistriDataType> values = <DistriDataType>[
    Point2d,
    Point3d,
    Rgb24,
    Depth16,
    Infra8,
  ];

  static final $core.List<DistriDataType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static DistriDataType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DistriDataType._(super.value, super.name);
}

class DistriUsedBy extends $pb.ProtobufEnum {
  static const DistriUsedBy Walk =
      DistriUsedBy._(0, _omitEnumNames ? '' : 'Walk');
  static const DistriUsedBy Pick =
      DistriUsedBy._(1, _omitEnumNames ? '' : 'Pick');

  static const $core.List<DistriUsedBy> values = <DistriUsedBy>[
    Walk,
    Pick,
  ];

  static final $core.List<DistriUsedBy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static DistriUsedBy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const DistriUsedBy._(super.value, super.name);
}

class CountedRange_TimestampType extends $pb.ProtobufEnum {
  static const CountedRange_TimestampType START =
      CountedRange_TimestampType._(0, _omitEnumNames ? '' : 'START');
  static const CountedRange_TimestampType MIDDLE =
      CountedRange_TimestampType._(1, _omitEnumNames ? '' : 'MIDDLE');
  static const CountedRange_TimestampType END =
      CountedRange_TimestampType._(2, _omitEnumNames ? '' : 'END');

  static const $core.List<CountedRange_TimestampType> values =
      <CountedRange_TimestampType>[
    START,
    MIDDLE,
    END,
  ];

  static final $core.List<CountedRange_TimestampType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CountedRange_TimestampType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CountedRange_TimestampType._(super.value, super.name);
}

class AgvLogCountedRange_LevelType extends $pb.ProtobufEnum {
  static const AgvLogCountedRange_LevelType DETAIL =
      AgvLogCountedRange_LevelType._(0, _omitEnumNames ? '' : 'DETAIL');
  static const AgvLogCountedRange_LevelType EXCEPTION =
      AgvLogCountedRange_LevelType._(1, _omitEnumNames ? '' : 'EXCEPTION');

  static const $core.List<AgvLogCountedRange_LevelType> values =
      <AgvLogCountedRange_LevelType>[
    DETAIL,
    EXCEPTION,
  ];

  static final $core.List<AgvLogCountedRange_LevelType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static AgvLogCountedRange_LevelType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AgvLogCountedRange_LevelType._(super.value, super.name);
}

class RosbagTypeItem_RosbagType extends $pb.ProtobufEnum {
  static const RosbagTypeItem_RosbagType ROSBAG2 =
      RosbagTypeItem_RosbagType._(0, _omitEnumNames ? '' : 'ROSBAG2');
  static const RosbagTypeItem_RosbagType MCAP =
      RosbagTypeItem_RosbagType._(1, _omitEnumNames ? '' : 'MCAP');

  static const $core.List<RosbagTypeItem_RosbagType> values =
      <RosbagTypeItem_RosbagType>[
    ROSBAG2,
    MCAP,
  ];

  static final $core.List<RosbagTypeItem_RosbagType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RosbagTypeItem_RosbagType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RosbagTypeItem_RosbagType._(super.value, super.name);
}

class AgvStateLog_StateType extends $pb.ProtobufEnum {
  static const AgvStateLog_StateType READY =
      AgvStateLog_StateType._(0, _omitEnumNames ? '' : 'READY');
  static const AgvStateLog_StateType INFO =
      AgvStateLog_StateType._(1, _omitEnumNames ? '' : 'INFO');
  static const AgvStateLog_StateType WARNING =
      AgvStateLog_StateType._(2, _omitEnumNames ? '' : 'WARNING');
  static const AgvStateLog_StateType CRITICAL =
      AgvStateLog_StateType._(3, _omitEnumNames ? '' : 'CRITICAL');
  static const AgvStateLog_StateType FATAL =
      AgvStateLog_StateType._(4, _omitEnumNames ? '' : 'FATAL');
  static const AgvStateLog_StateType CHARGE =
      AgvStateLog_StateType._(5, _omitEnumNames ? '' : 'CHARGE');

  static const $core.List<AgvStateLog_StateType> values =
      <AgvStateLog_StateType>[
    READY,
    INFO,
    WARNING,
    CRITICAL,
    FATAL,
    CHARGE,
  ];

  static final $core.List<AgvStateLog_StateType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static AgvStateLog_StateType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AgvStateLog_StateType._(super.value, super.name);
}

class ExceptionStatusEvent_Level extends $pb.ProtobufEnum {
  static const ExceptionStatusEvent_Level UNDETERMINED =
      ExceptionStatusEvent_Level._(0, _omitEnumNames ? '' : 'UNDETERMINED');
  static const ExceptionStatusEvent_Level INFORMATIONAL =
      ExceptionStatusEvent_Level._(12, _omitEnumNames ? '' : 'INFORMATIONAL');
  static const ExceptionStatusEvent_Level WARNING =
      ExceptionStatusEvent_Level._(13, _omitEnumNames ? '' : 'WARNING');
  static const ExceptionStatusEvent_Level CRITICAL =
      ExceptionStatusEvent_Level._(14, _omitEnumNames ? '' : 'CRITICAL');
  static const ExceptionStatusEvent_Level FATAL =
      ExceptionStatusEvent_Level._(15, _omitEnumNames ? '' : 'FATAL');

  static const $core.List<ExceptionStatusEvent_Level> values =
      <ExceptionStatusEvent_Level>[
    UNDETERMINED,
    INFORMATIONAL,
    WARNING,
    CRITICAL,
    FATAL,
  ];

  static final $core.Map<$core.int, ExceptionStatusEvent_Level> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ExceptionStatusEvent_Level? valueOf($core.int value) =>
      _byValue[value];

  const ExceptionStatusEvent_Level._(super.value, super.name);
}

class ExceptionStatusEvent_EventId extends $pb.ProtobufEnum {
  static const ExceptionStatusEvent_EventId NONE =
      ExceptionStatusEvent_EventId._(0, _omitEnumNames ? '' : 'NONE');
  static const ExceptionStatusEvent_EventId START =
      ExceptionStatusEvent_EventId._(1, _omitEnumNames ? '' : 'START');
  static const ExceptionStatusEvent_EventId UPDATE =
      ExceptionStatusEvent_EventId._(2, _omitEnumNames ? '' : 'UPDATE');
  static const ExceptionStatusEvent_EventId END =
      ExceptionStatusEvent_EventId._(3, _omitEnumNames ? '' : 'END');
  static const ExceptionStatusEvent_EventId START_AND_END =
      ExceptionStatusEvent_EventId._(4, _omitEnumNames ? '' : 'START_AND_END');

  static const $core.List<ExceptionStatusEvent_EventId> values =
      <ExceptionStatusEvent_EventId>[
    NONE,
    START,
    UPDATE,
    END,
    START_AND_END,
  ];

  static final $core.List<ExceptionStatusEvent_EventId?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ExceptionStatusEvent_EventId? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ExceptionStatusEvent_EventId._(super.value, super.name);
}

class RadarRunningInfo_RangeType extends $pb.ProtobufEnum {
  static const RadarRunningInfo_RangeType RUN =
      RadarRunningInfo_RangeType._(0, _omitEnumNames ? '' : 'RUN');
  static const RadarRunningInfo_RangeType RUN_WITH_OBST =
      RadarRunningInfo_RangeType._(1, _omitEnumNames ? '' : 'RUN_WITH_OBST');

  static const $core.List<RadarRunningInfo_RangeType> values =
      <RadarRunningInfo_RangeType>[
    RUN,
    RUN_WITH_OBST,
  ];

  static final $core.List<RadarRunningInfo_RangeType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static RadarRunningInfo_RangeType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RadarRunningInfo_RangeType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
