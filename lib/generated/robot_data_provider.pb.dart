//
//  Generated code. Do not modify.
//  source: robot_data_provider.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'robot_data_provider.pbenum.dart';

export 'robot_data_provider.pbenum.dart';

class Int32Values extends $pb.GeneratedMessage {
  factory Int32Values({
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Int32Values._() : super();
  factory Int32Values.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Int32Values.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Int32Values', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Int32Values clone() => Int32Values()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Int32Values copyWith(void Function(Int32Values) updates) => super.copyWith((message) => updates(message as Int32Values)) as Int32Values;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Values create() => Int32Values._();
  Int32Values createEmptyInstance() => create();
  static $pb.PbList<Int32Values> createRepeated() => $pb.PbList<Int32Values>();
  @$core.pragma('dart2js:noInline')
  static Int32Values getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Int32Values>(create);
  static Int32Values? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get values => $_getList(0);
}

class StringValues extends $pb.GeneratedMessage {
  factory StringValues({
    $core.Iterable<$core.String>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  StringValues._() : super();
  factory StringValues.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringValues.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringValues', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringValues clone() => StringValues()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringValues copyWith(void Function(StringValues) updates) => super.copyWith((message) => updates(message as StringValues)) as StringValues;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringValues create() => StringValues._();
  StringValues createEmptyInstance() => create();
  static $pb.PbList<StringValues> createRepeated() => $pb.PbList<StringValues>();
  @$core.pragma('dart2js:noInline')
  static StringValues getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringValues>(create);
  static StringValues? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get values => $_getList(0);
}

class OptionBoolValue extends $pb.GeneratedMessage {
  factory OptionBoolValue({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  OptionBoolValue._() : super();
  factory OptionBoolValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionBoolValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionBoolValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionBoolValue clone() => OptionBoolValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionBoolValue copyWith(void Function(OptionBoolValue) updates) => super.copyWith((message) => updates(message as OptionBoolValue)) as OptionBoolValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionBoolValue create() => OptionBoolValue._();
  OptionBoolValue createEmptyInstance() => create();
  static $pb.PbList<OptionBoolValue> createRepeated() => $pb.PbList<OptionBoolValue>();
  @$core.pragma('dart2js:noInline')
  static OptionBoolValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionBoolValue>(create);
  static OptionBoolValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class OptionDoubleValue extends $pb.GeneratedMessage {
  factory OptionDoubleValue({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  OptionDoubleValue._() : super();
  factory OptionDoubleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionDoubleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionDoubleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionDoubleValue clone() => OptionDoubleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionDoubleValue copyWith(void Function(OptionDoubleValue) updates) => super.copyWith((message) => updates(message as OptionDoubleValue)) as OptionDoubleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionDoubleValue create() => OptionDoubleValue._();
  OptionDoubleValue createEmptyInstance() => create();
  static $pb.PbList<OptionDoubleValue> createRepeated() => $pb.PbList<OptionDoubleValue>();
  @$core.pragma('dart2js:noInline')
  static OptionDoubleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionDoubleValue>(create);
  static OptionDoubleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class IntStringMap extends $pb.GeneratedMessage {
  factory IntStringMap({
    $core.Map<$core.int, $core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  IntStringMap._() : super();
  factory IntStringMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntStringMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntStringMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, $core.String>(1, _omitFieldNames ? '' : 'items', entryClassName: 'IntStringMap.ItemsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntStringMap clone() => IntStringMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntStringMap copyWith(void Function(IntStringMap) updates) => super.copyWith((message) => updates(message as IntStringMap)) as IntStringMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntStringMap create() => IntStringMap._();
  IntStringMap createEmptyInstance() => create();
  static $pb.PbList<IntStringMap> createRepeated() => $pb.PbList<IntStringMap>();
  @$core.pragma('dart2js:noInline')
  static IntStringMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntStringMap>(create);
  static IntStringMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.String> get items => $_getMap(0);
}

class UserLanguageType extends $pb.GeneratedMessage {
  factory UserLanguageType({
    $core.String? locale,
  }) {
    final $result = create();
    if (locale != null) {
      $result.locale = locale;
    }
    return $result;
  }
  UserLanguageType._() : super();
  factory UserLanguageType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLanguageType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLanguageType', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLanguageType clone() => UserLanguageType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLanguageType copyWith(void Function(UserLanguageType) updates) => super.copyWith((message) => updates(message as UserLanguageType)) as UserLanguageType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLanguageType create() => UserLanguageType._();
  UserLanguageType createEmptyInstance() => create();
  static $pb.PbList<UserLanguageType> createRepeated() => $pb.PbList<UserLanguageType>();
  @$core.pragma('dart2js:noInline')
  static UserLanguageType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLanguageType>(create);
  static UserLanguageType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => clearField(1);
}

class UserSession extends $pb.GeneratedMessage {
  factory UserSession({
    $fixnum.Int64? sessionId,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    return $result;
  }
  UserSession._() : super();
  factory UserSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSession clone() => UserSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSession copyWith(void Function(UserSession) updates) => super.copyWith((message) => updates(message as UserSession)) as UserSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSession create() => UserSession._();
  UserSession createEmptyInstance() => create();
  static $pb.PbList<UserSession> createRepeated() => $pb.PbList<UserSession>();
  @$core.pragma('dart2js:noInline')
  static UserSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSession>(create);
  static UserSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);
}

class UserLanguageSession extends $pb.GeneratedMessage {
  factory UserLanguageSession({
    $fixnum.Int64? sessionId,
    $core.String? locale,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (locale != null) {
      $result.locale = locale;
    }
    return $result;
  }
  UserLanguageSession._() : super();
  factory UserLanguageSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserLanguageSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserLanguageSession', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserLanguageSession clone() => UserLanguageSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserLanguageSession copyWith(void Function(UserLanguageSession) updates) => super.copyWith((message) => updates(message as UserLanguageSession)) as UserLanguageSession;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLanguageSession create() => UserLanguageSession._();
  UserLanguageSession createEmptyInstance() => create();
  static $pb.PbList<UserLanguageSession> createRepeated() => $pb.PbList<UserLanguageSession>();
  @$core.pragma('dart2js:noInline')
  static UserLanguageSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserLanguageSession>(create);
  static UserLanguageSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get locale => $_getSZ(1);
  @$pb.TagNumber(2)
  set locale($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocale() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocale() => clearField(2);
}

class Time extends $pb.GeneratedMessage {
  factory Time({
    $fixnum.Int64? timestampMicros,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    return $result;
  }
  Time._() : super();
  factory Time.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Time.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Time', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Time clone() => Time()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Time copyWith(void Function(Time) updates) => super.copyWith((message) => updates(message as Time)) as Time;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Time create() => Time._();
  Time createEmptyInstance() => create();
  static $pb.PbList<Time> createRepeated() => $pb.PbList<Time>();
  @$core.pragma('dart2js:noInline')
  static Time getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Time>(create);
  static Time? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);
}

class ReplayInfo extends $pb.GeneratedMessage {
  factory ReplayInfo({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? timestampMicros,
    $core.double? speed,
    $core.int? framerate,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (framerate != null) {
      $result.framerate = framerate;
    }
    return $result;
  }
  ReplayInfo._() : super();
  factory ReplayInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplayInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplayInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'speed', $pb.PbFieldType.OD)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'framerate', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplayInfo clone() => ReplayInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplayInfo copyWith(void Function(ReplayInfo) updates) => super.copyWith((message) => updates(message as ReplayInfo)) as ReplayInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplayInfo create() => ReplayInfo._();
  ReplayInfo createEmptyInstance() => create();
  static $pb.PbList<ReplayInfo> createRepeated() => $pb.PbList<ReplayInfo>();
  @$core.pragma('dart2js:noInline')
  static ReplayInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplayInfo>(create);
  static ReplayInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get speed => $_getN(2);
  @$pb.TagNumber(3)
  set speed($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpeed() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeed() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get framerate => $_getIZ(3);
  @$pb.TagNumber(4)
  set framerate($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFramerate() => $_has(3);
  @$pb.TagNumber(4)
  void clearFramerate() => clearField(4);
}

class Times extends $pb.GeneratedMessage {
  factory Times({
    $core.Iterable<Time>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Times._() : super();
  factory Times.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Times.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Times', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<Time>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Time.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Times clone() => Times()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Times copyWith(void Function(Times) updates) => super.copyWith((message) => updates(message as Times)) as Times;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Times create() => Times._();
  Times createEmptyInstance() => create();
  static $pb.PbList<Times> createRepeated() => $pb.PbList<Times>();
  @$core.pragma('dart2js:noInline')
  static Times getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Times>(create);
  static Times? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Time> get items => $_getList(0);
}

class SteadyTimeRange extends $pb.GeneratedMessage {
  factory SteadyTimeRange({
    $fixnum.Int64? steadyMillisBegin,
    $fixnum.Int64? steadyMillisEnd,
  }) {
    final $result = create();
    if (steadyMillisBegin != null) {
      $result.steadyMillisBegin = steadyMillisBegin;
    }
    if (steadyMillisEnd != null) {
      $result.steadyMillisEnd = steadyMillisEnd;
    }
    return $result;
  }
  SteadyTimeRange._() : super();
  factory SteadyTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SteadyTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SteadyTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'steadyMillisBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'steadyMillisEnd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SteadyTimeRange clone() => SteadyTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SteadyTimeRange copyWith(void Function(SteadyTimeRange) updates) => super.copyWith((message) => updates(message as SteadyTimeRange)) as SteadyTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SteadyTimeRange create() => SteadyTimeRange._();
  SteadyTimeRange createEmptyInstance() => create();
  static $pb.PbList<SteadyTimeRange> createRepeated() => $pb.PbList<SteadyTimeRange>();
  @$core.pragma('dart2js:noInline')
  static SteadyTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SteadyTimeRange>(create);
  static SteadyTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get steadyMillisBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set steadyMillisBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSteadyMillisBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteadyMillisBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get steadyMillisEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set steadyMillisEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSteadyMillisEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearSteadyMillisEnd() => clearField(2);
}

class TimeRange extends $pb.GeneratedMessage {
  factory TimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
  }) {
    final $result = create();
    if (timestampMicrosBegin != null) {
      $result.timestampMicrosBegin = timestampMicrosBegin;
    }
    if (timestampMicrosEnd != null) {
      $result.timestampMicrosEnd = timestampMicrosEnd;
    }
    return $result;
  }
  TimeRange._() : super();
  factory TimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeRange clone() => TimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeRange copyWith(void Function(TimeRange) updates) => super.copyWith((message) => updates(message as TimeRange)) as TimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeRange create() => TimeRange._();
  TimeRange createEmptyInstance() => create();
  static $pb.PbList<TimeRange> createRepeated() => $pb.PbList<TimeRange>();
  @$core.pragma('dart2js:noInline')
  static TimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeRange>(create);
  static TimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => clearField(2);
}

enum TimeView_TimeViewItem {
  viewTimeRange, 
  viewTimePoint, 
  isRealtime, 
  notSet
}

class TimeView extends $pb.GeneratedMessage {
  factory TimeView({
    TimeRange? globalTimeRange,
    TimeRange? viewTimeRange,
    $fixnum.Int64? viewTimePoint,
    $core.bool? isRealtime,
  }) {
    final $result = create();
    if (globalTimeRange != null) {
      $result.globalTimeRange = globalTimeRange;
    }
    if (viewTimeRange != null) {
      $result.viewTimeRange = viewTimeRange;
    }
    if (viewTimePoint != null) {
      $result.viewTimePoint = viewTimePoint;
    }
    if (isRealtime != null) {
      $result.isRealtime = isRealtime;
    }
    return $result;
  }
  TimeView._() : super();
  factory TimeView.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeView.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TimeView_TimeViewItem> _TimeView_TimeViewItemByTag = {
    2 : TimeView_TimeViewItem.viewTimeRange,
    3 : TimeView_TimeViewItem.viewTimePoint,
    4 : TimeView_TimeViewItem.isRealtime,
    0 : TimeView_TimeViewItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeView', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<TimeRange>(1, _omitFieldNames ? '' : 'globalTimeRange', subBuilder: TimeRange.create)
    ..aOM<TimeRange>(2, _omitFieldNames ? '' : 'viewTimeRange', subBuilder: TimeRange.create)
    ..aInt64(3, _omitFieldNames ? '' : 'viewTimePoint')
    ..aOB(4, _omitFieldNames ? '' : 'isRealtime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeView clone() => TimeView()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeView copyWith(void Function(TimeView) updates) => super.copyWith((message) => updates(message as TimeView)) as TimeView;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeView create() => TimeView._();
  TimeView createEmptyInstance() => create();
  static $pb.PbList<TimeView> createRepeated() => $pb.PbList<TimeView>();
  @$core.pragma('dart2js:noInline')
  static TimeView getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeView>(create);
  static TimeView? _defaultInstance;

  TimeView_TimeViewItem whichTimeViewItem() => _TimeView_TimeViewItemByTag[$_whichOneof(0)]!;
  void clearTimeViewItem() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TimeRange get globalTimeRange => $_getN(0);
  @$pb.TagNumber(1)
  set globalTimeRange(TimeRange v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGlobalTimeRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearGlobalTimeRange() => clearField(1);
  @$pb.TagNumber(1)
  TimeRange ensureGlobalTimeRange() => $_ensure(0);

  @$pb.TagNumber(2)
  TimeRange get viewTimeRange => $_getN(1);
  @$pb.TagNumber(2)
  set viewTimeRange(TimeRange v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasViewTimeRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewTimeRange() => clearField(2);
  @$pb.TagNumber(2)
  TimeRange ensureViewTimeRange() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get viewTimePoint => $_getI64(2);
  @$pb.TagNumber(3)
  set viewTimePoint($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasViewTimePoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearViewTimePoint() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isRealtime => $_getBF(3);
  @$pb.TagNumber(4)
  set isRealtime($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsRealtime() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsRealtime() => clearField(4);
}

class TimeViews extends $pb.GeneratedMessage {
  factory TimeViews({
    $core.Iterable<TimeView>? timeViews,
  }) {
    final $result = create();
    if (timeViews != null) {
      $result.timeViews.addAll(timeViews);
    }
    return $result;
  }
  TimeViews._() : super();
  factory TimeViews.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeViews.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeViews', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<TimeView>(1, _omitFieldNames ? '' : 'timeViews', $pb.PbFieldType.PM, subBuilder: TimeView.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeViews clone() => TimeViews()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeViews copyWith(void Function(TimeViews) updates) => super.copyWith((message) => updates(message as TimeViews)) as TimeViews;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeViews create() => TimeViews._();
  TimeViews createEmptyInstance() => create();
  static $pb.PbList<TimeViews> createRepeated() => $pb.PbList<TimeViews>();
  @$core.pragma('dart2js:noInline')
  static TimeViews getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeViews>(create);
  static TimeViews? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TimeView> get timeViews => $_getList(0);
}

class OptionTime extends $pb.GeneratedMessage {
  factory OptionTime({
    $fixnum.Int64? timestampMicros,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    return $result;
  }
  OptionTime._() : super();
  factory OptionTime.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionTime.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionTime', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionTime clone() => OptionTime()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionTime copyWith(void Function(OptionTime) updates) => super.copyWith((message) => updates(message as OptionTime)) as OptionTime;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionTime create() => OptionTime._();
  OptionTime createEmptyInstance() => create();
  static $pb.PbList<OptionTime> createRepeated() => $pb.PbList<OptionTime>();
  @$core.pragma('dart2js:noInline')
  static OptionTime getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionTime>(create);
  static OptionTime? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);
}

class ResampleTimeRange extends $pb.GeneratedMessage {
  factory ResampleTimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
    $fixnum.Int64? microsPerItem,
  }) {
    final $result = create();
    if (timestampMicrosBegin != null) {
      $result.timestampMicrosBegin = timestampMicrosBegin;
    }
    if (timestampMicrosEnd != null) {
      $result.timestampMicrosEnd = timestampMicrosEnd;
    }
    if (microsPerItem != null) {
      $result.microsPerItem = microsPerItem;
    }
    return $result;
  }
  ResampleTimeRange._() : super();
  factory ResampleTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResampleTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResampleTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..aInt64(3, _omitFieldNames ? '' : 'microsPerItem')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResampleTimeRange clone() => ResampleTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResampleTimeRange copyWith(void Function(ResampleTimeRange) updates) => super.copyWith((message) => updates(message as ResampleTimeRange)) as ResampleTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResampleTimeRange create() => ResampleTimeRange._();
  ResampleTimeRange createEmptyInstance() => create();
  static $pb.PbList<ResampleTimeRange> createRepeated() => $pb.PbList<ResampleTimeRange>();
  @$core.pragma('dart2js:noInline')
  static ResampleTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResampleTimeRange>(create);
  static ResampleTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get microsPerItem => $_getI64(2);
  @$pb.TagNumber(3)
  set microsPerItem($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMicrosPerItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearMicrosPerItem() => clearField(3);
}

class CountedRange extends $pb.GeneratedMessage {
  factory CountedRange({
    $core.String? locale,
    $fixnum.Int64? timestampMicros,
    CountedRange_TimestampType? timestampType,
    $fixnum.Int64? count,
  }) {
    final $result = create();
    if (locale != null) {
      $result.locale = locale;
    }
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (timestampType != null) {
      $result.timestampType = timestampType;
    }
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  CountedRange._() : super();
  factory CountedRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CountedRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CountedRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..e<CountedRange_TimestampType>(3, _omitFieldNames ? '' : 'timestampType', $pb.PbFieldType.OE, defaultOrMaker: CountedRange_TimestampType.START, valueOf: CountedRange_TimestampType.valueOf, enumValues: CountedRange_TimestampType.values)
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CountedRange clone() => CountedRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CountedRange copyWith(void Function(CountedRange) updates) => super.copyWith((message) => updates(message as CountedRange)) as CountedRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountedRange create() => CountedRange._();
  CountedRange createEmptyInstance() => create();
  static $pb.PbList<CountedRange> createRepeated() => $pb.PbList<CountedRange>();
  @$core.pragma('dart2js:noInline')
  static CountedRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CountedRange>(create);
  static CountedRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  CountedRange_TimestampType get timestampType => $_getN(2);
  @$pb.TagNumber(3)
  set timestampType(CountedRange_TimestampType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);
}

enum AgvLogCountedRange_FilterType {
  levelType, 
  selectItemTypes, 
  notSet
}

class AgvLogCountedRange extends $pb.GeneratedMessage {
  factory AgvLogCountedRange({
    $core.String? locale,
    $fixnum.Int64? timestampMicros,
    CountedRange_TimestampType? timestampType,
    $fixnum.Int64? count,
    AgvLogCountedRange_LevelType? levelType,
    Int32Values? selectItemTypes,
  }) {
    final $result = create();
    if (locale != null) {
      $result.locale = locale;
    }
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (timestampType != null) {
      $result.timestampType = timestampType;
    }
    if (count != null) {
      $result.count = count;
    }
    if (levelType != null) {
      $result.levelType = levelType;
    }
    if (selectItemTypes != null) {
      $result.selectItemTypes = selectItemTypes;
    }
    return $result;
  }
  AgvLogCountedRange._() : super();
  factory AgvLogCountedRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgvLogCountedRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, AgvLogCountedRange_FilterType> _AgvLogCountedRange_FilterTypeByTag = {
    5 : AgvLogCountedRange_FilterType.levelType,
    6 : AgvLogCountedRange_FilterType.selectItemTypes,
    0 : AgvLogCountedRange_FilterType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgvLogCountedRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..e<CountedRange_TimestampType>(3, _omitFieldNames ? '' : 'timestampType', $pb.PbFieldType.OE, defaultOrMaker: CountedRange_TimestampType.START, valueOf: CountedRange_TimestampType.valueOf, enumValues: CountedRange_TimestampType.values)
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..e<AgvLogCountedRange_LevelType>(5, _omitFieldNames ? '' : 'levelType', $pb.PbFieldType.OE, defaultOrMaker: AgvLogCountedRange_LevelType.DETAIL, valueOf: AgvLogCountedRange_LevelType.valueOf, enumValues: AgvLogCountedRange_LevelType.values)
    ..aOM<Int32Values>(6, _omitFieldNames ? '' : 'selectItemTypes', subBuilder: Int32Values.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgvLogCountedRange clone() => AgvLogCountedRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgvLogCountedRange copyWith(void Function(AgvLogCountedRange) updates) => super.copyWith((message) => updates(message as AgvLogCountedRange)) as AgvLogCountedRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLogCountedRange create() => AgvLogCountedRange._();
  AgvLogCountedRange createEmptyInstance() => create();
  static $pb.PbList<AgvLogCountedRange> createRepeated() => $pb.PbList<AgvLogCountedRange>();
  @$core.pragma('dart2js:noInline')
  static AgvLogCountedRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvLogCountedRange>(create);
  static AgvLogCountedRange? _defaultInstance;

  AgvLogCountedRange_FilterType whichFilterType() => _AgvLogCountedRange_FilterTypeByTag[$_whichOneof(0)]!;
  void clearFilterType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  CountedRange_TimestampType get timestampType => $_getN(2);
  @$pb.TagNumber(3)
  set timestampType(CountedRange_TimestampType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestampType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => clearField(4);

  @$pb.TagNumber(5)
  AgvLogCountedRange_LevelType get levelType => $_getN(4);
  @$pb.TagNumber(5)
  set levelType(AgvLogCountedRange_LevelType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevelType() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelType() => clearField(5);

  @$pb.TagNumber(6)
  Int32Values get selectItemTypes => $_getN(5);
  @$pb.TagNumber(6)
  set selectItemTypes(Int32Values v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSelectItemTypes() => $_has(5);
  @$pb.TagNumber(6)
  void clearSelectItemTypes() => clearField(6);
  @$pb.TagNumber(6)
  Int32Values ensureSelectItemTypes() => $_ensure(5);
}

class RosbagTimeRange extends $pb.GeneratedMessage {
  factory RosbagTimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
    RosbagTypeItem_RosbagType? rosbagType,
    $core.Iterable<$core.int>? topicIds,
    $core.String? fileName,
  }) {
    final $result = create();
    if (timestampMicrosBegin != null) {
      $result.timestampMicrosBegin = timestampMicrosBegin;
    }
    if (timestampMicrosEnd != null) {
      $result.timestampMicrosEnd = timestampMicrosEnd;
    }
    if (rosbagType != null) {
      $result.rosbagType = rosbagType;
    }
    if (topicIds != null) {
      $result.topicIds.addAll(topicIds);
    }
    if (fileName != null) {
      $result.fileName = fileName;
    }
    return $result;
  }
  RosbagTimeRange._() : super();
  factory RosbagTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RosbagTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosbagTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..e<RosbagTypeItem_RosbagType>(3, _omitFieldNames ? '' : 'rosbagType', $pb.PbFieldType.OE, defaultOrMaker: RosbagTypeItem_RosbagType.ROSBAG2, valueOf: RosbagTypeItem_RosbagType.valueOf, enumValues: RosbagTypeItem_RosbagType.values)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'topicIds', $pb.PbFieldType.K3)
    ..aOS(5, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RosbagTimeRange clone() => RosbagTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RosbagTimeRange copyWith(void Function(RosbagTimeRange) updates) => super.copyWith((message) => updates(message as RosbagTimeRange)) as RosbagTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosbagTimeRange create() => RosbagTimeRange._();
  RosbagTimeRange createEmptyInstance() => create();
  static $pb.PbList<RosbagTimeRange> createRepeated() => $pb.PbList<RosbagTimeRange>();
  @$core.pragma('dart2js:noInline')
  static RosbagTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosbagTimeRange>(create);
  static RosbagTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => clearField(2);

  @$pb.TagNumber(3)
  RosbagTypeItem_RosbagType get rosbagType => $_getN(2);
  @$pb.TagNumber(3)
  set rosbagType(RosbagTypeItem_RosbagType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRosbagType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRosbagType() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get topicIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get fileName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fileName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFileName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileName() => clearField(5);
}

class ExtTimeRange extends $pb.GeneratedMessage {
  factory ExtTimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
    $core.Iterable<$core.String>? extItems,
  }) {
    final $result = create();
    if (timestampMicrosBegin != null) {
      $result.timestampMicrosBegin = timestampMicrosBegin;
    }
    if (timestampMicrosEnd != null) {
      $result.timestampMicrosEnd = timestampMicrosEnd;
    }
    if (extItems != null) {
      $result.extItems.addAll(extItems);
    }
    return $result;
  }
  ExtTimeRange._() : super();
  factory ExtTimeRange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtTimeRange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtTimeRange', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..pPS(3, _omitFieldNames ? '' : 'extItems')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtTimeRange clone() => ExtTimeRange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtTimeRange copyWith(void Function(ExtTimeRange) updates) => super.copyWith((message) => updates(message as ExtTimeRange)) as ExtTimeRange;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtTimeRange create() => ExtTimeRange._();
  ExtTimeRange createEmptyInstance() => create();
  static $pb.PbList<ExtTimeRange> createRepeated() => $pb.PbList<ExtTimeRange>();
  @$core.pragma('dart2js:noInline')
  static ExtTimeRange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtTimeRange>(create);
  static ExtTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get extItems => $_getList(2);
}

class RosbagTypeItem extends $pb.GeneratedMessage {
  factory RosbagTypeItem({
    RosbagTypeItem_RosbagType? rosbagType,
    $core.String? fileName,
  }) {
    final $result = create();
    if (rosbagType != null) {
      $result.rosbagType = rosbagType;
    }
    if (fileName != null) {
      $result.fileName = fileName;
    }
    return $result;
  }
  RosbagTypeItem._() : super();
  factory RosbagTypeItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RosbagTypeItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RosbagTypeItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..e<RosbagTypeItem_RosbagType>(1, _omitFieldNames ? '' : 'rosbagType', $pb.PbFieldType.OE, defaultOrMaker: RosbagTypeItem_RosbagType.ROSBAG2, valueOf: RosbagTypeItem_RosbagType.valueOf, enumValues: RosbagTypeItem_RosbagType.values)
    ..aOS(2, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RosbagTypeItem clone() => RosbagTypeItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RosbagTypeItem copyWith(void Function(RosbagTypeItem) updates) => super.copyWith((message) => updates(message as RosbagTypeItem)) as RosbagTypeItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosbagTypeItem create() => RosbagTypeItem._();
  RosbagTypeItem createEmptyInstance() => create();
  static $pb.PbList<RosbagTypeItem> createRepeated() => $pb.PbList<RosbagTypeItem>();
  @$core.pragma('dart2js:noInline')
  static RosbagTypeItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RosbagTypeItem>(create);
  static RosbagTypeItem? _defaultInstance;

  @$pb.TagNumber(1)
  RosbagTypeItem_RosbagType get rosbagType => $_getN(0);
  @$pb.TagNumber(1)
  set rosbagType(RosbagTypeItem_RosbagType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRosbagType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRosbagType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => clearField(2);
}

class ProcessStatus extends $pb.GeneratedMessage {
  factory ProcessStatus({
    $core.int? percent,
  }) {
    final $result = create();
    if (percent != null) {
      $result.percent = percent;
    }
    return $result;
  }
  ProcessStatus._() : super();
  factory ProcessStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProcessStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProcessStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'percent', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProcessStatus clone() => ProcessStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProcessStatus copyWith(void Function(ProcessStatus) updates) => super.copyWith((message) => updates(message as ProcessStatus)) as ProcessStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProcessStatus create() => ProcessStatus._();
  ProcessStatus createEmptyInstance() => create();
  static $pb.PbList<ProcessStatus> createRepeated() => $pb.PbList<ProcessStatus>();
  @$core.pragma('dart2js:noInline')
  static ProcessStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProcessStatus>(create);
  static ProcessStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get percent => $_getIZ(0);
  @$pb.TagNumber(1)
  set percent($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPercent() => $_has(0);
  @$pb.TagNumber(1)
  void clearPercent() => clearField(1);
}

class FileInfo extends $pb.GeneratedMessage {
  factory FileInfo({
    $core.String? path,
    $fixnum.Int64? size,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (size != null) {
      $result.size = size;
    }
    return $result;
  }
  FileInfo._() : super();
  factory FileInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FileInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aInt64(2, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileInfo clone() => FileInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileInfo copyWith(void Function(FileInfo) updates) => super.copyWith((message) => updates(message as FileInfo)) as FileInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  FileInfo createEmptyInstance() => create();
  static $pb.PbList<FileInfo> createRepeated() => $pb.PbList<FileInfo>();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get size => $_getI64(1);
  @$pb.TagNumber(2)
  set size($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => clearField(2);
}

class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final $result = create();
    if (x != null) {
      $result.x = x;
    }
    if (y != null) {
      $result.y = y;
    }
    return $result;
  }
  Point._() : super();
  factory Point.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Point.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Point', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'x', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'y', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Point clone() => Point()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Point copyWith(void Function(Point) updates) => super.copyWith((message) => updates(message as Point)) as Point;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  Point createEmptyInstance() => create();
  static $pb.PbList<Point> createRepeated() => $pb.PbList<Point>();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);
}

class CurveItem extends $pb.GeneratedMessage {
  factory CurveItem({
    $core.String? name,
    $core.String? description,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  CurveItem._() : super();
  factory CurveItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurveItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurveItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurveItem clone() => CurveItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurveItem copyWith(void Function(CurveItem) updates) => super.copyWith((message) => updates(message as CurveItem)) as CurveItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItem create() => CurveItem._();
  CurveItem createEmptyInstance() => create();
  static $pb.PbList<CurveItem> createRepeated() => $pb.PbList<CurveItem>();
  @$core.pragma('dart2js:noInline')
  static CurveItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurveItem>(create);
  static CurveItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);
}

class CurveItems extends $pb.GeneratedMessage {
  factory CurveItems({
    $core.Map<$core.int, CurveItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  CurveItems._() : super();
  factory CurveItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurveItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurveItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, CurveItem>(1, _omitFieldNames ? '' : 'items', entryClassName: 'CurveItems.ItemsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: CurveItem.create, valueDefaultOrMaker: CurveItem.getDefault, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurveItems clone() => CurveItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurveItems copyWith(void Function(CurveItems) updates) => super.copyWith((message) => updates(message as CurveItems)) as CurveItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItems create() => CurveItems._();
  CurveItems createEmptyInstance() => create();
  static $pb.PbList<CurveItems> createRepeated() => $pb.PbList<CurveItems>();
  @$core.pragma('dart2js:noInline')
  static CurveItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurveItems>(create);
  static CurveItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, CurveItem> get items => $_getMap(0);
}

class RadarItem extends $pb.GeneratedMessage {
  factory RadarItem({
    $core.String? name,
    $core.String? description,
    $core.String? componentName,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (componentName != null) {
      $result.componentName = componentName;
    }
    return $result;
  }
  RadarItem._() : super();
  factory RadarItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'componentName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarItem clone() => RadarItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarItem copyWith(void Function(RadarItem) updates) => super.copyWith((message) => updates(message as RadarItem)) as RadarItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarItem create() => RadarItem._();
  RadarItem createEmptyInstance() => create();
  static $pb.PbList<RadarItem> createRepeated() => $pb.PbList<RadarItem>();
  @$core.pragma('dart2js:noInline')
  static RadarItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarItem>(create);
  static RadarItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get componentName => $_getSZ(2);
  @$pb.TagNumber(3)
  set componentName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComponentName() => $_has(2);
  @$pb.TagNumber(3)
  void clearComponentName() => clearField(3);
}

class RadarItems extends $pb.GeneratedMessage {
  factory RadarItems({
    $core.Map<$core.int, RadarItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RadarItems._() : super();
  factory RadarItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, RadarItem>(1, _omitFieldNames ? '' : 'items', entryClassName: 'RadarItems.ItemsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: RadarItem.create, valueDefaultOrMaker: RadarItem.getDefault, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarItems clone() => RadarItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarItems copyWith(void Function(RadarItems) updates) => super.copyWith((message) => updates(message as RadarItems)) as RadarItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarItems create() => RadarItems._();
  RadarItems createEmptyInstance() => create();
  static $pb.PbList<RadarItems> createRepeated() => $pb.PbList<RadarItems>();
  @$core.pragma('dart2js:noInline')
  static RadarItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarItems>(create);
  static RadarItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, RadarItem> get items => $_getMap(0);
}

class AgvLog extends $pb.GeneratedMessage {
  factory AgvLog({
    $fixnum.Int64? timestampMicros,
    $core.int? groupType,
    $core.int? itemType,
    $core.int? logicX,
    $core.int? logicY,
    $core.int? errCode,
    $core.String? content,
    $core.String? rawJson,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (groupType != null) {
      $result.groupType = groupType;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (logicX != null) {
      $result.logicX = logicX;
    }
    if (logicY != null) {
      $result.logicY = logicY;
    }
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (content != null) {
      $result.content = content;
    }
    if (rawJson != null) {
      $result.rawJson = rawJson;
    }
    return $result;
  }
  AgvLog._() : super();
  factory AgvLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgvLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgvLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'groupType', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'logicX', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'logicY', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'errCode', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'content')
    ..aOS(8, _omitFieldNames ? '' : 'rawJson')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgvLog clone() => AgvLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgvLog copyWith(void Function(AgvLog) updates) => super.copyWith((message) => updates(message as AgvLog)) as AgvLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLog create() => AgvLog._();
  AgvLog createEmptyInstance() => create();
  static $pb.PbList<AgvLog> createRepeated() => $pb.PbList<AgvLog>();
  @$core.pragma('dart2js:noInline')
  static AgvLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvLog>(create);
  static AgvLog? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get groupType => $_getIZ(1);
  @$pb.TagNumber(2)
  set groupType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroupType() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemType => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasItemType() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemType() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get logicX => $_getIZ(3);
  @$pb.TagNumber(4)
  set logicX($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLogicX() => $_has(3);
  @$pb.TagNumber(4)
  void clearLogicX() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get logicY => $_getIZ(4);
  @$pb.TagNumber(5)
  set logicY($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLogicY() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicY() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get errCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set errCode($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasErrCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrCode() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get content => $_getSZ(6);
  @$pb.TagNumber(7)
  set content($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get rawJson => $_getSZ(7);
  @$pb.TagNumber(8)
  set rawJson($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRawJson() => $_has(7);
  @$pb.TagNumber(8)
  void clearRawJson() => clearField(8);
}

class AgvLogs extends $pb.GeneratedMessage {
  factory AgvLogs({
    $core.Iterable<AgvLog>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  AgvLogs._() : super();
  factory AgvLogs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgvLogs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgvLogs', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<AgvLog>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AgvLog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgvLogs clone() => AgvLogs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgvLogs copyWith(void Function(AgvLogs) updates) => super.copyWith((message) => updates(message as AgvLogs)) as AgvLogs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLogs create() => AgvLogs._();
  AgvLogs createEmptyInstance() => create();
  static $pb.PbList<AgvLogs> createRepeated() => $pb.PbList<AgvLogs>();
  @$core.pragma('dart2js:noInline')
  static AgvLogs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvLogs>(create);
  static AgvLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AgvLog> get items => $_getList(0);
}

class AgvStateLog extends $pb.GeneratedMessage {
  factory AgvStateLog({
    $fixnum.Int64? timestampMicros,
    AgvStateLog_StateType? itemType,
    $core.String? contentData,
    $core.String? argsData,
    $core.String? tooltipData,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (contentData != null) {
      $result.contentData = contentData;
    }
    if (argsData != null) {
      $result.argsData = argsData;
    }
    if (tooltipData != null) {
      $result.tooltipData = tooltipData;
    }
    return $result;
  }
  AgvStateLog._() : super();
  factory AgvStateLog.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgvStateLog.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgvStateLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..e<AgvStateLog_StateType>(2, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE, defaultOrMaker: AgvStateLog_StateType.READY, valueOf: AgvStateLog_StateType.valueOf, enumValues: AgvStateLog_StateType.values)
    ..aOS(3, _omitFieldNames ? '' : 'contentData')
    ..aOS(4, _omitFieldNames ? '' : 'argsData')
    ..aOS(5, _omitFieldNames ? '' : 'tooltipData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgvStateLog clone() => AgvStateLog()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgvStateLog copyWith(void Function(AgvStateLog) updates) => super.copyWith((message) => updates(message as AgvStateLog)) as AgvStateLog;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvStateLog create() => AgvStateLog._();
  AgvStateLog createEmptyInstance() => create();
  static $pb.PbList<AgvStateLog> createRepeated() => $pb.PbList<AgvStateLog>();
  @$core.pragma('dart2js:noInline')
  static AgvStateLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvStateLog>(create);
  static AgvStateLog? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  AgvStateLog_StateType get itemType => $_getN(1);
  @$pb.TagNumber(2)
  set itemType(AgvStateLog_StateType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get contentData => $_getSZ(2);
  @$pb.TagNumber(3)
  set contentData($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContentData() => $_has(2);
  @$pb.TagNumber(3)
  void clearContentData() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get argsData => $_getSZ(3);
  @$pb.TagNumber(4)
  set argsData($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasArgsData() => $_has(3);
  @$pb.TagNumber(4)
  void clearArgsData() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tooltipData => $_getSZ(4);
  @$pb.TagNumber(5)
  set tooltipData($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTooltipData() => $_has(4);
  @$pb.TagNumber(5)
  void clearTooltipData() => clearField(5);
}

class AgvStateLogs extends $pb.GeneratedMessage {
  factory AgvStateLogs({
    $core.Iterable<AgvStateLog>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  AgvStateLogs._() : super();
  factory AgvStateLogs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgvStateLogs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgvStateLogs', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<AgvStateLog>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AgvStateLog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgvStateLogs clone() => AgvStateLogs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgvStateLogs copyWith(void Function(AgvStateLogs) updates) => super.copyWith((message) => updates(message as AgvStateLogs)) as AgvStateLogs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvStateLogs create() => AgvStateLogs._();
  AgvStateLogs createEmptyInstance() => create();
  static $pb.PbList<AgvStateLogs> createRepeated() => $pb.PbList<AgvStateLogs>();
  @$core.pragma('dart2js:noInline')
  static AgvStateLogs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvStateLogs>(create);
  static AgvStateLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AgvStateLog> get items => $_getList(0);
}

class BatteryStatus_CellVoltage extends $pb.GeneratedMessage {
  factory BatteryStatus_CellVoltage({
    $core.int? id,
    $core.double? voltage,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (voltage != null) {
      $result.voltage = voltage;
    }
    return $result;
  }
  BatteryStatus_CellVoltage._() : super();
  factory BatteryStatus_CellVoltage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatus_CellVoltage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatus.CellVoltage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatus_CellVoltage clone() => BatteryStatus_CellVoltage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatus_CellVoltage copyWith(void Function(BatteryStatus_CellVoltage) updates) => super.copyWith((message) => updates(message as BatteryStatus_CellVoltage)) as BatteryStatus_CellVoltage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellVoltage create() => BatteryStatus_CellVoltage._();
  BatteryStatus_CellVoltage createEmptyInstance() => create();
  static $pb.PbList<BatteryStatus_CellVoltage> createRepeated() => $pb.PbList<BatteryStatus_CellVoltage>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellVoltage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatus_CellVoltage>(create);
  static BatteryStatus_CellVoltage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get voltage => $_getN(1);
  @$pb.TagNumber(2)
  set voltage($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVoltage() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoltage() => clearField(2);
}

class BatteryStatus_ThermometerValue extends $pb.GeneratedMessage {
  factory BatteryStatus_ThermometerValue({
    $core.int? id,
    $core.double? temperature,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (temperature != null) {
      $result.temperature = temperature;
    }
    return $result;
  }
  BatteryStatus_ThermometerValue._() : super();
  factory BatteryStatus_ThermometerValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatus_ThermometerValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatus.ThermometerValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'temperature', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatus_ThermometerValue clone() => BatteryStatus_ThermometerValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatus_ThermometerValue copyWith(void Function(BatteryStatus_ThermometerValue) updates) => super.copyWith((message) => updates(message as BatteryStatus_ThermometerValue)) as BatteryStatus_ThermometerValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_ThermometerValue create() => BatteryStatus_ThermometerValue._();
  BatteryStatus_ThermometerValue createEmptyInstance() => create();
  static $pb.PbList<BatteryStatus_ThermometerValue> createRepeated() => $pb.PbList<BatteryStatus_ThermometerValue>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_ThermometerValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatus_ThermometerValue>(create);
  static BatteryStatus_ThermometerValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get temperature => $_getN(1);
  @$pb.TagNumber(2)
  set temperature($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);
}

class BatteryStatus_OnOffValue extends $pb.GeneratedMessage {
  factory BatteryStatus_OnOffValue({
    $core.int? id,
    $core.bool? value,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  BatteryStatus_OnOffValue._() : super();
  factory BatteryStatus_OnOffValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatus_OnOffValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatus.OnOffValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatus_OnOffValue clone() => BatteryStatus_OnOffValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatus_OnOffValue copyWith(void Function(BatteryStatus_OnOffValue) updates) => super.copyWith((message) => updates(message as BatteryStatus_OnOffValue)) as BatteryStatus_OnOffValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_OnOffValue create() => BatteryStatus_OnOffValue._();
  BatteryStatus_OnOffValue createEmptyInstance() => create();
  static $pb.PbList<BatteryStatus_OnOffValue> createRepeated() => $pb.PbList<BatteryStatus_OnOffValue>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_OnOffValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatus_OnOffValue>(create);
  static BatteryStatus_OnOffValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get value => $_getBF(1);
  @$pb.TagNumber(2)
  set value($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

class BatteryStatus_CellBalanceStatus extends $pb.GeneratedMessage {
  factory BatteryStatus_CellBalanceStatus({
    $core.int? id,
    $core.bool? isBalanced,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (isBalanced != null) {
      $result.isBalanced = isBalanced;
    }
    return $result;
  }
  BatteryStatus_CellBalanceStatus._() : super();
  factory BatteryStatus_CellBalanceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatus_CellBalanceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatus.CellBalanceStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'isBalanced')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatus_CellBalanceStatus clone() => BatteryStatus_CellBalanceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatus_CellBalanceStatus copyWith(void Function(BatteryStatus_CellBalanceStatus) updates) => super.copyWith((message) => updates(message as BatteryStatus_CellBalanceStatus)) as BatteryStatus_CellBalanceStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellBalanceStatus create() => BatteryStatus_CellBalanceStatus._();
  BatteryStatus_CellBalanceStatus createEmptyInstance() => create();
  static $pb.PbList<BatteryStatus_CellBalanceStatus> createRepeated() => $pb.PbList<BatteryStatus_CellBalanceStatus>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellBalanceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatus_CellBalanceStatus>(create);
  static BatteryStatus_CellBalanceStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isBalanced => $_getBF(1);
  @$pb.TagNumber(2)
  set isBalanced($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsBalanced() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsBalanced() => clearField(2);
}

class BatteryStatus extends $pb.GeneratedMessage {
  factory BatteryStatus({
    $fixnum.Int64? timestampMicros,
    $core.int? soc,
    $core.double? voltage,
    $core.double? chargeCurrent,
    $core.double? dischargeCurrent,
    $core.double? remainingCapacity,
    $core.double? fullChargeCapacity,
    $core.double? designedCapacity,
    $core.int? chargeCycles,
    $core.Iterable<BatteryStatus_CellVoltage>? cellsVoltage,
    $core.Iterable<BatteryStatus_ThermometerValue>? thermometers,
    $core.Iterable<$core.int>? exceptions,
    $core.Iterable<BatteryStatus_OnOffValue>? onOffStatus,
    $core.Iterable<BatteryStatus_CellBalanceStatus>? cellsBalanceStatus,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (soc != null) {
      $result.soc = soc;
    }
    if (voltage != null) {
      $result.voltage = voltage;
    }
    if (chargeCurrent != null) {
      $result.chargeCurrent = chargeCurrent;
    }
    if (dischargeCurrent != null) {
      $result.dischargeCurrent = dischargeCurrent;
    }
    if (remainingCapacity != null) {
      $result.remainingCapacity = remainingCapacity;
    }
    if (fullChargeCapacity != null) {
      $result.fullChargeCapacity = fullChargeCapacity;
    }
    if (designedCapacity != null) {
      $result.designedCapacity = designedCapacity;
    }
    if (chargeCycles != null) {
      $result.chargeCycles = chargeCycles;
    }
    if (cellsVoltage != null) {
      $result.cellsVoltage.addAll(cellsVoltage);
    }
    if (thermometers != null) {
      $result.thermometers.addAll(thermometers);
    }
    if (exceptions != null) {
      $result.exceptions.addAll(exceptions);
    }
    if (onOffStatus != null) {
      $result.onOffStatus.addAll(onOffStatus);
    }
    if (cellsBalanceStatus != null) {
      $result.cellsBalanceStatus.addAll(cellsBalanceStatus);
    }
    return $result;
  }
  BatteryStatus._() : super();
  factory BatteryStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'soc', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'chargeCurrent', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'dischargeCurrent', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'remainingCapacity', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'fullChargeCapacity', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'designedCapacity', $pb.PbFieldType.OD)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'chargeCycles', $pb.PbFieldType.O3)
    ..pc<BatteryStatus_CellVoltage>(10, _omitFieldNames ? '' : 'cellsVoltage', $pb.PbFieldType.PM, subBuilder: BatteryStatus_CellVoltage.create)
    ..pc<BatteryStatus_ThermometerValue>(11, _omitFieldNames ? '' : 'thermometers', $pb.PbFieldType.PM, subBuilder: BatteryStatus_ThermometerValue.create)
    ..p<$core.int>(12, _omitFieldNames ? '' : 'exceptions', $pb.PbFieldType.K3)
    ..pc<BatteryStatus_OnOffValue>(13, _omitFieldNames ? '' : 'onOffStatus', $pb.PbFieldType.PM, subBuilder: BatteryStatus_OnOffValue.create)
    ..pc<BatteryStatus_CellBalanceStatus>(14, _omitFieldNames ? '' : 'cellsBalanceStatus', $pb.PbFieldType.PM, subBuilder: BatteryStatus_CellBalanceStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatus clone() => BatteryStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatus copyWith(void Function(BatteryStatus) updates) => super.copyWith((message) => updates(message as BatteryStatus)) as BatteryStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus create() => BatteryStatus._();
  BatteryStatus createEmptyInstance() => create();
  static $pb.PbList<BatteryStatus> createRepeated() => $pb.PbList<BatteryStatus>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatus>(create);
  static BatteryStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get soc => $_getIZ(1);
  @$pb.TagNumber(2)
  set soc($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSoc() => $_has(1);
  @$pb.TagNumber(2)
  void clearSoc() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get voltage => $_getN(2);
  @$pb.TagNumber(3)
  set voltage($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVoltage() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoltage() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get chargeCurrent => $_getN(3);
  @$pb.TagNumber(4)
  set chargeCurrent($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChargeCurrent() => $_has(3);
  @$pb.TagNumber(4)
  void clearChargeCurrent() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get dischargeCurrent => $_getN(4);
  @$pb.TagNumber(5)
  set dischargeCurrent($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDischargeCurrent() => $_has(4);
  @$pb.TagNumber(5)
  void clearDischargeCurrent() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get remainingCapacity => $_getN(5);
  @$pb.TagNumber(6)
  set remainingCapacity($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemainingCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemainingCapacity() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get fullChargeCapacity => $_getN(6);
  @$pb.TagNumber(7)
  set fullChargeCapacity($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFullChargeCapacity() => $_has(6);
  @$pb.TagNumber(7)
  void clearFullChargeCapacity() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get designedCapacity => $_getN(7);
  @$pb.TagNumber(8)
  set designedCapacity($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDesignedCapacity() => $_has(7);
  @$pb.TagNumber(8)
  void clearDesignedCapacity() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get chargeCycles => $_getIZ(8);
  @$pb.TagNumber(9)
  set chargeCycles($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasChargeCycles() => $_has(8);
  @$pb.TagNumber(9)
  void clearChargeCycles() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<BatteryStatus_CellVoltage> get cellsVoltage => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<BatteryStatus_ThermometerValue> get thermometers => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<$core.int> get exceptions => $_getList(11);

  @$pb.TagNumber(13)
  $core.List<BatteryStatus_OnOffValue> get onOffStatus => $_getList(12);

  @$pb.TagNumber(14)
  $core.List<BatteryStatus_CellBalanceStatus> get cellsBalanceStatus => $_getList(13);
}

class BatteryStatuses extends $pb.GeneratedMessage {
  factory BatteryStatuses({
    $core.Iterable<BatteryStatus>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  BatteryStatuses._() : super();
  factory BatteryStatuses.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatteryStatuses.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatteryStatuses', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<BatteryStatus>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: BatteryStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatteryStatuses clone() => BatteryStatuses()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatteryStatuses copyWith(void Function(BatteryStatuses) updates) => super.copyWith((message) => updates(message as BatteryStatuses)) as BatteryStatuses;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatuses create() => BatteryStatuses._();
  BatteryStatuses createEmptyInstance() => create();
  static $pb.PbList<BatteryStatuses> createRepeated() => $pb.PbList<BatteryStatuses>();
  @$core.pragma('dart2js:noInline')
  static BatteryStatuses getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatteryStatuses>(create);
  static BatteryStatuses? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BatteryStatus> get items => $_getList(0);
}

class ExceptionStatusEvent extends $pb.GeneratedMessage {
  factory ExceptionStatusEvent({
    $fixnum.Int64? timestampMicros,
    ExceptionStatusEvent_Level? level,
    ExceptionStatusEvent_EventId? eventId,
    $core.int? exceptionType,
    $core.String? description,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (level != null) {
      $result.level = level;
    }
    if (eventId != null) {
      $result.eventId = eventId;
    }
    if (exceptionType != null) {
      $result.exceptionType = exceptionType;
    }
    if (description != null) {
      $result.description = description;
    }
    return $result;
  }
  ExceptionStatusEvent._() : super();
  factory ExceptionStatusEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExceptionStatusEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExceptionStatusEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..e<ExceptionStatusEvent_Level>(2, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OE, defaultOrMaker: ExceptionStatusEvent_Level.UNDETERMINED, valueOf: ExceptionStatusEvent_Level.valueOf, enumValues: ExceptionStatusEvent_Level.values)
    ..e<ExceptionStatusEvent_EventId>(3, _omitFieldNames ? '' : 'eventId', $pb.PbFieldType.OE, defaultOrMaker: ExceptionStatusEvent_EventId.NONE, valueOf: ExceptionStatusEvent_EventId.valueOf, enumValues: ExceptionStatusEvent_EventId.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'exceptionType', $pb.PbFieldType.O3)
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExceptionStatusEvent clone() => ExceptionStatusEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExceptionStatusEvent copyWith(void Function(ExceptionStatusEvent) updates) => super.copyWith((message) => updates(message as ExceptionStatusEvent)) as ExceptionStatusEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvent create() => ExceptionStatusEvent._();
  ExceptionStatusEvent createEmptyInstance() => create();
  static $pb.PbList<ExceptionStatusEvent> createRepeated() => $pb.PbList<ExceptionStatusEvent>();
  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExceptionStatusEvent>(create);
  static ExceptionStatusEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  ExceptionStatusEvent_Level get level => $_getN(1);
  @$pb.TagNumber(2)
  set level(ExceptionStatusEvent_Level v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);

  @$pb.TagNumber(3)
  ExceptionStatusEvent_EventId get eventId => $_getN(2);
  @$pb.TagNumber(3)
  set eventId(ExceptionStatusEvent_EventId v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasEventId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get exceptionType => $_getIZ(3);
  @$pb.TagNumber(4)
  set exceptionType($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExceptionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionType() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => clearField(5);
}

class ExceptionStatusEvents extends $pb.GeneratedMessage {
  factory ExceptionStatusEvents({
    $core.Iterable<ExceptionStatusEvent>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  ExceptionStatusEvents._() : super();
  factory ExceptionStatusEvents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExceptionStatusEvents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExceptionStatusEvents', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<ExceptionStatusEvent>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ExceptionStatusEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExceptionStatusEvents clone() => ExceptionStatusEvents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExceptionStatusEvents copyWith(void Function(ExceptionStatusEvents) updates) => super.copyWith((message) => updates(message as ExceptionStatusEvents)) as ExceptionStatusEvents;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvents create() => ExceptionStatusEvents._();
  ExceptionStatusEvents createEmptyInstance() => create();
  static $pb.PbList<ExceptionStatusEvents> createRepeated() => $pb.PbList<ExceptionStatusEvents>();
  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExceptionStatusEvents>(create);
  static ExceptionStatusEvents? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ExceptionStatusEvent> get items => $_getList(0);
}

/// message ObstacleDataItem {
///     int32 radar_id = 1;
///     repeated int16 polygon = 3;
/// }
/// message RadarData {
///     int64 timestamp_micros = 1;
///     repeated int32 radar_ids = 2;
///     repeated int16 points = 3;
///     bytes obstacle_data = 4;
///     double fork_frame_pos = 5;
/// }
class RadarData extends $pb.GeneratedMessage {
  factory RadarData({
    $fixnum.Int64? timestampMicros,
    $core.int? radarId,
    $core.List<$core.int>? scanData,
    $core.List<$core.int>? obstacleData,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (radarId != null) {
      $result.radarId = radarId;
    }
    if (scanData != null) {
      $result.scanData = scanData;
    }
    if (obstacleData != null) {
      $result.obstacleData = obstacleData;
    }
    return $result;
  }
  RadarData._() : super();
  factory RadarData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'radarId', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'scanData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'obstacleData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarData clone() => RadarData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarData copyWith(void Function(RadarData) updates) => super.copyWith((message) => updates(message as RadarData)) as RadarData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarData create() => RadarData._();
  RadarData createEmptyInstance() => create();
  static $pb.PbList<RadarData> createRepeated() => $pb.PbList<RadarData>();
  @$core.pragma('dart2js:noInline')
  static RadarData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarData>(create);
  static RadarData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get radarId => $_getIZ(1);
  @$pb.TagNumber(2)
  set radarId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRadarId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadarId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get scanData => $_getN(2);
  @$pb.TagNumber(3)
  set scanData($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScanData() => $_has(2);
  @$pb.TagNumber(3)
  void clearScanData() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get obstacleData => $_getN(3);
  @$pb.TagNumber(4)
  set obstacleData($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasObstacleData() => $_has(3);
  @$pb.TagNumber(4)
  void clearObstacleData() => clearField(4);
}

class RadarDatas extends $pb.GeneratedMessage {
  factory RadarDatas({
    $core.Iterable<RadarData>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RadarDatas._() : super();
  factory RadarDatas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarDatas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarDatas', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<RadarData>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RadarData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarDatas clone() => RadarDatas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarDatas copyWith(void Function(RadarDatas) updates) => super.copyWith((message) => updates(message as RadarDatas)) as RadarDatas;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDatas create() => RadarDatas._();
  RadarDatas createEmptyInstance() => create();
  static $pb.PbList<RadarDatas> createRepeated() => $pb.PbList<RadarDatas>();
  @$core.pragma('dart2js:noInline')
  static RadarDatas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarDatas>(create);
  static RadarDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RadarData> get items => $_getList(0);
}

class ComponentInfos extends $pb.GeneratedMessage {
  factory ComponentInfos({
    $core.List<$core.int>? componentDatas,
  }) {
    final $result = create();
    if (componentDatas != null) {
      $result.componentDatas = componentDatas;
    }
    return $result;
  }
  ComponentInfos._() : super();
  factory ComponentInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ComponentInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ComponentInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'componentDatas', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ComponentInfos clone() => ComponentInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ComponentInfos copyWith(void Function(ComponentInfos) updates) => super.copyWith((message) => updates(message as ComponentInfos)) as ComponentInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentInfos create() => ComponentInfos._();
  ComponentInfos createEmptyInstance() => create();
  static $pb.PbList<ComponentInfos> createRepeated() => $pb.PbList<ComponentInfos>();
  @$core.pragma('dart2js:noInline')
  static ComponentInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ComponentInfos>(create);
  static ComponentInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get componentDatas => $_getN(0);
  @$pb.TagNumber(1)
  set componentDatas($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasComponentDatas() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentDatas() => clearField(1);
}

class MotionItem extends $pb.GeneratedMessage {
  factory MotionItem({
    $fixnum.Int64? motionStartTimestampMicros,
    $fixnum.Int64? motionEndTimestampMicros,
    $core.int? motionType,
    $core.String? rawJson,
  }) {
    final $result = create();
    if (motionStartTimestampMicros != null) {
      $result.motionStartTimestampMicros = motionStartTimestampMicros;
    }
    if (motionEndTimestampMicros != null) {
      $result.motionEndTimestampMicros = motionEndTimestampMicros;
    }
    if (motionType != null) {
      $result.motionType = motionType;
    }
    if (rawJson != null) {
      $result.rawJson = rawJson;
    }
    return $result;
  }
  MotionItem._() : super();
  factory MotionItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MotionItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MotionItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'motionStartTimestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'motionEndTimestampMicros')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'motionType', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'rawJson')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MotionItem clone() => MotionItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MotionItem copyWith(void Function(MotionItem) updates) => super.copyWith((message) => updates(message as MotionItem)) as MotionItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MotionItem create() => MotionItem._();
  MotionItem createEmptyInstance() => create();
  static $pb.PbList<MotionItem> createRepeated() => $pb.PbList<MotionItem>();
  @$core.pragma('dart2js:noInline')
  static MotionItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MotionItem>(create);
  static MotionItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get motionStartTimestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set motionStartTimestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMotionStartTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearMotionStartTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get motionEndTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set motionEndTimestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMotionEndTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearMotionEndTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get motionType => $_getIZ(2);
  @$pb.TagNumber(3)
  set motionType($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMotionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMotionType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get rawJson => $_getSZ(3);
  @$pb.TagNumber(4)
  set rawJson($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRawJson() => $_has(3);
  @$pb.TagNumber(4)
  void clearRawJson() => clearField(4);
}

class MotionItems extends $pb.GeneratedMessage {
  factory MotionItems({
    $core.Iterable<MotionItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  MotionItems._() : super();
  factory MotionItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MotionItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MotionItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<MotionItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: MotionItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MotionItems clone() => MotionItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MotionItems copyWith(void Function(MotionItems) updates) => super.copyWith((message) => updates(message as MotionItems)) as MotionItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MotionItems create() => MotionItems._();
  MotionItems createEmptyInstance() => create();
  static $pb.PbList<MotionItems> createRepeated() => $pb.PbList<MotionItems>();
  @$core.pragma('dart2js:noInline')
  static MotionItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MotionItems>(create);
  static MotionItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MotionItem> get items => $_getList(0);
}

class RadarPageDatas extends $pb.GeneratedMessage {
  factory RadarPageDatas({
    $fixnum.Int64? timestampMicros,
    RadarDataSketchys? sketchyItems,
    $core.Iterable<RadarData>? radarDatas,
    $core.List<$core.int>? componentDatas,
    $core.Iterable<$core.List<$core.int>>? distanceSensorDatas,
    MotionItems? motionItems,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (sketchyItems != null) {
      $result.sketchyItems = sketchyItems;
    }
    if (radarDatas != null) {
      $result.radarDatas.addAll(radarDatas);
    }
    if (componentDatas != null) {
      $result.componentDatas = componentDatas;
    }
    if (distanceSensorDatas != null) {
      $result.distanceSensorDatas.addAll(distanceSensorDatas);
    }
    if (motionItems != null) {
      $result.motionItems = motionItems;
    }
    return $result;
  }
  RadarPageDatas._() : super();
  factory RadarPageDatas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarPageDatas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarPageDatas', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aOM<RadarDataSketchys>(2, _omitFieldNames ? '' : 'sketchyItems', subBuilder: RadarDataSketchys.create)
    ..pc<RadarData>(3, _omitFieldNames ? '' : 'radarDatas', $pb.PbFieldType.PM, subBuilder: RadarData.create)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'componentDatas', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'distanceSensorDatas', $pb.PbFieldType.PY)
    ..aOM<MotionItems>(6, _omitFieldNames ? '' : 'motionItems', subBuilder: MotionItems.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarPageDatas clone() => RadarPageDatas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarPageDatas copyWith(void Function(RadarPageDatas) updates) => super.copyWith((message) => updates(message as RadarPageDatas)) as RadarPageDatas;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarPageDatas create() => RadarPageDatas._();
  RadarPageDatas createEmptyInstance() => create();
  static $pb.PbList<RadarPageDatas> createRepeated() => $pb.PbList<RadarPageDatas>();
  @$core.pragma('dart2js:noInline')
  static RadarPageDatas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarPageDatas>(create);
  static RadarPageDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  RadarDataSketchys get sketchyItems => $_getN(1);
  @$pb.TagNumber(2)
  set sketchyItems(RadarDataSketchys v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSketchyItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearSketchyItems() => clearField(2);
  @$pb.TagNumber(2)
  RadarDataSketchys ensureSketchyItems() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<RadarData> get radarDatas => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get componentDatas => $_getN(3);
  @$pb.TagNumber(4)
  set componentDatas($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasComponentDatas() => $_has(3);
  @$pb.TagNumber(4)
  void clearComponentDatas() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.List<$core.int>> get distanceSensorDatas => $_getList(4);

  @$pb.TagNumber(6)
  MotionItems get motionItems => $_getN(5);
  @$pb.TagNumber(6)
  set motionItems(MotionItems v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMotionItems() => $_has(5);
  @$pb.TagNumber(6)
  void clearMotionItems() => clearField(6);
  @$pb.TagNumber(6)
  MotionItems ensureMotionItems() => $_ensure(5);
}

class RadarDataSketchy extends $pb.GeneratedMessage {
  factory RadarDataSketchy({
    $fixnum.Int64? timestampMicros,
    $core.int? radarId,
    $fixnum.Int64? steadyClockMs,
    $core.Iterable<DistriDataType>? validTypes,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (radarId != null) {
      $result.radarId = radarId;
    }
    if (steadyClockMs != null) {
      $result.steadyClockMs = steadyClockMs;
    }
    if (validTypes != null) {
      $result.validTypes.addAll(validTypes);
    }
    return $result;
  }
  RadarDataSketchy._() : super();
  factory RadarDataSketchy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarDataSketchy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarDataSketchy', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'radarId', $pb.PbFieldType.O3)
    ..aInt64(3, _omitFieldNames ? '' : 'steadyClockMs')
    ..pc<DistriDataType>(4, _omitFieldNames ? '' : 'validTypes', $pb.PbFieldType.KE, valueOf: DistriDataType.valueOf, enumValues: DistriDataType.values, defaultEnumValue: DistriDataType.Point2d)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarDataSketchy clone() => RadarDataSketchy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarDataSketchy copyWith(void Function(RadarDataSketchy) updates) => super.copyWith((message) => updates(message as RadarDataSketchy)) as RadarDataSketchy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDataSketchy create() => RadarDataSketchy._();
  RadarDataSketchy createEmptyInstance() => create();
  static $pb.PbList<RadarDataSketchy> createRepeated() => $pb.PbList<RadarDataSketchy>();
  @$core.pragma('dart2js:noInline')
  static RadarDataSketchy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarDataSketchy>(create);
  static RadarDataSketchy? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get radarId => $_getIZ(1);
  @$pb.TagNumber(2)
  set radarId($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRadarId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadarId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get steadyClockMs => $_getI64(2);
  @$pb.TagNumber(3)
  set steadyClockMs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSteadyClockMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearSteadyClockMs() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<DistriDataType> get validTypes => $_getList(3);
}

class RadarDataSketchys extends $pb.GeneratedMessage {
  factory RadarDataSketchys({
    $core.Iterable<RadarDataSketchy>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  RadarDataSketchys._() : super();
  factory RadarDataSketchys.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarDataSketchys.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarDataSketchys', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<RadarDataSketchy>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RadarDataSketchy.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarDataSketchys clone() => RadarDataSketchys()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarDataSketchys copyWith(void Function(RadarDataSketchys) updates) => super.copyWith((message) => updates(message as RadarDataSketchys)) as RadarDataSketchys;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDataSketchys create() => RadarDataSketchys._();
  RadarDataSketchys createEmptyInstance() => create();
  static $pb.PbList<RadarDataSketchys> createRepeated() => $pb.PbList<RadarDataSketchys>();
  @$core.pragma('dart2js:noInline')
  static RadarDataSketchys getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarDataSketchys>(create);
  static RadarDataSketchys? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RadarDataSketchy> get items => $_getList(0);
}

class FetchRadarDataRequest extends $pb.GeneratedMessage {
  factory FetchRadarDataRequest({
    RadarDataSketchy? radarSketchy,
    DistriDataType? dataType,
  }) {
    final $result = create();
    if (radarSketchy != null) {
      $result.radarSketchy = radarSketchy;
    }
    if (dataType != null) {
      $result.dataType = dataType;
    }
    return $result;
  }
  FetchRadarDataRequest._() : super();
  factory FetchRadarDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchRadarDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchRadarDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOM<RadarDataSketchy>(1, _omitFieldNames ? '' : 'radarSketchy', subBuilder: RadarDataSketchy.create)
    ..e<DistriDataType>(2, _omitFieldNames ? '' : 'dataType', $pb.PbFieldType.OE, defaultOrMaker: DistriDataType.Point2d, valueOf: DistriDataType.valueOf, enumValues: DistriDataType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchRadarDataRequest clone() => FetchRadarDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchRadarDataRequest copyWith(void Function(FetchRadarDataRequest) updates) => super.copyWith((message) => updates(message as FetchRadarDataRequest)) as FetchRadarDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchRadarDataRequest create() => FetchRadarDataRequest._();
  FetchRadarDataRequest createEmptyInstance() => create();
  static $pb.PbList<FetchRadarDataRequest> createRepeated() => $pb.PbList<FetchRadarDataRequest>();
  @$core.pragma('dart2js:noInline')
  static FetchRadarDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchRadarDataRequest>(create);
  static FetchRadarDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RadarDataSketchy get radarSketchy => $_getN(0);
  @$pb.TagNumber(1)
  set radarSketchy(RadarDataSketchy v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRadarSketchy() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadarSketchy() => clearField(1);
  @$pb.TagNumber(1)
  RadarDataSketchy ensureRadarSketchy() => $_ensure(0);

  @$pb.TagNumber(2)
  DistriDataType get dataType => $_getN(1);
  @$pb.TagNumber(2)
  set dataType(DistriDataType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => clearField(2);
}

class RadarRunningInfo extends $pb.GeneratedMessage {
  factory RadarRunningInfo({
    $core.int? radarId,
    $fixnum.Int64? beginTimestampMicros,
    $fixnum.Int64? endTimestampMicros,
    RadarRunningInfo_RangeType? rangeType,
  }) {
    final $result = create();
    if (radarId != null) {
      $result.radarId = radarId;
    }
    if (beginTimestampMicros != null) {
      $result.beginTimestampMicros = beginTimestampMicros;
    }
    if (endTimestampMicros != null) {
      $result.endTimestampMicros = endTimestampMicros;
    }
    if (rangeType != null) {
      $result.rangeType = rangeType;
    }
    return $result;
  }
  RadarRunningInfo._() : super();
  factory RadarRunningInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarRunningInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarRunningInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'radarId', $pb.PbFieldType.O3)
    ..aInt64(2, _omitFieldNames ? '' : 'beginTimestampMicros')
    ..aInt64(3, _omitFieldNames ? '' : 'endTimestampMicros')
    ..e<RadarRunningInfo_RangeType>(4, _omitFieldNames ? '' : 'rangeType', $pb.PbFieldType.OE, defaultOrMaker: RadarRunningInfo_RangeType.RUN, valueOf: RadarRunningInfo_RangeType.valueOf, enumValues: RadarRunningInfo_RangeType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarRunningInfo clone() => RadarRunningInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarRunningInfo copyWith(void Function(RadarRunningInfo) updates) => super.copyWith((message) => updates(message as RadarRunningInfo)) as RadarRunningInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarRunningInfo create() => RadarRunningInfo._();
  RadarRunningInfo createEmptyInstance() => create();
  static $pb.PbList<RadarRunningInfo> createRepeated() => $pb.PbList<RadarRunningInfo>();
  @$core.pragma('dart2js:noInline')
  static RadarRunningInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarRunningInfo>(create);
  static RadarRunningInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get radarId => $_getIZ(0);
  @$pb.TagNumber(1)
  set radarId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRadarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadarId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get beginTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set beginTimestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeginTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimestampMicros => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimestampMicros($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTimestampMicros() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimestampMicros() => clearField(3);

  @$pb.TagNumber(4)
  RadarRunningInfo_RangeType get rangeType => $_getN(3);
  @$pb.TagNumber(4)
  set rangeType(RadarRunningInfo_RangeType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRangeType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRangeType() => clearField(4);
}

class RadarRunningInfos extends $pb.GeneratedMessage {
  factory RadarRunningInfos({
    $core.Iterable<RadarRunningInfo>? items,
    $fixnum.Int64? beginTimestampMicros,
    $fixnum.Int64? endTimestampMicros,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (beginTimestampMicros != null) {
      $result.beginTimestampMicros = beginTimestampMicros;
    }
    if (endTimestampMicros != null) {
      $result.endTimestampMicros = endTimestampMicros;
    }
    return $result;
  }
  RadarRunningInfos._() : super();
  factory RadarRunningInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RadarRunningInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RadarRunningInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<RadarRunningInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RadarRunningInfo.create)
    ..aInt64(2, _omitFieldNames ? '' : 'beginTimestampMicros')
    ..aInt64(3, _omitFieldNames ? '' : 'endTimestampMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RadarRunningInfos clone() => RadarRunningInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RadarRunningInfos copyWith(void Function(RadarRunningInfos) updates) => super.copyWith((message) => updates(message as RadarRunningInfos)) as RadarRunningInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarRunningInfos create() => RadarRunningInfos._();
  RadarRunningInfos createEmptyInstance() => create();
  static $pb.PbList<RadarRunningInfos> createRepeated() => $pb.PbList<RadarRunningInfos>();
  @$core.pragma('dart2js:noInline')
  static RadarRunningInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarRunningInfos>(create);
  static RadarRunningInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RadarRunningInfo> get items => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get beginTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set beginTimestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBeginTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimestampMicros => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimestampMicros($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTimestampMicros() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimestampMicros() => clearField(3);
}

class RobotStatus extends $pb.GeneratedMessage {
  factory RobotStatus({
    $fixnum.Int64? timestampMicros,
    $core.double? cpu,
    $core.double? mem,
    Point? location,
    Point? logicLocation,
    $core.double? soSpeed,
    $core.double? turnSpeed,
    $core.double? jackPosition,
    $core.Iterable<$core.double>? telescopingPosition,
    $core.Iterable<$core.double>? supportPosition,
    $core.int? battery,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (cpu != null) {
      $result.cpu = cpu;
    }
    if (mem != null) {
      $result.mem = mem;
    }
    if (location != null) {
      $result.location = location;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    if (soSpeed != null) {
      $result.soSpeed = soSpeed;
    }
    if (turnSpeed != null) {
      $result.turnSpeed = turnSpeed;
    }
    if (jackPosition != null) {
      $result.jackPosition = jackPosition;
    }
    if (telescopingPosition != null) {
      $result.telescopingPosition.addAll(telescopingPosition);
    }
    if (supportPosition != null) {
      $result.supportPosition.addAll(supportPosition);
    }
    if (battery != null) {
      $result.battery = battery;
    }
    return $result;
  }
  RobotStatus._() : super();
  factory RobotStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RobotStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RobotStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'cpu', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'mem', $pb.PbFieldType.OD)
    ..aOM<Point>(4, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOM<Point>(5, _omitFieldNames ? '' : 'logicLocation', subBuilder: Point.create)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'soSpeed', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'turnSpeed', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'jackPosition', $pb.PbFieldType.OD)
    ..p<$core.double>(9, _omitFieldNames ? '' : 'telescopingPosition', $pb.PbFieldType.KD)
    ..p<$core.double>(10, _omitFieldNames ? '' : 'supportPosition', $pb.PbFieldType.KD)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'battery', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RobotStatus clone() => RobotStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RobotStatus copyWith(void Function(RobotStatus) updates) => super.copyWith((message) => updates(message as RobotStatus)) as RobotStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RobotStatus create() => RobotStatus._();
  RobotStatus createEmptyInstance() => create();
  static $pb.PbList<RobotStatus> createRepeated() => $pb.PbList<RobotStatus>();
  @$core.pragma('dart2js:noInline')
  static RobotStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RobotStatus>(create);
  static RobotStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get cpu => $_getN(1);
  @$pb.TagNumber(2)
  set cpu($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCpu() => $_has(1);
  @$pb.TagNumber(2)
  void clearCpu() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get mem => $_getN(2);
  @$pb.TagNumber(3)
  set mem($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMem() => $_has(2);
  @$pb.TagNumber(3)
  void clearMem() => clearField(3);

  @$pb.TagNumber(4)
  Point get location => $_getN(3);
  @$pb.TagNumber(4)
  set location(Point v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => clearField(4);
  @$pb.TagNumber(4)
  Point ensureLocation() => $_ensure(3);

  @$pb.TagNumber(5)
  Point get logicLocation => $_getN(4);
  @$pb.TagNumber(5)
  set logicLocation(Point v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLogicLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicLocation() => clearField(5);
  @$pb.TagNumber(5)
  Point ensureLogicLocation() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.double get soSpeed => $_getN(5);
  @$pb.TagNumber(6)
  set soSpeed($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSoSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearSoSpeed() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get turnSpeed => $_getN(6);
  @$pb.TagNumber(7)
  set turnSpeed($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTurnSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearTurnSpeed() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get jackPosition => $_getN(7);
  @$pb.TagNumber(8)
  set jackPosition($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasJackPosition() => $_has(7);
  @$pb.TagNumber(8)
  void clearJackPosition() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.double> get telescopingPosition => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$core.double> get supportPosition => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get battery => $_getIZ(10);
  @$pb.TagNumber(11)
  set battery($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBattery() => $_has(10);
  @$pb.TagNumber(11)
  void clearBattery() => clearField(11);
}

class SensorSwitchItem extends $pb.GeneratedMessage {
  factory SensorSwitchItem({
    $core.int? swId,
    $core.Iterable<$fixnum.Int64>? timestampMicross,
    $core.Iterable<$core.int>? values,
  }) {
    final $result = create();
    if (swId != null) {
      $result.swId = swId;
    }
    if (timestampMicross != null) {
      $result.timestampMicross.addAll(timestampMicross);
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  SensorSwitchItem._() : super();
  factory SensorSwitchItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorSwitchItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SensorSwitchItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'swId', $pb.PbFieldType.O3)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'timestampMicross', $pb.PbFieldType.K6)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SensorSwitchItem clone() => SensorSwitchItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SensorSwitchItem copyWith(void Function(SensorSwitchItem) updates) => super.copyWith((message) => updates(message as SensorSwitchItem)) as SensorSwitchItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorSwitchItem create() => SensorSwitchItem._();
  SensorSwitchItem createEmptyInstance() => create();
  static $pb.PbList<SensorSwitchItem> createRepeated() => $pb.PbList<SensorSwitchItem>();
  @$core.pragma('dart2js:noInline')
  static SensorSwitchItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorSwitchItem>(create);
  static SensorSwitchItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get swId => $_getIZ(0);
  @$pb.TagNumber(1)
  set swId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get timestampMicross => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get values => $_getList(2);
}

class SensorSwitchItems extends $pb.GeneratedMessage {
  factory SensorSwitchItems({
    $core.Iterable<SensorSwitchItem>? items,
    $fixnum.Int64? currentTimestampMicros,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (currentTimestampMicros != null) {
      $result.currentTimestampMicros = currentTimestampMicros;
    }
    return $result;
  }
  SensorSwitchItems._() : super();
  factory SensorSwitchItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SensorSwitchItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SensorSwitchItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<SensorSwitchItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: SensorSwitchItem.create)
    ..aInt64(2, _omitFieldNames ? '' : 'currentTimestampMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SensorSwitchItems clone() => SensorSwitchItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SensorSwitchItems copyWith(void Function(SensorSwitchItems) updates) => super.copyWith((message) => updates(message as SensorSwitchItems)) as SensorSwitchItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorSwitchItems create() => SensorSwitchItems._();
  SensorSwitchItems createEmptyInstance() => create();
  static $pb.PbList<SensorSwitchItems> createRepeated() => $pb.PbList<SensorSwitchItems>();
  @$core.pragma('dart2js:noInline')
  static SensorSwitchItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SensorSwitchItems>(create);
  static SensorSwitchItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SensorSwitchItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get currentTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set currentTimestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentTimestampMicros() => clearField(2);
}

class CurveItemData extends $pb.GeneratedMessage {
  factory CurveItemData({
    $core.int? id,
    $core.Iterable<$fixnum.Int64>? timestampMicross,
    $core.Iterable<$core.double>? values,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (timestampMicross != null) {
      $result.timestampMicross.addAll(timestampMicross);
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  CurveItemData._() : super();
  factory CurveItemData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurveItemData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurveItemData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'timestampMicross', $pb.PbFieldType.K6)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurveItemData clone() => CurveItemData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurveItemData copyWith(void Function(CurveItemData) updates) => super.copyWith((message) => updates(message as CurveItemData)) as CurveItemData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItemData create() => CurveItemData._();
  CurveItemData createEmptyInstance() => create();
  static $pb.PbList<CurveItemData> createRepeated() => $pb.PbList<CurveItemData>();
  @$core.pragma('dart2js:noInline')
  static CurveItemData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurveItemData>(create);
  static CurveItemData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get timestampMicross => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.double> get values => $_getList(2);
}

class CurveItemDatas extends $pb.GeneratedMessage {
  factory CurveItemDatas({
    $core.Map<$core.int, CurveItemData>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  CurveItemDatas._() : super();
  factory CurveItemDatas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CurveItemDatas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurveItemDatas', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, CurveItemData>(1, _omitFieldNames ? '' : 'items', entryClassName: 'CurveItemDatas.ItemsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: CurveItemData.create, valueDefaultOrMaker: CurveItemData.getDefault, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CurveItemDatas clone() => CurveItemDatas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CurveItemDatas copyWith(void Function(CurveItemDatas) updates) => super.copyWith((message) => updates(message as CurveItemDatas)) as CurveItemDatas;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItemDatas create() => CurveItemDatas._();
  CurveItemDatas createEmptyInstance() => create();
  static $pb.PbList<CurveItemDatas> createRepeated() => $pb.PbList<CurveItemDatas>();
  @$core.pragma('dart2js:noInline')
  static CurveItemDatas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurveItemDatas>(create);
  static CurveItemDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, CurveItemData> get items => $_getMap(0);
}

class TimeaxisValueItem extends $pb.GeneratedMessage {
  factory TimeaxisValueItem({
    $fixnum.Int64? timestampMicros,
    $fixnum.Int64? durationMicros,
    $core.int? level,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (durationMicros != null) {
      $result.durationMicros = durationMicros;
    }
    if (level != null) {
      $result.level = level;
    }
    return $result;
  }
  TimeaxisValueItem._() : super();
  factory TimeaxisValueItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeaxisValueItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeaxisValueItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'durationMicros')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'level', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeaxisValueItem clone() => TimeaxisValueItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeaxisValueItem copyWith(void Function(TimeaxisValueItem) updates) => super.copyWith((message) => updates(message as TimeaxisValueItem)) as TimeaxisValueItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItem create() => TimeaxisValueItem._();
  TimeaxisValueItem createEmptyInstance() => create();
  static $pb.PbList<TimeaxisValueItem> createRepeated() => $pb.PbList<TimeaxisValueItem>();
  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeaxisValueItem>(create);
  static TimeaxisValueItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get durationMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set durationMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDurationMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationMicros() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(3)
  set level($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => clearField(3);
}

class TimeaxisValueItems extends $pb.GeneratedMessage {
  factory TimeaxisValueItems({
    $core.Iterable<TimeaxisValueItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  TimeaxisValueItems._() : super();
  factory TimeaxisValueItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeaxisValueItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeaxisValueItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..pc<TimeaxisValueItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TimeaxisValueItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeaxisValueItems clone() => TimeaxisValueItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeaxisValueItems copyWith(void Function(TimeaxisValueItems) updates) => super.copyWith((message) => updates(message as TimeaxisValueItems)) as TimeaxisValueItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItems create() => TimeaxisValueItems._();
  TimeaxisValueItems createEmptyInstance() => create();
  static $pb.PbList<TimeaxisValueItems> createRepeated() => $pb.PbList<TimeaxisValueItems>();
  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeaxisValueItems>(create);
  static TimeaxisValueItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TimeaxisValueItem> get items => $_getList(0);
}

class TimeaxisAbnormalItem extends $pb.GeneratedMessage {
  factory TimeaxisAbnormalItem({
    $fixnum.Int64? timestampMicros,
    $fixnum.Int64? durationMicros,
  }) {
    final $result = create();
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (durationMicros != null) {
      $result.durationMicros = durationMicros;
    }
    return $result;
  }
  TimeaxisAbnormalItem._() : super();
  factory TimeaxisAbnormalItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeaxisAbnormalItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeaxisAbnormalItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'durationMicros')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeaxisAbnormalItem clone() => TimeaxisAbnormalItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeaxisAbnormalItem copyWith(void Function(TimeaxisAbnormalItem) updates) => super.copyWith((message) => updates(message as TimeaxisAbnormalItem)) as TimeaxisAbnormalItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisAbnormalItem create() => TimeaxisAbnormalItem._();
  TimeaxisAbnormalItem createEmptyInstance() => create();
  static $pb.PbList<TimeaxisAbnormalItem> createRepeated() => $pb.PbList<TimeaxisAbnormalItem>();
  @$core.pragma('dart2js:noInline')
  static TimeaxisAbnormalItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeaxisAbnormalItem>(create);
  static TimeaxisAbnormalItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get durationMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set durationMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDurationMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationMicros() => clearField(2);
}

class TimeaxisItems extends $pb.GeneratedMessage {
  factory TimeaxisItems({
    $core.Map<$core.int, TimeaxisValueItems>? items,
    $core.Iterable<TimeaxisAbnormalItem>? abnormalItems,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (abnormalItems != null) {
      $result.abnormalItems.addAll(abnormalItems);
    }
    return $result;
  }
  TimeaxisItems._() : super();
  factory TimeaxisItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimeaxisItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TimeaxisItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, TimeaxisValueItems>(1, _omitFieldNames ? '' : 'items', entryClassName: 'TimeaxisItems.ItemsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.OM, valueCreator: TimeaxisValueItems.create, valueDefaultOrMaker: TimeaxisValueItems.getDefault, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..pc<TimeaxisAbnormalItem>(2, _omitFieldNames ? '' : 'abnormalItems', $pb.PbFieldType.PM, subBuilder: TimeaxisAbnormalItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimeaxisItems clone() => TimeaxisItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimeaxisItems copyWith(void Function(TimeaxisItems) updates) => super.copyWith((message) => updates(message as TimeaxisItems)) as TimeaxisItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisItems create() => TimeaxisItems._();
  TimeaxisItems createEmptyInstance() => create();
  static $pb.PbList<TimeaxisItems> createRepeated() => $pb.PbList<TimeaxisItems>();
  @$core.pragma('dart2js:noInline')
  static TimeaxisItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeaxisItems>(create);
  static TimeaxisItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, TimeaxisValueItems> get items => $_getMap(0);

  @$pb.TagNumber(2)
  $core.List<TimeaxisAbnormalItem> get abnormalItems => $_getList(1);
}

class MatchingConditions extends $pb.GeneratedMessage {
  factory MatchingConditions({
    Int32Values? errCodes,
    Int32Values? motionIds,
    Int32Values? bncmdIds,
    Int32Values? bnreportIds,
  }) {
    final $result = create();
    if (errCodes != null) {
      $result.errCodes = errCodes;
    }
    if (motionIds != null) {
      $result.motionIds = motionIds;
    }
    if (bncmdIds != null) {
      $result.bncmdIds = bncmdIds;
    }
    if (bnreportIds != null) {
      $result.bnreportIds = bnreportIds;
    }
    return $result;
  }
  MatchingConditions._() : super();
  factory MatchingConditions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchingConditions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchingConditions', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOM<Int32Values>(1, _omitFieldNames ? '' : 'errCodes', subBuilder: Int32Values.create)
    ..aOM<Int32Values>(2, _omitFieldNames ? '' : 'motionIds', subBuilder: Int32Values.create)
    ..aOM<Int32Values>(3, _omitFieldNames ? '' : 'bncmdIds', subBuilder: Int32Values.create)
    ..aOM<Int32Values>(4, _omitFieldNames ? '' : 'bnreportIds', subBuilder: Int32Values.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchingConditions clone() => MatchingConditions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchingConditions copyWith(void Function(MatchingConditions) updates) => super.copyWith((message) => updates(message as MatchingConditions)) as MatchingConditions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingConditions create() => MatchingConditions._();
  MatchingConditions createEmptyInstance() => create();
  static $pb.PbList<MatchingConditions> createRepeated() => $pb.PbList<MatchingConditions>();
  @$core.pragma('dart2js:noInline')
  static MatchingConditions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchingConditions>(create);
  static MatchingConditions? _defaultInstance;

  @$pb.TagNumber(1)
  Int32Values get errCodes => $_getN(0);
  @$pb.TagNumber(1)
  set errCodes(Int32Values v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCodes() => clearField(1);
  @$pb.TagNumber(1)
  Int32Values ensureErrCodes() => $_ensure(0);

  @$pb.TagNumber(2)
  Int32Values get motionIds => $_getN(1);
  @$pb.TagNumber(2)
  set motionIds(Int32Values v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMotionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearMotionIds() => clearField(2);
  @$pb.TagNumber(2)
  Int32Values ensureMotionIds() => $_ensure(1);

  @$pb.TagNumber(3)
  Int32Values get bncmdIds => $_getN(2);
  @$pb.TagNumber(3)
  set bncmdIds(Int32Values v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBncmdIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearBncmdIds() => clearField(3);
  @$pb.TagNumber(3)
  Int32Values ensureBncmdIds() => $_ensure(2);

  @$pb.TagNumber(4)
  Int32Values get bnreportIds => $_getN(3);
  @$pb.TagNumber(4)
  set bnreportIds(Int32Values v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBnreportIds() => $_has(3);
  @$pb.TagNumber(4)
  void clearBnreportIds() => clearField(4);
  @$pb.TagNumber(4)
  Int32Values ensureBnreportIds() => $_ensure(3);
}

class MatchingCountedConditions extends $pb.GeneratedMessage {
  factory MatchingCountedConditions({
    $core.Map<$core.int, $core.int>? errCodes,
    $core.Map<$core.int, $core.int>? motionIds,
    $core.Map<$core.int, $core.int>? bncmdIds,
    $core.Map<$core.int, $core.int>? bnreportIds,
  }) {
    final $result = create();
    if (errCodes != null) {
      $result.errCodes.addAll(errCodes);
    }
    if (motionIds != null) {
      $result.motionIds.addAll(motionIds);
    }
    if (bncmdIds != null) {
      $result.bncmdIds.addAll(bncmdIds);
    }
    if (bnreportIds != null) {
      $result.bnreportIds.addAll(bnreportIds);
    }
    return $result;
  }
  MatchingCountedConditions._() : super();
  factory MatchingCountedConditions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchingCountedConditions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchingCountedConditions', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'errCodes', entryClassName: 'MatchingCountedConditions.ErrCodesEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(2, _omitFieldNames ? '' : 'motionIds', entryClassName: 'MatchingCountedConditions.MotionIdsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(3, _omitFieldNames ? '' : 'bncmdIds', entryClassName: 'MatchingCountedConditions.BncmdIdsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(4, _omitFieldNames ? '' : 'bnreportIds', entryClassName: 'MatchingCountedConditions.BnreportIdsEntry', keyFieldType: $pb.PbFieldType.O3, valueFieldType: $pb.PbFieldType.O3, packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchingCountedConditions clone() => MatchingCountedConditions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchingCountedConditions copyWith(void Function(MatchingCountedConditions) updates) => super.copyWith((message) => updates(message as MatchingCountedConditions)) as MatchingCountedConditions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingCountedConditions create() => MatchingCountedConditions._();
  MatchingCountedConditions createEmptyInstance() => create();
  static $pb.PbList<MatchingCountedConditions> createRepeated() => $pb.PbList<MatchingCountedConditions>();
  @$core.pragma('dart2js:noInline')
  static MatchingCountedConditions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchingCountedConditions>(create);
  static MatchingCountedConditions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.int, $core.int> get errCodes => $_getMap(0);

  @$pb.TagNumber(2)
  $core.Map<$core.int, $core.int> get motionIds => $_getMap(1);

  @$pb.TagNumber(3)
  $core.Map<$core.int, $core.int> get bncmdIds => $_getMap(2);

  @$pb.TagNumber(4)
  $core.Map<$core.int, $core.int> get bnreportIds => $_getMap(3);
}

class MatchingRequest extends $pb.GeneratedMessage {
  factory MatchingRequest({
    $core.String? locale,
    $fixnum.Int64? timestampMicros,
    MatchingConditions? conditions,
    $fixnum.Int64? maxCount,
    $fixnum.Int64? adviseFinishTimestampMicros,
    $core.bool? directNew,
  }) {
    final $result = create();
    if (locale != null) {
      $result.locale = locale;
    }
    if (timestampMicros != null) {
      $result.timestampMicros = timestampMicros;
    }
    if (conditions != null) {
      $result.conditions = conditions;
    }
    if (maxCount != null) {
      $result.maxCount = maxCount;
    }
    if (adviseFinishTimestampMicros != null) {
      $result.adviseFinishTimestampMicros = adviseFinishTimestampMicros;
    }
    if (directNew != null) {
      $result.directNew = directNew;
    }
    return $result;
  }
  MatchingRequest._() : super();
  factory MatchingRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchingRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchingRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..aOM<MatchingConditions>(3, _omitFieldNames ? '' : 'conditions', subBuilder: MatchingConditions.create)
    ..aInt64(5, _omitFieldNames ? '' : 'maxCount')
    ..aInt64(6, _omitFieldNames ? '' : 'adviseFinishTimestampMicros')
    ..aOB(7, _omitFieldNames ? '' : 'directNew')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchingRequest clone() => MatchingRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchingRequest copyWith(void Function(MatchingRequest) updates) => super.copyWith((message) => updates(message as MatchingRequest)) as MatchingRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingRequest create() => MatchingRequest._();
  MatchingRequest createEmptyInstance() => create();
  static $pb.PbList<MatchingRequest> createRepeated() => $pb.PbList<MatchingRequest>();
  @$core.pragma('dart2js:noInline')
  static MatchingRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchingRequest>(create);
  static MatchingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => clearField(2);

  @$pb.TagNumber(3)
  MatchingConditions get conditions => $_getN(2);
  @$pb.TagNumber(3)
  set conditions(MatchingConditions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConditions() => $_has(2);
  @$pb.TagNumber(3)
  void clearConditions() => clearField(3);
  @$pb.TagNumber(3)
  MatchingConditions ensureConditions() => $_ensure(2);

  @$pb.TagNumber(5)
  $fixnum.Int64 get maxCount => $_getI64(3);
  @$pb.TagNumber(5)
  set maxCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaxCount() => $_has(3);
  @$pb.TagNumber(5)
  void clearMaxCount() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get adviseFinishTimestampMicros => $_getI64(4);
  @$pb.TagNumber(6)
  set adviseFinishTimestampMicros($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAdviseFinishTimestampMicros() => $_has(4);
  @$pb.TagNumber(6)
  void clearAdviseFinishTimestampMicros() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get directNew => $_getBF(5);
  @$pb.TagNumber(7)
  set directNew($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasDirectNew() => $_has(5);
  @$pb.TagNumber(7)
  void clearDirectNew() => clearField(7);
}

class MatchingResponse extends $pb.GeneratedMessage {
  factory MatchingResponse({
    AgvLogs? logs,
    TimeRange? timerange,
    $core.bool? complete,
  }) {
    final $result = create();
    if (logs != null) {
      $result.logs = logs;
    }
    if (timerange != null) {
      $result.timerange = timerange;
    }
    if (complete != null) {
      $result.complete = complete;
    }
    return $result;
  }
  MatchingResponse._() : super();
  factory MatchingResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchingResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchingResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOM<AgvLogs>(1, _omitFieldNames ? '' : 'logs', subBuilder: AgvLogs.create)
    ..aOM<TimeRange>(2, _omitFieldNames ? '' : 'timerange', subBuilder: TimeRange.create)
    ..aOB(3, _omitFieldNames ? '' : 'complete')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchingResponse clone() => MatchingResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchingResponse copyWith(void Function(MatchingResponse) updates) => super.copyWith((message) => updates(message as MatchingResponse)) as MatchingResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingResponse create() => MatchingResponse._();
  MatchingResponse createEmptyInstance() => create();
  static $pb.PbList<MatchingResponse> createRepeated() => $pb.PbList<MatchingResponse>();
  @$core.pragma('dart2js:noInline')
  static MatchingResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchingResponse>(create);
  static MatchingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AgvLogs get logs => $_getN(0);
  @$pb.TagNumber(1)
  set logs(AgvLogs v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLogs() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogs() => clearField(1);
  @$pb.TagNumber(1)
  AgvLogs ensureLogs() => $_ensure(0);

  @$pb.TagNumber(2)
  TimeRange get timerange => $_getN(1);
  @$pb.TagNumber(2)
  set timerange(TimeRange v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimerange() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimerange() => clearField(2);
  @$pb.TagNumber(2)
  TimeRange ensureTimerange() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get complete => $_getBF(2);
  @$pb.TagNumber(3)
  set complete($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasComplete() => $_has(2);
  @$pb.TagNumber(3)
  void clearComplete() => clearField(3);
}

class FetchDataResponse extends $pb.GeneratedMessage {
  factory FetchDataResponse({
    $core.String? filename,
    $core.List<$core.int>? content,
  }) {
    final $result = create();
    if (filename != null) {
      $result.filename = filename;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  FetchDataResponse._() : super();
  factory FetchDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FetchDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FetchDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filename')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FetchDataResponse clone() => FetchDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FetchDataResponse copyWith(void Function(FetchDataResponse) updates) => super.copyWith((message) => updates(message as FetchDataResponse)) as FetchDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchDataResponse create() => FetchDataResponse._();
  FetchDataResponse createEmptyInstance() => create();
  static $pb.PbList<FetchDataResponse> createRepeated() => $pb.PbList<FetchDataResponse>();
  @$core.pragma('dart2js:noInline')
  static FetchDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FetchDataResponse>(create);
  static FetchDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class DistriDeviceItem extends $pb.GeneratedMessage {
  factory DistriDeviceItem({
    $core.int? deviceId,
    DistriDeviceType? deviceType,
  }) {
    final $result = create();
    if (deviceId != null) {
      $result.deviceId = deviceId;
    }
    if (deviceType != null) {
      $result.deviceType = deviceType;
    }
    return $result;
  }
  DistriDeviceItem._() : super();
  factory DistriDeviceItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DistriDeviceItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DistriDeviceItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.data.provider'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'deviceId', $pb.PbFieldType.O3)
    ..e<DistriDeviceType>(2, _omitFieldNames ? '' : 'deviceType', $pb.PbFieldType.OE, defaultOrMaker: DistriDeviceType.DepthCamera, valueOf: DistriDeviceType.valueOf, enumValues: DistriDeviceType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DistriDeviceItem clone() => DistriDeviceItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DistriDeviceItem copyWith(void Function(DistriDeviceItem) updates) => super.copyWith((message) => updates(message as DistriDeviceItem)) as DistriDeviceItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DistriDeviceItem create() => DistriDeviceItem._();
  DistriDeviceItem createEmptyInstance() => create();
  static $pb.PbList<DistriDeviceItem> createRepeated() => $pb.PbList<DistriDeviceItem>();
  @$core.pragma('dart2js:noInline')
  static DistriDeviceItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DistriDeviceItem>(create);
  static DistriDeviceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get deviceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  DistriDeviceType get deviceType => $_getN(1);
  @$pb.TagNumber(2)
  set deviceType(DistriDeviceType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceType() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
