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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'robot_data_provider.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'robot_data_provider.pbenum.dart';

class Int32Values extends $pb.GeneratedMessage {
  factory Int32Values({
    $core.Iterable<$core.int>? values,
  }) {
    final result = create();
    if (values != null) result.values.addAll(values);
    return result;
  }

  Int32Values._();

  factory Int32Values.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Int32Values.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Int32Values',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Values clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Int32Values copyWith(void Function(Int32Values) updates) =>
      super.copyWith((message) => updates(message as Int32Values))
          as Int32Values;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Int32Values create() => Int32Values._();
  @$core.override
  Int32Values createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Int32Values getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Int32Values>(create);
  static Int32Values? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get values => $_getList(0);
}

class StringValues extends $pb.GeneratedMessage {
  factory StringValues({
    $core.Iterable<$core.String>? values,
  }) {
    final result = create();
    if (values != null) result.values.addAll(values);
    return result;
  }

  StringValues._();

  factory StringValues.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StringValues.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StringValues',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringValues clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StringValues copyWith(void Function(StringValues) updates) =>
      super.copyWith((message) => updates(message as StringValues))
          as StringValues;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringValues create() => StringValues._();
  @$core.override
  StringValues createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StringValues getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StringValues>(create);
  static StringValues? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get values => $_getList(0);
}

class OptionBoolValue extends $pb.GeneratedMessage {
  factory OptionBoolValue({
    $core.bool? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  OptionBoolValue._();

  factory OptionBoolValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OptionBoolValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OptionBoolValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionBoolValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionBoolValue copyWith(void Function(OptionBoolValue) updates) =>
      super.copyWith((message) => updates(message as OptionBoolValue))
          as OptionBoolValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionBoolValue create() => OptionBoolValue._();
  @$core.override
  OptionBoolValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OptionBoolValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OptionBoolValue>(create);
  static OptionBoolValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class OptionDoubleValue extends $pb.GeneratedMessage {
  factory OptionDoubleValue({
    $core.double? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  OptionDoubleValue._();

  factory OptionDoubleValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OptionDoubleValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OptionDoubleValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionDoubleValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionDoubleValue copyWith(void Function(OptionDoubleValue) updates) =>
      super.copyWith((message) => updates(message as OptionDoubleValue))
          as OptionDoubleValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionDoubleValue create() => OptionDoubleValue._();
  @$core.override
  OptionDoubleValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OptionDoubleValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OptionDoubleValue>(create);
  static OptionDoubleValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
}

class IntStringMap extends $pb.GeneratedMessage {
  factory IntStringMap({
    $core.Iterable<$core.MapEntry<$core.int, $core.String>>? items,
  }) {
    final result = create();
    if (items != null) result.items.addEntries(items);
    return result;
  }

  IntStringMap._();

  factory IntStringMap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IntStringMap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IntStringMap',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, $core.String>(1, _omitFieldNames ? '' : 'items',
        entryClassName: 'IntStringMap.ItemsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IntStringMap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IntStringMap copyWith(void Function(IntStringMap) updates) =>
      super.copyWith((message) => updates(message as IntStringMap))
          as IntStringMap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntStringMap create() => IntStringMap._();
  @$core.override
  IntStringMap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static IntStringMap getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IntStringMap>(create);
  static IntStringMap? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.String> get items => $_getMap(0);
}

class UserLanguageType extends $pb.GeneratedMessage {
  factory UserLanguageType({
    $core.String? locale,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    return result;
  }

  UserLanguageType._();

  factory UserLanguageType.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLanguageType.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLanguageType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLanguageType clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLanguageType copyWith(void Function(UserLanguageType) updates) =>
      super.copyWith((message) => updates(message as UserLanguageType))
          as UserLanguageType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLanguageType create() => UserLanguageType._();
  @$core.override
  UserLanguageType createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLanguageType getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLanguageType>(create);
  static UserLanguageType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);
}

class UserSession extends $pb.GeneratedMessage {
  factory UserSession({
    $fixnum.Int64? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  UserSession._();

  factory UserSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserSession',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSession copyWith(void Function(UserSession) updates) =>
      super.copyWith((message) => updates(message as UserSession))
          as UserSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSession create() => UserSession._();
  @$core.override
  UserSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserSession>(create);
  static UserSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class UserLanguageSession extends $pb.GeneratedMessage {
  factory UserLanguageSession({
    $fixnum.Int64? sessionId,
    $core.String? locale,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (locale != null) result.locale = locale;
    return result;
  }

  UserLanguageSession._();

  factory UserLanguageSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserLanguageSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserLanguageSession',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'locale')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLanguageSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserLanguageSession copyWith(void Function(UserLanguageSession) updates) =>
      super.copyWith((message) => updates(message as UserLanguageSession))
          as UserLanguageSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserLanguageSession create() => UserLanguageSession._();
  @$core.override
  UserLanguageSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserLanguageSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserLanguageSession>(create);
  static UserLanguageSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get locale => $_getSZ(1);
  @$pb.TagNumber(2)
  set locale($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocale() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocale() => $_clearField(2);
}

class Time extends $pb.GeneratedMessage {
  factory Time({
    $fixnum.Int64? timestampMicros,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    return result;
  }

  Time._();

  factory Time.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Time.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Time',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Time clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Time copyWith(void Function(Time) updates) =>
      super.copyWith((message) => updates(message as Time)) as Time;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Time create() => Time._();
  @$core.override
  Time createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Time getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Time>(create);
  static Time? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);
}

class ReplayInfo extends $pb.GeneratedMessage {
  factory ReplayInfo({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? timestampMicros,
    $core.double? speed,
    $core.int? framerate,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (speed != null) result.speed = speed;
    if (framerate != null) result.framerate = framerate;
    return result;
  }

  ReplayInfo._();

  factory ReplayInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReplayInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReplayInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..aD(3, _omitFieldNames ? '' : 'speed')
    ..aI(4, _omitFieldNames ? '' : 'framerate')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplayInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReplayInfo copyWith(void Function(ReplayInfo) updates) =>
      super.copyWith((message) => updates(message as ReplayInfo)) as ReplayInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplayInfo create() => ReplayInfo._();
  @$core.override
  ReplayInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ReplayInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplayInfo>(create);
  static ReplayInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get speed => $_getN(2);
  @$pb.TagNumber(3)
  set speed($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSpeed() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpeed() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get framerate => $_getIZ(3);
  @$pb.TagNumber(4)
  set framerate($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFramerate() => $_has(3);
  @$pb.TagNumber(4)
  void clearFramerate() => $_clearField(4);
}

class Times extends $pb.GeneratedMessage {
  factory Times({
    $core.Iterable<Time>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  Times._();

  factory Times.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Times.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Times',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<Time>(1, _omitFieldNames ? '' : 'items', subBuilder: Time.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Times clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Times copyWith(void Function(Times) updates) =>
      super.copyWith((message) => updates(message as Times)) as Times;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Times create() => Times._();
  @$core.override
  Times createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Times getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Times>(create);
  static Times? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Time> get items => $_getList(0);
}

class SteadyTimeRange extends $pb.GeneratedMessage {
  factory SteadyTimeRange({
    $fixnum.Int64? steadyMillisBegin,
    $fixnum.Int64? steadyMillisEnd,
  }) {
    final result = create();
    if (steadyMillisBegin != null) result.steadyMillisBegin = steadyMillisBegin;
    if (steadyMillisEnd != null) result.steadyMillisEnd = steadyMillisEnd;
    return result;
  }

  SteadyTimeRange._();

  factory SteadyTimeRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SteadyTimeRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SteadyTimeRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'steadyMillisBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'steadyMillisEnd')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SteadyTimeRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SteadyTimeRange copyWith(void Function(SteadyTimeRange) updates) =>
      super.copyWith((message) => updates(message as SteadyTimeRange))
          as SteadyTimeRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SteadyTimeRange create() => SteadyTimeRange._();
  @$core.override
  SteadyTimeRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SteadyTimeRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SteadyTimeRange>(create);
  static SteadyTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get steadyMillisBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set steadyMillisBegin($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSteadyMillisBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearSteadyMillisBegin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get steadyMillisEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set steadyMillisEnd($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSteadyMillisEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearSteadyMillisEnd() => $_clearField(2);
}

class TimeRange extends $pb.GeneratedMessage {
  factory TimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
  }) {
    final result = create();
    if (timestampMicrosBegin != null)
      result.timestampMicrosBegin = timestampMicrosBegin;
    if (timestampMicrosEnd != null)
      result.timestampMicrosEnd = timestampMicrosEnd;
    return result;
  }

  TimeRange._();

  factory TimeRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeRange copyWith(void Function(TimeRange) updates) =>
      super.copyWith((message) => updates(message as TimeRange)) as TimeRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeRange create() => TimeRange._();
  @$core.override
  TimeRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeRange getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeRange>(create);
  static TimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => $_clearField(2);
}

enum TimeView_TimeViewItem { viewTimeRange, viewTimePoint, isRealtime, notSet }

class TimeView extends $pb.GeneratedMessage {
  factory TimeView({
    TimeRange? globalTimeRange,
    TimeRange? viewTimeRange,
    $fixnum.Int64? viewTimePoint,
    $core.bool? isRealtime,
  }) {
    final result = create();
    if (globalTimeRange != null) result.globalTimeRange = globalTimeRange;
    if (viewTimeRange != null) result.viewTimeRange = viewTimeRange;
    if (viewTimePoint != null) result.viewTimePoint = viewTimePoint;
    if (isRealtime != null) result.isRealtime = isRealtime;
    return result;
  }

  TimeView._();

  factory TimeView.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeView.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TimeView_TimeViewItem>
      _TimeView_TimeViewItemByTag = {
    2: TimeView_TimeViewItem.viewTimeRange,
    3: TimeView_TimeViewItem.viewTimePoint,
    4: TimeView_TimeViewItem.isRealtime,
    0: TimeView_TimeViewItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeView',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<TimeRange>(1, _omitFieldNames ? '' : 'globalTimeRange',
        subBuilder: TimeRange.create)
    ..aOM<TimeRange>(2, _omitFieldNames ? '' : 'viewTimeRange',
        subBuilder: TimeRange.create)
    ..aInt64(3, _omitFieldNames ? '' : 'viewTimePoint')
    ..aOB(4, _omitFieldNames ? '' : 'isRealtime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeView clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeView copyWith(void Function(TimeView) updates) =>
      super.copyWith((message) => updates(message as TimeView)) as TimeView;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeView create() => TimeView._();
  @$core.override
  TimeView createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeView getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeView>(create);
  static TimeView? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  TimeView_TimeViewItem whichTimeViewItem() =>
      _TimeView_TimeViewItemByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearTimeViewItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TimeRange get globalTimeRange => $_getN(0);
  @$pb.TagNumber(1)
  set globalTimeRange(TimeRange value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGlobalTimeRange() => $_has(0);
  @$pb.TagNumber(1)
  void clearGlobalTimeRange() => $_clearField(1);
  @$pb.TagNumber(1)
  TimeRange ensureGlobalTimeRange() => $_ensure(0);

  @$pb.TagNumber(2)
  TimeRange get viewTimeRange => $_getN(1);
  @$pb.TagNumber(2)
  set viewTimeRange(TimeRange value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasViewTimeRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewTimeRange() => $_clearField(2);
  @$pb.TagNumber(2)
  TimeRange ensureViewTimeRange() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get viewTimePoint => $_getI64(2);
  @$pb.TagNumber(3)
  set viewTimePoint($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasViewTimePoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearViewTimePoint() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isRealtime => $_getBF(3);
  @$pb.TagNumber(4)
  set isRealtime($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsRealtime() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsRealtime() => $_clearField(4);
}

class TimeViews extends $pb.GeneratedMessage {
  factory TimeViews({
    $core.Iterable<TimeView>? timeViews,
  }) {
    final result = create();
    if (timeViews != null) result.timeViews.addAll(timeViews);
    return result;
  }

  TimeViews._();

  factory TimeViews.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeViews.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeViews',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<TimeView>(1, _omitFieldNames ? '' : 'timeViews',
        subBuilder: TimeView.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeViews clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeViews copyWith(void Function(TimeViews) updates) =>
      super.copyWith((message) => updates(message as TimeViews)) as TimeViews;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeViews create() => TimeViews._();
  @$core.override
  TimeViews createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeViews getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimeViews>(create);
  static TimeViews? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TimeView> get timeViews => $_getList(0);
}

class OptionTime extends $pb.GeneratedMessage {
  factory OptionTime({
    $fixnum.Int64? timestampMicros,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    return result;
  }

  OptionTime._();

  factory OptionTime.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OptionTime.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OptionTime',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionTime clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OptionTime copyWith(void Function(OptionTime) updates) =>
      super.copyWith((message) => updates(message as OptionTime)) as OptionTime;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionTime create() => OptionTime._();
  @$core.override
  OptionTime createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OptionTime getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OptionTime>(create);
  static OptionTime? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);
}

class ResampleTimeRange extends $pb.GeneratedMessage {
  factory ResampleTimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
    $fixnum.Int64? microsPerItem,
  }) {
    final result = create();
    if (timestampMicrosBegin != null)
      result.timestampMicrosBegin = timestampMicrosBegin;
    if (timestampMicrosEnd != null)
      result.timestampMicrosEnd = timestampMicrosEnd;
    if (microsPerItem != null) result.microsPerItem = microsPerItem;
    return result;
  }

  ResampleTimeRange._();

  factory ResampleTimeRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResampleTimeRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResampleTimeRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..aInt64(3, _omitFieldNames ? '' : 'microsPerItem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResampleTimeRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResampleTimeRange copyWith(void Function(ResampleTimeRange) updates) =>
      super.copyWith((message) => updates(message as ResampleTimeRange))
          as ResampleTimeRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResampleTimeRange create() => ResampleTimeRange._();
  @$core.override
  ResampleTimeRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ResampleTimeRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResampleTimeRange>(create);
  static ResampleTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get microsPerItem => $_getI64(2);
  @$pb.TagNumber(3)
  set microsPerItem($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMicrosPerItem() => $_has(2);
  @$pb.TagNumber(3)
  void clearMicrosPerItem() => $_clearField(3);
}

class CountedRange extends $pb.GeneratedMessage {
  factory CountedRange({
    $core.String? locale,
    $fixnum.Int64? timestampMicros,
    CountedRange_TimestampType? timestampType,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (timestampType != null) result.timestampType = timestampType;
    if (count != null) result.count = count;
    return result;
  }

  CountedRange._();

  factory CountedRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CountedRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CountedRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..aE<CountedRange_TimestampType>(3, _omitFieldNames ? '' : 'timestampType',
        enumValues: CountedRange_TimestampType.values)
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CountedRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CountedRange copyWith(void Function(CountedRange) updates) =>
      super.copyWith((message) => updates(message as CountedRange))
          as CountedRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CountedRange create() => CountedRange._();
  @$core.override
  CountedRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CountedRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CountedRange>(create);
  static CountedRange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  CountedRange_TimestampType get timestampType => $_getN(2);
  @$pb.TagNumber(3)
  set timestampType(CountedRange_TimestampType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestampType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => $_clearField(4);
}

enum AgvLogCountedRange_FilterType { levelType, selectItemTypes, notSet }

class AgvLogCountedRange extends $pb.GeneratedMessage {
  factory AgvLogCountedRange({
    $core.String? locale,
    $fixnum.Int64? timestampMicros,
    CountedRange_TimestampType? timestampType,
    $fixnum.Int64? count,
    AgvLogCountedRange_LevelType? levelType,
    Int32Values? selectItemTypes,
  }) {
    final result = create();
    if (locale != null) result.locale = locale;
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (timestampType != null) result.timestampType = timestampType;
    if (count != null) result.count = count;
    if (levelType != null) result.levelType = levelType;
    if (selectItemTypes != null) result.selectItemTypes = selectItemTypes;
    return result;
  }

  AgvLogCountedRange._();

  factory AgvLogCountedRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgvLogCountedRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AgvLogCountedRange_FilterType>
      _AgvLogCountedRange_FilterTypeByTag = {
    5: AgvLogCountedRange_FilterType.levelType,
    6: AgvLogCountedRange_FilterType.selectItemTypes,
    0: AgvLogCountedRange_FilterType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgvLogCountedRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..oo(0, [5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..aE<CountedRange_TimestampType>(3, _omitFieldNames ? '' : 'timestampType',
        enumValues: CountedRange_TimestampType.values)
    ..aInt64(4, _omitFieldNames ? '' : 'count')
    ..aE<AgvLogCountedRange_LevelType>(5, _omitFieldNames ? '' : 'levelType',
        enumValues: AgvLogCountedRange_LevelType.values)
    ..aOM<Int32Values>(6, _omitFieldNames ? '' : 'selectItemTypes',
        subBuilder: Int32Values.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLogCountedRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLogCountedRange copyWith(void Function(AgvLogCountedRange) updates) =>
      super.copyWith((message) => updates(message as AgvLogCountedRange))
          as AgvLogCountedRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLogCountedRange create() => AgvLogCountedRange._();
  @$core.override
  AgvLogCountedRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgvLogCountedRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AgvLogCountedRange>(create);
  static AgvLogCountedRange? _defaultInstance;

  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  AgvLogCountedRange_FilterType whichFilterType() =>
      _AgvLogCountedRange_FilterTypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearFilterType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  CountedRange_TimestampType get timestampType => $_getN(2);
  @$pb.TagNumber(3)
  set timestampType(CountedRange_TimestampType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTimestampType() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestampType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get count => $_getI64(3);
  @$pb.TagNumber(4)
  set count($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearCount() => $_clearField(4);

  @$pb.TagNumber(5)
  AgvLogCountedRange_LevelType get levelType => $_getN(4);
  @$pb.TagNumber(5)
  set levelType(AgvLogCountedRange_LevelType value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLevelType() => $_has(4);
  @$pb.TagNumber(5)
  void clearLevelType() => $_clearField(5);

  @$pb.TagNumber(6)
  Int32Values get selectItemTypes => $_getN(5);
  @$pb.TagNumber(6)
  set selectItemTypes(Int32Values value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSelectItemTypes() => $_has(5);
  @$pb.TagNumber(6)
  void clearSelectItemTypes() => $_clearField(6);
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
    final result = create();
    if (timestampMicrosBegin != null)
      result.timestampMicrosBegin = timestampMicrosBegin;
    if (timestampMicrosEnd != null)
      result.timestampMicrosEnd = timestampMicrosEnd;
    if (rosbagType != null) result.rosbagType = rosbagType;
    if (topicIds != null) result.topicIds.addAll(topicIds);
    if (fileName != null) result.fileName = fileName;
    return result;
  }

  RosbagTimeRange._();

  factory RosbagTimeRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RosbagTimeRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RosbagTimeRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..aE<RosbagTypeItem_RosbagType>(3, _omitFieldNames ? '' : 'rosbagType',
        enumValues: RosbagTypeItem_RosbagType.values)
    ..p<$core.int>(4, _omitFieldNames ? '' : 'topicIds', $pb.PbFieldType.K3)
    ..aOS(5, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosbagTimeRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosbagTimeRange copyWith(void Function(RosbagTimeRange) updates) =>
      super.copyWith((message) => updates(message as RosbagTimeRange))
          as RosbagTimeRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosbagTimeRange create() => RosbagTimeRange._();
  @$core.override
  RosbagTimeRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RosbagTimeRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RosbagTimeRange>(create);
  static RosbagTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => $_clearField(2);

  @$pb.TagNumber(3)
  RosbagTypeItem_RosbagType get rosbagType => $_getN(2);
  @$pb.TagNumber(3)
  set rosbagType(RosbagTypeItem_RosbagType value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRosbagType() => $_has(2);
  @$pb.TagNumber(3)
  void clearRosbagType() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.int> get topicIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get fileName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fileName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFileName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFileName() => $_clearField(5);
}

class ExtTimeRange extends $pb.GeneratedMessage {
  factory ExtTimeRange({
    $fixnum.Int64? timestampMicrosBegin,
    $fixnum.Int64? timestampMicrosEnd,
    $core.Iterable<$core.String>? extItems,
  }) {
    final result = create();
    if (timestampMicrosBegin != null)
      result.timestampMicrosBegin = timestampMicrosBegin;
    if (timestampMicrosEnd != null)
      result.timestampMicrosEnd = timestampMicrosEnd;
    if (extItems != null) result.extItems.addAll(extItems);
    return result;
  }

  ExtTimeRange._();

  factory ExtTimeRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExtTimeRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExtTimeRange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicrosBegin')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicrosEnd')
    ..pPS(3, _omitFieldNames ? '' : 'extItems')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExtTimeRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExtTimeRange copyWith(void Function(ExtTimeRange) updates) =>
      super.copyWith((message) => updates(message as ExtTimeRange))
          as ExtTimeRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtTimeRange create() => ExtTimeRange._();
  @$core.override
  ExtTimeRange createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExtTimeRange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExtTimeRange>(create);
  static ExtTimeRange? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicrosBegin => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicrosBegin($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicrosBegin() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicrosBegin() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicrosEnd => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicrosEnd($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicrosEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicrosEnd() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get extItems => $_getList(2);
}

class RosbagTypeItem extends $pb.GeneratedMessage {
  factory RosbagTypeItem({
    RosbagTypeItem_RosbagType? rosbagType,
    $core.String? fileName,
  }) {
    final result = create();
    if (rosbagType != null) result.rosbagType = rosbagType;
    if (fileName != null) result.fileName = fileName;
    return result;
  }

  RosbagTypeItem._();

  factory RosbagTypeItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RosbagTypeItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RosbagTypeItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aE<RosbagTypeItem_RosbagType>(1, _omitFieldNames ? '' : 'rosbagType',
        enumValues: RosbagTypeItem_RosbagType.values)
    ..aOS(2, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosbagTypeItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RosbagTypeItem copyWith(void Function(RosbagTypeItem) updates) =>
      super.copyWith((message) => updates(message as RosbagTypeItem))
          as RosbagTypeItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RosbagTypeItem create() => RosbagTypeItem._();
  @$core.override
  RosbagTypeItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RosbagTypeItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RosbagTypeItem>(create);
  static RosbagTypeItem? _defaultInstance;

  @$pb.TagNumber(1)
  RosbagTypeItem_RosbagType get rosbagType => $_getN(0);
  @$pb.TagNumber(1)
  set rosbagType(RosbagTypeItem_RosbagType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRosbagType() => $_has(0);
  @$pb.TagNumber(1)
  void clearRosbagType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => $_clearField(2);
}

class ProcessStatus extends $pb.GeneratedMessage {
  factory ProcessStatus({
    $core.int? percent,
  }) {
    final result = create();
    if (percent != null) result.percent = percent;
    return result;
  }

  ProcessStatus._();

  factory ProcessStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProcessStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProcessStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'percent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProcessStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProcessStatus copyWith(void Function(ProcessStatus) updates) =>
      super.copyWith((message) => updates(message as ProcessStatus))
          as ProcessStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProcessStatus create() => ProcessStatus._();
  @$core.override
  ProcessStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProcessStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProcessStatus>(create);
  static ProcessStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get percent => $_getIZ(0);
  @$pb.TagNumber(1)
  set percent($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPercent() => $_has(0);
  @$pb.TagNumber(1)
  void clearPercent() => $_clearField(1);
}

class FileInfo extends $pb.GeneratedMessage {
  factory FileInfo({
    $core.String? path,
    $fixnum.Int64? size,
  }) {
    final result = create();
    if (path != null) result.path = path;
    if (size != null) result.size = size;
    return result;
  }

  FileInfo._();

  factory FileInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aInt64(2, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileInfo copyWith(void Function(FileInfo) updates) =>
      super.copyWith((message) => updates(message as FileInfo)) as FileInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  @$core.override
  FileInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get size => $_getI64(1);
  @$pb.TagNumber(2)
  set size($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
}

class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Point._();

  factory Point.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Point.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Point',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point copyWith(void Function(Point) updates) =>
      super.copyWith((message) => updates(message as Point)) as Point;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  @$core.override
  Point createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

class CurveItem extends $pb.GeneratedMessage {
  factory CurveItem({
    $core.String? name,
    $core.String? description,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    return result;
  }

  CurveItem._();

  factory CurveItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurveItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurveItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItem copyWith(void Function(CurveItem) updates) =>
      super.copyWith((message) => updates(message as CurveItem)) as CurveItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItem create() => CurveItem._();
  @$core.override
  CurveItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurveItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurveItem>(create);
  static CurveItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);
}

class CurveItems extends $pb.GeneratedMessage {
  factory CurveItems({
    $core.Iterable<$core.MapEntry<$core.int, CurveItem>>? items,
  }) {
    final result = create();
    if (items != null) result.items.addEntries(items);
    return result;
  }

  CurveItems._();

  factory CurveItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurveItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurveItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, CurveItem>(1, _omitFieldNames ? '' : 'items',
        entryClassName: 'CurveItems.ItemsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CurveItem.create,
        valueDefaultOrMaker: CurveItem.getDefault,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItems copyWith(void Function(CurveItems) updates) =>
      super.copyWith((message) => updates(message as CurveItems)) as CurveItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItems create() => CurveItems._();
  @$core.override
  CurveItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurveItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurveItems>(create);
  static CurveItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, CurveItem> get items => $_getMap(0);
}

class RadarItem extends $pb.GeneratedMessage {
  factory RadarItem({
    $core.String? name,
    $core.String? description,
    $core.String? componentName,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (componentName != null) result.componentName = componentName;
    return result;
  }

  RadarItem._();

  factory RadarItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'componentName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarItem copyWith(void Function(RadarItem) updates) =>
      super.copyWith((message) => updates(message as RadarItem)) as RadarItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarItem create() => RadarItem._();
  @$core.override
  RadarItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarItem>(create);
  static RadarItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get componentName => $_getSZ(2);
  @$pb.TagNumber(3)
  set componentName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasComponentName() => $_has(2);
  @$pb.TagNumber(3)
  void clearComponentName() => $_clearField(3);
}

class RadarItems extends $pb.GeneratedMessage {
  factory RadarItems({
    $core.Iterable<$core.MapEntry<$core.int, RadarItem>>? items,
  }) {
    final result = create();
    if (items != null) result.items.addEntries(items);
    return result;
  }

  RadarItems._();

  factory RadarItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, RadarItem>(1, _omitFieldNames ? '' : 'items',
        entryClassName: 'RadarItems.ItemsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: RadarItem.create,
        valueDefaultOrMaker: RadarItem.getDefault,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarItems copyWith(void Function(RadarItems) updates) =>
      super.copyWith((message) => updates(message as RadarItems)) as RadarItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarItems create() => RadarItems._();
  @$core.override
  RadarItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarItems>(create);
  static RadarItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, RadarItem> get items => $_getMap(0);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (groupType != null) result.groupType = groupType;
    if (itemType != null) result.itemType = itemType;
    if (logicX != null) result.logicX = logicX;
    if (logicY != null) result.logicY = logicY;
    if (errCode != null) result.errCode = errCode;
    if (content != null) result.content = content;
    if (rawJson != null) result.rawJson = rawJson;
    return result;
  }

  AgvLog._();

  factory AgvLog.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgvLog.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgvLog',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aI(2, _omitFieldNames ? '' : 'groupType')
    ..aI(3, _omitFieldNames ? '' : 'itemType')
    ..aI(4, _omitFieldNames ? '' : 'logicX')
    ..aI(5, _omitFieldNames ? '' : 'logicY')
    ..aI(6, _omitFieldNames ? '' : 'errCode')
    ..aOS(7, _omitFieldNames ? '' : 'content')
    ..aOS(8, _omitFieldNames ? '' : 'rawJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLog clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLog copyWith(void Function(AgvLog) updates) =>
      super.copyWith((message) => updates(message as AgvLog)) as AgvLog;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLog create() => AgvLog._();
  @$core.override
  AgvLog createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgvLog getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvLog>(create);
  static AgvLog? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get groupType => $_getIZ(1);
  @$pb.TagNumber(2)
  set groupType($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGroupType() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroupType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get itemType => $_getIZ(2);
  @$pb.TagNumber(3)
  set itemType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasItemType() => $_has(2);
  @$pb.TagNumber(3)
  void clearItemType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get logicX => $_getIZ(3);
  @$pb.TagNumber(4)
  set logicX($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLogicX() => $_has(3);
  @$pb.TagNumber(4)
  void clearLogicX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get logicY => $_getIZ(4);
  @$pb.TagNumber(5)
  set logicY($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLogicY() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get errCode => $_getIZ(5);
  @$pb.TagNumber(6)
  set errCode($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasErrCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearErrCode() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get content => $_getSZ(6);
  @$pb.TagNumber(7)
  set content($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get rawJson => $_getSZ(7);
  @$pb.TagNumber(8)
  set rawJson($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRawJson() => $_has(7);
  @$pb.TagNumber(8)
  void clearRawJson() => $_clearField(8);
}

class AgvLogs extends $pb.GeneratedMessage {
  factory AgvLogs({
    $core.Iterable<AgvLog>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  AgvLogs._();

  factory AgvLogs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgvLogs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgvLogs',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<AgvLog>(1, _omitFieldNames ? '' : 'items', subBuilder: AgvLog.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLogs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvLogs copyWith(void Function(AgvLogs) updates) =>
      super.copyWith((message) => updates(message as AgvLogs)) as AgvLogs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvLogs create() => AgvLogs._();
  @$core.override
  AgvLogs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgvLogs getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgvLogs>(create);
  static AgvLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AgvLog> get items => $_getList(0);
}

class AgvStateLog extends $pb.GeneratedMessage {
  factory AgvStateLog({
    $fixnum.Int64? timestampMicros,
    AgvStateLog_StateType? itemType,
    $core.String? contentData,
    $core.String? argsData,
    $core.String? tooltipData,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (itemType != null) result.itemType = itemType;
    if (contentData != null) result.contentData = contentData;
    if (argsData != null) result.argsData = argsData;
    if (tooltipData != null) result.tooltipData = tooltipData;
    return result;
  }

  AgvStateLog._();

  factory AgvStateLog.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgvStateLog.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgvStateLog',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aE<AgvStateLog_StateType>(2, _omitFieldNames ? '' : 'itemType',
        enumValues: AgvStateLog_StateType.values)
    ..aOS(3, _omitFieldNames ? '' : 'contentData')
    ..aOS(4, _omitFieldNames ? '' : 'argsData')
    ..aOS(5, _omitFieldNames ? '' : 'tooltipData')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvStateLog clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvStateLog copyWith(void Function(AgvStateLog) updates) =>
      super.copyWith((message) => updates(message as AgvStateLog))
          as AgvStateLog;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvStateLog create() => AgvStateLog._();
  @$core.override
  AgvStateLog createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgvStateLog getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AgvStateLog>(create);
  static AgvStateLog? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  AgvStateLog_StateType get itemType => $_getN(1);
  @$pb.TagNumber(2)
  set itemType(AgvStateLog_StateType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasItemType() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get contentData => $_getSZ(2);
  @$pb.TagNumber(3)
  set contentData($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContentData() => $_has(2);
  @$pb.TagNumber(3)
  void clearContentData() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get argsData => $_getSZ(3);
  @$pb.TagNumber(4)
  set argsData($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasArgsData() => $_has(3);
  @$pb.TagNumber(4)
  void clearArgsData() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get tooltipData => $_getSZ(4);
  @$pb.TagNumber(5)
  set tooltipData($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTooltipData() => $_has(4);
  @$pb.TagNumber(5)
  void clearTooltipData() => $_clearField(5);
}

class AgvStateLogs extends $pb.GeneratedMessage {
  factory AgvStateLogs({
    $core.Iterable<AgvStateLog>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  AgvStateLogs._();

  factory AgvStateLogs.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AgvStateLogs.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AgvStateLogs',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<AgvStateLog>(1, _omitFieldNames ? '' : 'items',
        subBuilder: AgvStateLog.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvStateLogs clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AgvStateLogs copyWith(void Function(AgvStateLogs) updates) =>
      super.copyWith((message) => updates(message as AgvStateLogs))
          as AgvStateLogs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgvStateLogs create() => AgvStateLogs._();
  @$core.override
  AgvStateLogs createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AgvStateLogs getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AgvStateLogs>(create);
  static AgvStateLogs? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AgvStateLog> get items => $_getList(0);
}

class BatteryStatus_CellVoltage extends $pb.GeneratedMessage {
  factory BatteryStatus_CellVoltage({
    $core.int? id,
    $core.double? voltage,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (voltage != null) result.voltage = voltage;
    return result;
  }

  BatteryStatus_CellVoltage._();

  factory BatteryStatus_CellVoltage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatus_CellVoltage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatus.CellVoltage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aD(2, _omitFieldNames ? '' : 'voltage')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_CellVoltage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_CellVoltage copyWith(
          void Function(BatteryStatus_CellVoltage) updates) =>
      super.copyWith((message) => updates(message as BatteryStatus_CellVoltage))
          as BatteryStatus_CellVoltage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellVoltage create() => BatteryStatus_CellVoltage._();
  @$core.override
  BatteryStatus_CellVoltage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellVoltage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatus_CellVoltage>(create);
  static BatteryStatus_CellVoltage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get voltage => $_getN(1);
  @$pb.TagNumber(2)
  set voltage($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVoltage() => $_has(1);
  @$pb.TagNumber(2)
  void clearVoltage() => $_clearField(2);
}

class BatteryStatus_ThermometerValue extends $pb.GeneratedMessage {
  factory BatteryStatus_ThermometerValue({
    $core.int? id,
    $core.double? temperature,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (temperature != null) result.temperature = temperature;
    return result;
  }

  BatteryStatus_ThermometerValue._();

  factory BatteryStatus_ThermometerValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatus_ThermometerValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatus.ThermometerValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aD(2, _omitFieldNames ? '' : 'temperature')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_ThermometerValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_ThermometerValue copyWith(
          void Function(BatteryStatus_ThermometerValue) updates) =>
      super.copyWith(
              (message) => updates(message as BatteryStatus_ThermometerValue))
          as BatteryStatus_ThermometerValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_ThermometerValue create() =>
      BatteryStatus_ThermometerValue._();
  @$core.override
  BatteryStatus_ThermometerValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_ThermometerValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatus_ThermometerValue>(create);
  static BatteryStatus_ThermometerValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get temperature => $_getN(1);
  @$pb.TagNumber(2)
  set temperature($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => $_clearField(2);
}

class BatteryStatus_OnOffValue extends $pb.GeneratedMessage {
  factory BatteryStatus_OnOffValue({
    $core.int? id,
    $core.bool? value,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (value != null) result.value = value;
    return result;
  }

  BatteryStatus_OnOffValue._();

  factory BatteryStatus_OnOffValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatus_OnOffValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatus.OnOffValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_OnOffValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_OnOffValue copyWith(
          void Function(BatteryStatus_OnOffValue) updates) =>
      super.copyWith((message) => updates(message as BatteryStatus_OnOffValue))
          as BatteryStatus_OnOffValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_OnOffValue create() => BatteryStatus_OnOffValue._();
  @$core.override
  BatteryStatus_OnOffValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_OnOffValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatus_OnOffValue>(create);
  static BatteryStatus_OnOffValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get value => $_getBF(1);
  @$pb.TagNumber(2)
  set value($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class BatteryStatus_CellBalanceStatus extends $pb.GeneratedMessage {
  factory BatteryStatus_CellBalanceStatus({
    $core.int? id,
    $core.bool? isBalanced,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (isBalanced != null) result.isBalanced = isBalanced;
    return result;
  }

  BatteryStatus_CellBalanceStatus._();

  factory BatteryStatus_CellBalanceStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatus_CellBalanceStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatus.CellBalanceStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'isBalanced')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_CellBalanceStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus_CellBalanceStatus copyWith(
          void Function(BatteryStatus_CellBalanceStatus) updates) =>
      super.copyWith(
              (message) => updates(message as BatteryStatus_CellBalanceStatus))
          as BatteryStatus_CellBalanceStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellBalanceStatus create() =>
      BatteryStatus_CellBalanceStatus._();
  @$core.override
  BatteryStatus_CellBalanceStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus_CellBalanceStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatus_CellBalanceStatus>(
          create);
  static BatteryStatus_CellBalanceStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isBalanced => $_getBF(1);
  @$pb.TagNumber(2)
  set isBalanced($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsBalanced() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsBalanced() => $_clearField(2);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (soc != null) result.soc = soc;
    if (voltage != null) result.voltage = voltage;
    if (chargeCurrent != null) result.chargeCurrent = chargeCurrent;
    if (dischargeCurrent != null) result.dischargeCurrent = dischargeCurrent;
    if (remainingCapacity != null) result.remainingCapacity = remainingCapacity;
    if (fullChargeCapacity != null)
      result.fullChargeCapacity = fullChargeCapacity;
    if (designedCapacity != null) result.designedCapacity = designedCapacity;
    if (chargeCycles != null) result.chargeCycles = chargeCycles;
    if (cellsVoltage != null) result.cellsVoltage.addAll(cellsVoltage);
    if (thermometers != null) result.thermometers.addAll(thermometers);
    if (exceptions != null) result.exceptions.addAll(exceptions);
    if (onOffStatus != null) result.onOffStatus.addAll(onOffStatus);
    if (cellsBalanceStatus != null)
      result.cellsBalanceStatus.addAll(cellsBalanceStatus);
    return result;
  }

  BatteryStatus._();

  factory BatteryStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aI(2, _omitFieldNames ? '' : 'soc')
    ..aD(3, _omitFieldNames ? '' : 'voltage')
    ..aD(4, _omitFieldNames ? '' : 'chargeCurrent')
    ..aD(5, _omitFieldNames ? '' : 'dischargeCurrent')
    ..aD(6, _omitFieldNames ? '' : 'remainingCapacity')
    ..aD(7, _omitFieldNames ? '' : 'fullChargeCapacity')
    ..aD(8, _omitFieldNames ? '' : 'designedCapacity')
    ..aI(9, _omitFieldNames ? '' : 'chargeCycles')
    ..pPM<BatteryStatus_CellVoltage>(10, _omitFieldNames ? '' : 'cellsVoltage',
        subBuilder: BatteryStatus_CellVoltage.create)
    ..pPM<BatteryStatus_ThermometerValue>(
        11, _omitFieldNames ? '' : 'thermometers',
        subBuilder: BatteryStatus_ThermometerValue.create)
    ..p<$core.int>(12, _omitFieldNames ? '' : 'exceptions', $pb.PbFieldType.K3)
    ..pPM<BatteryStatus_OnOffValue>(13, _omitFieldNames ? '' : 'onOffStatus',
        subBuilder: BatteryStatus_OnOffValue.create)
    ..pPM<BatteryStatus_CellBalanceStatus>(
        14, _omitFieldNames ? '' : 'cellsBalanceStatus',
        subBuilder: BatteryStatus_CellBalanceStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatus copyWith(void Function(BatteryStatus) updates) =>
      super.copyWith((message) => updates(message as BatteryStatus))
          as BatteryStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatus create() => BatteryStatus._();
  @$core.override
  BatteryStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatus>(create);
  static BatteryStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get soc => $_getIZ(1);
  @$pb.TagNumber(2)
  set soc($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSoc() => $_has(1);
  @$pb.TagNumber(2)
  void clearSoc() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get voltage => $_getN(2);
  @$pb.TagNumber(3)
  set voltage($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVoltage() => $_has(2);
  @$pb.TagNumber(3)
  void clearVoltage() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get chargeCurrent => $_getN(3);
  @$pb.TagNumber(4)
  set chargeCurrent($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasChargeCurrent() => $_has(3);
  @$pb.TagNumber(4)
  void clearChargeCurrent() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get dischargeCurrent => $_getN(4);
  @$pb.TagNumber(5)
  set dischargeCurrent($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDischargeCurrent() => $_has(4);
  @$pb.TagNumber(5)
  void clearDischargeCurrent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get remainingCapacity => $_getN(5);
  @$pb.TagNumber(6)
  set remainingCapacity($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRemainingCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemainingCapacity() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get fullChargeCapacity => $_getN(6);
  @$pb.TagNumber(7)
  set fullChargeCapacity($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFullChargeCapacity() => $_has(6);
  @$pb.TagNumber(7)
  void clearFullChargeCapacity() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get designedCapacity => $_getN(7);
  @$pb.TagNumber(8)
  set designedCapacity($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDesignedCapacity() => $_has(7);
  @$pb.TagNumber(8)
  void clearDesignedCapacity() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get chargeCycles => $_getIZ(8);
  @$pb.TagNumber(9)
  set chargeCycles($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasChargeCycles() => $_has(8);
  @$pb.TagNumber(9)
  void clearChargeCycles() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<BatteryStatus_CellVoltage> get cellsVoltage => $_getList(9);

  @$pb.TagNumber(11)
  $pb.PbList<BatteryStatus_ThermometerValue> get thermometers => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<$core.int> get exceptions => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<BatteryStatus_OnOffValue> get onOffStatus => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<BatteryStatus_CellBalanceStatus> get cellsBalanceStatus =>
      $_getList(13);
}

class BatteryStatuses extends $pb.GeneratedMessage {
  factory BatteryStatuses({
    $core.Iterable<BatteryStatus>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  BatteryStatuses._();

  factory BatteryStatuses.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BatteryStatuses.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BatteryStatuses',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<BatteryStatus>(1, _omitFieldNames ? '' : 'items',
        subBuilder: BatteryStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatuses clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BatteryStatuses copyWith(void Function(BatteryStatuses) updates) =>
      super.copyWith((message) => updates(message as BatteryStatuses))
          as BatteryStatuses;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatteryStatuses create() => BatteryStatuses._();
  @$core.override
  BatteryStatuses createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BatteryStatuses getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BatteryStatuses>(create);
  static BatteryStatuses? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BatteryStatus> get items => $_getList(0);
}

class ExceptionStatusEvent extends $pb.GeneratedMessage {
  factory ExceptionStatusEvent({
    $fixnum.Int64? timestampMicros,
    ExceptionStatusEvent_Level? level,
    ExceptionStatusEvent_EventId? eventId,
    $core.int? exceptionType,
    $core.String? description,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (level != null) result.level = level;
    if (eventId != null) result.eventId = eventId;
    if (exceptionType != null) result.exceptionType = exceptionType;
    if (description != null) result.description = description;
    return result;
  }

  ExceptionStatusEvent._();

  factory ExceptionStatusEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExceptionStatusEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExceptionStatusEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aE<ExceptionStatusEvent_Level>(2, _omitFieldNames ? '' : 'level',
        enumValues: ExceptionStatusEvent_Level.values)
    ..aE<ExceptionStatusEvent_EventId>(3, _omitFieldNames ? '' : 'eventId',
        enumValues: ExceptionStatusEvent_EventId.values)
    ..aI(4, _omitFieldNames ? '' : 'exceptionType')
    ..aOS(5, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExceptionStatusEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExceptionStatusEvent copyWith(void Function(ExceptionStatusEvent) updates) =>
      super.copyWith((message) => updates(message as ExceptionStatusEvent))
          as ExceptionStatusEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvent create() => ExceptionStatusEvent._();
  @$core.override
  ExceptionStatusEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExceptionStatusEvent>(create);
  static ExceptionStatusEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  ExceptionStatusEvent_Level get level => $_getN(1);
  @$pb.TagNumber(2)
  set level(ExceptionStatusEvent_Level value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  ExceptionStatusEvent_EventId get eventId => $_getN(2);
  @$pb.TagNumber(3)
  set eventId(ExceptionStatusEvent_EventId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEventId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEventId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get exceptionType => $_getIZ(3);
  @$pb.TagNumber(4)
  set exceptionType($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasExceptionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearExceptionType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get description => $_getSZ(4);
  @$pb.TagNumber(5)
  set description($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDescription() => $_has(4);
  @$pb.TagNumber(5)
  void clearDescription() => $_clearField(5);
}

class ExceptionStatusEvents extends $pb.GeneratedMessage {
  factory ExceptionStatusEvents({
    $core.Iterable<ExceptionStatusEvent>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  ExceptionStatusEvents._();

  factory ExceptionStatusEvents.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ExceptionStatusEvents.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExceptionStatusEvents',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<ExceptionStatusEvent>(1, _omitFieldNames ? '' : 'items',
        subBuilder: ExceptionStatusEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExceptionStatusEvents clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExceptionStatusEvents copyWith(
          void Function(ExceptionStatusEvents) updates) =>
      super.copyWith((message) => updates(message as ExceptionStatusEvents))
          as ExceptionStatusEvents;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvents create() => ExceptionStatusEvents._();
  @$core.override
  ExceptionStatusEvents createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ExceptionStatusEvents getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExceptionStatusEvents>(create);
  static ExceptionStatusEvents? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ExceptionStatusEvent> get items => $_getList(0);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (radarId != null) result.radarId = radarId;
    if (scanData != null) result.scanData = scanData;
    if (obstacleData != null) result.obstacleData = obstacleData;
    return result;
  }

  RadarData._();

  factory RadarData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aI(2, _omitFieldNames ? '' : 'radarId')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'scanData', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'obstacleData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarData copyWith(void Function(RadarData) updates) =>
      super.copyWith((message) => updates(message as RadarData)) as RadarData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarData create() => RadarData._();
  @$core.override
  RadarData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadarData>(create);
  static RadarData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get radarId => $_getIZ(1);
  @$pb.TagNumber(2)
  set radarId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRadarId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadarId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get scanData => $_getN(2);
  @$pb.TagNumber(3)
  set scanData($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScanData() => $_has(2);
  @$pb.TagNumber(3)
  void clearScanData() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get obstacleData => $_getN(3);
  @$pb.TagNumber(4)
  set obstacleData($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasObstacleData() => $_has(3);
  @$pb.TagNumber(4)
  void clearObstacleData() => $_clearField(4);
}

class RadarDatas extends $pb.GeneratedMessage {
  factory RadarDatas({
    $core.Iterable<RadarData>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  RadarDatas._();

  factory RadarDatas.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarDatas.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarDatas',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<RadarData>(1, _omitFieldNames ? '' : 'items',
        subBuilder: RadarData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDatas clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDatas copyWith(void Function(RadarDatas) updates) =>
      super.copyWith((message) => updates(message as RadarDatas)) as RadarDatas;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDatas create() => RadarDatas._();
  @$core.override
  RadarDatas createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarDatas getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarDatas>(create);
  static RadarDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RadarData> get items => $_getList(0);
}

class ComponentInfos extends $pb.GeneratedMessage {
  factory ComponentInfos({
    $core.List<$core.int>? componentDatas,
  }) {
    final result = create();
    if (componentDatas != null) result.componentDatas = componentDatas;
    return result;
  }

  ComponentInfos._();

  factory ComponentInfos.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentInfos.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentInfos',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'componentDatas', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentInfos clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentInfos copyWith(void Function(ComponentInfos) updates) =>
      super.copyWith((message) => updates(message as ComponentInfos))
          as ComponentInfos;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentInfos create() => ComponentInfos._();
  @$core.override
  ComponentInfos createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentInfos getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentInfos>(create);
  static ComponentInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get componentDatas => $_getN(0);
  @$pb.TagNumber(1)
  set componentDatas($core.List<$core.int> value) => $_setBytes(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentDatas() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentDatas() => $_clearField(1);
}

class MotionItem extends $pb.GeneratedMessage {
  factory MotionItem({
    $fixnum.Int64? motionStartTimestampMicros,
    $fixnum.Int64? motionEndTimestampMicros,
    $core.int? motionType,
    $core.String? rawJson,
  }) {
    final result = create();
    if (motionStartTimestampMicros != null)
      result.motionStartTimestampMicros = motionStartTimestampMicros;
    if (motionEndTimestampMicros != null)
      result.motionEndTimestampMicros = motionEndTimestampMicros;
    if (motionType != null) result.motionType = motionType;
    if (rawJson != null) result.rawJson = rawJson;
    return result;
  }

  MotionItem._();

  factory MotionItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MotionItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MotionItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'motionStartTimestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'motionEndTimestampMicros')
    ..aI(3, _omitFieldNames ? '' : 'motionType')
    ..aOS(4, _omitFieldNames ? '' : 'rawJson')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionItem copyWith(void Function(MotionItem) updates) =>
      super.copyWith((message) => updates(message as MotionItem)) as MotionItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MotionItem create() => MotionItem._();
  @$core.override
  MotionItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MotionItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MotionItem>(create);
  static MotionItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get motionStartTimestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set motionStartTimestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMotionStartTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearMotionStartTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get motionEndTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set motionEndTimestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMotionEndTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearMotionEndTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get motionType => $_getIZ(2);
  @$pb.TagNumber(3)
  set motionType($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMotionType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMotionType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get rawJson => $_getSZ(3);
  @$pb.TagNumber(4)
  set rawJson($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRawJson() => $_has(3);
  @$pb.TagNumber(4)
  void clearRawJson() => $_clearField(4);
}

class MotionItems extends $pb.GeneratedMessage {
  factory MotionItems({
    $core.Iterable<MotionItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  MotionItems._();

  factory MotionItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MotionItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MotionItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<MotionItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: MotionItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MotionItems copyWith(void Function(MotionItems) updates) =>
      super.copyWith((message) => updates(message as MotionItems))
          as MotionItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MotionItems create() => MotionItems._();
  @$core.override
  MotionItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MotionItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MotionItems>(create);
  static MotionItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MotionItem> get items => $_getList(0);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (sketchyItems != null) result.sketchyItems = sketchyItems;
    if (radarDatas != null) result.radarDatas.addAll(radarDatas);
    if (componentDatas != null) result.componentDatas = componentDatas;
    if (distanceSensorDatas != null)
      result.distanceSensorDatas.addAll(distanceSensorDatas);
    if (motionItems != null) result.motionItems = motionItems;
    return result;
  }

  RadarPageDatas._();

  factory RadarPageDatas.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarPageDatas.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarPageDatas',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aOM<RadarDataSketchys>(2, _omitFieldNames ? '' : 'sketchyItems',
        subBuilder: RadarDataSketchys.create)
    ..pPM<RadarData>(3, _omitFieldNames ? '' : 'radarDatas',
        subBuilder: RadarData.create)
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'componentDatas', $pb.PbFieldType.OY)
    ..p<$core.List<$core.int>>(
        5, _omitFieldNames ? '' : 'distanceSensorDatas', $pb.PbFieldType.PY)
    ..aOM<MotionItems>(6, _omitFieldNames ? '' : 'motionItems',
        subBuilder: MotionItems.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarPageDatas clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarPageDatas copyWith(void Function(RadarPageDatas) updates) =>
      super.copyWith((message) => updates(message as RadarPageDatas))
          as RadarPageDatas;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarPageDatas create() => RadarPageDatas._();
  @$core.override
  RadarPageDatas createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarPageDatas getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarPageDatas>(create);
  static RadarPageDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  RadarDataSketchys get sketchyItems => $_getN(1);
  @$pb.TagNumber(2)
  set sketchyItems(RadarDataSketchys value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSketchyItems() => $_has(1);
  @$pb.TagNumber(2)
  void clearSketchyItems() => $_clearField(2);
  @$pb.TagNumber(2)
  RadarDataSketchys ensureSketchyItems() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<RadarData> get radarDatas => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get componentDatas => $_getN(3);
  @$pb.TagNumber(4)
  set componentDatas($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasComponentDatas() => $_has(3);
  @$pb.TagNumber(4)
  void clearComponentDatas() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.List<$core.int>> get distanceSensorDatas => $_getList(4);

  @$pb.TagNumber(6)
  MotionItems get motionItems => $_getN(5);
  @$pb.TagNumber(6)
  set motionItems(MotionItems value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMotionItems() => $_has(5);
  @$pb.TagNumber(6)
  void clearMotionItems() => $_clearField(6);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (radarId != null) result.radarId = radarId;
    if (steadyClockMs != null) result.steadyClockMs = steadyClockMs;
    if (validTypes != null) result.validTypes.addAll(validTypes);
    return result;
  }

  RadarDataSketchy._();

  factory RadarDataSketchy.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarDataSketchy.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarDataSketchy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aI(2, _omitFieldNames ? '' : 'radarId')
    ..aInt64(3, _omitFieldNames ? '' : 'steadyClockMs')
    ..pc<DistriDataType>(
        4, _omitFieldNames ? '' : 'validTypes', $pb.PbFieldType.KE,
        valueOf: DistriDataType.valueOf,
        enumValues: DistriDataType.values,
        defaultEnumValue: DistriDataType.Point2d)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDataSketchy clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDataSketchy copyWith(void Function(RadarDataSketchy) updates) =>
      super.copyWith((message) => updates(message as RadarDataSketchy))
          as RadarDataSketchy;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDataSketchy create() => RadarDataSketchy._();
  @$core.override
  RadarDataSketchy createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarDataSketchy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarDataSketchy>(create);
  static RadarDataSketchy? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get radarId => $_getIZ(1);
  @$pb.TagNumber(2)
  set radarId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRadarId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadarId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get steadyClockMs => $_getI64(2);
  @$pb.TagNumber(3)
  set steadyClockMs($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSteadyClockMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearSteadyClockMs() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<DistriDataType> get validTypes => $_getList(3);
}

class RadarDataSketchys extends $pb.GeneratedMessage {
  factory RadarDataSketchys({
    $core.Iterable<RadarDataSketchy>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  RadarDataSketchys._();

  factory RadarDataSketchys.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarDataSketchys.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarDataSketchys',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<RadarDataSketchy>(1, _omitFieldNames ? '' : 'items',
        subBuilder: RadarDataSketchy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDataSketchys clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarDataSketchys copyWith(void Function(RadarDataSketchys) updates) =>
      super.copyWith((message) => updates(message as RadarDataSketchys))
          as RadarDataSketchys;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarDataSketchys create() => RadarDataSketchys._();
  @$core.override
  RadarDataSketchys createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarDataSketchys getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarDataSketchys>(create);
  static RadarDataSketchys? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RadarDataSketchy> get items => $_getList(0);
}

class FetchRadarDataRequest extends $pb.GeneratedMessage {
  factory FetchRadarDataRequest({
    RadarDataSketchy? radarSketchy,
    DistriDataType? dataType,
  }) {
    final result = create();
    if (radarSketchy != null) result.radarSketchy = radarSketchy;
    if (dataType != null) result.dataType = dataType;
    return result;
  }

  FetchRadarDataRequest._();

  factory FetchRadarDataRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FetchRadarDataRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchRadarDataRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOM<RadarDataSketchy>(1, _omitFieldNames ? '' : 'radarSketchy',
        subBuilder: RadarDataSketchy.create)
    ..aE<DistriDataType>(2, _omitFieldNames ? '' : 'dataType',
        enumValues: DistriDataType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchRadarDataRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchRadarDataRequest copyWith(
          void Function(FetchRadarDataRequest) updates) =>
      super.copyWith((message) => updates(message as FetchRadarDataRequest))
          as FetchRadarDataRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchRadarDataRequest create() => FetchRadarDataRequest._();
  @$core.override
  FetchRadarDataRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FetchRadarDataRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchRadarDataRequest>(create);
  static FetchRadarDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  RadarDataSketchy get radarSketchy => $_getN(0);
  @$pb.TagNumber(1)
  set radarSketchy(RadarDataSketchy value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRadarSketchy() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadarSketchy() => $_clearField(1);
  @$pb.TagNumber(1)
  RadarDataSketchy ensureRadarSketchy() => $_ensure(0);

  @$pb.TagNumber(2)
  DistriDataType get dataType => $_getN(1);
  @$pb.TagNumber(2)
  set dataType(DistriDataType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDataType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDataType() => $_clearField(2);
}

class RadarRunningInfo extends $pb.GeneratedMessage {
  factory RadarRunningInfo({
    $core.int? radarId,
    $fixnum.Int64? beginTimestampMicros,
    $fixnum.Int64? endTimestampMicros,
    RadarRunningInfo_RangeType? rangeType,
  }) {
    final result = create();
    if (radarId != null) result.radarId = radarId;
    if (beginTimestampMicros != null)
      result.beginTimestampMicros = beginTimestampMicros;
    if (endTimestampMicros != null)
      result.endTimestampMicros = endTimestampMicros;
    if (rangeType != null) result.rangeType = rangeType;
    return result;
  }

  RadarRunningInfo._();

  factory RadarRunningInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarRunningInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarRunningInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'radarId')
    ..aInt64(2, _omitFieldNames ? '' : 'beginTimestampMicros')
    ..aInt64(3, _omitFieldNames ? '' : 'endTimestampMicros')
    ..aE<RadarRunningInfo_RangeType>(4, _omitFieldNames ? '' : 'rangeType',
        enumValues: RadarRunningInfo_RangeType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarRunningInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarRunningInfo copyWith(void Function(RadarRunningInfo) updates) =>
      super.copyWith((message) => updates(message as RadarRunningInfo))
          as RadarRunningInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarRunningInfo create() => RadarRunningInfo._();
  @$core.override
  RadarRunningInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarRunningInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarRunningInfo>(create);
  static RadarRunningInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get radarId => $_getIZ(0);
  @$pb.TagNumber(1)
  set radarId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRadarId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadarId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get beginTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set beginTimestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBeginTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimestampMicros => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimestampMicros($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndTimestampMicros() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimestampMicros() => $_clearField(3);

  @$pb.TagNumber(4)
  RadarRunningInfo_RangeType get rangeType => $_getN(3);
  @$pb.TagNumber(4)
  set rangeType(RadarRunningInfo_RangeType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRangeType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRangeType() => $_clearField(4);
}

class RadarRunningInfos extends $pb.GeneratedMessage {
  factory RadarRunningInfos({
    $core.Iterable<RadarRunningInfo>? items,
    $fixnum.Int64? beginTimestampMicros,
    $fixnum.Int64? endTimestampMicros,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (beginTimestampMicros != null)
      result.beginTimestampMicros = beginTimestampMicros;
    if (endTimestampMicros != null)
      result.endTimestampMicros = endTimestampMicros;
    return result;
  }

  RadarRunningInfos._();

  factory RadarRunningInfos.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadarRunningInfos.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadarRunningInfos',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<RadarRunningInfo>(1, _omitFieldNames ? '' : 'items',
        subBuilder: RadarRunningInfo.create)
    ..aInt64(2, _omitFieldNames ? '' : 'beginTimestampMicros')
    ..aInt64(3, _omitFieldNames ? '' : 'endTimestampMicros')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarRunningInfos clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadarRunningInfos copyWith(void Function(RadarRunningInfos) updates) =>
      super.copyWith((message) => updates(message as RadarRunningInfos))
          as RadarRunningInfos;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadarRunningInfos create() => RadarRunningInfos._();
  @$core.override
  RadarRunningInfos createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadarRunningInfos getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadarRunningInfos>(create);
  static RadarRunningInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RadarRunningInfo> get items => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get beginTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set beginTimestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBeginTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeginTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endTimestampMicros => $_getI64(2);
  @$pb.TagNumber(3)
  set endTimestampMicros($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndTimestampMicros() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTimestampMicros() => $_clearField(3);
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
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (cpu != null) result.cpu = cpu;
    if (mem != null) result.mem = mem;
    if (location != null) result.location = location;
    if (logicLocation != null) result.logicLocation = logicLocation;
    if (soSpeed != null) result.soSpeed = soSpeed;
    if (turnSpeed != null) result.turnSpeed = turnSpeed;
    if (jackPosition != null) result.jackPosition = jackPosition;
    if (telescopingPosition != null)
      result.telescopingPosition.addAll(telescopingPosition);
    if (supportPosition != null) result.supportPosition.addAll(supportPosition);
    if (battery != null) result.battery = battery;
    return result;
  }

  RobotStatus._();

  factory RobotStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RobotStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RobotStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aD(2, _omitFieldNames ? '' : 'cpu')
    ..aD(3, _omitFieldNames ? '' : 'mem')
    ..aOM<Point>(4, _omitFieldNames ? '' : 'location', subBuilder: Point.create)
    ..aOM<Point>(5, _omitFieldNames ? '' : 'logicLocation',
        subBuilder: Point.create)
    ..aD(6, _omitFieldNames ? '' : 'soSpeed')
    ..aD(7, _omitFieldNames ? '' : 'turnSpeed')
    ..aD(8, _omitFieldNames ? '' : 'jackPosition')
    ..p<$core.double>(
        9, _omitFieldNames ? '' : 'telescopingPosition', $pb.PbFieldType.KD)
    ..p<$core.double>(
        10, _omitFieldNames ? '' : 'supportPosition', $pb.PbFieldType.KD)
    ..aI(11, _omitFieldNames ? '' : 'battery')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RobotStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RobotStatus copyWith(void Function(RobotStatus) updates) =>
      super.copyWith((message) => updates(message as RobotStatus))
          as RobotStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RobotStatus create() => RobotStatus._();
  @$core.override
  RobotStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RobotStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RobotStatus>(create);
  static RobotStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get cpu => $_getN(1);
  @$pb.TagNumber(2)
  set cpu($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCpu() => $_has(1);
  @$pb.TagNumber(2)
  void clearCpu() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get mem => $_getN(2);
  @$pb.TagNumber(3)
  set mem($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMem() => $_has(2);
  @$pb.TagNumber(3)
  void clearMem() => $_clearField(3);

  @$pb.TagNumber(4)
  Point get location => $_getN(3);
  @$pb.TagNumber(4)
  set location(Point value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocation() => $_clearField(4);
  @$pb.TagNumber(4)
  Point ensureLocation() => $_ensure(3);

  @$pb.TagNumber(5)
  Point get logicLocation => $_getN(4);
  @$pb.TagNumber(5)
  set logicLocation(Point value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLogicLocation() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicLocation() => $_clearField(5);
  @$pb.TagNumber(5)
  Point ensureLogicLocation() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.double get soSpeed => $_getN(5);
  @$pb.TagNumber(6)
  set soSpeed($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSoSpeed() => $_has(5);
  @$pb.TagNumber(6)
  void clearSoSpeed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get turnSpeed => $_getN(6);
  @$pb.TagNumber(7)
  set turnSpeed($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTurnSpeed() => $_has(6);
  @$pb.TagNumber(7)
  void clearTurnSpeed() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get jackPosition => $_getN(7);
  @$pb.TagNumber(8)
  set jackPosition($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasJackPosition() => $_has(7);
  @$pb.TagNumber(8)
  void clearJackPosition() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.double> get telescopingPosition => $_getList(8);

  @$pb.TagNumber(10)
  $pb.PbList<$core.double> get supportPosition => $_getList(9);

  @$pb.TagNumber(11)
  $core.int get battery => $_getIZ(10);
  @$pb.TagNumber(11)
  set battery($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBattery() => $_has(10);
  @$pb.TagNumber(11)
  void clearBattery() => $_clearField(11);
}

class SensorSwitchItem extends $pb.GeneratedMessage {
  factory SensorSwitchItem({
    $core.int? swId,
    $core.Iterable<$fixnum.Int64>? timestampMicross,
    $core.Iterable<$core.int>? values,
  }) {
    final result = create();
    if (swId != null) result.swId = swId;
    if (timestampMicross != null)
      result.timestampMicross.addAll(timestampMicross);
    if (values != null) result.values.addAll(values);
    return result;
  }

  SensorSwitchItem._();

  factory SensorSwitchItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorSwitchItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorSwitchItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'swId')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'timestampMicross', $pb.PbFieldType.K6)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorSwitchItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorSwitchItem copyWith(void Function(SensorSwitchItem) updates) =>
      super.copyWith((message) => updates(message as SensorSwitchItem))
          as SensorSwitchItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorSwitchItem create() => SensorSwitchItem._();
  @$core.override
  SensorSwitchItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorSwitchItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorSwitchItem>(create);
  static SensorSwitchItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get swId => $_getIZ(0);
  @$pb.TagNumber(1)
  set swId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSwId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get timestampMicross => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.int> get values => $_getList(2);
}

class SensorSwitchItems extends $pb.GeneratedMessage {
  factory SensorSwitchItems({
    $core.Iterable<SensorSwitchItem>? items,
    $fixnum.Int64? currentTimestampMicros,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (currentTimestampMicros != null)
      result.currentTimestampMicros = currentTimestampMicros;
    return result;
  }

  SensorSwitchItems._();

  factory SensorSwitchItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SensorSwitchItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SensorSwitchItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<SensorSwitchItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: SensorSwitchItem.create)
    ..aInt64(2, _omitFieldNames ? '' : 'currentTimestampMicros')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorSwitchItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SensorSwitchItems copyWith(void Function(SensorSwitchItems) updates) =>
      super.copyWith((message) => updates(message as SensorSwitchItems))
          as SensorSwitchItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SensorSwitchItems create() => SensorSwitchItems._();
  @$core.override
  SensorSwitchItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SensorSwitchItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SensorSwitchItems>(create);
  static SensorSwitchItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SensorSwitchItem> get items => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get currentTimestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set currentTimestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentTimestampMicros() => $_clearField(2);
}

class CurveItemData extends $pb.GeneratedMessage {
  factory CurveItemData({
    $core.int? id,
    $core.Iterable<$fixnum.Int64>? timestampMicross,
    $core.Iterable<$core.double>? values,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (timestampMicross != null)
      result.timestampMicross.addAll(timestampMicross);
    if (values != null) result.values.addAll(values);
    return result;
  }

  CurveItemData._();

  factory CurveItemData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurveItemData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurveItemData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'timestampMicross', $pb.PbFieldType.K6)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItemData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItemData copyWith(void Function(CurveItemData) updates) =>
      super.copyWith((message) => updates(message as CurveItemData))
          as CurveItemData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItemData create() => CurveItemData._();
  @$core.override
  CurveItemData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurveItemData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurveItemData>(create);
  static CurveItemData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get timestampMicross => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.double> get values => $_getList(2);
}

class CurveItemDatas extends $pb.GeneratedMessage {
  factory CurveItemDatas({
    $core.Iterable<$core.MapEntry<$core.int, CurveItemData>>? items,
  }) {
    final result = create();
    if (items != null) result.items.addEntries(items);
    return result;
  }

  CurveItemDatas._();

  factory CurveItemDatas.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CurveItemDatas.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CurveItemDatas',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, CurveItemData>(1, _omitFieldNames ? '' : 'items',
        entryClassName: 'CurveItemDatas.ItemsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: CurveItemData.create,
        valueDefaultOrMaker: CurveItemData.getDefault,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItemDatas clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurveItemDatas copyWith(void Function(CurveItemDatas) updates) =>
      super.copyWith((message) => updates(message as CurveItemDatas))
          as CurveItemDatas;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurveItemDatas create() => CurveItemDatas._();
  @$core.override
  CurveItemDatas createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CurveItemDatas getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CurveItemDatas>(create);
  static CurveItemDatas? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, CurveItemData> get items => $_getMap(0);
}

class TimeaxisValueItem extends $pb.GeneratedMessage {
  factory TimeaxisValueItem({
    $fixnum.Int64? timestampMicros,
    $fixnum.Int64? durationMicros,
    $core.int? level,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (durationMicros != null) result.durationMicros = durationMicros;
    if (level != null) result.level = level;
    return result;
  }

  TimeaxisValueItem._();

  factory TimeaxisValueItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeaxisValueItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeaxisValueItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'durationMicros')
    ..aI(3, _omitFieldNames ? '' : 'level')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisValueItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisValueItem copyWith(void Function(TimeaxisValueItem) updates) =>
      super.copyWith((message) => updates(message as TimeaxisValueItem))
          as TimeaxisValueItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItem create() => TimeaxisValueItem._();
  @$core.override
  TimeaxisValueItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimeaxisValueItem>(create);
  static TimeaxisValueItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get durationMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set durationMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(3)
  set level($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLevel() => $_clearField(3);
}

class TimeaxisValueItems extends $pb.GeneratedMessage {
  factory TimeaxisValueItems({
    $core.Iterable<TimeaxisValueItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  TimeaxisValueItems._();

  factory TimeaxisValueItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeaxisValueItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeaxisValueItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..pPM<TimeaxisValueItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: TimeaxisValueItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisValueItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisValueItems copyWith(void Function(TimeaxisValueItems) updates) =>
      super.copyWith((message) => updates(message as TimeaxisValueItems))
          as TimeaxisValueItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItems create() => TimeaxisValueItems._();
  @$core.override
  TimeaxisValueItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeaxisValueItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimeaxisValueItems>(create);
  static TimeaxisValueItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TimeaxisValueItem> get items => $_getList(0);
}

class TimeaxisAbnormalItem extends $pb.GeneratedMessage {
  factory TimeaxisAbnormalItem({
    $fixnum.Int64? timestampMicros,
    $fixnum.Int64? durationMicros,
  }) {
    final result = create();
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (durationMicros != null) result.durationMicros = durationMicros;
    return result;
  }

  TimeaxisAbnormalItem._();

  factory TimeaxisAbnormalItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeaxisAbnormalItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeaxisAbnormalItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timestampMicros')
    ..aInt64(2, _omitFieldNames ? '' : 'durationMicros')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisAbnormalItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisAbnormalItem copyWith(void Function(TimeaxisAbnormalItem) updates) =>
      super.copyWith((message) => updates(message as TimeaxisAbnormalItem))
          as TimeaxisAbnormalItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisAbnormalItem create() => TimeaxisAbnormalItem._();
  @$core.override
  TimeaxisAbnormalItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeaxisAbnormalItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimeaxisAbnormalItem>(create);
  static TimeaxisAbnormalItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestampMicros => $_getI64(0);
  @$pb.TagNumber(1)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTimestampMicros() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestampMicros() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get durationMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set durationMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDurationMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearDurationMicros() => $_clearField(2);
}

class TimeaxisItems extends $pb.GeneratedMessage {
  factory TimeaxisItems({
    $core.Iterable<$core.MapEntry<$core.int, TimeaxisValueItems>>? items,
    $core.Iterable<TimeaxisAbnormalItem>? abnormalItems,
  }) {
    final result = create();
    if (items != null) result.items.addEntries(items);
    if (abnormalItems != null) result.abnormalItems.addAll(abnormalItems);
    return result;
  }

  TimeaxisItems._();

  factory TimeaxisItems.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TimeaxisItems.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeaxisItems',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, TimeaxisValueItems>(1, _omitFieldNames ? '' : 'items',
        entryClassName: 'TimeaxisItems.ItemsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: TimeaxisValueItems.create,
        valueDefaultOrMaker: TimeaxisValueItems.getDefault,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..pPM<TimeaxisAbnormalItem>(2, _omitFieldNames ? '' : 'abnormalItems',
        subBuilder: TimeaxisAbnormalItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisItems clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TimeaxisItems copyWith(void Function(TimeaxisItems) updates) =>
      super.copyWith((message) => updates(message as TimeaxisItems))
          as TimeaxisItems;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeaxisItems create() => TimeaxisItems._();
  @$core.override
  TimeaxisItems createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TimeaxisItems getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimeaxisItems>(create);
  static TimeaxisItems? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, TimeaxisValueItems> get items => $_getMap(0);

  @$pb.TagNumber(2)
  $pb.PbList<TimeaxisAbnormalItem> get abnormalItems => $_getList(1);
}

class MatchingConditions extends $pb.GeneratedMessage {
  factory MatchingConditions({
    Int32Values? errCodes,
    Int32Values? motionIds,
    Int32Values? bncmdIds,
    Int32Values? bnreportIds,
  }) {
    final result = create();
    if (errCodes != null) result.errCodes = errCodes;
    if (motionIds != null) result.motionIds = motionIds;
    if (bncmdIds != null) result.bncmdIds = bncmdIds;
    if (bnreportIds != null) result.bnreportIds = bnreportIds;
    return result;
  }

  MatchingConditions._();

  factory MatchingConditions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MatchingConditions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MatchingConditions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOM<Int32Values>(1, _omitFieldNames ? '' : 'errCodes',
        subBuilder: Int32Values.create)
    ..aOM<Int32Values>(2, _omitFieldNames ? '' : 'motionIds',
        subBuilder: Int32Values.create)
    ..aOM<Int32Values>(3, _omitFieldNames ? '' : 'bncmdIds',
        subBuilder: Int32Values.create)
    ..aOM<Int32Values>(4, _omitFieldNames ? '' : 'bnreportIds',
        subBuilder: Int32Values.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingConditions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingConditions copyWith(void Function(MatchingConditions) updates) =>
      super.copyWith((message) => updates(message as MatchingConditions))
          as MatchingConditions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingConditions create() => MatchingConditions._();
  @$core.override
  MatchingConditions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MatchingConditions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MatchingConditions>(create);
  static MatchingConditions? _defaultInstance;

  @$pb.TagNumber(1)
  Int32Values get errCodes => $_getN(0);
  @$pb.TagNumber(1)
  set errCodes(Int32Values value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasErrCodes() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCodes() => $_clearField(1);
  @$pb.TagNumber(1)
  Int32Values ensureErrCodes() => $_ensure(0);

  @$pb.TagNumber(2)
  Int32Values get motionIds => $_getN(1);
  @$pb.TagNumber(2)
  set motionIds(Int32Values value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMotionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearMotionIds() => $_clearField(2);
  @$pb.TagNumber(2)
  Int32Values ensureMotionIds() => $_ensure(1);

  @$pb.TagNumber(3)
  Int32Values get bncmdIds => $_getN(2);
  @$pb.TagNumber(3)
  set bncmdIds(Int32Values value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBncmdIds() => $_has(2);
  @$pb.TagNumber(3)
  void clearBncmdIds() => $_clearField(3);
  @$pb.TagNumber(3)
  Int32Values ensureBncmdIds() => $_ensure(2);

  @$pb.TagNumber(4)
  Int32Values get bnreportIds => $_getN(3);
  @$pb.TagNumber(4)
  set bnreportIds(Int32Values value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBnreportIds() => $_has(3);
  @$pb.TagNumber(4)
  void clearBnreportIds() => $_clearField(4);
  @$pb.TagNumber(4)
  Int32Values ensureBnreportIds() => $_ensure(3);
}

class MatchingCountedConditions extends $pb.GeneratedMessage {
  factory MatchingCountedConditions({
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? errCodes,
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? motionIds,
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? bncmdIds,
    $core.Iterable<$core.MapEntry<$core.int, $core.int>>? bnreportIds,
  }) {
    final result = create();
    if (errCodes != null) result.errCodes.addEntries(errCodes);
    if (motionIds != null) result.motionIds.addEntries(motionIds);
    if (bncmdIds != null) result.bncmdIds.addEntries(bncmdIds);
    if (bnreportIds != null) result.bnreportIds.addEntries(bnreportIds);
    return result;
  }

  MatchingCountedConditions._();

  factory MatchingCountedConditions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MatchingCountedConditions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MatchingCountedConditions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..m<$core.int, $core.int>(1, _omitFieldNames ? '' : 'errCodes',
        entryClassName: 'MatchingCountedConditions.ErrCodesEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(2, _omitFieldNames ? '' : 'motionIds',
        entryClassName: 'MatchingCountedConditions.MotionIdsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(3, _omitFieldNames ? '' : 'bncmdIds',
        entryClassName: 'MatchingCountedConditions.BncmdIdsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..m<$core.int, $core.int>(4, _omitFieldNames ? '' : 'bnreportIds',
        entryClassName: 'MatchingCountedConditions.BnreportIdsEntry',
        keyFieldType: $pb.PbFieldType.O3,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('galaxis.data.provider'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingCountedConditions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingCountedConditions copyWith(
          void Function(MatchingCountedConditions) updates) =>
      super.copyWith((message) => updates(message as MatchingCountedConditions))
          as MatchingCountedConditions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingCountedConditions create() => MatchingCountedConditions._();
  @$core.override
  MatchingCountedConditions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MatchingCountedConditions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MatchingCountedConditions>(create);
  static MatchingCountedConditions? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, $core.int> get errCodes => $_getMap(0);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.int, $core.int> get motionIds => $_getMap(1);

  @$pb.TagNumber(3)
  $pb.PbMap<$core.int, $core.int> get bncmdIds => $_getMap(2);

  @$pb.TagNumber(4)
  $pb.PbMap<$core.int, $core.int> get bnreportIds => $_getMap(3);
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
    final result = create();
    if (locale != null) result.locale = locale;
    if (timestampMicros != null) result.timestampMicros = timestampMicros;
    if (conditions != null) result.conditions = conditions;
    if (maxCount != null) result.maxCount = maxCount;
    if (adviseFinishTimestampMicros != null)
      result.adviseFinishTimestampMicros = adviseFinishTimestampMicros;
    if (directNew != null) result.directNew = directNew;
    return result;
  }

  MatchingRequest._();

  factory MatchingRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MatchingRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MatchingRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'locale')
    ..aInt64(2, _omitFieldNames ? '' : 'timestampMicros')
    ..aOM<MatchingConditions>(3, _omitFieldNames ? '' : 'conditions',
        subBuilder: MatchingConditions.create)
    ..aInt64(5, _omitFieldNames ? '' : 'maxCount')
    ..aInt64(6, _omitFieldNames ? '' : 'adviseFinishTimestampMicros')
    ..aOB(7, _omitFieldNames ? '' : 'directNew')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingRequest copyWith(void Function(MatchingRequest) updates) =>
      super.copyWith((message) => updates(message as MatchingRequest))
          as MatchingRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingRequest create() => MatchingRequest._();
  @$core.override
  MatchingRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MatchingRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MatchingRequest>(create);
  static MatchingRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locale => $_getSZ(0);
  @$pb.TagNumber(1)
  set locale($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocale() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocale() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timestampMicros => $_getI64(1);
  @$pb.TagNumber(2)
  set timestampMicros($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTimestampMicros() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestampMicros() => $_clearField(2);

  @$pb.TagNumber(3)
  MatchingConditions get conditions => $_getN(2);
  @$pb.TagNumber(3)
  set conditions(MatchingConditions value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasConditions() => $_has(2);
  @$pb.TagNumber(3)
  void clearConditions() => $_clearField(3);
  @$pb.TagNumber(3)
  MatchingConditions ensureConditions() => $_ensure(2);

  @$pb.TagNumber(5)
  $fixnum.Int64 get maxCount => $_getI64(3);
  @$pb.TagNumber(5)
  set maxCount($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxCount() => $_has(3);
  @$pb.TagNumber(5)
  void clearMaxCount() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get adviseFinishTimestampMicros => $_getI64(4);
  @$pb.TagNumber(6)
  set adviseFinishTimestampMicros($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(6)
  $core.bool hasAdviseFinishTimestampMicros() => $_has(4);
  @$pb.TagNumber(6)
  void clearAdviseFinishTimestampMicros() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get directNew => $_getBF(5);
  @$pb.TagNumber(7)
  set directNew($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(7)
  $core.bool hasDirectNew() => $_has(5);
  @$pb.TagNumber(7)
  void clearDirectNew() => $_clearField(7);
}

class MatchingResponse extends $pb.GeneratedMessage {
  factory MatchingResponse({
    AgvLogs? logs,
    TimeRange? timerange,
    $core.bool? complete,
  }) {
    final result = create();
    if (logs != null) result.logs = logs;
    if (timerange != null) result.timerange = timerange;
    if (complete != null) result.complete = complete;
    return result;
  }

  MatchingResponse._();

  factory MatchingResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MatchingResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MatchingResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOM<AgvLogs>(1, _omitFieldNames ? '' : 'logs', subBuilder: AgvLogs.create)
    ..aOM<TimeRange>(2, _omitFieldNames ? '' : 'timerange',
        subBuilder: TimeRange.create)
    ..aOB(3, _omitFieldNames ? '' : 'complete')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatchingResponse copyWith(void Function(MatchingResponse) updates) =>
      super.copyWith((message) => updates(message as MatchingResponse))
          as MatchingResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingResponse create() => MatchingResponse._();
  @$core.override
  MatchingResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MatchingResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MatchingResponse>(create);
  static MatchingResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AgvLogs get logs => $_getN(0);
  @$pb.TagNumber(1)
  set logs(AgvLogs value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLogs() => $_has(0);
  @$pb.TagNumber(1)
  void clearLogs() => $_clearField(1);
  @$pb.TagNumber(1)
  AgvLogs ensureLogs() => $_ensure(0);

  @$pb.TagNumber(2)
  TimeRange get timerange => $_getN(1);
  @$pb.TagNumber(2)
  set timerange(TimeRange value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTimerange() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimerange() => $_clearField(2);
  @$pb.TagNumber(2)
  TimeRange ensureTimerange() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get complete => $_getBF(2);
  @$pb.TagNumber(3)
  set complete($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasComplete() => $_has(2);
  @$pb.TagNumber(3)
  void clearComplete() => $_clearField(3);
}

class FetchDataResponse extends $pb.GeneratedMessage {
  factory FetchDataResponse({
    $core.String? filename,
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (filename != null) result.filename = filename;
    if (content != null) result.content = content;
    return result;
  }

  FetchDataResponse._();

  factory FetchDataResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FetchDataResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FetchDataResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'filename')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchDataResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FetchDataResponse copyWith(void Function(FetchDataResponse) updates) =>
      super.copyWith((message) => updates(message as FetchDataResponse))
          as FetchDataResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FetchDataResponse create() => FetchDataResponse._();
  @$core.override
  FetchDataResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FetchDataResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FetchDataResponse>(create);
  static FetchDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get filename => $_getSZ(0);
  @$pb.TagNumber(1)
  set filename($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFilename() => $_has(0);
  @$pb.TagNumber(1)
  void clearFilename() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);
}

class DistriDeviceItem extends $pb.GeneratedMessage {
  factory DistriDeviceItem({
    $core.int? deviceId,
    DistriDeviceType? deviceType,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (deviceType != null) result.deviceType = deviceType;
    return result;
  }

  DistriDeviceItem._();

  factory DistriDeviceItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DistriDeviceItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DistriDeviceItem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'galaxis.data.provider'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'deviceId')
    ..aE<DistriDeviceType>(2, _omitFieldNames ? '' : 'deviceType',
        enumValues: DistriDeviceType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DistriDeviceItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DistriDeviceItem copyWith(void Function(DistriDeviceItem) updates) =>
      super.copyWith((message) => updates(message as DistriDeviceItem))
          as DistriDeviceItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DistriDeviceItem create() => DistriDeviceItem._();
  @$core.override
  DistriDeviceItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DistriDeviceItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DistriDeviceItem>(create);
  static DistriDeviceItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get deviceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  DistriDeviceType get deviceType => $_getN(1);
  @$pb.TagNumber(2)
  set deviceType(DistriDeviceType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDeviceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceType() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
