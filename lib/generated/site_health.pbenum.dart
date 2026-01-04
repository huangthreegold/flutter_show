// This is a generated file - do not edit.
//
// Generated from site_health.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 健康状态枚举
class HealthStatus extends $pb.ProtobufEnum {
  static const HealthStatus HEALTH_STATUS_UNKNOWN =
      HealthStatus._(0, _omitEnumNames ? '' : 'HEALTH_STATUS_UNKNOWN');
  static const HealthStatus HEALTH_STATUS_NORMAL =
      HealthStatus._(1, _omitEnumNames ? '' : 'HEALTH_STATUS_NORMAL');
  static const HealthStatus HEALTH_STATUS_WARNING =
      HealthStatus._(2, _omitEnumNames ? '' : 'HEALTH_STATUS_WARNING');
  static const HealthStatus HEALTH_STATUS_ERROR =
      HealthStatus._(3, _omitEnumNames ? '' : 'HEALTH_STATUS_ERROR');
  static const HealthStatus HEALTH_STATUS_CRITICAL =
      HealthStatus._(4, _omitEnumNames ? '' : 'HEALTH_STATUS_CRITICAL');

  static const $core.List<HealthStatus> values = <HealthStatus>[
    HEALTH_STATUS_UNKNOWN,
    HEALTH_STATUS_NORMAL,
    HEALTH_STATUS_WARNING,
    HEALTH_STATUS_ERROR,
    HEALTH_STATUS_CRITICAL,
  ];

  static final $core.List<HealthStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static HealthStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HealthStatus._(super.value, super.name);
}

/// 二维码问题类型
class MarkerIssueType extends $pb.ProtobufEnum {
  static const MarkerIssueType MARKER_ISSUE_NONE =
      MarkerIssueType._(0, _omitEnumNames ? '' : 'MARKER_ISSUE_NONE');
  static const MarkerIssueType MARKER_ISSUE_DAMAGED =
      MarkerIssueType._(1, _omitEnumNames ? '' : 'MARKER_ISSUE_DAMAGED');
  static const MarkerIssueType MARKER_ISSUE_MISALIGNED =
      MarkerIssueType._(2, _omitEnumNames ? '' : 'MARKER_ISSUE_MISALIGNED');
  static const MarkerIssueType MARKER_ISSUE_ANGLE_DEVIATION = MarkerIssueType._(
      3, _omitEnumNames ? '' : 'MARKER_ISSUE_ANGLE_DEVIATION');
  static const MarkerIssueType MARKER_ISSUE_WRONG_CODE =
      MarkerIssueType._(4, _omitEnumNames ? '' : 'MARKER_ISSUE_WRONG_CODE');

  static const $core.List<MarkerIssueType> values = <MarkerIssueType>[
    MARKER_ISSUE_NONE,
    MARKER_ISSUE_DAMAGED,
    MARKER_ISSUE_MISALIGNED,
    MARKER_ISSUE_ANGLE_DEVIATION,
    MARKER_ISSUE_WRONG_CODE,
  ];

  static final $core.List<MarkerIssueType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static MarkerIssueType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MarkerIssueType._(super.value, super.name);
}

/// 地面问题类型
class GroundIssueType extends $pb.ProtobufEnum {
  static const GroundIssueType GROUND_ISSUE_NONE =
      GroundIssueType._(0, _omitEnumNames ? '' : 'GROUND_ISSUE_NONE');
  static const GroundIssueType GROUND_ISSUE_UNEVEN =
      GroundIssueType._(1, _omitEnumNames ? '' : 'GROUND_ISSUE_UNEVEN');
  static const GroundIssueType GROUND_ISSUE_OBSTACLE =
      GroundIssueType._(2, _omitEnumNames ? '' : 'GROUND_ISSUE_OBSTACLE');
  static const GroundIssueType GROUND_ISSUE_SLOPE =
      GroundIssueType._(3, _omitEnumNames ? '' : 'GROUND_ISSUE_SLOPE');

  static const $core.List<GroundIssueType> values = <GroundIssueType>[
    GROUND_ISSUE_NONE,
    GROUND_ISSUE_UNEVEN,
    GROUND_ISSUE_OBSTACLE,
    GROUND_ISSUE_SLOPE,
  ];

  static final $core.List<GroundIssueType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GroundIssueType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GroundIssueType._(super.value, super.name);
}

/// 货架问题类型
class GoodsSlotIssueType extends $pb.ProtobufEnum {
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_NONE =
      GoodsSlotIssueType._(0, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_NONE');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_HEIGHT_MISMATCH =
      GoodsSlotIssueType._(
          1, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_HEIGHT_MISMATCH');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_POSITION_ERROR =
      GoodsSlotIssueType._(
          2, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_POSITION_ERROR');
  static const GoodsSlotIssueType GOODS_SLOT_ISSUE_DAMAGED =
      GoodsSlotIssueType._(3, _omitEnumNames ? '' : 'GOODS_SLOT_ISSUE_DAMAGED');

  static const $core.List<GoodsSlotIssueType> values = <GoodsSlotIssueType>[
    GOODS_SLOT_ISSUE_NONE,
    GOODS_SLOT_ISSUE_HEIGHT_MISMATCH,
    GOODS_SLOT_ISSUE_POSITION_ERROR,
    GOODS_SLOT_ISSUE_DAMAGED,
  ];

  static final $core.List<GoodsSlotIssueType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GoodsSlotIssueType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GoodsSlotIssueType._(super.value, super.name);
}

/// 异常类型枚举
class ExceptionCategory extends $pb.ProtobufEnum {
  static const ExceptionCategory EXCEPTION_CATEGORY_UNKNOWN =
      ExceptionCategory._(
          0, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_UNKNOWN');
  static const ExceptionCategory EXCEPTION_CATEGORY_MARKER =
      ExceptionCategory._(1, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_MARKER');
  static const ExceptionCategory EXCEPTION_CATEGORY_GROUND =
      ExceptionCategory._(2, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_GROUND');
  static const ExceptionCategory EXCEPTION_CATEGORY_GOODS_SLOT =
      ExceptionCategory._(
          3, _omitEnumNames ? '' : 'EXCEPTION_CATEGORY_GOODS_SLOT');

  static const $core.List<ExceptionCategory> values = <ExceptionCategory>[
    EXCEPTION_CATEGORY_UNKNOWN,
    EXCEPTION_CATEGORY_MARKER,
    EXCEPTION_CATEGORY_GROUND,
    EXCEPTION_CATEGORY_GOODS_SLOT,
  ];

  static final $core.List<ExceptionCategory?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ExceptionCategory? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ExceptionCategory._(super.value, super.name);
}

/// 学习状态
class LearningStatus extends $pb.ProtobufEnum {
  static const LearningStatus LEARNING_STATUS_COLLECTING =
      LearningStatus._(0, _omitEnumNames ? '' : 'LEARNING_STATUS_COLLECTING');
  static const LearningStatus LEARNING_STATUS_COMPLETED =
      LearningStatus._(1, _omitEnumNames ? '' : 'LEARNING_STATUS_COMPLETED');
  static const LearningStatus LEARNING_STATUS_NEED_RELEARN =
      LearningStatus._(2, _omitEnumNames ? '' : 'LEARNING_STATUS_NEED_RELEARN');
  static const LearningStatus LEARNING_STATUS_FAILED =
      LearningStatus._(3, _omitEnumNames ? '' : 'LEARNING_STATUS_FAILED');

  static const $core.List<LearningStatus> values = <LearningStatus>[
    LEARNING_STATUS_COLLECTING,
    LEARNING_STATUS_COMPLETED,
    LEARNING_STATUS_NEED_RELEARN,
    LEARNING_STATUS_FAILED,
  ];

  static final $core.List<LearningStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LearningStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LearningStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
