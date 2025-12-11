//
//  Generated code. Do not modify.
//  source: get_marker_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// 地图服务需要(id 和码值数据)做码值更新
class CurrentMarkData extends $pb.GeneratedMessage {
  factory CurrentMarkData({
    $fixnum.Int64? id,
    $core.String? markerCode,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    return $result;
  }
  CurrentMarkData._() : super();
  factory CurrentMarkData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurrentMarkData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurrentMarkData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurrentMarkData clone() => CurrentMarkData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurrentMarkData copyWith(void Function(CurrentMarkData) updates) => super.copyWith((message) => updates(message as CurrentMarkData)) as CurrentMarkData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentMarkData create() => CurrentMarkData._();
  CurrentMarkData createEmptyInstance() => create();
  static $pb.PbList<CurrentMarkData> createRepeated() => $pb.PbList<CurrentMarkData>();
  @$core.pragma('dart2js:noInline')
  static CurrentMarkData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrentMarkData>(create);
  static CurrentMarkData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get markerCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set markerCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarkerCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerCode() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
