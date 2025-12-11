//
//  Generated code. Do not modify.
//  source: site_health.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 健康状态枚举
class HealthStatus extends $pb.ProtobufEnum {
  static const HealthStatus HEALTH_STATUS_UNKNOWN = HealthStatus._(0, _omitEnumNames ? '' : 'HEALTH_STATUS_UNKNOWN');
  static const HealthStatus HEALTH_STATUS_NORMAL = HealthStatus._(1, _omitEnumNames ? '' : 'HEALTH_STATUS_NORMAL');
  static const HealthStatus HEALTH_STATUS_WARNING = HealthStatus._(2, _omitEnumNames ? '' : 'HEALTH_STATUS_WARNING');
  static const HealthStatus HEALTH_STATUS_ERROR = HealthStatus._(3, _omitEnumNames ? '' : 'HEALTH_STATUS_ERROR');
  static const HealthStatus HEALTH_STATUS_CRITICAL = HealthStatus._(4, _omitEnumNames ? '' : 'HEALTH_STATUS_CRITICAL');

  static const $core.List<HealthStatus> values = <HealthStatus> [
    HEALTH_STATUS_UNKNOWN,
    HEALTH_STATUS_NORMAL,
    HEALTH_STATUS_WARNING,
    HEALTH_STATUS_ERROR,
    HEALTH_STATUS_CRITICAL,
  ];

  static final $core.Map<$core.int, HealthStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HealthStatus? valueOf($core.int value) => _byValue[value];

  const HealthStatus._($core.int v, $core.String n) : super(v, n);
}

/// 二维码问题类型
class MarkerIssueType extends $pb.ProtobufEnum {
  static const MarkerIssueType MARKER_ISSUE_NONE = MarkerIssueType._(0, _omitEnumNames ? '' : 'MARKER_ISSUE_NONE');
  static const MarkerIssueType MARKER_ISSUE_DAMAGED = MarkerIssueType._(1, _omitEnumNames ? '' : 'MARKER_ISSUE_DAMAGED');
  static const MarkerIssueType MARKER_ISSUE_MISALIGNED = MarkerIssueType._(2, _omitEnumNames ? '' : 'MARKER_ISSUE_MISALIGNED');
  static const MarkerIssueType MARKER_ISSUE_ANGLE_DEVIATION = MarkerIssueType._(3, _omitEnumNames ? '' : 'MARKER_ISSUE_ANGLE_DEVIATION');
  static const MarkerIssueType MARKER_ISSUE_WRONG_CODE = MarkerIssueType._(4, _omitEnumNames ? '' : 'MARKER_ISSUE_WRONG_CODE');

  static const $core.List<MarkerIssueType> values = <MarkerIssueType> [
    MARKER_ISSUE_NONE,
    MARKER_ISSUE_DAMAGED,
    MARKER_ISSUE_MISALIGNED,
    MARKER_ISSUE_ANGLE_DEVIATION,
    MARKER_ISSUE_WRONG_CODE,
  ];

  static final $core.Map<$core.int, MarkerIssueType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MarkerIssueType? valueOf($core.int value) => _byValue[value];

  const MarkerIssueType._($core.int v, $core.String n) : super(v, n);
}

/// 地面问题类型
class GroundIssueType extends $pb.ProtobufEnum {
  static const GroundIssueType GROUND_ISSUE_NONE = GroundIssueType._(0, _omitEnumNames ? '' : 'GROUND_ISSUE_NONE');
  static const GroundIssueType GROUND_ISSUE_UNEVEN = GroundIssueType._(1, _omitEnumNames ? '' : 'GROUND_ISSUE_UNEVEN');
  static const GroundIssueType GROUND_ISSUE_OBSTACLE = GroundIssueType._(2, _omitEnumNames ? '' : 'GROUND_ISSUE_OBSTACLE');
  static const GroundIssueType GROUND_ISSUE_SLOPE = GroundIssueType._(3, _omitEnumNames ? '' : 'GROUND_ISSUE_SLOPE');

  static const $core.List<GroundIssueType> values = <GroundIssueType> [
    GROUND_ISSUE_NONE,
    GROUND_ISSUE_UNEVEN,
    GROUND_ISSUE_OBSTACLE,
    GROUND_ISSUE_SLOPE,
  ];

  static final $core.Map<$core.int, GroundIssueType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GroundIssueType? valueOf($core.int value) => _byValue[value];

  const GroundIssueType._($core.int v, $core.String n) : super(v, n);
}

/// 货架问题类型
class GoodsSlotIssueType extends $pb.ProtobufEnum {
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_NONE = GoodsSlotIssueType._(0, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_NONE');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_HEIGHT_MISMATCH = GoodsSlotIssueType._(1, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_HEIGHT_MISMATCH');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_POSITION_ERROR = GoodsSlotIssueType._(2, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_POSITION_ERROR');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_DAMAGED = GoodsSlotIssueType._(3, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_DAMAGED');

  static const $core.List<GoodsSlotIssueType> values = <GoodsSlotIssueType> [
    GOODS_SLOT_ISSUE_NONE,
    GOODS_SLOT_ISSUE_HEIGHT_MISMATCH,
    GOODS_SLOT_ISSUE_POSITION_ERROR,
    GOODS_SLOT_ISSUE_DAMAGED,
  ];

  static final $core.Map<$core.int, GoodsSlotIssueType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GoodsSlotIssueType? valueOf($core.int value) => _byValue[value];

  const GoodsSlotIssueType._($core.int v, $core.String n) : super(v, n);
}

/// 异常类型枚举
class ExceptionCategory extends $pb.ProtobufEnum {
  static const ExceptionCategory EXCEPTION_CATEGORY_UNKNOWN = ExceptionCategory._(0, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_UNKNOWN');
  static const ExceptionCategory EXCEPTION_CATEGORY_MARKER = ExceptionCategory._(1, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_MARKER');
  static const ExceptionCategory EXCEPTION_CATEGORY_GROUND = ExceptionCategory._(2, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_GROUND');
  static const ExceptionCategory EXCEPTION_CATEGORY_GOODS_SLOT = ExceptionCategory._(3, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_GOODS_SLOT');

  static const $core.List<ExceptionCategory> values = <ExceptionCategory> [
    EXCEPTION_CATEGORY_UNKNOWN,
    EXCEPTION_CATEGORY_MARKER,
    EXCEPTION_CATEGORY_GROUND,
    EXCEPTION_CATEGORY_GOODS_SLOT,
  ];

  static final $core.Map<$core.int, ExceptionCategory> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExceptionCategory? valueOf($core.int value) => _byValue[value];

  const ExceptionCategory._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
