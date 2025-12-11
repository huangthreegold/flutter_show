//
//  Generated code. Do not modify.
//  source: central_map_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'central_map_service.pbenum.dart';
import 'elements.pb.dart' as $3;
import 'elements.pbenum.dart' as $3;
import 'google/protobuf/empty.pb.dart' as $0;

export 'central_map_service.pbenum.dart';

class StoredMappingData extends $pb.GeneratedMessage {
  factory StoredMappingData({
    $core.Iterable<$3.BusinessMap>? businessMap,
    StoredPrivateData? privateData,
    $fixnum.Int64? internalVersion,
  }) {
    final $result = create();
    if (businessMap != null) {
      $result.businessMap.addAll(businessMap);
    }
    if (privateData != null) {
      $result.privateData = privateData;
    }
    if (internalVersion != null) {
      $result.internalVersion = internalVersion;
    }
    return $result;
  }
  StoredMappingData._() : super();
  factory StoredMappingData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredMappingData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoredMappingData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<$3.BusinessMap>(1, _omitFieldNames ? '' : 'businessMap', $pb.PbFieldType.PM, protoName: 'businessMap', subBuilder: $3.BusinessMap.create)
    ..aOM<StoredPrivateData>(2, _omitFieldNames ? '' : 'privateData', protoName: 'privateData', subBuilder: StoredPrivateData.create)
    ..aInt64(3, _omitFieldNames ? '' : 'internalVersion', protoName: 'internalVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredMappingData clone() => StoredMappingData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredMappingData copyWith(void Function(StoredMappingData) updates) => super.copyWith((message) => updates(message as StoredMappingData)) as StoredMappingData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoredMappingData create() => StoredMappingData._();
  StoredMappingData createEmptyInstance() => create();
  static $pb.PbList<StoredMappingData> createRepeated() => $pb.PbList<StoredMappingData>();
  @$core.pragma('dart2js:noInline')
  static StoredMappingData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredMappingData>(create);
  static StoredMappingData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.BusinessMap> get businessMap => $_getList(0);

  @$pb.TagNumber(2)
  StoredPrivateData get privateData => $_getN(1);
  @$pb.TagNumber(2)
  set privateData(StoredPrivateData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrivateData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateData() => clearField(2);
  @$pb.TagNumber(2)
  StoredPrivateData ensurePrivateData() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get internalVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set internalVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInternalVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearInternalVersion() => clearField(3);
}

class StoredPrivateData extends $pb.GeneratedMessage {
  factory StoredPrivateData({
    $core.Iterable<StoredMapItem>? inPathSiteIndex,
    $core.Iterable<StoredMapItem>? inSitePathIndex,
    $core.Iterable<StoredEntityInfo>? entityInfos,
    $core.Iterable<$3.ToolingData>? toolingData,
  }) {
    final $result = create();
    if (inPathSiteIndex != null) {
      $result.inPathSiteIndex.addAll(inPathSiteIndex);
    }
    if (inSitePathIndex != null) {
      $result.inSitePathIndex.addAll(inSitePathIndex);
    }
    if (entityInfos != null) {
      $result.entityInfos.addAll(entityInfos);
    }
    if (toolingData != null) {
      $result.toolingData.addAll(toolingData);
    }
    return $result;
  }
  StoredPrivateData._() : super();
  factory StoredPrivateData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredPrivateData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoredPrivateData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<StoredMapItem>(1, _omitFieldNames ? '' : 'inPathSiteIndex', $pb.PbFieldType.PM, protoName: 'inPathSiteIndex', subBuilder: StoredMapItem.create)
    ..pc<StoredMapItem>(2, _omitFieldNames ? '' : 'inSitePathIndex', $pb.PbFieldType.PM, protoName: 'inSitePathIndex', subBuilder: StoredMapItem.create)
    ..pc<StoredEntityInfo>(3, _omitFieldNames ? '' : 'entityInfos', $pb.PbFieldType.PM, protoName: 'entityInfos', subBuilder: StoredEntityInfo.create)
    ..pc<$3.ToolingData>(4, _omitFieldNames ? '' : 'toolingData', $pb.PbFieldType.PM, protoName: 'toolingData', subBuilder: $3.ToolingData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredPrivateData clone() => StoredPrivateData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredPrivateData copyWith(void Function(StoredPrivateData) updates) => super.copyWith((message) => updates(message as StoredPrivateData)) as StoredPrivateData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoredPrivateData create() => StoredPrivateData._();
  StoredPrivateData createEmptyInstance() => create();
  static $pb.PbList<StoredPrivateData> createRepeated() => $pb.PbList<StoredPrivateData>();
  @$core.pragma('dart2js:noInline')
  static StoredPrivateData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredPrivateData>(create);
  static StoredPrivateData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StoredMapItem> get inPathSiteIndex => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<StoredMapItem> get inSitePathIndex => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<StoredEntityInfo> get entityInfos => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$3.ToolingData> get toolingData => $_getList(3);
}

class StoredMapItem extends $pb.GeneratedMessage {
  factory StoredMapItem({
    $core.int? key,
    $core.Iterable<$core.int>? value,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  StoredMapItem._() : super();
  factory StoredMapItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredMapItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoredMapItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'key', $pb.PbFieldType.O3)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredMapItem clone() => StoredMapItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredMapItem copyWith(void Function(StoredMapItem) updates) => super.copyWith((message) => updates(message as StoredMapItem)) as StoredMapItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoredMapItem create() => StoredMapItem._();
  StoredMapItem createEmptyInstance() => create();
  static $pb.PbList<StoredMapItem> createRepeated() => $pb.PbList<StoredMapItem>();
  @$core.pragma('dart2js:noInline')
  static StoredMapItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredMapItem>(create);
  static StoredMapItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get key => $_getIZ(0);
  @$pb.TagNumber(1)
  set key($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getList(1);
}

class StoredEntityInfo extends $pb.GeneratedMessage {
  factory StoredEntityInfo({
    $fixnum.Int64? key,
    $3.EntityInfo? entity,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (entity != null) {
      $result.entity = entity;
    }
    return $result;
  }
  StoredEntityInfo._() : super();
  factory StoredEntityInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredEntityInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StoredEntityInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'key')
    ..aOM<$3.EntityInfo>(2, _omitFieldNames ? '' : 'entity', subBuilder: $3.EntityInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredEntityInfo clone() => StoredEntityInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredEntityInfo copyWith(void Function(StoredEntityInfo) updates) => super.copyWith((message) => updates(message as StoredEntityInfo)) as StoredEntityInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoredEntityInfo create() => StoredEntityInfo._();
  StoredEntityInfo createEmptyInstance() => create();
  static $pb.PbList<StoredEntityInfo> createRepeated() => $pb.PbList<StoredEntityInfo>();
  @$core.pragma('dart2js:noInline')
  static StoredEntityInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredEntityInfo>(create);
  static StoredEntityInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get key => $_getI64(0);
  @$pb.TagNumber(1)
  set key($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $3.EntityInfo get entity => $_getN(1);
  @$pb.TagNumber(2)
  set entity($3.EntityInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntity() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntity() => clearField(2);
  @$pb.TagNumber(2)
  $3.EntityInfo ensureEntity() => $_ensure(1);
}

class ServerAddr extends $pb.GeneratedMessage {
  factory ServerAddr({
    $core.String? ipAddr,
    $core.int? port,
    $core.String? username,
    $core.String? password,
  }) {
    final $result = create();
    if (ipAddr != null) {
      $result.ipAddr = ipAddr;
    }
    if (port != null) {
      $result.port = port;
    }
    if (username != null) {
      $result.username = username;
    }
    if (password != null) {
      $result.password = password;
    }
    return $result;
  }
  ServerAddr._() : super();
  factory ServerAddr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerAddr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerAddr', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ipAddr')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'username')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerAddr clone() => ServerAddr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerAddr copyWith(void Function(ServerAddr) updates) => super.copyWith((message) => updates(message as ServerAddr)) as ServerAddr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerAddr create() => ServerAddr._();
  ServerAddr createEmptyInstance() => create();
  static $pb.PbList<ServerAddr> createRepeated() => $pb.PbList<ServerAddr>();
  @$core.pragma('dart2js:noInline')
  static ServerAddr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerAddr>(create);
  static ServerAddr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ipAddr => $_getSZ(0);
  @$pb.TagNumber(1)
  set ipAddr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIpAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearIpAddr() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get port => $_getIZ(1);
  @$pb.TagNumber(2)
  set port($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get username => $_getSZ(2);
  @$pb.TagNumber(3)
  set username($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUsername() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsername() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);
}

class MapServiceInfo extends $pb.GeneratedMessage {
  factory MapServiceInfo({
    $core.Iterable<$fixnum.Int64>? businessMapIds,
    ServerAddr? rcsServer,
    ServerAddr? neo4jServer,
    $core.String? rcsDataPath,
    $core.String? rcsRestartCmd,
    $core.Iterable<$core.String>? passableRobots,
  }) {
    final $result = create();
    if (businessMapIds != null) {
      $result.businessMapIds.addAll(businessMapIds);
    }
    if (rcsServer != null) {
      $result.rcsServer = rcsServer;
    }
    if (neo4jServer != null) {
      $result.neo4jServer = neo4jServer;
    }
    if (rcsDataPath != null) {
      $result.rcsDataPath = rcsDataPath;
    }
    if (rcsRestartCmd != null) {
      $result.rcsRestartCmd = rcsRestartCmd;
    }
    if (passableRobots != null) {
      $result.passableRobots.addAll(passableRobots);
    }
    return $result;
  }
  MapServiceInfo._() : super();
  factory MapServiceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapServiceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapServiceInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'businessMapIds', $pb.PbFieldType.K6)
    ..aOM<ServerAddr>(2, _omitFieldNames ? '' : 'rcsServer', subBuilder: ServerAddr.create)
    ..aOM<ServerAddr>(3, _omitFieldNames ? '' : 'neo4jServer', subBuilder: ServerAddr.create)
    ..aOS(4, _omitFieldNames ? '' : 'rcsDataPath')
    ..aOS(5, _omitFieldNames ? '' : 'rcsRestartCmd')
    ..pPS(6, _omitFieldNames ? '' : 'passableRobots')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapServiceInfo clone() => MapServiceInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapServiceInfo copyWith(void Function(MapServiceInfo) updates) => super.copyWith((message) => updates(message as MapServiceInfo)) as MapServiceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapServiceInfo create() => MapServiceInfo._();
  MapServiceInfo createEmptyInstance() => create();
  static $pb.PbList<MapServiceInfo> createRepeated() => $pb.PbList<MapServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static MapServiceInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapServiceInfo>(create);
  static MapServiceInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get businessMapIds => $_getList(0);

  @$pb.TagNumber(2)
  ServerAddr get rcsServer => $_getN(1);
  @$pb.TagNumber(2)
  set rcsServer(ServerAddr v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRcsServer() => $_has(1);
  @$pb.TagNumber(2)
  void clearRcsServer() => clearField(2);
  @$pb.TagNumber(2)
  ServerAddr ensureRcsServer() => $_ensure(1);

  @$pb.TagNumber(3)
  ServerAddr get neo4jServer => $_getN(2);
  @$pb.TagNumber(3)
  set neo4jServer(ServerAddr v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeo4jServer() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeo4jServer() => clearField(3);
  @$pb.TagNumber(3)
  ServerAddr ensureNeo4jServer() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get rcsDataPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set rcsDataPath($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRcsDataPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearRcsDataPath() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get rcsRestartCmd => $_getSZ(4);
  @$pb.TagNumber(5)
  set rcsRestartCmd($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRcsRestartCmd() => $_has(4);
  @$pb.TagNumber(5)
  void clearRcsRestartCmd() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get passableRobots => $_getList(5);
}

class ProjectInfo extends $pb.GeneratedMessage {
  factory ProjectInfo({
    $core.String? projectId,
    $core.String? projectName,
    $core.String? author,
    $core.String? summary,
    $core.Iterable<MapServiceInfo>? mapServices,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (projectName != null) {
      $result.projectName = projectName;
    }
    if (author != null) {
      $result.author = author;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    if (mapServices != null) {
      $result.mapServices.addAll(mapServices);
    }
    return $result;
  }
  ProjectInfo._() : super();
  factory ProjectInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'projectName')
    ..aOS(3, _omitFieldNames ? '' : 'author')
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..pc<MapServiceInfo>(5, _omitFieldNames ? '' : 'mapServices', $pb.PbFieldType.PM, subBuilder: MapServiceInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectInfo clone() => ProjectInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectInfo copyWith(void Function(ProjectInfo) updates) => super.copyWith((message) => updates(message as ProjectInfo)) as ProjectInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectInfo create() => ProjectInfo._();
  ProjectInfo createEmptyInstance() => create();
  static $pb.PbList<ProjectInfo> createRepeated() => $pb.PbList<ProjectInfo>();
  @$core.pragma('dart2js:noInline')
  static ProjectInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectInfo>(create);
  static ProjectInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectName => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectName() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<MapServiceInfo> get mapServices => $_getList(4);
}

class ProjectInfos extends $pb.GeneratedMessage {
  factory ProjectInfos({
    $core.Iterable<ProjectInfo>? projectInfos,
  }) {
    final $result = create();
    if (projectInfos != null) {
      $result.projectInfos.addAll(projectInfos);
    }
    return $result;
  }
  ProjectInfos._() : super();
  factory ProjectInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<ProjectInfo>(1, _omitFieldNames ? '' : 'projectInfos', $pb.PbFieldType.PM, subBuilder: ProjectInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectInfos clone() => ProjectInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectInfos copyWith(void Function(ProjectInfos) updates) => super.copyWith((message) => updates(message as ProjectInfos)) as ProjectInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectInfos create() => ProjectInfos._();
  ProjectInfos createEmptyInstance() => create();
  static $pb.PbList<ProjectInfos> createRepeated() => $pb.PbList<ProjectInfos>();
  @$core.pragma('dart2js:noInline')
  static ProjectInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectInfos>(create);
  static ProjectInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ProjectInfo> get projectInfos => $_getList(0);
}

class MapVersionInfo extends $pb.GeneratedMessage {
  factory MapVersionInfo({
    $core.String? versionId,
    $core.String? author,
    $fixnum.Int64? timestamp,
    $core.String? summary,
  }) {
    final $result = create();
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (author != null) {
      $result.author = author;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    return $result;
  }
  MapVersionInfo._() : super();
  factory MapVersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapVersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapVersionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'versionId')
    ..aOS(2, _omitFieldNames ? '' : 'author')
    ..aInt64(3, _omitFieldNames ? '' : 'timestamp')
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapVersionInfo clone() => MapVersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapVersionInfo copyWith(void Function(MapVersionInfo) updates) => super.copyWith((message) => updates(message as MapVersionInfo)) as MapVersionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapVersionInfo create() => MapVersionInfo._();
  MapVersionInfo createEmptyInstance() => create();
  static $pb.PbList<MapVersionInfo> createRepeated() => $pb.PbList<MapVersionInfo>();
  @$core.pragma('dart2js:noInline')
  static MapVersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapVersionInfo>(create);
  static MapVersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get versionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set versionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get author => $_getSZ(1);
  @$pb.TagNumber(2)
  set author($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAuthor() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthor() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timestamp => $_getI64(2);
  @$pb.TagNumber(3)
  set timestamp($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => clearField(4);
}

class MapVersionInfos extends $pb.GeneratedMessage {
  factory MapVersionInfos({
    $core.Iterable<MapVersionInfo>? mapVerInfos,
  }) {
    final $result = create();
    if (mapVerInfos != null) {
      $result.mapVerInfos.addAll(mapVerInfos);
    }
    return $result;
  }
  MapVersionInfos._() : super();
  factory MapVersionInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapVersionInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapVersionInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<MapVersionInfo>(1, _omitFieldNames ? '' : 'mapVerInfos', $pb.PbFieldType.PM, subBuilder: MapVersionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapVersionInfos clone() => MapVersionInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapVersionInfos copyWith(void Function(MapVersionInfos) updates) => super.copyWith((message) => updates(message as MapVersionInfos)) as MapVersionInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapVersionInfos create() => MapVersionInfos._();
  MapVersionInfos createEmptyInstance() => create();
  static $pb.PbList<MapVersionInfos> createRepeated() => $pb.PbList<MapVersionInfos>();
  @$core.pragma('dart2js:noInline')
  static MapVersionInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapVersionInfos>(create);
  static MapVersionInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MapVersionInfo> get mapVerInfos => $_getList(0);
}

class PartnerMapInfo extends $pb.GeneratedMessage {
  factory PartnerMapInfo({
    $fixnum.Int64? businessMapId,
    $core.String? mapCode,
    $core.String? mapVersion,
  }) {
    final $result = create();
    if (businessMapId != null) {
      $result.businessMapId = businessMapId;
    }
    if (mapCode != null) {
      $result.mapCode = mapCode;
    }
    if (mapVersion != null) {
      $result.mapVersion = mapVersion;
    }
    return $result;
  }
  PartnerMapInfo._() : super();
  factory PartnerMapInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartnerMapInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartnerMapInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'businessMapId')
    ..aOS(2, _omitFieldNames ? '' : 'mapCode')
    ..aOS(3, _omitFieldNames ? '' : 'mapVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartnerMapInfo clone() => PartnerMapInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartnerMapInfo copyWith(void Function(PartnerMapInfo) updates) => super.copyWith((message) => updates(message as PartnerMapInfo)) as PartnerMapInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartnerMapInfo create() => PartnerMapInfo._();
  PartnerMapInfo createEmptyInstance() => create();
  static $pb.PbList<PartnerMapInfo> createRepeated() => $pb.PbList<PartnerMapInfo>();
  @$core.pragma('dart2js:noInline')
  static PartnerMapInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartnerMapInfo>(create);
  static PartnerMapInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get businessMapId => $_getI64(0);
  @$pb.TagNumber(1)
  set businessMapId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBusinessMapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBusinessMapId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get mapCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set mapCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMapCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mapVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set mapVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMapVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapVersion() => clearField(3);
}

class PartnerMapInfos extends $pb.GeneratedMessage {
  factory PartnerMapInfos({
    $core.Iterable<PartnerMapInfo>? infos,
  }) {
    final $result = create();
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    return $result;
  }
  PartnerMapInfos._() : super();
  factory PartnerMapInfos.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartnerMapInfos.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartnerMapInfos', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<PartnerMapInfo>(1, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: PartnerMapInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartnerMapInfos clone() => PartnerMapInfos()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartnerMapInfos copyWith(void Function(PartnerMapInfos) updates) => super.copyWith((message) => updates(message as PartnerMapInfos)) as PartnerMapInfos;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartnerMapInfos create() => PartnerMapInfos._();
  PartnerMapInfos createEmptyInstance() => create();
  static $pb.PbList<PartnerMapInfos> createRepeated() => $pb.PbList<PartnerMapInfos>();
  @$core.pragma('dart2js:noInline')
  static PartnerMapInfos getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartnerMapInfos>(create);
  static PartnerMapInfos? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PartnerMapInfo> get infos => $_getList(0);
}

class ProjectIdMessage extends $pb.GeneratedMessage {
  factory ProjectIdMessage({
    $core.String? projectId,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    return $result;
  }
  ProjectIdMessage._() : super();
  factory ProjectIdMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectIdMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectIdMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectIdMessage clone() => ProjectIdMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectIdMessage copyWith(void Function(ProjectIdMessage) updates) => super.copyWith((message) => updates(message as ProjectIdMessage)) as ProjectIdMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectIdMessage create() => ProjectIdMessage._();
  ProjectIdMessage createEmptyInstance() => create();
  static $pb.PbList<ProjectIdMessage> createRepeated() => $pb.PbList<ProjectIdMessage>();
  @$core.pragma('dart2js:noInline')
  static ProjectIdMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectIdMessage>(create);
  static ProjectIdMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);
}

class VersionIdMessage extends $pb.GeneratedMessage {
  factory VersionIdMessage({
    $core.String? versionId,
  }) {
    final $result = create();
    if (versionId != null) {
      $result.versionId = versionId;
    }
    return $result;
  }
  VersionIdMessage._() : super();
  factory VersionIdMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionIdMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VersionIdMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'versionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionIdMessage clone() => VersionIdMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionIdMessage copyWith(void Function(VersionIdMessage) updates) => super.copyWith((message) => updates(message as VersionIdMessage)) as VersionIdMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionIdMessage create() => VersionIdMessage._();
  VersionIdMessage createEmptyInstance() => create();
  static $pb.PbList<VersionIdMessage> createRepeated() => $pb.PbList<VersionIdMessage>();
  @$core.pragma('dart2js:noInline')
  static VersionIdMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionIdMessage>(create);
  static VersionIdMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get versionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set versionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersionId() => clearField(1);
}

class VersionMessage extends $pb.GeneratedMessage {
  factory VersionMessage({
    $core.String? projectId,
    $core.String? versionId,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    return $result;
  }
  VersionMessage._() : super();
  factory VersionMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VersionMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionMessage clone() => VersionMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionMessage copyWith(void Function(VersionMessage) updates) => super.copyWith((message) => updates(message as VersionMessage)) as VersionMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionMessage create() => VersionMessage._();
  VersionMessage createEmptyInstance() => create();
  static $pb.PbList<VersionMessage> createRepeated() => $pb.PbList<VersionMessage>();
  @$core.pragma('dart2js:noInline')
  static VersionMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionMessage>(create);
  static VersionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);
}

class MapVersionMessage extends $pb.GeneratedMessage {
  factory MapVersionMessage({
    $core.String? projectId,
    $core.String? versionId,
    $fixnum.Int64? businessMapId,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (businessMapId != null) {
      $result.businessMapId = businessMapId;
    }
    return $result;
  }
  MapVersionMessage._() : super();
  factory MapVersionMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapVersionMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapVersionMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..aInt64(3, _omitFieldNames ? '' : 'businessMapId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapVersionMessage clone() => MapVersionMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapVersionMessage copyWith(void Function(MapVersionMessage) updates) => super.copyWith((message) => updates(message as MapVersionMessage)) as MapVersionMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapVersionMessage create() => MapVersionMessage._();
  MapVersionMessage createEmptyInstance() => create();
  static $pb.PbList<MapVersionMessage> createRepeated() => $pb.PbList<MapVersionMessage>();
  @$core.pragma('dart2js:noInline')
  static MapVersionMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapVersionMessage>(create);
  static MapVersionMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get businessMapId => $_getI64(2);
  @$pb.TagNumber(3)
  set businessMapId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBusinessMapId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBusinessMapId() => clearField(3);
}

class Neo4jMarkValue extends $pb.GeneratedMessage {
  factory Neo4jMarkValue({
    $fixnum.Int64? id,
    $core.String? markValue,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (markValue != null) {
      $result.markValue = markValue;
    }
    return $result;
  }
  Neo4jMarkValue._() : super();
  factory Neo4jMarkValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jMarkValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jMarkValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'markValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jMarkValue clone() => Neo4jMarkValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jMarkValue copyWith(void Function(Neo4jMarkValue) updates) => super.copyWith((message) => updates(message as Neo4jMarkValue)) as Neo4jMarkValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValue create() => Neo4jMarkValue._();
  Neo4jMarkValue createEmptyInstance() => create();
  static $pb.PbList<Neo4jMarkValue> createRepeated() => $pb.PbList<Neo4jMarkValue>();
  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jMarkValue>(create);
  static Neo4jMarkValue? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get markValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set markValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarkValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkValue() => clearField(2);
}

class Neo4jMarkValues extends $pb.GeneratedMessage {
  factory Neo4jMarkValues({
    $core.Iterable<$fixnum.Int64>? bsmapIds,
    $core.Iterable<Neo4jMarkValue>? values,
  }) {
    final $result = create();
    if (bsmapIds != null) {
      $result.bsmapIds.addAll(bsmapIds);
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Neo4jMarkValues._() : super();
  factory Neo4jMarkValues.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jMarkValues.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jMarkValues', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bsmapIds', $pb.PbFieldType.K6)
    ..pc<Neo4jMarkValue>(2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: Neo4jMarkValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jMarkValues clone() => Neo4jMarkValues()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jMarkValues copyWith(void Function(Neo4jMarkValues) updates) => super.copyWith((message) => updates(message as Neo4jMarkValues)) as Neo4jMarkValues;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValues create() => Neo4jMarkValues._();
  Neo4jMarkValues createEmptyInstance() => create();
  static $pb.PbList<Neo4jMarkValues> createRepeated() => $pb.PbList<Neo4jMarkValues>();
  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValues getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jMarkValues>(create);
  static Neo4jMarkValues? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get bsmapIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Neo4jMarkValue> get values => $_getList(1);
}

class Neo4jMarkValueResponse extends $pb.GeneratedMessage {
  factory Neo4jMarkValueResponse({
    $core.Iterable<Neo4jMarkValues>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  Neo4jMarkValueResponse._() : super();
  factory Neo4jMarkValueResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jMarkValueResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jMarkValueResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<Neo4jMarkValues>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: Neo4jMarkValues.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jMarkValueResponse clone() => Neo4jMarkValueResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jMarkValueResponse copyWith(void Function(Neo4jMarkValueResponse) updates) => super.copyWith((message) => updates(message as Neo4jMarkValueResponse)) as Neo4jMarkValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValueResponse create() => Neo4jMarkValueResponse._();
  Neo4jMarkValueResponse createEmptyInstance() => create();
  static $pb.PbList<Neo4jMarkValueResponse> createRepeated() => $pb.PbList<Neo4jMarkValueResponse>();
  @$core.pragma('dart2js:noInline')
  static Neo4jMarkValueResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jMarkValueResponse>(create);
  static Neo4jMarkValueResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Neo4jMarkValues> get values => $_getList(0);
}

class UploadNeo4jMarkValuesRequest extends $pb.GeneratedMessage {
  factory UploadNeo4jMarkValuesRequest({
    VersionMapSpecifyData? data,
    $core.Iterable<Neo4jMarkValue>? values,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  UploadNeo4jMarkValuesRequest._() : super();
  factory UploadNeo4jMarkValuesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadNeo4jMarkValuesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadNeo4jMarkValuesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<VersionMapSpecifyData>(1, _omitFieldNames ? '' : 'data', subBuilder: VersionMapSpecifyData.create)
    ..pc<Neo4jMarkValue>(2, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM, subBuilder: Neo4jMarkValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadNeo4jMarkValuesRequest clone() => UploadNeo4jMarkValuesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadNeo4jMarkValuesRequest copyWith(void Function(UploadNeo4jMarkValuesRequest) updates) => super.copyWith((message) => updates(message as UploadNeo4jMarkValuesRequest)) as UploadNeo4jMarkValuesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadNeo4jMarkValuesRequest create() => UploadNeo4jMarkValuesRequest._();
  UploadNeo4jMarkValuesRequest createEmptyInstance() => create();
  static $pb.PbList<UploadNeo4jMarkValuesRequest> createRepeated() => $pb.PbList<UploadNeo4jMarkValuesRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadNeo4jMarkValuesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadNeo4jMarkValuesRequest>(create);
  static UploadNeo4jMarkValuesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  VersionMapSpecifyData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(VersionMapSpecifyData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  VersionMapSpecifyData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<Neo4jMarkValue> get values => $_getList(1);
}

class ProjectMapData extends $pb.GeneratedMessage {
  factory ProjectMapData({
    ProjectInfo? info,
    $3.MappingData? mapData,
    $core.Iterable<PartnerMapData>? parMapDatas,
  }) {
    final $result = create();
    if (info != null) {
      $result.info = info;
    }
    if (mapData != null) {
      $result.mapData = mapData;
    }
    if (parMapDatas != null) {
      $result.parMapDatas.addAll(parMapDatas);
    }
    return $result;
  }
  ProjectMapData._() : super();
  factory ProjectMapData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProjectMapData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ProjectMapData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<ProjectInfo>(1, _omitFieldNames ? '' : 'info', subBuilder: ProjectInfo.create)
    ..aOM<$3.MappingData>(2, _omitFieldNames ? '' : 'mapData', subBuilder: $3.MappingData.create)
    ..pc<PartnerMapData>(3, _omitFieldNames ? '' : 'parMapDatas', $pb.PbFieldType.PM, subBuilder: PartnerMapData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ProjectMapData clone() => ProjectMapData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ProjectMapData copyWith(void Function(ProjectMapData) updates) => super.copyWith((message) => updates(message as ProjectMapData)) as ProjectMapData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProjectMapData create() => ProjectMapData._();
  ProjectMapData createEmptyInstance() => create();
  static $pb.PbList<ProjectMapData> createRepeated() => $pb.PbList<ProjectMapData>();
  @$core.pragma('dart2js:noInline')
  static ProjectMapData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProjectMapData>(create);
  static ProjectMapData? _defaultInstance;

  @$pb.TagNumber(1)
  ProjectInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ProjectInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  ProjectInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.MappingData get mapData => $_getN(1);
  @$pb.TagNumber(2)
  set mapData($3.MappingData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMapData() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapData() => clearField(2);
  @$pb.TagNumber(2)
  $3.MappingData ensureMapData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<PartnerMapData> get parMapDatas => $_getList(2);
}

class PartnerMapData extends $pb.GeneratedMessage {
  factory PartnerMapData({
    $fixnum.Int64? bsmapId,
    $core.String? parMapData,
  }) {
    final $result = create();
    if (bsmapId != null) {
      $result.bsmapId = bsmapId;
    }
    if (parMapData != null) {
      $result.parMapData = parMapData;
    }
    return $result;
  }
  PartnerMapData._() : super();
  factory PartnerMapData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartnerMapData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartnerMapData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'bsmapId')
    ..aOS(2, _omitFieldNames ? '' : 'parMapData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartnerMapData clone() => PartnerMapData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartnerMapData copyWith(void Function(PartnerMapData) updates) => super.copyWith((message) => updates(message as PartnerMapData)) as PartnerMapData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartnerMapData create() => PartnerMapData._();
  PartnerMapData createEmptyInstance() => create();
  static $pb.PbList<PartnerMapData> createRepeated() => $pb.PbList<PartnerMapData>();
  @$core.pragma('dart2js:noInline')
  static PartnerMapData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartnerMapData>(create);
  static PartnerMapData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bsmapId => $_getI64(0);
  @$pb.TagNumber(1)
  set bsmapId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBsmapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBsmapId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get parMapData => $_getSZ(1);
  @$pb.TagNumber(2)
  set parMapData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParMapData() => $_has(1);
  @$pb.TagNumber(2)
  void clearParMapData() => clearField(2);
}

class CommitMapDataRequest extends $pb.GeneratedMessage {
  factory CommitMapDataRequest({
    $core.String? projectId,
    $core.String? versionId,
    $core.String? author,
    $core.String? summary,
    $3.MappingData? mapData,
    ProjectInfo? info,
    $core.Iterable<PartnerMapData>? parMapDatas,
    $core.Iterable<$fixnum.Int64>? removeParBsmapIds,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (author != null) {
      $result.author = author;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    if (mapData != null) {
      $result.mapData = mapData;
    }
    if (info != null) {
      $result.info = info;
    }
    if (parMapDatas != null) {
      $result.parMapDatas.addAll(parMapDatas);
    }
    if (removeParBsmapIds != null) {
      $result.removeParBsmapIds.addAll(removeParBsmapIds);
    }
    return $result;
  }
  CommitMapDataRequest._() : super();
  factory CommitMapDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitMapDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommitMapDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..aOS(3, _omitFieldNames ? '' : 'author')
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..aOM<$3.MappingData>(5, _omitFieldNames ? '' : 'mapData', subBuilder: $3.MappingData.create)
    ..aOM<ProjectInfo>(6, _omitFieldNames ? '' : 'info', subBuilder: ProjectInfo.create)
    ..pc<PartnerMapData>(7, _omitFieldNames ? '' : 'parMapDatas', $pb.PbFieldType.PM, subBuilder: PartnerMapData.create)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'removeParBsmapIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommitMapDataRequest clone() => CommitMapDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommitMapDataRequest copyWith(void Function(CommitMapDataRequest) updates) => super.copyWith((message) => updates(message as CommitMapDataRequest)) as CommitMapDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitMapDataRequest create() => CommitMapDataRequest._();
  CommitMapDataRequest createEmptyInstance() => create();
  static $pb.PbList<CommitMapDataRequest> createRepeated() => $pb.PbList<CommitMapDataRequest>();
  @$core.pragma('dart2js:noInline')
  static CommitMapDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommitMapDataRequest>(create);
  static CommitMapDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => clearField(4);

  @$pb.TagNumber(5)
  $3.MappingData get mapData => $_getN(4);
  @$pb.TagNumber(5)
  set mapData($3.MappingData v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMapData() => $_has(4);
  @$pb.TagNumber(5)
  void clearMapData() => clearField(5);
  @$pb.TagNumber(5)
  $3.MappingData ensureMapData() => $_ensure(4);

  @$pb.TagNumber(6)
  ProjectInfo get info => $_getN(5);
  @$pb.TagNumber(6)
  set info(ProjectInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearInfo() => clearField(6);
  @$pb.TagNumber(6)
  ProjectInfo ensureInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<PartnerMapData> get parMapDatas => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get removeParBsmapIds => $_getList(7);
}

class RestoreNeo4jBackupFileRequest extends $pb.GeneratedMessage {
  factory RestoreNeo4jBackupFileRequest({
    VersionMapSpecifyData? data,
    $core.String? backupFile,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (backupFile != null) {
      $result.backupFile = backupFile;
    }
    return $result;
  }
  RestoreNeo4jBackupFileRequest._() : super();
  factory RestoreNeo4jBackupFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestoreNeo4jBackupFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RestoreNeo4jBackupFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<VersionMapSpecifyData>(1, _omitFieldNames ? '' : 'data', subBuilder: VersionMapSpecifyData.create)
    ..aOS(2, _omitFieldNames ? '' : 'backupFile')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestoreNeo4jBackupFileRequest clone() => RestoreNeo4jBackupFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestoreNeo4jBackupFileRequest copyWith(void Function(RestoreNeo4jBackupFileRequest) updates) => super.copyWith((message) => updates(message as RestoreNeo4jBackupFileRequest)) as RestoreNeo4jBackupFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RestoreNeo4jBackupFileRequest create() => RestoreNeo4jBackupFileRequest._();
  RestoreNeo4jBackupFileRequest createEmptyInstance() => create();
  static $pb.PbList<RestoreNeo4jBackupFileRequest> createRepeated() => $pb.PbList<RestoreNeo4jBackupFileRequest>();
  @$core.pragma('dart2js:noInline')
  static RestoreNeo4jBackupFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestoreNeo4jBackupFileRequest>(create);
  static RestoreNeo4jBackupFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  VersionMapSpecifyData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(VersionMapSpecifyData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  VersionMapSpecifyData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get backupFile => $_getSZ(1);
  @$pb.TagNumber(2)
  set backupFile($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackupFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackupFile() => clearField(2);
}

class Neo4jOperationRequest extends $pb.GeneratedMessage {
  factory Neo4jOperationRequest({
    VersionMapSpecifyData? data,
    Neo4jOperation? oper,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (oper != null) {
      $result.oper = oper;
    }
    return $result;
  }
  Neo4jOperationRequest._() : super();
  factory Neo4jOperationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jOperationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jOperationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<VersionMapSpecifyData>(1, _omitFieldNames ? '' : 'data', subBuilder: VersionMapSpecifyData.create)
    ..e<Neo4jOperation>(2, _omitFieldNames ? '' : 'oper', $pb.PbFieldType.OE, defaultOrMaker: Neo4jOperation.ClearDuplicateMarkCode, valueOf: Neo4jOperation.valueOf, enumValues: Neo4jOperation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jOperationRequest clone() => Neo4jOperationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jOperationRequest copyWith(void Function(Neo4jOperationRequest) updates) => super.copyWith((message) => updates(message as Neo4jOperationRequest)) as Neo4jOperationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jOperationRequest create() => Neo4jOperationRequest._();
  Neo4jOperationRequest createEmptyInstance() => create();
  static $pb.PbList<Neo4jOperationRequest> createRepeated() => $pb.PbList<Neo4jOperationRequest>();
  @$core.pragma('dart2js:noInline')
  static Neo4jOperationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jOperationRequest>(create);
  static Neo4jOperationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  VersionMapSpecifyData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(VersionMapSpecifyData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  VersionMapSpecifyData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  Neo4jOperation get oper => $_getN(1);
  @$pb.TagNumber(2)
  set oper(Neo4jOperation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOper() => $_has(1);
  @$pb.TagNumber(2)
  void clearOper() => clearField(2);
}

class MapEventRequest extends $pb.GeneratedMessage {
  factory MapEventRequest({
    $core.String? projectId,
    $fixnum.Int64? businessMapId,
    $fixnum.Int64? lastUpdateTs,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (businessMapId != null) {
      $result.businessMapId = businessMapId;
    }
    if (lastUpdateTs != null) {
      $result.lastUpdateTs = lastUpdateTs;
    }
    return $result;
  }
  MapEventRequest._() : super();
  factory MapEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapEventRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aInt64(2, _omitFieldNames ? '' : 'businessMapId')
    ..aInt64(3, _omitFieldNames ? '' : 'lastUpdateTs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapEventRequest clone() => MapEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapEventRequest copyWith(void Function(MapEventRequest) updates) => super.copyWith((message) => updates(message as MapEventRequest)) as MapEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapEventRequest create() => MapEventRequest._();
  MapEventRequest createEmptyInstance() => create();
  static $pb.PbList<MapEventRequest> createRepeated() => $pb.PbList<MapEventRequest>();
  @$core.pragma('dart2js:noInline')
  static MapEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapEventRequest>(create);
  static MapEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get businessMapId => $_getI64(1);
  @$pb.TagNumber(2)
  set businessMapId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBusinessMapId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBusinessMapId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastUpdateTs => $_getI64(2);
  @$pb.TagNumber(3)
  set lastUpdateTs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastUpdateTs() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastUpdateTs() => clearField(3);
}

class NodeMarkerCode extends $pb.GeneratedMessage {
  factory NodeMarkerCode({
    $fixnum.Int64? nodeId,
    $core.String? markerCode,
  }) {
    final $result = create();
    if (nodeId != null) {
      $result.nodeId = nodeId;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    return $result;
  }
  NodeMarkerCode._() : super();
  factory NodeMarkerCode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMarkerCode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeMarkerCode', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aOS(2, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMarkerCode clone() => NodeMarkerCode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMarkerCode copyWith(void Function(NodeMarkerCode) updates) => super.copyWith((message) => updates(message as NodeMarkerCode)) as NodeMarkerCode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeMarkerCode create() => NodeMarkerCode._();
  NodeMarkerCode createEmptyInstance() => create();
  static $pb.PbList<NodeMarkerCode> createRepeated() => $pb.PbList<NodeMarkerCode>();
  @$core.pragma('dart2js:noInline')
  static NodeMarkerCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMarkerCode>(create);
  static NodeMarkerCode? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get markerCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set markerCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarkerCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerCode() => clearField(2);
}

class NodeMarkerCodes extends $pb.GeneratedMessage {
  factory NodeMarkerCodes({
    $core.Iterable<NodeMarkerCode>? markers,
  }) {
    final $result = create();
    if (markers != null) {
      $result.markers.addAll(markers);
    }
    return $result;
  }
  NodeMarkerCodes._() : super();
  factory NodeMarkerCodes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMarkerCodes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeMarkerCodes', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<NodeMarkerCode>(1, _omitFieldNames ? '' : 'markers', $pb.PbFieldType.PM, subBuilder: NodeMarkerCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMarkerCodes clone() => NodeMarkerCodes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMarkerCodes copyWith(void Function(NodeMarkerCodes) updates) => super.copyWith((message) => updates(message as NodeMarkerCodes)) as NodeMarkerCodes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeMarkerCodes create() => NodeMarkerCodes._();
  NodeMarkerCodes createEmptyInstance() => create();
  static $pb.PbList<NodeMarkerCodes> createRepeated() => $pb.PbList<NodeMarkerCodes>();
  @$core.pragma('dart2js:noInline')
  static NodeMarkerCodes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMarkerCodes>(create);
  static NodeMarkerCodes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NodeMarkerCode> get markers => $_getList(0);
}

enum MapEvent_MapEventType {
  clearCache, 
  active, 
  markers, 
  notSet
}

class MapEvent extends $pb.GeneratedMessage {
  factory MapEvent({
    $0.Empty? clearCache,
    VersionIdMessage? active,
    NodeMarkerCodes? markers,
  }) {
    final $result = create();
    if (clearCache != null) {
      $result.clearCache = clearCache;
    }
    if (active != null) {
      $result.active = active;
    }
    if (markers != null) {
      $result.markers = markers;
    }
    return $result;
  }
  MapEvent._() : super();
  factory MapEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MapEvent_MapEventType> _MapEvent_MapEventTypeByTag = {
    1 : MapEvent_MapEventType.clearCache,
    2 : MapEvent_MapEventType.active,
    3 : MapEvent_MapEventType.markers,
    0 : MapEvent_MapEventType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<$0.Empty>(1, _omitFieldNames ? '' : 'clearCache', subBuilder: $0.Empty.create)
    ..aOM<VersionIdMessage>(2, _omitFieldNames ? '' : 'active', subBuilder: VersionIdMessage.create)
    ..aOM<NodeMarkerCodes>(3, _omitFieldNames ? '' : 'markers', subBuilder: NodeMarkerCodes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapEvent clone() => MapEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapEvent copyWith(void Function(MapEvent) updates) => super.copyWith((message) => updates(message as MapEvent)) as MapEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapEvent create() => MapEvent._();
  MapEvent createEmptyInstance() => create();
  static $pb.PbList<MapEvent> createRepeated() => $pb.PbList<MapEvent>();
  @$core.pragma('dart2js:noInline')
  static MapEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapEvent>(create);
  static MapEvent? _defaultInstance;

  MapEvent_MapEventType whichMapEventType() => _MapEvent_MapEventTypeByTag[$_whichOneof(0)]!;
  void clearMapEventType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Empty get clearCache => $_getN(0);
  @$pb.TagNumber(1)
  set clearCache($0.Empty v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClearCache() => $_has(0);
  @$pb.TagNumber(1)
  void clearClearCache() => clearField(1);
  @$pb.TagNumber(1)
  $0.Empty ensureClearCache() => $_ensure(0);

  @$pb.TagNumber(2)
  VersionIdMessage get active => $_getN(1);
  @$pb.TagNumber(2)
  set active(VersionIdMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => clearField(2);
  @$pb.TagNumber(2)
  VersionIdMessage ensureActive() => $_ensure(1);

  @$pb.TagNumber(3)
  NodeMarkerCodes get markers => $_getN(2);
  @$pb.TagNumber(3)
  set markers(NodeMarkerCodes v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMarkers() => $_has(2);
  @$pb.TagNumber(3)
  void clearMarkers() => clearField(3);
  @$pb.TagNumber(3)
  NodeMarkerCodes ensureMarkers() => $_ensure(2);
}

class MapEvents extends $pb.GeneratedMessage {
  factory MapEvents({
    $fixnum.Int64? updateTs,
    $core.Iterable<MapEvent>? events,
  }) {
    final $result = create();
    if (updateTs != null) {
      $result.updateTs = updateTs;
    }
    if (events != null) {
      $result.events.addAll(events);
    }
    return $result;
  }
  MapEvents._() : super();
  factory MapEvents.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapEvents.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapEvents', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'updateTs')
    ..pc<MapEvent>(2, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM, subBuilder: MapEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapEvents clone() => MapEvents()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapEvents copyWith(void Function(MapEvents) updates) => super.copyWith((message) => updates(message as MapEvents)) as MapEvents;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapEvents create() => MapEvents._();
  MapEvents createEmptyInstance() => create();
  static $pb.PbList<MapEvents> createRepeated() => $pb.PbList<MapEvents>();
  @$core.pragma('dart2js:noInline')
  static MapEvents getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapEvents>(create);
  static MapEvents? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get updateTs => $_getI64(0);
  @$pb.TagNumber(1)
  set updateTs($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateTs() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<MapEvent> get events => $_getList(1);
}

class UpdateMarkerCodesRequest extends $pb.GeneratedMessage {
  factory UpdateMarkerCodesRequest({
    $core.String? projectId,
    $core.String? versionId,
    $fixnum.Int64? businessMapId,
    $core.Iterable<NodeMarkerCode>? markers,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (businessMapId != null) {
      $result.businessMapId = businessMapId;
    }
    if (markers != null) {
      $result.markers.addAll(markers);
    }
    return $result;
  }
  UpdateMarkerCodesRequest._() : super();
  factory UpdateMarkerCodesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMarkerCodesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateMarkerCodesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..aInt64(3, _omitFieldNames ? '' : 'businessMapId')
    ..pc<NodeMarkerCode>(4, _omitFieldNames ? '' : 'markers', $pb.PbFieldType.PM, subBuilder: NodeMarkerCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMarkerCodesRequest clone() => UpdateMarkerCodesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMarkerCodesRequest copyWith(void Function(UpdateMarkerCodesRequest) updates) => super.copyWith((message) => updates(message as UpdateMarkerCodesRequest)) as UpdateMarkerCodesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateMarkerCodesRequest create() => UpdateMarkerCodesRequest._();
  UpdateMarkerCodesRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateMarkerCodesRequest> createRepeated() => $pb.PbList<UpdateMarkerCodesRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateMarkerCodesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMarkerCodesRequest>(create);
  static UpdateMarkerCodesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get businessMapId => $_getI64(2);
  @$pb.TagNumber(3)
  set businessMapId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBusinessMapId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBusinessMapId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<NodeMarkerCode> get markers => $_getList(3);
}

class VersionMapSpecifyData extends $pb.GeneratedMessage {
  factory VersionMapSpecifyData({
    $core.String? projectId,
    $core.String? versionId,
    $core.Iterable<$fixnum.Int64>? businessMapIds,
    $core.Iterable<$core.String>? specifyRobots,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (businessMapIds != null) {
      $result.businessMapIds.addAll(businessMapIds);
    }
    if (specifyRobots != null) {
      $result.specifyRobots.addAll(specifyRobots);
    }
    return $result;
  }
  VersionMapSpecifyData._() : super();
  factory VersionMapSpecifyData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionMapSpecifyData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VersionMapSpecifyData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'businessMapIds', $pb.PbFieldType.K6)
    ..pPS(4, _omitFieldNames ? '' : 'specifyRobots')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionMapSpecifyData clone() => VersionMapSpecifyData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionMapSpecifyData copyWith(void Function(VersionMapSpecifyData) updates) => super.copyWith((message) => updates(message as VersionMapSpecifyData)) as VersionMapSpecifyData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionMapSpecifyData create() => VersionMapSpecifyData._();
  VersionMapSpecifyData createEmptyInstance() => create();
  static $pb.PbList<VersionMapSpecifyData> createRepeated() => $pb.PbList<VersionMapSpecifyData>();
  @$core.pragma('dart2js:noInline')
  static VersionMapSpecifyData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionMapSpecifyData>(create);
  static VersionMapSpecifyData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get businessMapIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get specifyRobots => $_getList(3);
}

class Neo4jVersionInfo extends $pb.GeneratedMessage {
  factory Neo4jVersionInfo({
    $core.Iterable<$fixnum.Int64>? bsmapIds,
    $core.String? neo4jProjectId,
    $core.String? neo4jVersionId,
  }) {
    final $result = create();
    if (bsmapIds != null) {
      $result.bsmapIds.addAll(bsmapIds);
    }
    if (neo4jProjectId != null) {
      $result.neo4jProjectId = neo4jProjectId;
    }
    if (neo4jVersionId != null) {
      $result.neo4jVersionId = neo4jVersionId;
    }
    return $result;
  }
  Neo4jVersionInfo._() : super();
  factory Neo4jVersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jVersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jVersionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bsmapIds', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'neo4jProjectId')
    ..aOS(3, _omitFieldNames ? '' : 'neo4jVersionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jVersionInfo clone() => Neo4jVersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jVersionInfo copyWith(void Function(Neo4jVersionInfo) updates) => super.copyWith((message) => updates(message as Neo4jVersionInfo)) as Neo4jVersionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jVersionInfo create() => Neo4jVersionInfo._();
  Neo4jVersionInfo createEmptyInstance() => create();
  static $pb.PbList<Neo4jVersionInfo> createRepeated() => $pb.PbList<Neo4jVersionInfo>();
  @$core.pragma('dart2js:noInline')
  static Neo4jVersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jVersionInfo>(create);
  static Neo4jVersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get bsmapIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get neo4jProjectId => $_getSZ(1);
  @$pb.TagNumber(2)
  set neo4jProjectId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNeo4jProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNeo4jProjectId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get neo4jVersionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set neo4jVersionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeo4jVersionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeo4jVersionId() => clearField(3);
}

class Neo4jVersionInfoResponse extends $pb.GeneratedMessage {
  factory Neo4jVersionInfoResponse({
    $core.Iterable<Neo4jVersionInfo>? infos,
  }) {
    final $result = create();
    if (infos != null) {
      $result.infos.addAll(infos);
    }
    return $result;
  }
  Neo4jVersionInfoResponse._() : super();
  factory Neo4jVersionInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Neo4jVersionInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Neo4jVersionInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<Neo4jVersionInfo>(1, _omitFieldNames ? '' : 'infos', $pb.PbFieldType.PM, subBuilder: Neo4jVersionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Neo4jVersionInfoResponse clone() => Neo4jVersionInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Neo4jVersionInfoResponse copyWith(void Function(Neo4jVersionInfoResponse) updates) => super.copyWith((message) => updates(message as Neo4jVersionInfoResponse)) as Neo4jVersionInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Neo4jVersionInfoResponse create() => Neo4jVersionInfoResponse._();
  Neo4jVersionInfoResponse createEmptyInstance() => create();
  static $pb.PbList<Neo4jVersionInfoResponse> createRepeated() => $pb.PbList<Neo4jVersionInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static Neo4jVersionInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Neo4jVersionInfoResponse>(create);
  static Neo4jVersionInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Neo4jVersionInfo> get infos => $_getList(0);
}

class RcsVersionInfo extends $pb.GeneratedMessage {
  factory RcsVersionInfo({
    $core.Iterable<$fixnum.Int64>? businessMapIds,
    $core.String? rcsVersionId,
    $core.bool? needUpdate,
  }) {
    final $result = create();
    if (businessMapIds != null) {
      $result.businessMapIds.addAll(businessMapIds);
    }
    if (rcsVersionId != null) {
      $result.rcsVersionId = rcsVersionId;
    }
    if (needUpdate != null) {
      $result.needUpdate = needUpdate;
    }
    return $result;
  }
  RcsVersionInfo._() : super();
  factory RcsVersionInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RcsVersionInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RcsVersionInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'businessMapIds', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'rcsVersionId')
    ..aOB(3, _omitFieldNames ? '' : 'needUpdate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RcsVersionInfo clone() => RcsVersionInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RcsVersionInfo copyWith(void Function(RcsVersionInfo) updates) => super.copyWith((message) => updates(message as RcsVersionInfo)) as RcsVersionInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RcsVersionInfo create() => RcsVersionInfo._();
  RcsVersionInfo createEmptyInstance() => create();
  static $pb.PbList<RcsVersionInfo> createRepeated() => $pb.PbList<RcsVersionInfo>();
  @$core.pragma('dart2js:noInline')
  static RcsVersionInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RcsVersionInfo>(create);
  static RcsVersionInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get businessMapIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get rcsVersionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set rcsVersionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRcsVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRcsVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get needUpdate => $_getBF(2);
  @$pb.TagNumber(3)
  set needUpdate($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNeedUpdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearNeedUpdate() => clearField(3);
}

class RcsVersionInfoResponse extends $pb.GeneratedMessage {
  factory RcsVersionInfoResponse({
    $core.Iterable<RcsVersionInfo>? rcsVers,
  }) {
    final $result = create();
    if (rcsVers != null) {
      $result.rcsVers.addAll(rcsVers);
    }
    return $result;
  }
  RcsVersionInfoResponse._() : super();
  factory RcsVersionInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RcsVersionInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RcsVersionInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<RcsVersionInfo>(1, _omitFieldNames ? '' : 'rcsVers', $pb.PbFieldType.PM, subBuilder: RcsVersionInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RcsVersionInfoResponse clone() => RcsVersionInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RcsVersionInfoResponse copyWith(void Function(RcsVersionInfoResponse) updates) => super.copyWith((message) => updates(message as RcsVersionInfoResponse)) as RcsVersionInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RcsVersionInfoResponse create() => RcsVersionInfoResponse._();
  RcsVersionInfoResponse createEmptyInstance() => create();
  static $pb.PbList<RcsVersionInfoResponse> createRepeated() => $pb.PbList<RcsVersionInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static RcsVersionInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RcsVersionInfoResponse>(create);
  static RcsVersionInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RcsVersionInfo> get rcsVers => $_getList(0);
}

class UploadNeo4jDataRequest extends $pb.GeneratedMessage {
  factory UploadNeo4jDataRequest({
    VersionMapSpecifyData? data,
    $core.Iterable<$core.String>? cmds,
    $core.String? aArg,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (cmds != null) {
      $result.cmds.addAll(cmds);
    }
    if (aArg != null) {
      $result.aArg = aArg;
    }
    return $result;
  }
  UploadNeo4jDataRequest._() : super();
  factory UploadNeo4jDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadNeo4jDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadNeo4jDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<VersionMapSpecifyData>(1, _omitFieldNames ? '' : 'data', subBuilder: VersionMapSpecifyData.create)
    ..pPS(2, _omitFieldNames ? '' : 'cmds')
    ..aOS(3, _omitFieldNames ? '' : 'aArg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadNeo4jDataRequest clone() => UploadNeo4jDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadNeo4jDataRequest copyWith(void Function(UploadNeo4jDataRequest) updates) => super.copyWith((message) => updates(message as UploadNeo4jDataRequest)) as UploadNeo4jDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadNeo4jDataRequest create() => UploadNeo4jDataRequest._();
  UploadNeo4jDataRequest createEmptyInstance() => create();
  static $pb.PbList<UploadNeo4jDataRequest> createRepeated() => $pb.PbList<UploadNeo4jDataRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadNeo4jDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadNeo4jDataRequest>(create);
  static UploadNeo4jDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  VersionMapSpecifyData get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(VersionMapSpecifyData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  VersionMapSpecifyData ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get cmds => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get aArg => $_getSZ(2);
  @$pb.TagNumber(3)
  set aArg($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAArg() => $_has(2);
  @$pb.TagNumber(3)
  void clearAArg() => clearField(3);
}

class UploadNeo4jData extends $pb.GeneratedMessage {
  factory UploadNeo4jData({
    $core.Iterable<$fixnum.Int64>? bsmapIds,
    $core.String? acceptAArg,
    $core.String? output,
  }) {
    final $result = create();
    if (bsmapIds != null) {
      $result.bsmapIds.addAll(bsmapIds);
    }
    if (acceptAArg != null) {
      $result.acceptAArg = acceptAArg;
    }
    if (output != null) {
      $result.output = output;
    }
    return $result;
  }
  UploadNeo4jData._() : super();
  factory UploadNeo4jData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadNeo4jData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadNeo4jData', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'bsmapIds', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'acceptAArg')
    ..aOS(3, _omitFieldNames ? '' : 'output')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadNeo4jData clone() => UploadNeo4jData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadNeo4jData copyWith(void Function(UploadNeo4jData) updates) => super.copyWith((message) => updates(message as UploadNeo4jData)) as UploadNeo4jData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadNeo4jData create() => UploadNeo4jData._();
  UploadNeo4jData createEmptyInstance() => create();
  static $pb.PbList<UploadNeo4jData> createRepeated() => $pb.PbList<UploadNeo4jData>();
  @$core.pragma('dart2js:noInline')
  static UploadNeo4jData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadNeo4jData>(create);
  static UploadNeo4jData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get bsmapIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get acceptAArg => $_getSZ(1);
  @$pb.TagNumber(2)
  set acceptAArg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceptAArg() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptAArg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get output => $_getSZ(2);
  @$pb.TagNumber(3)
  set output($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutput() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutput() => clearField(3);
}

class UploadNeo4jDataResponse extends $pb.GeneratedMessage {
  factory UploadNeo4jDataResponse({
    $core.Iterable<UploadNeo4jData>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  UploadNeo4jDataResponse._() : super();
  factory UploadNeo4jDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadNeo4jDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadNeo4jDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<UploadNeo4jData>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: UploadNeo4jData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadNeo4jDataResponse clone() => UploadNeo4jDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadNeo4jDataResponse copyWith(void Function(UploadNeo4jDataResponse) updates) => super.copyWith((message) => updates(message as UploadNeo4jDataResponse)) as UploadNeo4jDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadNeo4jDataResponse create() => UploadNeo4jDataResponse._();
  UploadNeo4jDataResponse createEmptyInstance() => create();
  static $pb.PbList<UploadNeo4jDataResponse> createRepeated() => $pb.PbList<UploadNeo4jDataResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadNeo4jDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadNeo4jDataResponse>(create);
  static UploadNeo4jDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UploadNeo4jData> get data => $_getList(0);
}

class StringItems extends $pb.GeneratedMessage {
  factory StringItems({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  StringItems._() : super();
  factory StringItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StringItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StringItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StringItems clone() => StringItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StringItems copyWith(void Function(StringItems) updates) => super.copyWith((message) => updates(message as StringItems)) as StringItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StringItems create() => StringItems._();
  StringItems createEmptyInstance() => create();
  static $pb.PbList<StringItems> createRepeated() => $pb.PbList<StringItems>();
  @$core.pragma('dart2js:noInline')
  static StringItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StringItems>(create);
  static StringItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

class CheckPartnerMapCompatibleRequest extends $pb.GeneratedMessage {
  factory CheckPartnerMapCompatibleRequest({
    $core.String? projectId,
    $fixnum.Int64? bsmapId,
    $core.String? parMapCode,
    $core.String? parMapVer,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (bsmapId != null) {
      $result.bsmapId = bsmapId;
    }
    if (parMapCode != null) {
      $result.parMapCode = parMapCode;
    }
    if (parMapVer != null) {
      $result.parMapVer = parMapVer;
    }
    return $result;
  }
  CheckPartnerMapCompatibleRequest._() : super();
  factory CheckPartnerMapCompatibleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckPartnerMapCompatibleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CheckPartnerMapCompatibleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aInt64(2, _omitFieldNames ? '' : 'bsmapId')
    ..aOS(3, _omitFieldNames ? '' : 'parMapCode')
    ..aOS(4, _omitFieldNames ? '' : 'parMapVer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckPartnerMapCompatibleRequest clone() => CheckPartnerMapCompatibleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckPartnerMapCompatibleRequest copyWith(void Function(CheckPartnerMapCompatibleRequest) updates) => super.copyWith((message) => updates(message as CheckPartnerMapCompatibleRequest)) as CheckPartnerMapCompatibleRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckPartnerMapCompatibleRequest create() => CheckPartnerMapCompatibleRequest._();
  CheckPartnerMapCompatibleRequest createEmptyInstance() => create();
  static $pb.PbList<CheckPartnerMapCompatibleRequest> createRepeated() => $pb.PbList<CheckPartnerMapCompatibleRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckPartnerMapCompatibleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckPartnerMapCompatibleRequest>(create);
  static CheckPartnerMapCompatibleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get bsmapId => $_getI64(1);
  @$pb.TagNumber(2)
  set bsmapId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBsmapId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBsmapId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get parMapCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set parMapCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParMapCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearParMapCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parMapVer => $_getSZ(3);
  @$pb.TagNumber(4)
  set parMapVer($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParMapVer() => $_has(3);
  @$pb.TagNumber(4)
  void clearParMapVer() => clearField(4);
}

class CommitPartnerMapAndUpgradeRequest extends $pb.GeneratedMessage {
  factory CommitPartnerMapAndUpgradeRequest({
    $fixnum.Int64? agvId,
    $core.String? projectId,
    $fixnum.Int64? bsmapId,
    $core.String? parMapData,
  }) {
    final $result = create();
    if (agvId != null) {
      $result.agvId = agvId;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (bsmapId != null) {
      $result.bsmapId = bsmapId;
    }
    if (parMapData != null) {
      $result.parMapData = parMapData;
    }
    return $result;
  }
  CommitPartnerMapAndUpgradeRequest._() : super();
  factory CommitPartnerMapAndUpgradeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitPartnerMapAndUpgradeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommitPartnerMapAndUpgradeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'agvId')
    ..aOS(2, _omitFieldNames ? '' : 'projectId')
    ..aInt64(3, _omitFieldNames ? '' : 'bsmapId')
    ..aOS(4, _omitFieldNames ? '' : 'parMapData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommitPartnerMapAndUpgradeRequest clone() => CommitPartnerMapAndUpgradeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommitPartnerMapAndUpgradeRequest copyWith(void Function(CommitPartnerMapAndUpgradeRequest) updates) => super.copyWith((message) => updates(message as CommitPartnerMapAndUpgradeRequest)) as CommitPartnerMapAndUpgradeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitPartnerMapAndUpgradeRequest create() => CommitPartnerMapAndUpgradeRequest._();
  CommitPartnerMapAndUpgradeRequest createEmptyInstance() => create();
  static $pb.PbList<CommitPartnerMapAndUpgradeRequest> createRepeated() => $pb.PbList<CommitPartnerMapAndUpgradeRequest>();
  @$core.pragma('dart2js:noInline')
  static CommitPartnerMapAndUpgradeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommitPartnerMapAndUpgradeRequest>(create);
  static CommitPartnerMapAndUpgradeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get agvId => $_getI64(0);
  @$pb.TagNumber(1)
  set agvId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgvId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgvId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectId => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get bsmapId => $_getI64(2);
  @$pb.TagNumber(3)
  set bsmapId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBsmapId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBsmapId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get parMapData => $_getSZ(3);
  @$pb.TagNumber(4)
  set parMapData($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParMapData() => $_has(3);
  @$pb.TagNumber(4)
  void clearParMapData() => clearField(4);
}

class SetMapMarkerCodeRequest extends $pb.GeneratedMessage {
  factory SetMapMarkerCodeRequest({
    $fixnum.Int64? agvId,
    $core.String? projectId,
    $core.String? versionId,
    $fixnum.Int64? bsmapId,
    $fixnum.Int64? logicX,
    $fixnum.Int64? logicY,
    $core.String? markerCode,
  }) {
    final $result = create();
    if (agvId != null) {
      $result.agvId = agvId;
    }
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (bsmapId != null) {
      $result.bsmapId = bsmapId;
    }
    if (logicX != null) {
      $result.logicX = logicX;
    }
    if (logicY != null) {
      $result.logicY = logicY;
    }
    if (markerCode != null) {
      $result.markerCode = markerCode;
    }
    return $result;
  }
  SetMapMarkerCodeRequest._() : super();
  factory SetMapMarkerCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetMapMarkerCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetMapMarkerCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'agvId')
    ..aOS(2, _omitFieldNames ? '' : 'projectId')
    ..aOS(3, _omitFieldNames ? '' : 'versionId')
    ..aInt64(4, _omitFieldNames ? '' : 'bsmapId')
    ..aInt64(5, _omitFieldNames ? '' : 'logicX')
    ..aInt64(6, _omitFieldNames ? '' : 'logicY')
    ..aOS(7, _omitFieldNames ? '' : 'markerCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetMapMarkerCodeRequest clone() => SetMapMarkerCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetMapMarkerCodeRequest copyWith(void Function(SetMapMarkerCodeRequest) updates) => super.copyWith((message) => updates(message as SetMapMarkerCodeRequest)) as SetMapMarkerCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMapMarkerCodeRequest create() => SetMapMarkerCodeRequest._();
  SetMapMarkerCodeRequest createEmptyInstance() => create();
  static $pb.PbList<SetMapMarkerCodeRequest> createRepeated() => $pb.PbList<SetMapMarkerCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static SetMapMarkerCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetMapMarkerCodeRequest>(create);
  static SetMapMarkerCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get agvId => $_getI64(0);
  @$pb.TagNumber(1)
  set agvId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgvId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgvId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get projectId => $_getSZ(1);
  @$pb.TagNumber(2)
  set projectId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProjectId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get versionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set versionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get bsmapId => $_getI64(3);
  @$pb.TagNumber(4)
  set bsmapId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBsmapId() => $_has(3);
  @$pb.TagNumber(4)
  void clearBsmapId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get logicX => $_getI64(4);
  @$pb.TagNumber(5)
  set logicX($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLogicX() => $_has(4);
  @$pb.TagNumber(5)
  void clearLogicX() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get logicY => $_getI64(5);
  @$pb.TagNumber(6)
  set logicY($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLogicY() => $_has(5);
  @$pb.TagNumber(6)
  void clearLogicY() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get markerCode => $_getSZ(6);
  @$pb.TagNumber(7)
  set markerCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMarkerCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearMarkerCode() => clearField(7);
}

class GetMapDataPartRequest extends $pb.GeneratedMessage {
  factory GetMapDataPartRequest({
    $core.String? projectId,
    $core.String? versionId,
    $core.Iterable<$fixnum.Int64>? businessMapIds,
    $core.bool? containsPrivateData,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (businessMapIds != null) {
      $result.businessMapIds.addAll(businessMapIds);
    }
    if (containsPrivateData != null) {
      $result.containsPrivateData = containsPrivateData;
    }
    return $result;
  }
  GetMapDataPartRequest._() : super();
  factory GetMapDataPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMapDataPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMapDataPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'businessMapIds', $pb.PbFieldType.K6)
    ..aOB(4, _omitFieldNames ? '' : 'ContainsPrivateData', protoName: 'ContainsPrivateData')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMapDataPartRequest clone() => GetMapDataPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMapDataPartRequest copyWith(void Function(GetMapDataPartRequest) updates) => super.copyWith((message) => updates(message as GetMapDataPartRequest)) as GetMapDataPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDataPartRequest create() => GetMapDataPartRequest._();
  GetMapDataPartRequest createEmptyInstance() => create();
  static $pb.PbList<GetMapDataPartRequest> createRepeated() => $pb.PbList<GetMapDataPartRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMapDataPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMapDataPartRequest>(create);
  static GetMapDataPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get businessMapIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get containsPrivateData => $_getBF(3);
  @$pb.TagNumber(4)
  set containsPrivateData($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContainsPrivateData() => $_has(3);
  @$pb.TagNumber(4)
  void clearContainsPrivateData() => clearField(4);
}

class GetMapDataDetailPartRequest extends $pb.GeneratedMessage {
  factory GetMapDataDetailPartRequest({
    $core.String? projectId,
    $core.String? versionId,
    $fixnum.Int64? businessMapId,
    $core.Iterable<MapDataItem>? queryItems,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (businessMapId != null) {
      $result.businessMapId = businessMapId;
    }
    if (queryItems != null) {
      $result.queryItems.addAll(queryItems);
    }
    return $result;
  }
  GetMapDataDetailPartRequest._() : super();
  factory GetMapDataDetailPartRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMapDataDetailPartRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetMapDataDetailPartRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..aInt64(3, _omitFieldNames ? '' : 'businessMapId')
    ..pc<MapDataItem>(4, _omitFieldNames ? '' : 'queryItems', $pb.PbFieldType.PM, subBuilder: MapDataItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMapDataDetailPartRequest clone() => GetMapDataDetailPartRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMapDataDetailPartRequest copyWith(void Function(GetMapDataDetailPartRequest) updates) => super.copyWith((message) => updates(message as GetMapDataDetailPartRequest)) as GetMapDataDetailPartRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDataDetailPartRequest create() => GetMapDataDetailPartRequest._();
  GetMapDataDetailPartRequest createEmptyInstance() => create();
  static $pb.PbList<GetMapDataDetailPartRequest> createRepeated() => $pb.PbList<GetMapDataDetailPartRequest>();
  @$core.pragma('dart2js:noInline')
  static GetMapDataDetailPartRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMapDataDetailPartRequest>(create);
  static GetMapDataDetailPartRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get businessMapId => $_getI64(2);
  @$pb.TagNumber(3)
  set businessMapId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBusinessMapId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBusinessMapId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<MapDataItem> get queryItems => $_getList(3);
}

class MapDataItem extends $pb.GeneratedMessage {
  factory MapDataItem({
    $3.ElementType? itemType,
    $fixnum.Int64? itemId,
  }) {
    final $result = create();
    if (itemType != null) {
      $result.itemType = itemType;
    }
    if (itemId != null) {
      $result.itemId = itemId;
    }
    return $result;
  }
  MapDataItem._() : super();
  factory MapDataItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapDataItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapDataItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..e<$3.ElementType>(1, _omitFieldNames ? '' : 'itemType', $pb.PbFieldType.OE, defaultOrMaker: $3.ElementType.ELEMENT_TYPE_UNKNOWN, valueOf: $3.ElementType.valueOf, enumValues: $3.ElementType.values)
    ..aInt64(2, _omitFieldNames ? '' : 'itemId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapDataItem clone() => MapDataItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapDataItem copyWith(void Function(MapDataItem) updates) => super.copyWith((message) => updates(message as MapDataItem)) as MapDataItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapDataItem create() => MapDataItem._();
  MapDataItem createEmptyInstance() => create();
  static $pb.PbList<MapDataItem> createRepeated() => $pb.PbList<MapDataItem>();
  @$core.pragma('dart2js:noInline')
  static MapDataItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapDataItem>(create);
  static MapDataItem? _defaultInstance;

  @$pb.TagNumber(1)
  $3.ElementType get itemType => $_getN(0);
  @$pb.TagNumber(1)
  set itemType($3.ElementType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasItemType() => $_has(0);
  @$pb.TagNumber(1)
  void clearItemType() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get itemId => $_getI64(1);
  @$pb.TagNumber(2)
  set itemId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasItemId() => $_has(1);
  @$pb.TagNumber(2)
  void clearItemId() => clearField(2);
}

class MapDataItems extends $pb.GeneratedMessage {
  factory MapDataItems({
    $core.Iterable<MapDataItem>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  MapDataItems._() : super();
  factory MapDataItems.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MapDataItems.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MapDataItems', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<MapDataItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: MapDataItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MapDataItems clone() => MapDataItems()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MapDataItems copyWith(void Function(MapDataItems) updates) => super.copyWith((message) => updates(message as MapDataItems)) as MapDataItems;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapDataItems create() => MapDataItems._();
  MapDataItems createEmptyInstance() => create();
  static $pb.PbList<MapDataItems> createRepeated() => $pb.PbList<MapDataItems>();
  @$core.pragma('dart2js:noInline')
  static MapDataItems getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MapDataItems>(create);
  static MapDataItems? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MapDataItem> get items => $_getList(0);
}

class CommitMapDataDiffRequest extends $pb.GeneratedMessage {
  factory CommitMapDataDiffRequest({
    $core.String? projectId,
    $core.String? versionId,
    $core.String? author,
    $core.String? summary,
    MappingDataDiff? content,
    ProjectInfo? info,
    $core.Iterable<PartnerMapData>? parMapDatas,
    $core.Iterable<$fixnum.Int64>? removeParBsmapIds,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId != null) {
      $result.versionId = versionId;
    }
    if (author != null) {
      $result.author = author;
    }
    if (summary != null) {
      $result.summary = summary;
    }
    if (content != null) {
      $result.content = content;
    }
    if (info != null) {
      $result.info = info;
    }
    if (parMapDatas != null) {
      $result.parMapDatas.addAll(parMapDatas);
    }
    if (removeParBsmapIds != null) {
      $result.removeParBsmapIds.addAll(removeParBsmapIds);
    }
    return $result;
  }
  CommitMapDataDiffRequest._() : super();
  factory CommitMapDataDiffRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommitMapDataDiffRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommitMapDataDiffRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId')
    ..aOS(3, _omitFieldNames ? '' : 'author')
    ..aOS(4, _omitFieldNames ? '' : 'summary')
    ..aOM<MappingDataDiff>(5, _omitFieldNames ? '' : 'content', subBuilder: MappingDataDiff.create)
    ..aOM<ProjectInfo>(6, _omitFieldNames ? '' : 'info', subBuilder: ProjectInfo.create)
    ..pc<PartnerMapData>(7, _omitFieldNames ? '' : 'parMapDatas', $pb.PbFieldType.PM, subBuilder: PartnerMapData.create)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'removeParBsmapIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommitMapDataDiffRequest clone() => CommitMapDataDiffRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommitMapDataDiffRequest copyWith(void Function(CommitMapDataDiffRequest) updates) => super.copyWith((message) => updates(message as CommitMapDataDiffRequest)) as CommitMapDataDiffRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommitMapDataDiffRequest create() => CommitMapDataDiffRequest._();
  CommitMapDataDiffRequest createEmptyInstance() => create();
  static $pb.PbList<CommitMapDataDiffRequest> createRepeated() => $pb.PbList<CommitMapDataDiffRequest>();
  @$core.pragma('dart2js:noInline')
  static CommitMapDataDiffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommitMapDataDiffRequest>(create);
  static CommitMapDataDiffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get author => $_getSZ(2);
  @$pb.TagNumber(3)
  set author($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get summary => $_getSZ(3);
  @$pb.TagNumber(4)
  set summary($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSummary() => $_has(3);
  @$pb.TagNumber(4)
  void clearSummary() => clearField(4);

  @$pb.TagNumber(5)
  MappingDataDiff get content => $_getN(4);
  @$pb.TagNumber(5)
  set content(MappingDataDiff v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);
  @$pb.TagNumber(5)
  MappingDataDiff ensureContent() => $_ensure(4);

  @$pb.TagNumber(6)
  ProjectInfo get info => $_getN(5);
  @$pb.TagNumber(6)
  set info(ProjectInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearInfo() => clearField(6);
  @$pb.TagNumber(6)
  ProjectInfo ensureInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<PartnerMapData> get parMapDatas => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get removeParBsmapIds => $_getList(7);
}

class VersionsMessage extends $pb.GeneratedMessage {
  factory VersionsMessage({
    $core.String? projectId,
    $core.String? versionId1,
    $core.String? versionId2,
  }) {
    final $result = create();
    if (projectId != null) {
      $result.projectId = projectId;
    }
    if (versionId1 != null) {
      $result.versionId1 = versionId1;
    }
    if (versionId2 != null) {
      $result.versionId2 = versionId2;
    }
    return $result;
  }
  VersionsMessage._() : super();
  factory VersionsMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionsMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VersionsMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectId')
    ..aOS(2, _omitFieldNames ? '' : 'versionId1')
    ..aOS(3, _omitFieldNames ? '' : 'versionId2')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionsMessage clone() => VersionsMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionsMessage copyWith(void Function(VersionsMessage) updates) => super.copyWith((message) => updates(message as VersionsMessage)) as VersionsMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VersionsMessage create() => VersionsMessage._();
  VersionsMessage createEmptyInstance() => create();
  static $pb.PbList<VersionsMessage> createRepeated() => $pb.PbList<VersionsMessage>();
  @$core.pragma('dart2js:noInline')
  static VersionsMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionsMessage>(create);
  static VersionsMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get versionId1 => $_getSZ(1);
  @$pb.TagNumber(2)
  set versionId1($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersionId1() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersionId1() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get versionId2 => $_getSZ(2);
  @$pb.TagNumber(3)
  set versionId2($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersionId2() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionId2() => clearField(3);
}

class PrivateDataDiff extends $pb.GeneratedMessage {
  factory PrivateDataDiff({
    $3.PrivateData? modifyPvdata,
    $core.Iterable<$core.int>? removeInPathSiteIdxs,
    $core.Iterable<$core.int>? removeInSitePathIdxs,
    $core.Iterable<$fixnum.Int64>? removeEntityInfoIds,
    $core.Iterable<$fixnum.Int64>? removeToolingDataIds,
  }) {
    final $result = create();
    if (modifyPvdata != null) {
      $result.modifyPvdata = modifyPvdata;
    }
    if (removeInPathSiteIdxs != null) {
      $result.removeInPathSiteIdxs.addAll(removeInPathSiteIdxs);
    }
    if (removeInSitePathIdxs != null) {
      $result.removeInSitePathIdxs.addAll(removeInSitePathIdxs);
    }
    if (removeEntityInfoIds != null) {
      $result.removeEntityInfoIds.addAll(removeEntityInfoIds);
    }
    if (removeToolingDataIds != null) {
      $result.removeToolingDataIds.addAll(removeToolingDataIds);
    }
    return $result;
  }
  PrivateDataDiff._() : super();
  factory PrivateDataDiff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PrivateDataDiff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PrivateDataDiff', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOM<$3.PrivateData>(1, _omitFieldNames ? '' : 'modifyPvdata', subBuilder: $3.PrivateData.create)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'removeInPathSiteIdxs', $pb.PbFieldType.K3)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'removeInSitePathIdxs', $pb.PbFieldType.K3)
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'removeEntityInfoIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(5, _omitFieldNames ? '' : 'removeToolingDataIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PrivateDataDiff clone() => PrivateDataDiff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PrivateDataDiff copyWith(void Function(PrivateDataDiff) updates) => super.copyWith((message) => updates(message as PrivateDataDiff)) as PrivateDataDiff;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivateDataDiff create() => PrivateDataDiff._();
  PrivateDataDiff createEmptyInstance() => create();
  static $pb.PbList<PrivateDataDiff> createRepeated() => $pb.PbList<PrivateDataDiff>();
  @$core.pragma('dart2js:noInline')
  static PrivateDataDiff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PrivateDataDiff>(create);
  static PrivateDataDiff? _defaultInstance;

  @$pb.TagNumber(1)
  $3.PrivateData get modifyPvdata => $_getN(0);
  @$pb.TagNumber(1)
  set modifyPvdata($3.PrivateData v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasModifyPvdata() => $_has(0);
  @$pb.TagNumber(1)
  void clearModifyPvdata() => clearField(1);
  @$pb.TagNumber(1)
  $3.PrivateData ensureModifyPvdata() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get removeInPathSiteIdxs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get removeInSitePathIdxs => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get removeEntityInfoIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get removeToolingDataIds => $_getList(4);
}

class BusinessMapDiff extends $pb.GeneratedMessage {
  factory BusinessMapDiff({
    $fixnum.Int64? bsmapId,
    $3.BusinessMap? modifyBsmap,
    $core.Iterable<$fixnum.Int64>? removeNodeIds,
    $core.Iterable<$fixnum.Int64>? removeEdgeIds,
    $core.Iterable<$fixnum.Int64>? removeGoodsSlotIds,
    $core.Iterable<$fixnum.Int64>? removeConflictZoneIds,
    $core.Iterable<$fixnum.Int64>? removeRackIds,
    $core.Iterable<$fixnum.Int64>? removePropertyObjectsIds,
    $core.Iterable<$fixnum.Int64>? removeFunctionalBlockIds,
    $core.Iterable<$fixnum.Int64>? removeGoodsStackDataIds,
  }) {
    final $result = create();
    if (bsmapId != null) {
      $result.bsmapId = bsmapId;
    }
    if (modifyBsmap != null) {
      $result.modifyBsmap = modifyBsmap;
    }
    if (removeNodeIds != null) {
      $result.removeNodeIds.addAll(removeNodeIds);
    }
    if (removeEdgeIds != null) {
      $result.removeEdgeIds.addAll(removeEdgeIds);
    }
    if (removeGoodsSlotIds != null) {
      $result.removeGoodsSlotIds.addAll(removeGoodsSlotIds);
    }
    if (removeConflictZoneIds != null) {
      $result.removeConflictZoneIds.addAll(removeConflictZoneIds);
    }
    if (removeRackIds != null) {
      $result.removeRackIds.addAll(removeRackIds);
    }
    if (removePropertyObjectsIds != null) {
      $result.removePropertyObjectsIds.addAll(removePropertyObjectsIds);
    }
    if (removeFunctionalBlockIds != null) {
      $result.removeFunctionalBlockIds.addAll(removeFunctionalBlockIds);
    }
    if (removeGoodsStackDataIds != null) {
      $result.removeGoodsStackDataIds.addAll(removeGoodsStackDataIds);
    }
    return $result;
  }
  BusinessMapDiff._() : super();
  factory BusinessMapDiff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessMapDiff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessMapDiff', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'bsmapId')
    ..aOM<$3.BusinessMap>(2, _omitFieldNames ? '' : 'modifyBsmap', subBuilder: $3.BusinessMap.create)
    ..p<$fixnum.Int64>(3, _omitFieldNames ? '' : 'removeNodeIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'removeEdgeIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(5, _omitFieldNames ? '' : 'removeGoodsSlotIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'removeConflictZoneIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'removeRackIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'removePropertyObjectsIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'removeFunctionalBlockIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'removeGoodsStackDataIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessMapDiff clone() => BusinessMapDiff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessMapDiff copyWith(void Function(BusinessMapDiff) updates) => super.copyWith((message) => updates(message as BusinessMapDiff)) as BusinessMapDiff;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessMapDiff create() => BusinessMapDiff._();
  BusinessMapDiff createEmptyInstance() => create();
  static $pb.PbList<BusinessMapDiff> createRepeated() => $pb.PbList<BusinessMapDiff>();
  @$core.pragma('dart2js:noInline')
  static BusinessMapDiff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessMapDiff>(create);
  static BusinessMapDiff? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get bsmapId => $_getI64(0);
  @$pb.TagNumber(1)
  set bsmapId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBsmapId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBsmapId() => clearField(1);

  @$pb.TagNumber(2)
  $3.BusinessMap get modifyBsmap => $_getN(1);
  @$pb.TagNumber(2)
  set modifyBsmap($3.BusinessMap v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModifyBsmap() => $_has(1);
  @$pb.TagNumber(2)
  void clearModifyBsmap() => clearField(2);
  @$pb.TagNumber(2)
  $3.BusinessMap ensureModifyBsmap() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$fixnum.Int64> get removeNodeIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get removeEdgeIds => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get removeGoodsSlotIds => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get removeConflictZoneIds => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get removeRackIds => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get removePropertyObjectsIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get removeFunctionalBlockIds => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$fixnum.Int64> get removeGoodsStackDataIds => $_getList(9);
}

class MappingDataDiff extends $pb.GeneratedMessage {
  factory MappingDataDiff({
    $core.Iterable<BusinessMapDiff>? modifyItems,
    $core.Iterable<$fixnum.Int64>? removeBsmapIds,
    PrivateDataDiff? pvdataDiff,
  }) {
    final $result = create();
    if (modifyItems != null) {
      $result.modifyItems.addAll(modifyItems);
    }
    if (removeBsmapIds != null) {
      $result.removeBsmapIds.addAll(removeBsmapIds);
    }
    if (pvdataDiff != null) {
      $result.pvdataDiff = pvdataDiff;
    }
    return $result;
  }
  MappingDataDiff._() : super();
  factory MappingDataDiff.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MappingDataDiff.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MappingDataDiff', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<BusinessMapDiff>(1, _omitFieldNames ? '' : 'modifyItems', $pb.PbFieldType.PM, subBuilder: BusinessMapDiff.create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'removeBsmapIds', $pb.PbFieldType.K6)
    ..aOM<PrivateDataDiff>(3, _omitFieldNames ? '' : 'pvdataDiff', subBuilder: PrivateDataDiff.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MappingDataDiff clone() => MappingDataDiff()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MappingDataDiff copyWith(void Function(MappingDataDiff) updates) => super.copyWith((message) => updates(message as MappingDataDiff)) as MappingDataDiff;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MappingDataDiff create() => MappingDataDiff._();
  MappingDataDiff createEmptyInstance() => create();
  static $pb.PbList<MappingDataDiff> createRepeated() => $pb.PbList<MappingDataDiff>();
  @$core.pragma('dart2js:noInline')
  static MappingDataDiff getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MappingDataDiff>(create);
  static MappingDataDiff? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BusinessMapDiff> get modifyItems => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$fixnum.Int64> get removeBsmapIds => $_getList(1);

  @$pb.TagNumber(3)
  PrivateDataDiff get pvdataDiff => $_getN(2);
  @$pb.TagNumber(3)
  set pvdataDiff(PrivateDataDiff v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPvdataDiff() => $_has(2);
  @$pb.TagNumber(3)
  void clearPvdataDiff() => clearField(3);
  @$pb.TagNumber(3)
  PrivateDataDiff ensurePvdataDiff() => $_ensure(2);
}

class NodePart extends $pb.GeneratedMessage {
  factory NodePart({
    $fixnum.Int64? id,
    $3.MarkerType? markerType,
    $3.Point? location,
    $3.Point? logicLocation,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (markerType != null) {
      $result.markerType = markerType;
    }
    if (location != null) {
      $result.location = location;
    }
    if (logicLocation != null) {
      $result.logicLocation = logicLocation;
    }
    return $result;
  }
  NodePart._() : super();
  factory NodePart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodePart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodePart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..e<$3.MarkerType>(2, _omitFieldNames ? '' : 'markerType', $pb.PbFieldType.OE, protoName: 'markerType', defaultOrMaker: $3.MarkerType.MARKER_TYPE_UNKNOWN, valueOf: $3.MarkerType.valueOf, enumValues: $3.MarkerType.values)
    ..aOM<$3.Point>(3, _omitFieldNames ? '' : 'location', subBuilder: $3.Point.create)
    ..aOM<$3.Point>(4, _omitFieldNames ? '' : 'logicLocation', protoName: 'logicLocation', subBuilder: $3.Point.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodePart clone() => NodePart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodePart copyWith(void Function(NodePart) updates) => super.copyWith((message) => updates(message as NodePart)) as NodePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodePart create() => NodePart._();
  NodePart createEmptyInstance() => create();
  static $pb.PbList<NodePart> createRepeated() => $pb.PbList<NodePart>();
  @$core.pragma('dart2js:noInline')
  static NodePart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodePart>(create);
  static NodePart? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $3.MarkerType get markerType => $_getN(1);
  @$pb.TagNumber(2)
  set markerType($3.MarkerType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMarkerType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMarkerType() => clearField(2);

  @$pb.TagNumber(3)
  $3.Point get location => $_getN(2);
  @$pb.TagNumber(3)
  set location($3.Point v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => clearField(3);
  @$pb.TagNumber(3)
  $3.Point ensureLocation() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Point get logicLocation => $_getN(3);
  @$pb.TagNumber(4)
  set logicLocation($3.Point v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLogicLocation() => $_has(3);
  @$pb.TagNumber(4)
  void clearLogicLocation() => clearField(4);
  @$pb.TagNumber(4)
  $3.Point ensureLogicLocation() => $_ensure(3);
}

class EdgePart extends $pb.GeneratedMessage {
  factory EdgePart({
    $fixnum.Int64? id,
    $fixnum.Int64? endpoint1Id,
    $fixnum.Int64? endpoint2Id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (endpoint1Id != null) {
      $result.endpoint1Id = endpoint1Id;
    }
    if (endpoint2Id != null) {
      $result.endpoint2Id = endpoint2Id;
    }
    return $result;
  }
  EdgePart._() : super();
  factory EdgePart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EdgePart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EdgePart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'endpoint1Id', protoName: 'endpoint1Id')
    ..aInt64(3, _omitFieldNames ? '' : 'endpoint2Id', protoName: 'endpoint2Id')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EdgePart clone() => EdgePart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EdgePart copyWith(void Function(EdgePart) updates) => super.copyWith((message) => updates(message as EdgePart)) as EdgePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdgePart create() => EdgePart._();
  EdgePart createEmptyInstance() => create();
  static $pb.PbList<EdgePart> createRepeated() => $pb.PbList<EdgePart>();
  @$core.pragma('dart2js:noInline')
  static EdgePart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EdgePart>(create);
  static EdgePart? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endpoint1Id => $_getI64(1);
  @$pb.TagNumber(2)
  set endpoint1Id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndpoint1Id() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndpoint1Id() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get endpoint2Id => $_getI64(2);
  @$pb.TagNumber(3)
  set endpoint2Id($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndpoint2Id() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpoint2Id() => clearField(3);
}

class GoodsSlotPart extends $pb.GeneratedMessage {
  factory GoodsSlotPart({
    $fixnum.Int64? id,
    $core.String? horizontalGroupId,
    $core.String? verticalGroupId,
    $core.String? localNumber,
    $core.String? displayNumber,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (horizontalGroupId != null) {
      $result.horizontalGroupId = horizontalGroupId;
    }
    if (verticalGroupId != null) {
      $result.verticalGroupId = verticalGroupId;
    }
    if (localNumber != null) {
      $result.localNumber = localNumber;
    }
    if (displayNumber != null) {
      $result.displayNumber = displayNumber;
    }
    return $result;
  }
  GoodsSlotPart._() : super();
  factory GoodsSlotPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GoodsSlotPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GoodsSlotPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'horizontalGroupId', protoName: 'horizontalGroupId')
    ..aOS(3, _omitFieldNames ? '' : 'verticalGroupId', protoName: 'verticalGroupId')
    ..aOS(4, _omitFieldNames ? '' : 'localNumber', protoName: 'localNumber')
    ..aOS(5, _omitFieldNames ? '' : 'displayNumber', protoName: 'displayNumber')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GoodsSlotPart clone() => GoodsSlotPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GoodsSlotPart copyWith(void Function(GoodsSlotPart) updates) => super.copyWith((message) => updates(message as GoodsSlotPart)) as GoodsSlotPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GoodsSlotPart create() => GoodsSlotPart._();
  GoodsSlotPart createEmptyInstance() => create();
  static $pb.PbList<GoodsSlotPart> createRepeated() => $pb.PbList<GoodsSlotPart>();
  @$core.pragma('dart2js:noInline')
  static GoodsSlotPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GoodsSlotPart>(create);
  static GoodsSlotPart? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get horizontalGroupId => $_getSZ(1);
  @$pb.TagNumber(2)
  set horizontalGroupId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHorizontalGroupId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHorizontalGroupId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get verticalGroupId => $_getSZ(2);
  @$pb.TagNumber(3)
  set verticalGroupId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerticalGroupId() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerticalGroupId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get localNumber => $_getSZ(3);
  @$pb.TagNumber(4)
  set localNumber($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocalNumber() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalNumber() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get displayNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set displayNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisplayNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplayNumber() => clearField(5);
}

class ConflictZonePart extends $pb.GeneratedMessage {
  factory ConflictZonePart({
    $fixnum.Int64? id,
    $core.Iterable<$3.Point>? pointList,
    $core.Iterable<$core.int>? includeDataId,
    $3.ConflictZoneType? conflictZoneType,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (pointList != null) {
      $result.pointList.addAll(pointList);
    }
    if (includeDataId != null) {
      $result.includeDataId.addAll(includeDataId);
    }
    if (conflictZoneType != null) {
      $result.conflictZoneType = conflictZoneType;
    }
    return $result;
  }
  ConflictZonePart._() : super();
  factory ConflictZonePart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConflictZonePart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConflictZonePart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..pc<$3.Point>(2, _omitFieldNames ? '' : 'pointList', $pb.PbFieldType.PM, protoName: 'pointList', subBuilder: $3.Point.create)
    ..p<$core.int>(3, _omitFieldNames ? '' : 'includeDataId', $pb.PbFieldType.K3, protoName: 'includeDataId')
    ..e<$3.ConflictZoneType>(4, _omitFieldNames ? '' : 'conflictZoneType', $pb.PbFieldType.OE, protoName: 'conflictZoneType', defaultOrMaker: $3.ConflictZoneType.CONFLICT_ZONE_TYPE_UNKNOWN, valueOf: $3.ConflictZoneType.valueOf, enumValues: $3.ConflictZoneType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConflictZonePart clone() => ConflictZonePart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConflictZonePart copyWith(void Function(ConflictZonePart) updates) => super.copyWith((message) => updates(message as ConflictZonePart)) as ConflictZonePart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConflictZonePart create() => ConflictZonePart._();
  ConflictZonePart createEmptyInstance() => create();
  static $pb.PbList<ConflictZonePart> createRepeated() => $pb.PbList<ConflictZonePart>();
  @$core.pragma('dart2js:noInline')
  static ConflictZonePart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConflictZonePart>(create);
  static ConflictZonePart? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$3.Point> get pointList => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get includeDataId => $_getList(2);

  @$pb.TagNumber(4)
  $3.ConflictZoneType get conflictZoneType => $_getN(3);
  @$pb.TagNumber(4)
  set conflictZoneType($3.ConflictZoneType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasConflictZoneType() => $_has(3);
  @$pb.TagNumber(4)
  void clearConflictZoneType() => clearField(4);
}

class BusinessMapPart extends $pb.GeneratedMessage {
  factory BusinessMapPart({
    $core.String? floorName,
    $fixnum.Int64? id,
    $core.int? floorNum,
    $core.Iterable<NodePart>? node,
    $core.Iterable<EdgePart>? edge,
    $core.Iterable<GoodsSlotPart>? goodsSlot,
    $core.Iterable<ConflictZonePart>? conflictZone,
  }) {
    final $result = create();
    if (floorName != null) {
      $result.floorName = floorName;
    }
    if (id != null) {
      $result.id = id;
    }
    if (floorNum != null) {
      $result.floorNum = floorNum;
    }
    if (node != null) {
      $result.node.addAll(node);
    }
    if (edge != null) {
      $result.edge.addAll(edge);
    }
    if (goodsSlot != null) {
      $result.goodsSlot.addAll(goodsSlot);
    }
    if (conflictZone != null) {
      $result.conflictZone.addAll(conflictZone);
    }
    return $result;
  }
  BusinessMapPart._() : super();
  factory BusinessMapPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BusinessMapPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BusinessMapPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'floorName', protoName: 'floorName')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'floorNum', $pb.PbFieldType.O3, protoName: 'floorNum')
    ..pc<NodePart>(4, _omitFieldNames ? '' : 'node', $pb.PbFieldType.PM, subBuilder: NodePart.create)
    ..pc<EdgePart>(5, _omitFieldNames ? '' : 'edge', $pb.PbFieldType.PM, subBuilder: EdgePart.create)
    ..pc<GoodsSlotPart>(6, _omitFieldNames ? '' : 'goodsSlot', $pb.PbFieldType.PM, protoName: 'goodsSlot', subBuilder: GoodsSlotPart.create)
    ..pc<ConflictZonePart>(7, _omitFieldNames ? '' : 'conflictZone', $pb.PbFieldType.PM, protoName: 'conflictZone', subBuilder: ConflictZonePart.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BusinessMapPart clone() => BusinessMapPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BusinessMapPart copyWith(void Function(BusinessMapPart) updates) => super.copyWith((message) => updates(message as BusinessMapPart)) as BusinessMapPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BusinessMapPart create() => BusinessMapPart._();
  BusinessMapPart createEmptyInstance() => create();
  static $pb.PbList<BusinessMapPart> createRepeated() => $pb.PbList<BusinessMapPart>();
  @$core.pragma('dart2js:noInline')
  static BusinessMapPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BusinessMapPart>(create);
  static BusinessMapPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get floorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set floorName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFloorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFloorName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get floorNum => $_getIZ(2);
  @$pb.TagNumber(3)
  set floorNum($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFloorNum() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloorNum() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<NodePart> get node => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<EdgePart> get edge => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<GoodsSlotPart> get goodsSlot => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<ConflictZonePart> get conflictZone => $_getList(6);
}

class MappingDataPart extends $pb.GeneratedMessage {
  factory MappingDataPart({
    $core.Iterable<BusinessMapPart>? businessMap,
    $3.PrivateData? privateData,
  }) {
    final $result = create();
    if (businessMap != null) {
      $result.businessMap.addAll(businessMap);
    }
    if (privateData != null) {
      $result.privateData = privateData;
    }
    return $result;
  }
  MappingDataPart._() : super();
  factory MappingDataPart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MappingDataPart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MappingDataPart', package: const $pb.PackageName(_omitMessageNames ? '' : 'galaxis.map'), createEmptyInstance: create)
    ..pc<BusinessMapPart>(1, _omitFieldNames ? '' : 'businessMap', $pb.PbFieldType.PM, protoName: 'businessMap', subBuilder: BusinessMapPart.create)
    ..aOM<$3.PrivateData>(2, _omitFieldNames ? '' : 'privateData', protoName: 'privateData', subBuilder: $3.PrivateData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MappingDataPart clone() => MappingDataPart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MappingDataPart copyWith(void Function(MappingDataPart) updates) => super.copyWith((message) => updates(message as MappingDataPart)) as MappingDataPart;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MappingDataPart create() => MappingDataPart._();
  MappingDataPart createEmptyInstance() => create();
  static $pb.PbList<MappingDataPart> createRepeated() => $pb.PbList<MappingDataPart>();
  @$core.pragma('dart2js:noInline')
  static MappingDataPart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MappingDataPart>(create);
  static MappingDataPart? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BusinessMapPart> get businessMap => $_getList(0);

  @$pb.TagNumber(2)
  $3.PrivateData get privateData => $_getN(1);
  @$pb.TagNumber(2)
  set privateData($3.PrivateData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrivateData() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrivateData() => clearField(2);
  @$pb.TagNumber(2)
  $3.PrivateData ensurePrivateData() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
