// This is a generated file - do not edit.
//
// Generated from get_marker_data.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// 地图服务需要(id 和码值数据)做码值更新
class CurrentMarkData extends $pb.GeneratedMessage {
  factory CurrentMarkData({
    $fixnum.Int64? id,
    $core.String? markerCode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (markerCode != null) result.markerCode = markerCode;
    return result;
  }

  CurrentMarkData._();

  factory CurrentMarkData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurrentMarkData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurrentMarkData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentMarkData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentMarkData copyWith(void Function(CurrentMarkData) updates) =>
      super.copyWith((message) => updates(message as CurrentMarkData))
          as CurrentMarkData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentMarkData create() => CurrentMarkData._();
  @$core.override
  CurrentMarkData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurrentMarkData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurrentMarkData>(create);
  static CurrentMarkData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get markerCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set markerCode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMarkerCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerCode() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
