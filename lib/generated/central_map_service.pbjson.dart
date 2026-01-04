// This is a generated file - do not edit.
//
// Generated from central_map_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use neo4jOperationDescriptor instead')
const Neo4jOperation$json = {
  '1': 'Neo4jOperation',
  '2': [
    {'1': 'ClearDuplicateMarkCode', '2': 0},
  ],
};

/// Descriptor for `Neo4jOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List neo4jOperationDescriptor = $convert.base64Decode(
    'Cg5OZW80ak9wZXJhdGlvbhIaChZDbGVhckR1cGxpY2F0ZU1hcmtDb2RlEAA=');

@$core.Deprecated('Use storedMappingDataDescriptor instead')
const StoredMappingData$json = {
  '1': 'StoredMappingData',
  '2': [
    {
      '1': 'businessMap',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.BusinessMap',
      '10': 'businessMap'
    },
    {
      '1': 'privateData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.StoredPrivateData',
      '10': 'privateData'
    },
    {
      '1': 'internalVersion',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'internalVersion',
      '17': true
    },
  ],
  '8': [
    {'1': '_internalVersion'},
  ],
};

/// Descriptor for `StoredMappingData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storedMappingDataDescriptor = $convert.base64Decode(
    'ChFTdG9yZWRNYXBwaW5nRGF0YRI6CgtidXNpbmVzc01hcBgBIAMoCzIYLmdhbGF4aXMubWFwLk'
    'J1c2luZXNzTWFwUgtidXNpbmVzc01hcBJACgtwcml2YXRlRGF0YRgCIAEoCzIeLmdhbGF4aXMu'
    'bWFwLlN0b3JlZFByaXZhdGVEYXRhUgtwcml2YXRlRGF0YRItCg9pbnRlcm5hbFZlcnNpb24YAy'
    'ABKANIAFIPaW50ZXJuYWxWZXJzaW9uiAEBQhIKEF9pbnRlcm5hbFZlcnNpb24=');

@$core.Deprecated('Use storedPrivateDataDescriptor instead')
const StoredPrivateData$json = {
  '1': 'StoredPrivateData',
  '2': [
    {
      '1': 'inPathSiteIndex',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.StoredMapItem',
      '10': 'inPathSiteIndex'
    },
    {
      '1': 'inSitePathIndex',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.StoredMapItem',
      '10': 'inSitePathIndex'
    },
    {
      '1': 'entityInfos',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.StoredEntityInfo',
      '10': 'entityInfos'
    },
    {
      '1': 'toolingData',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ToolingData',
      '10': 'toolingData'
    },
  ],
};

/// Descriptor for `StoredPrivateData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storedPrivateDataDescriptor = $convert.base64Decode(
    'ChFTdG9yZWRQcml2YXRlRGF0YRJECg9pblBhdGhTaXRlSW5kZXgYASADKAsyGi5nYWxheGlzLm'
    '1hcC5TdG9yZWRNYXBJdGVtUg9pblBhdGhTaXRlSW5kZXgSRAoPaW5TaXRlUGF0aEluZGV4GAIg'
    'AygLMhouZ2FsYXhpcy5tYXAuU3RvcmVkTWFwSXRlbVIPaW5TaXRlUGF0aEluZGV4Ej8KC2VudG'
    'l0eUluZm9zGAMgAygLMh0uZ2FsYXhpcy5tYXAuU3RvcmVkRW50aXR5SW5mb1ILZW50aXR5SW5m'
    'b3MSOgoLdG9vbGluZ0RhdGEYBCADKAsyGC5nYWxheGlzLm1hcC5Ub29saW5nRGF0YVILdG9vbG'
    'luZ0RhdGE=');

@$core.Deprecated('Use storedMapItemDescriptor instead')
const StoredMapItem$json = {
  '1': 'StoredMapItem',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 5, '10': 'key'},
    {'1': 'value', '3': 2, '4': 3, '5': 5, '10': 'value'},
  ],
};

/// Descriptor for `StoredMapItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storedMapItemDescriptor = $convert.base64Decode(
    'Cg1TdG9yZWRNYXBJdGVtEhAKA2tleRgBIAEoBVIDa2V5EhQKBXZhbHVlGAIgAygFUgV2YWx1ZQ'
    '==');

@$core.Deprecated('Use storedEntityInfoDescriptor instead')
const StoredEntityInfo$json = {
  '1': 'StoredEntityInfo',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {
      '1': 'entity',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.EntityInfo',
      '10': 'entity'
    },
  ],
};

/// Descriptor for `StoredEntityInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storedEntityInfoDescriptor = $convert.base64Decode(
    'ChBTdG9yZWRFbnRpdHlJbmZvEhAKA2tleRgBIAEoA1IDa2V5Ei8KBmVudGl0eRgCIAEoCzIXLm'
    'dhbGF4aXMubWFwLkVudGl0eUluZm9SBmVudGl0eQ==');

@$core.Deprecated('Use serverAddrDescriptor instead')
const ServerAddr$json = {
  '1': 'ServerAddr',
  '2': [
    {'1': 'ip_addr', '3': 1, '4': 1, '5': 9, '10': 'ipAddr'},
    {'1': 'port', '3': 2, '4': 1, '5': 5, '10': 'port'},
    {'1': 'username', '3': 3, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `ServerAddr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverAddrDescriptor = $convert.base64Decode(
    'CgpTZXJ2ZXJBZGRyEhcKB2lwX2FkZHIYASABKAlSBmlwQWRkchISCgRwb3J0GAIgASgFUgRwb3'
    'J0EhoKCHVzZXJuYW1lGAMgASgJUgh1c2VybmFtZRIaCghwYXNzd29yZBgEIAEoCVIIcGFzc3dv'
    'cmQ=');

@$core.Deprecated('Use mapServiceInfoDescriptor instead')
const MapServiceInfo$json = {
  '1': 'MapServiceInfo',
  '2': [
    {'1': 'business_map_ids', '3': 1, '4': 3, '5': 3, '10': 'businessMapIds'},
    {
      '1': 'rcs_server',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ServerAddr',
      '9': 0,
      '10': 'rcsServer',
      '17': true
    },
    {
      '1': 'neo4j_server',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ServerAddr',
      '9': 1,
      '10': 'neo4jServer',
      '17': true
    },
    {'1': 'rcs_data_path', '3': 4, '4': 1, '5': 9, '10': 'rcsDataPath'},
    {'1': 'rcs_restart_cmd', '3': 5, '4': 1, '5': 9, '10': 'rcsRestartCmd'},
    {'1': 'passable_robots', '3': 6, '4': 3, '5': 9, '10': 'passableRobots'},
  ],
  '8': [
    {'1': '_rcs_server'},
    {'1': '_neo4j_server'},
  ],
};

/// Descriptor for `MapServiceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapServiceInfoDescriptor = $convert.base64Decode(
    'Cg5NYXBTZXJ2aWNlSW5mbxIoChBidXNpbmVzc19tYXBfaWRzGAEgAygDUg5idXNpbmVzc01hcE'
    'lkcxI7CgpyY3Nfc2VydmVyGAIgASgLMhcuZ2FsYXhpcy5tYXAuU2VydmVyQWRkckgAUglyY3NT'
    'ZXJ2ZXKIAQESPwoMbmVvNGpfc2VydmVyGAMgASgLMhcuZ2FsYXhpcy5tYXAuU2VydmVyQWRkck'
    'gBUgtuZW80alNlcnZlcogBARIiCg1yY3NfZGF0YV9wYXRoGAQgASgJUgtyY3NEYXRhUGF0aBIm'
    'Cg9yY3NfcmVzdGFydF9jbWQYBSABKAlSDXJjc1Jlc3RhcnRDbWQSJwoPcGFzc2FibGVfcm9ib3'
    'RzGAYgAygJUg5wYXNzYWJsZVJvYm90c0INCgtfcmNzX3NlcnZlckIPCg1fbmVvNGpfc2VydmVy');

@$core.Deprecated('Use projectInfoDescriptor instead')
const ProjectInfo$json = {
  '1': 'ProjectInfo',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'project_name', '3': 2, '4': 1, '5': 9, '10': 'projectName'},
    {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
    {
      '1': 'map_services',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MapServiceInfo',
      '10': 'mapServices'
    },
  ],
};

/// Descriptor for `ProjectInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectInfoDescriptor = $convert.base64Decode(
    'CgtQcm9qZWN0SW5mbxIdCgpwcm9qZWN0X2lkGAEgASgJUglwcm9qZWN0SWQSIQoMcHJvamVjdF'
    '9uYW1lGAIgASgJUgtwcm9qZWN0TmFtZRIWCgZhdXRob3IYAyABKAlSBmF1dGhvchIYCgdzdW1t'
    'YXJ5GAQgASgJUgdzdW1tYXJ5Ej4KDG1hcF9zZXJ2aWNlcxgFIAMoCzIbLmdhbGF4aXMubWFwLk'
    '1hcFNlcnZpY2VJbmZvUgttYXBTZXJ2aWNlcw==');

@$core.Deprecated('Use projectInfosDescriptor instead')
const ProjectInfos$json = {
  '1': 'ProjectInfos',
  '2': [
    {
      '1': 'project_infos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ProjectInfo',
      '10': 'projectInfos'
    },
  ],
};

/// Descriptor for `ProjectInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectInfosDescriptor = $convert.base64Decode(
    'CgxQcm9qZWN0SW5mb3MSPQoNcHJvamVjdF9pbmZvcxgBIAMoCzIYLmdhbGF4aXMubWFwLlByb2'
    'plY3RJbmZvUgxwcm9qZWN0SW5mb3M=');

@$core.Deprecated('Use mapVersionInfoDescriptor instead')
const MapVersionInfo$json = {
  '1': 'MapVersionInfo',
  '2': [
    {'1': 'version_id', '3': 1, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'author', '3': 2, '4': 1, '5': 9, '10': 'author'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
  ],
};

/// Descriptor for `MapVersionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapVersionInfoDescriptor = $convert.base64Decode(
    'Cg5NYXBWZXJzaW9uSW5mbxIdCgp2ZXJzaW9uX2lkGAEgASgJUgl2ZXJzaW9uSWQSFgoGYXV0aG'
    '9yGAIgASgJUgZhdXRob3ISHAoJdGltZXN0YW1wGAMgASgDUgl0aW1lc3RhbXASGAoHc3VtbWFy'
    'eRgEIAEoCVIHc3VtbWFyeQ==');

@$core.Deprecated('Use mapVersionInfosDescriptor instead')
const MapVersionInfos$json = {
  '1': 'MapVersionInfos',
  '2': [
    {
      '1': 'map_ver_infos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MapVersionInfo',
      '10': 'mapVerInfos'
    },
  ],
};

/// Descriptor for `MapVersionInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapVersionInfosDescriptor = $convert.base64Decode(
    'Cg9NYXBWZXJzaW9uSW5mb3MSPwoNbWFwX3Zlcl9pbmZvcxgBIAMoCzIbLmdhbGF4aXMubWFwLk'
    '1hcFZlcnNpb25JbmZvUgttYXBWZXJJbmZvcw==');

@$core.Deprecated('Use partnerMapInfoDescriptor instead')
const PartnerMapInfo$json = {
  '1': 'PartnerMapInfo',
  '2': [
    {'1': 'business_map_id', '3': 1, '4': 1, '5': 3, '10': 'businessMapId'},
    {'1': 'map_code', '3': 2, '4': 1, '5': 9, '10': 'mapCode'},
    {'1': 'map_version', '3': 3, '4': 1, '5': 9, '10': 'mapVersion'},
  ],
};

/// Descriptor for `PartnerMapInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partnerMapInfoDescriptor = $convert.base64Decode(
    'Cg5QYXJ0bmVyTWFwSW5mbxImCg9idXNpbmVzc19tYXBfaWQYASABKANSDWJ1c2luZXNzTWFwSW'
    'QSGQoIbWFwX2NvZGUYAiABKAlSB21hcENvZGUSHwoLbWFwX3ZlcnNpb24YAyABKAlSCm1hcFZl'
    'cnNpb24=');

@$core.Deprecated('Use partnerMapInfosDescriptor instead')
const PartnerMapInfos$json = {
  '1': 'PartnerMapInfos',
  '2': [
    {
      '1': 'infos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PartnerMapInfo',
      '10': 'infos'
    },
  ],
};

/// Descriptor for `PartnerMapInfos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partnerMapInfosDescriptor = $convert.base64Decode(
    'Cg9QYXJ0bmVyTWFwSW5mb3MSMQoFaW5mb3MYASADKAsyGy5nYWxheGlzLm1hcC5QYXJ0bmVyTW'
    'FwSW5mb1IFaW5mb3M=');

@$core.Deprecated('Use projectIdMessageDescriptor instead')
const ProjectIdMessage$json = {
  '1': 'ProjectIdMessage',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
  ],
};

/// Descriptor for `ProjectIdMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectIdMessageDescriptor = $convert.base64Decode(
    'ChBQcm9qZWN0SWRNZXNzYWdlEh0KCnByb2plY3RfaWQYASABKAlSCXByb2plY3RJZA==');

@$core.Deprecated('Use versionIdMessageDescriptor instead')
const VersionIdMessage$json = {
  '1': 'VersionIdMessage',
  '2': [
    {'1': 'version_id', '3': 1, '4': 1, '5': 9, '10': 'versionId'},
  ],
};

/// Descriptor for `VersionIdMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionIdMessageDescriptor = $convert.base64Decode(
    'ChBWZXJzaW9uSWRNZXNzYWdlEh0KCnZlcnNpb25faWQYASABKAlSCXZlcnNpb25JZA==');

@$core.Deprecated('Use versionMessageDescriptor instead')
const VersionMessage$json = {
  '1': 'VersionMessage',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
  ],
};

/// Descriptor for `VersionMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionMessageDescriptor = $convert.base64Decode(
    'Cg5WZXJzaW9uTWVzc2FnZRIdCgpwcm9qZWN0X2lkGAEgASgJUglwcm9qZWN0SWQSHQoKdmVyc2'
    'lvbl9pZBgCIAEoCVIJdmVyc2lvbklk');

@$core.Deprecated('Use mapVersionMessageDescriptor instead')
const MapVersionMessage$json = {
  '1': 'MapVersionMessage',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'business_map_id', '3': 3, '4': 1, '5': 3, '10': 'businessMapId'},
  ],
};

/// Descriptor for `MapVersionMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapVersionMessageDescriptor = $convert.base64Decode(
    'ChFNYXBWZXJzaW9uTWVzc2FnZRIdCgpwcm9qZWN0X2lkGAEgASgJUglwcm9qZWN0SWQSHQoKdm'
    'Vyc2lvbl9pZBgCIAEoCVIJdmVyc2lvbklkEiYKD2J1c2luZXNzX21hcF9pZBgDIAEoA1INYnVz'
    'aW5lc3NNYXBJZA==');

@$core.Deprecated('Use neo4jMarkValueDescriptor instead')
const Neo4jMarkValue$json = {
  '1': 'Neo4jMarkValue',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'mark_value', '3': 2, '4': 1, '5': 9, '10': 'markValue'},
  ],
};

/// Descriptor for `Neo4jMarkValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jMarkValueDescriptor = $convert.base64Decode(
    'Cg5OZW80ak1hcmtWYWx1ZRIOCgJpZBgBIAEoA1ICaWQSHQoKbWFya192YWx1ZRgCIAEoCVIJbW'
    'Fya1ZhbHVl');

@$core.Deprecated('Use neo4jMarkValuesDescriptor instead')
const Neo4jMarkValues$json = {
  '1': 'Neo4jMarkValues',
  '2': [
    {'1': 'bsmap_ids', '3': 1, '4': 3, '5': 3, '10': 'bsmapIds'},
    {
      '1': 'values',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Neo4jMarkValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `Neo4jMarkValues`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jMarkValuesDescriptor = $convert.base64Decode(
    'Cg9OZW80ak1hcmtWYWx1ZXMSGwoJYnNtYXBfaWRzGAEgAygDUghic21hcElkcxIzCgZ2YWx1ZX'
    'MYAiADKAsyGy5nYWxheGlzLm1hcC5OZW80ak1hcmtWYWx1ZVIGdmFsdWVz');

@$core.Deprecated('Use neo4jMarkValueResponseDescriptor instead')
const Neo4jMarkValueResponse$json = {
  '1': 'Neo4jMarkValueResponse',
  '2': [
    {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Neo4jMarkValues',
      '10': 'values'
    },
  ],
};

/// Descriptor for `Neo4jMarkValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jMarkValueResponseDescriptor =
    $convert.base64Decode(
        'ChZOZW80ak1hcmtWYWx1ZVJlc3BvbnNlEjQKBnZhbHVlcxgBIAMoCzIcLmdhbGF4aXMubWFwLk'
        '5lbzRqTWFya1ZhbHVlc1IGdmFsdWVz');

@$core.Deprecated('Use uploadNeo4jMarkValuesRequestDescriptor instead')
const UploadNeo4jMarkValuesRequest$json = {
  '1': 'UploadNeo4jMarkValuesRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VersionMapSpecifyData',
      '10': 'data'
    },
    {
      '1': 'values',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Neo4jMarkValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `UploadNeo4jMarkValuesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadNeo4jMarkValuesRequestDescriptor =
    $convert.base64Decode(
        'ChxVcGxvYWROZW80ak1hcmtWYWx1ZXNSZXF1ZXN0EjYKBGRhdGEYASABKAsyIi5nYWxheGlzLm'
        '1hcC5WZXJzaW9uTWFwU3BlY2lmeURhdGFSBGRhdGESMwoGdmFsdWVzGAIgAygLMhsuZ2FsYXhp'
        'cy5tYXAuTmVvNGpNYXJrVmFsdWVSBnZhbHVlcw==');

@$core.Deprecated('Use projectMapDataDescriptor instead')
const ProjectMapData$json = {
  '1': 'ProjectMapData',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ProjectInfo',
      '10': 'info'
    },
    {
      '1': 'map_data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MappingData',
      '10': 'mapData'
    },
    {
      '1': 'par_map_datas',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PartnerMapData',
      '10': 'parMapDatas'
    },
  ],
};

/// Descriptor for `ProjectMapData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectMapDataDescriptor = $convert.base64Decode(
    'Cg5Qcm9qZWN0TWFwRGF0YRIsCgRpbmZvGAEgASgLMhguZ2FsYXhpcy5tYXAuUHJvamVjdEluZm'
    '9SBGluZm8SMwoIbWFwX2RhdGEYAiABKAsyGC5nYWxheGlzLm1hcC5NYXBwaW5nRGF0YVIHbWFw'
    'RGF0YRI/Cg1wYXJfbWFwX2RhdGFzGAMgAygLMhsuZ2FsYXhpcy5tYXAuUGFydG5lck1hcERhdG'
    'FSC3Bhck1hcERhdGFz');

@$core.Deprecated('Use partnerMapDataDescriptor instead')
const PartnerMapData$json = {
  '1': 'PartnerMapData',
  '2': [
    {'1': 'bsmap_id', '3': 1, '4': 1, '5': 3, '10': 'bsmapId'},
    {'1': 'par_map_data', '3': 2, '4': 1, '5': 9, '10': 'parMapData'},
  ],
};

/// Descriptor for `PartnerMapData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partnerMapDataDescriptor = $convert.base64Decode(
    'Cg5QYXJ0bmVyTWFwRGF0YRIZCghic21hcF9pZBgBIAEoA1IHYnNtYXBJZBIgCgxwYXJfbWFwX2'
    'RhdGEYAiABKAlSCnBhck1hcERhdGE=');

@$core.Deprecated('Use commitMapDataRequestDescriptor instead')
const CommitMapDataRequest$json = {
  '1': 'CommitMapDataRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
    {
      '1': 'map_data',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MappingData',
      '9': 0,
      '10': 'mapData',
      '17': true
    },
    {
      '1': 'info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ProjectInfo',
      '9': 1,
      '10': 'info',
      '17': true
    },
    {
      '1': 'par_map_datas',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PartnerMapData',
      '10': 'parMapDatas'
    },
    {
      '1': 'remove_par_bsmap_ids',
      '3': 8,
      '4': 3,
      '5': 3,
      '10': 'removeParBsmapIds'
    },
  ],
  '8': [
    {'1': '_map_data'},
    {'1': '_info'},
  ],
};

/// Descriptor for `CommitMapDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitMapDataRequestDescriptor = $convert.base64Decode(
    'ChRDb21taXRNYXBEYXRhUmVxdWVzdBIdCgpwcm9qZWN0X2lkGAEgASgJUglwcm9qZWN0SWQSHQ'
    'oKdmVyc2lvbl9pZBgCIAEoCVIJdmVyc2lvbklkEhYKBmF1dGhvchgDIAEoCVIGYXV0aG9yEhgK'
    'B3N1bW1hcnkYBCABKAlSB3N1bW1hcnkSOAoIbWFwX2RhdGEYBSABKAsyGC5nYWxheGlzLm1hcC'
    '5NYXBwaW5nRGF0YUgAUgdtYXBEYXRhiAEBEjEKBGluZm8YBiABKAsyGC5nYWxheGlzLm1hcC5Q'
    'cm9qZWN0SW5mb0gBUgRpbmZviAEBEj8KDXBhcl9tYXBfZGF0YXMYByADKAsyGy5nYWxheGlzLm'
    '1hcC5QYXJ0bmVyTWFwRGF0YVILcGFyTWFwRGF0YXMSLwoUcmVtb3ZlX3Bhcl9ic21hcF9pZHMY'
    'CCADKANSEXJlbW92ZVBhckJzbWFwSWRzQgsKCV9tYXBfZGF0YUIHCgVfaW5mbw==');

@$core.Deprecated('Use restoreNeo4jBackupFileRequestDescriptor instead')
const RestoreNeo4jBackupFileRequest$json = {
  '1': 'RestoreNeo4jBackupFileRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VersionMapSpecifyData',
      '9': 0,
      '10': 'data',
      '17': true
    },
    {'1': 'backup_file', '3': 2, '4': 1, '5': 9, '10': 'backupFile'},
  ],
  '8': [
    {'1': '_data'},
  ],
};

/// Descriptor for `RestoreNeo4jBackupFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreNeo4jBackupFileRequestDescriptor =
    $convert.base64Decode(
        'Ch1SZXN0b3JlTmVvNGpCYWNrdXBGaWxlUmVxdWVzdBI7CgRkYXRhGAEgASgLMiIuZ2FsYXhpcy'
        '5tYXAuVmVyc2lvbk1hcFNwZWNpZnlEYXRhSABSBGRhdGGIAQESHwoLYmFja3VwX2ZpbGUYAiAB'
        'KAlSCmJhY2t1cEZpbGVCBwoFX2RhdGE=');

@$core.Deprecated('Use neo4jOperationRequestDescriptor instead')
const Neo4jOperationRequest$json = {
  '1': 'Neo4jOperationRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VersionMapSpecifyData',
      '10': 'data'
    },
    {
      '1': 'oper',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.Neo4jOperation',
      '10': 'oper'
    },
  ],
};

/// Descriptor for `Neo4jOperationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jOperationRequestDescriptor = $convert.base64Decode(
    'ChVOZW80ak9wZXJhdGlvblJlcXVlc3QSNgoEZGF0YRgBIAEoCzIiLmdhbGF4aXMubWFwLlZlcn'
    'Npb25NYXBTcGVjaWZ5RGF0YVIEZGF0YRIvCgRvcGVyGAIgASgOMhsuZ2FsYXhpcy5tYXAuTmVv'
    'NGpPcGVyYXRpb25SBG9wZXI=');

@$core.Deprecated('Use mapEventRequestDescriptor instead')
const MapEventRequest$json = {
  '1': 'MapEventRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'business_map_id', '3': 2, '4': 1, '5': 3, '10': 'businessMapId'},
    {
      '1': 'last_update_ts',
      '3': 3,
      '4': 1,
      '5': 3,
      '9': 0,
      '10': 'lastUpdateTs',
      '17': true
    },
  ],
  '8': [
    {'1': '_last_update_ts'},
  ],
};

/// Descriptor for `MapEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapEventRequestDescriptor = $convert.base64Decode(
    'Cg9NYXBFdmVudFJlcXVlc3QSHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdElkEiYKD2J1c2'
    'luZXNzX21hcF9pZBgCIAEoA1INYnVzaW5lc3NNYXBJZBIpCg5sYXN0X3VwZGF0ZV90cxgDIAEo'
    'A0gAUgxsYXN0VXBkYXRlVHOIAQFCEQoPX2xhc3RfdXBkYXRlX3Rz');

@$core.Deprecated('Use nodeMarkerCodeDescriptor instead')
const NodeMarkerCode$json = {
  '1': 'NodeMarkerCode',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '10': 'nodeId'},
    {'1': 'marker_code', '3': 2, '4': 1, '5': 9, '10': 'markerCode'},
  ],
};

/// Descriptor for `NodeMarkerCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMarkerCodeDescriptor = $convert.base64Decode(
    'Cg5Ob2RlTWFya2VyQ29kZRIXCgdub2RlX2lkGAEgASgDUgZub2RlSWQSHwoLbWFya2VyX2NvZG'
    'UYAiABKAlSCm1hcmtlckNvZGU=');

@$core.Deprecated('Use nodeMarkerCodesDescriptor instead')
const NodeMarkerCodes$json = {
  '1': 'NodeMarkerCodes',
  '2': [
    {
      '1': 'markers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodeMarkerCode',
      '10': 'markers'
    },
  ],
};

/// Descriptor for `NodeMarkerCodes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMarkerCodesDescriptor = $convert.base64Decode(
    'Cg9Ob2RlTWFya2VyQ29kZXMSNQoHbWFya2VycxgBIAMoCzIbLmdhbGF4aXMubWFwLk5vZGVNYX'
    'JrZXJDb2RlUgdtYXJrZXJz');

@$core.Deprecated('Use mapEventDescriptor instead')
const MapEvent$json = {
  '1': 'MapEvent',
  '2': [
    {
      '1': 'clear_cache',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Empty',
      '9': 0,
      '10': 'clearCache'
    },
    {
      '1': 'active',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VersionIdMessage',
      '9': 0,
      '10': 'active'
    },
    {
      '1': 'markers',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.NodeMarkerCodes',
      '9': 0,
      '10': 'markers'
    },
  ],
  '8': [
    {'1': 'map_event_type'},
  ],
};

/// Descriptor for `MapEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapEventDescriptor = $convert.base64Decode(
    'CghNYXBFdmVudBI5CgtjbGVhcl9jYWNoZRgBIAEoCzIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eU'
    'gAUgpjbGVhckNhY2hlEjcKBmFjdGl2ZRgCIAEoCzIdLmdhbGF4aXMubWFwLlZlcnNpb25JZE1l'
    'c3NhZ2VIAFIGYWN0aXZlEjgKB21hcmtlcnMYAyABKAsyHC5nYWxheGlzLm1hcC5Ob2RlTWFya2'
    'VyQ29kZXNIAFIHbWFya2Vyc0IQCg5tYXBfZXZlbnRfdHlwZQ==');

@$core.Deprecated('Use mapEventsDescriptor instead')
const MapEvents$json = {
  '1': 'MapEvents',
  '2': [
    {'1': 'update_ts', '3': 1, '4': 1, '5': 3, '10': 'updateTs'},
    {
      '1': 'events',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MapEvent',
      '10': 'events'
    },
  ],
};

/// Descriptor for `MapEvents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapEventsDescriptor = $convert.base64Decode(
    'CglNYXBFdmVudHMSGwoJdXBkYXRlX3RzGAEgASgDUgh1cGRhdGVUcxItCgZldmVudHMYAiADKA'
    'syFS5nYWxheGlzLm1hcC5NYXBFdmVudFIGZXZlbnRz');

@$core.Deprecated('Use updateMarkerCodesRequestDescriptor instead')
const UpdateMarkerCodesRequest$json = {
  '1': 'UpdateMarkerCodesRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'business_map_id', '3': 3, '4': 1, '5': 3, '10': 'businessMapId'},
    {
      '1': 'markers',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodeMarkerCode',
      '10': 'markers'
    },
  ],
};

/// Descriptor for `UpdateMarkerCodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMarkerCodesRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVNYXJrZXJDb2Rlc1JlcXVlc3QSHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdE'
    'lkEh0KCnZlcnNpb25faWQYAiABKAlSCXZlcnNpb25JZBImCg9idXNpbmVzc19tYXBfaWQYAyAB'
    'KANSDWJ1c2luZXNzTWFwSWQSNQoHbWFya2VycxgEIAMoCzIbLmdhbGF4aXMubWFwLk5vZGVNYX'
    'JrZXJDb2RlUgdtYXJrZXJz');

@$core.Deprecated('Use versionMapSpecifyDataDescriptor instead')
const VersionMapSpecifyData$json = {
  '1': 'VersionMapSpecifyData',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'business_map_ids', '3': 3, '4': 3, '5': 3, '10': 'businessMapIds'},
    {'1': 'specify_robots', '3': 4, '4': 3, '5': 9, '10': 'specifyRobots'},
  ],
};

/// Descriptor for `VersionMapSpecifyData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionMapSpecifyDataDescriptor = $convert.base64Decode(
    'ChVWZXJzaW9uTWFwU3BlY2lmeURhdGESHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdElkEh'
    '0KCnZlcnNpb25faWQYAiABKAlSCXZlcnNpb25JZBIoChBidXNpbmVzc19tYXBfaWRzGAMgAygD'
    'Ug5idXNpbmVzc01hcElkcxIlCg5zcGVjaWZ5X3JvYm90cxgEIAMoCVINc3BlY2lmeVJvYm90cw'
    '==');

@$core.Deprecated('Use neo4jVersionInfoDescriptor instead')
const Neo4jVersionInfo$json = {
  '1': 'Neo4jVersionInfo',
  '2': [
    {'1': 'bsmap_ids', '3': 1, '4': 3, '5': 3, '10': 'bsmapIds'},
    {
      '1': 'neo4j_project_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'neo4jProjectId',
      '17': true
    },
    {
      '1': 'neo4j_version_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'neo4jVersionId',
      '17': true
    },
  ],
  '8': [
    {'1': '_neo4j_project_id'},
    {'1': '_neo4j_version_id'},
  ],
};

/// Descriptor for `Neo4jVersionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jVersionInfoDescriptor = $convert.base64Decode(
    'ChBOZW80alZlcnNpb25JbmZvEhsKCWJzbWFwX2lkcxgBIAMoA1IIYnNtYXBJZHMSLQoQbmVvNG'
    'pfcHJvamVjdF9pZBgCIAEoCUgAUg5uZW80alByb2plY3RJZIgBARItChBuZW80al92ZXJzaW9u'
    'X2lkGAMgASgJSAFSDm5lbzRqVmVyc2lvbklkiAEBQhMKEV9uZW80al9wcm9qZWN0X2lkQhMKEV'
    '9uZW80al92ZXJzaW9uX2lk');

@$core.Deprecated('Use neo4jVersionInfoResponseDescriptor instead')
const Neo4jVersionInfoResponse$json = {
  '1': 'Neo4jVersionInfoResponse',
  '2': [
    {
      '1': 'infos',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Neo4jVersionInfo',
      '10': 'infos'
    },
  ],
};

/// Descriptor for `Neo4jVersionInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List neo4jVersionInfoResponseDescriptor =
    $convert.base64Decode(
        'ChhOZW80alZlcnNpb25JbmZvUmVzcG9uc2USMwoFaW5mb3MYASADKAsyHS5nYWxheGlzLm1hcC'
        '5OZW80alZlcnNpb25JbmZvUgVpbmZvcw==');

@$core.Deprecated('Use rcsVersionInfoDescriptor instead')
const RcsVersionInfo$json = {
  '1': 'RcsVersionInfo',
  '2': [
    {'1': 'business_map_ids', '3': 1, '4': 3, '5': 3, '10': 'businessMapIds'},
    {
      '1': 'rcs_version_id',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'rcsVersionId',
      '17': true
    },
    {'1': 'need_update', '3': 3, '4': 1, '5': 8, '10': 'needUpdate'},
  ],
  '8': [
    {'1': '_rcs_version_id'},
  ],
};

/// Descriptor for `RcsVersionInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rcsVersionInfoDescriptor = $convert.base64Decode(
    'Cg5SY3NWZXJzaW9uSW5mbxIoChBidXNpbmVzc19tYXBfaWRzGAEgAygDUg5idXNpbmVzc01hcE'
    'lkcxIpCg5yY3NfdmVyc2lvbl9pZBgCIAEoCUgAUgxyY3NWZXJzaW9uSWSIAQESHwoLbmVlZF91'
    'cGRhdGUYAyABKAhSCm5lZWRVcGRhdGVCEQoPX3Jjc192ZXJzaW9uX2lk');

@$core.Deprecated('Use rcsVersionInfoResponseDescriptor instead')
const RcsVersionInfoResponse$json = {
  '1': 'RcsVersionInfoResponse',
  '2': [
    {
      '1': 'rcs_vers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.RcsVersionInfo',
      '10': 'rcsVers'
    },
  ],
};

/// Descriptor for `RcsVersionInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rcsVersionInfoResponseDescriptor =
    $convert.base64Decode(
        'ChZSY3NWZXJzaW9uSW5mb1Jlc3BvbnNlEjYKCHJjc192ZXJzGAEgAygLMhsuZ2FsYXhpcy5tYX'
        'AuUmNzVmVyc2lvbkluZm9SB3Jjc1ZlcnM=');

@$core.Deprecated('Use uploadNeo4jDataRequestDescriptor instead')
const UploadNeo4jDataRequest$json = {
  '1': 'UploadNeo4jDataRequest',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.VersionMapSpecifyData',
      '10': 'data'
    },
    {'1': 'cmds', '3': 2, '4': 3, '5': 9, '10': 'cmds'},
    {'1': 'a_arg', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'aArg', '17': true},
  ],
  '8': [
    {'1': '_a_arg'},
  ],
};

/// Descriptor for `UploadNeo4jDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadNeo4jDataRequestDescriptor = $convert.base64Decode(
    'ChZVcGxvYWROZW80akRhdGFSZXF1ZXN0EjYKBGRhdGEYASABKAsyIi5nYWxheGlzLm1hcC5WZX'
    'JzaW9uTWFwU3BlY2lmeURhdGFSBGRhdGESEgoEY21kcxgCIAMoCVIEY21kcxIYCgVhX2FyZxgD'
    'IAEoCUgAUgRhQXJniAEBQggKBl9hX2FyZw==');

@$core.Deprecated('Use uploadNeo4jDataDescriptor instead')
const UploadNeo4jData$json = {
  '1': 'UploadNeo4jData',
  '2': [
    {'1': 'bsmap_ids', '3': 1, '4': 3, '5': 3, '10': 'bsmapIds'},
    {'1': 'accept_a_arg', '3': 2, '4': 1, '5': 9, '10': 'acceptAArg'},
    {'1': 'output', '3': 3, '4': 1, '5': 9, '10': 'output'},
  ],
};

/// Descriptor for `UploadNeo4jData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadNeo4jDataDescriptor = $convert.base64Decode(
    'Cg9VcGxvYWROZW80akRhdGESGwoJYnNtYXBfaWRzGAEgAygDUghic21hcElkcxIgCgxhY2NlcH'
    'RfYV9hcmcYAiABKAlSCmFjY2VwdEFBcmcSFgoGb3V0cHV0GAMgASgJUgZvdXRwdXQ=');

@$core.Deprecated('Use uploadNeo4jDataResponseDescriptor instead')
const UploadNeo4jDataResponse$json = {
  '1': 'UploadNeo4jDataResponse',
  '2': [
    {
      '1': 'data',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.UploadNeo4jData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `UploadNeo4jDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadNeo4jDataResponseDescriptor =
    $convert.base64Decode(
        'ChdVcGxvYWROZW80akRhdGFSZXNwb25zZRIwCgRkYXRhGAEgAygLMhwuZ2FsYXhpcy5tYXAuVX'
        'Bsb2FkTmVvNGpEYXRhUgRkYXRh');

@$core.Deprecated('Use stringItemsDescriptor instead')
const StringItems$json = {
  '1': 'StringItems',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `StringItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringItemsDescriptor =
    $convert.base64Decode('CgtTdHJpbmdJdGVtcxIUCgVpdGVtcxgBIAMoCVIFaXRlbXM=');

@$core.Deprecated('Use checkPartnerMapCompatibleRequestDescriptor instead')
const CheckPartnerMapCompatibleRequest$json = {
  '1': 'CheckPartnerMapCompatibleRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'bsmap_id', '3': 2, '4': 1, '5': 3, '10': 'bsmapId'},
    {'1': 'par_map_code', '3': 3, '4': 1, '5': 9, '10': 'parMapCode'},
    {'1': 'par_map_ver', '3': 4, '4': 1, '5': 9, '10': 'parMapVer'},
  ],
};

/// Descriptor for `CheckPartnerMapCompatibleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkPartnerMapCompatibleRequestDescriptor =
    $convert.base64Decode(
        'CiBDaGVja1BhcnRuZXJNYXBDb21wYXRpYmxlUmVxdWVzdBIdCgpwcm9qZWN0X2lkGAEgASgJUg'
        'lwcm9qZWN0SWQSGQoIYnNtYXBfaWQYAiABKANSB2JzbWFwSWQSIAoMcGFyX21hcF9jb2RlGAMg'
        'ASgJUgpwYXJNYXBDb2RlEh4KC3Bhcl9tYXBfdmVyGAQgASgJUglwYXJNYXBWZXI=');

@$core.Deprecated('Use commitPartnerMapAndUpgradeRequestDescriptor instead')
const CommitPartnerMapAndUpgradeRequest$json = {
  '1': 'CommitPartnerMapAndUpgradeRequest',
  '2': [
    {'1': 'agv_id', '3': 1, '4': 1, '5': 3, '10': 'agvId'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'bsmap_id', '3': 3, '4': 1, '5': 3, '10': 'bsmapId'},
    {'1': 'par_map_data', '3': 4, '4': 1, '5': 9, '10': 'parMapData'},
  ],
};

/// Descriptor for `CommitPartnerMapAndUpgradeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitPartnerMapAndUpgradeRequestDescriptor =
    $convert.base64Decode(
        'CiFDb21taXRQYXJ0bmVyTWFwQW5kVXBncmFkZVJlcXVlc3QSFQoGYWd2X2lkGAEgASgDUgVhZ3'
        'ZJZBIdCgpwcm9qZWN0X2lkGAIgASgJUglwcm9qZWN0SWQSGQoIYnNtYXBfaWQYAyABKANSB2Jz'
        'bWFwSWQSIAoMcGFyX21hcF9kYXRhGAQgASgJUgpwYXJNYXBEYXRh');

@$core.Deprecated('Use setMapMarkerCodeRequestDescriptor instead')
const SetMapMarkerCodeRequest$json = {
  '1': 'SetMapMarkerCodeRequest',
  '2': [
    {'1': 'agv_id', '3': 1, '4': 1, '5': 3, '10': 'agvId'},
    {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 3, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'bsmap_id', '3': 4, '4': 1, '5': 3, '10': 'bsmapId'},
    {'1': 'logic_x', '3': 5, '4': 1, '5': 3, '10': 'logicX'},
    {'1': 'logic_y', '3': 6, '4': 1, '5': 3, '10': 'logicY'},
    {'1': 'marker_code', '3': 7, '4': 1, '5': 9, '10': 'markerCode'},
  ],
};

/// Descriptor for `SetMapMarkerCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMapMarkerCodeRequestDescriptor = $convert.base64Decode(
    'ChdTZXRNYXBNYXJrZXJDb2RlUmVxdWVzdBIVCgZhZ3ZfaWQYASABKANSBWFndklkEh0KCnByb2'
    'plY3RfaWQYAiABKAlSCXByb2plY3RJZBIdCgp2ZXJzaW9uX2lkGAMgASgJUgl2ZXJzaW9uSWQS'
    'GQoIYnNtYXBfaWQYBCABKANSB2JzbWFwSWQSFwoHbG9naWNfeBgFIAEoA1IGbG9naWNYEhcKB2'
    'xvZ2ljX3kYBiABKANSBmxvZ2ljWRIfCgttYXJrZXJfY29kZRgHIAEoCVIKbWFya2VyQ29kZQ==');

@$core.Deprecated('Use getMapDataPartRequestDescriptor instead')
const GetMapDataPartRequest$json = {
  '1': 'GetMapDataPartRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'business_map_ids', '3': 3, '4': 3, '5': 3, '10': 'businessMapIds'},
    {
      '1': 'ContainsPrivateData',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'ContainsPrivateData'
    },
  ],
};

/// Descriptor for `GetMapDataPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDataPartRequestDescriptor = $convert.base64Decode(
    'ChVHZXRNYXBEYXRhUGFydFJlcXVlc3QSHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdElkEh'
    '0KCnZlcnNpb25faWQYAiABKAlSCXZlcnNpb25JZBIoChBidXNpbmVzc19tYXBfaWRzGAMgAygD'
    'Ug5idXNpbmVzc01hcElkcxIwChNDb250YWluc1ByaXZhdGVEYXRhGAQgASgIUhNDb250YWluc1'
    'ByaXZhdGVEYXRh');

@$core.Deprecated('Use getMapDataDetailPartRequestDescriptor instead')
const GetMapDataDetailPartRequest$json = {
  '1': 'GetMapDataDetailPartRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'business_map_id', '3': 3, '4': 1, '5': 3, '10': 'businessMapId'},
    {
      '1': 'query_items',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MapDataItem',
      '10': 'queryItems'
    },
  ],
};

/// Descriptor for `GetMapDataDetailPartRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDataDetailPartRequestDescriptor = $convert.base64Decode(
    'ChtHZXRNYXBEYXRhRGV0YWlsUGFydFJlcXVlc3QSHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvam'
    'VjdElkEh0KCnZlcnNpb25faWQYAiABKAlSCXZlcnNpb25JZBImCg9idXNpbmVzc19tYXBfaWQY'
    'AyABKANSDWJ1c2luZXNzTWFwSWQSOQoLcXVlcnlfaXRlbXMYBCADKAsyGC5nYWxheGlzLm1hcC'
    '5NYXBEYXRhSXRlbVIKcXVlcnlJdGVtcw==');

@$core.Deprecated('Use mapDataItemDescriptor instead')
const MapDataItem$json = {
  '1': 'MapDataItem',
  '2': [
    {
      '1': 'item_type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ElementType',
      '10': 'itemType'
    },
    {'1': 'item_id', '3': 2, '4': 1, '5': 3, '10': 'itemId'},
  ],
};

/// Descriptor for `MapDataItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapDataItemDescriptor = $convert.base64Decode(
    'CgtNYXBEYXRhSXRlbRI1CglpdGVtX3R5cGUYASABKA4yGC5nYWxheGlzLm1hcC5FbGVtZW50VH'
    'lwZVIIaXRlbVR5cGUSFwoHaXRlbV9pZBgCIAEoA1IGaXRlbUlk');

@$core.Deprecated('Use mapDataItemsDescriptor instead')
const MapDataItems$json = {
  '1': 'MapDataItems',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.MapDataItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `MapDataItems`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapDataItemsDescriptor = $convert.base64Decode(
    'CgxNYXBEYXRhSXRlbXMSLgoFaXRlbXMYASADKAsyGC5nYWxheGlzLm1hcC5NYXBEYXRhSXRlbV'
    'IFaXRlbXM=');

@$core.Deprecated('Use commitMapDataDiffRequestDescriptor instead')
const CommitMapDataDiffRequest$json = {
  '1': 'CommitMapDataDiffRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id', '3': 2, '4': 1, '5': 9, '10': 'versionId'},
    {'1': 'author', '3': 3, '4': 1, '5': 9, '10': 'author'},
    {'1': 'summary', '3': 4, '4': 1, '5': 9, '10': 'summary'},
    {
      '1': 'content',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.MappingDataDiff',
      '9': 0,
      '10': 'content',
      '17': true
    },
    {
      '1': 'info',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.ProjectInfo',
      '9': 1,
      '10': 'info',
      '17': true
    },
    {
      '1': 'par_map_datas',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.PartnerMapData',
      '10': 'parMapDatas'
    },
    {
      '1': 'remove_par_bsmap_ids',
      '3': 8,
      '4': 3,
      '5': 3,
      '10': 'removeParBsmapIds'
    },
  ],
  '8': [
    {'1': '_content'},
    {'1': '_info'},
  ],
};

/// Descriptor for `CommitMapDataDiffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commitMapDataDiffRequestDescriptor = $convert.base64Decode(
    'ChhDb21taXRNYXBEYXRhRGlmZlJlcXVlc3QSHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdE'
    'lkEh0KCnZlcnNpb25faWQYAiABKAlSCXZlcnNpb25JZBIWCgZhdXRob3IYAyABKAlSBmF1dGhv'
    'chIYCgdzdW1tYXJ5GAQgASgJUgdzdW1tYXJ5EjsKB2NvbnRlbnQYBSABKAsyHC5nYWxheGlzLm'
    '1hcC5NYXBwaW5nRGF0YURpZmZIAFIHY29udGVudIgBARIxCgRpbmZvGAYgASgLMhguZ2FsYXhp'
    'cy5tYXAuUHJvamVjdEluZm9IAVIEaW5mb4gBARI/Cg1wYXJfbWFwX2RhdGFzGAcgAygLMhsuZ2'
    'FsYXhpcy5tYXAuUGFydG5lck1hcERhdGFSC3Bhck1hcERhdGFzEi8KFHJlbW92ZV9wYXJfYnNt'
    'YXBfaWRzGAggAygDUhFyZW1vdmVQYXJCc21hcElkc0IKCghfY29udGVudEIHCgVfaW5mbw==');

@$core.Deprecated('Use versionsMessageDescriptor instead')
const VersionsMessage$json = {
  '1': 'VersionsMessage',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    {'1': 'version_id1', '3': 2, '4': 1, '5': 9, '10': 'versionId1'},
    {'1': 'version_id2', '3': 3, '4': 1, '5': 9, '10': 'versionId2'},
  ],
};

/// Descriptor for `VersionsMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionsMessageDescriptor = $convert.base64Decode(
    'Cg9WZXJzaW9uc01lc3NhZ2USHQoKcHJvamVjdF9pZBgBIAEoCVIJcHJvamVjdElkEh8KC3Zlcn'
    'Npb25faWQxGAIgASgJUgp2ZXJzaW9uSWQxEh8KC3ZlcnNpb25faWQyGAMgASgJUgp2ZXJzaW9u'
    'SWQy');

@$core.Deprecated('Use privateDataDiffDescriptor instead')
const PrivateDataDiff$json = {
  '1': 'PrivateDataDiff',
  '2': [
    {
      '1': 'modify_pvdata',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.PrivateData',
      '9': 0,
      '10': 'modifyPvdata',
      '17': true
    },
    {
      '1': 'remove_in_path_site_idxs',
      '3': 2,
      '4': 3,
      '5': 5,
      '10': 'removeInPathSiteIdxs'
    },
    {
      '1': 'remove_in_site_path_idxs',
      '3': 3,
      '4': 3,
      '5': 5,
      '10': 'removeInSitePathIdxs'
    },
    {
      '1': 'remove_entity_info_ids',
      '3': 4,
      '4': 3,
      '5': 3,
      '10': 'removeEntityInfoIds'
    },
    {
      '1': 'remove_tooling_data_ids',
      '3': 5,
      '4': 3,
      '5': 3,
      '10': 'removeToolingDataIds'
    },
  ],
  '8': [
    {'1': '_modify_pvdata'},
  ],
};

/// Descriptor for `PrivateDataDiff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List privateDataDiffDescriptor = $convert.base64Decode(
    'Cg9Qcml2YXRlRGF0YURpZmYSQgoNbW9kaWZ5X3B2ZGF0YRgBIAEoCzIYLmdhbGF4aXMubWFwLl'
    'ByaXZhdGVEYXRhSABSDG1vZGlmeVB2ZGF0YYgBARI2ChhyZW1vdmVfaW5fcGF0aF9zaXRlX2lk'
    'eHMYAiADKAVSFHJlbW92ZUluUGF0aFNpdGVJZHhzEjYKGHJlbW92ZV9pbl9zaXRlX3BhdGhfaW'
    'R4cxgDIAMoBVIUcmVtb3ZlSW5TaXRlUGF0aElkeHMSMwoWcmVtb3ZlX2VudGl0eV9pbmZvX2lk'
    'cxgEIAMoA1ITcmVtb3ZlRW50aXR5SW5mb0lkcxI1ChdyZW1vdmVfdG9vbGluZ19kYXRhX2lkcx'
    'gFIAMoA1IUcmVtb3ZlVG9vbGluZ0RhdGFJZHNCEAoOX21vZGlmeV9wdmRhdGE=');

@$core.Deprecated('Use businessMapDiffDescriptor instead')
const BusinessMapDiff$json = {
  '1': 'BusinessMapDiff',
  '2': [
    {'1': 'bsmap_id', '3': 1, '4': 1, '5': 3, '10': 'bsmapId'},
    {
      '1': 'modify_bsmap',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.BusinessMap',
      '9': 0,
      '10': 'modifyBsmap',
      '17': true
    },
    {'1': 'remove_node_ids', '3': 3, '4': 3, '5': 3, '10': 'removeNodeIds'},
    {'1': 'remove_edge_ids', '3': 4, '4': 3, '5': 3, '10': 'removeEdgeIds'},
    {
      '1': 'remove_goods_slot_ids',
      '3': 5,
      '4': 3,
      '5': 3,
      '10': 'removeGoodsSlotIds'
    },
    {
      '1': 'remove_conflict_zone_ids',
      '3': 6,
      '4': 3,
      '5': 3,
      '10': 'removeConflictZoneIds'
    },
    {'1': 'remove_rack_ids', '3': 7, '4': 3, '5': 3, '10': 'removeRackIds'},
    {
      '1': 'remove_property_objects_ids',
      '3': 8,
      '4': 3,
      '5': 3,
      '10': 'removePropertyObjectsIds'
    },
    {
      '1': 'remove_functional_block_ids',
      '3': 9,
      '4': 3,
      '5': 3,
      '10': 'removeFunctionalBlockIds'
    },
    {
      '1': 'remove_goods_stack_data_ids',
      '3': 10,
      '4': 3,
      '5': 3,
      '10': 'removeGoodsStackDataIds'
    },
  ],
  '8': [
    {'1': '_modify_bsmap'},
  ],
};

/// Descriptor for `BusinessMapDiff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessMapDiffDescriptor = $convert.base64Decode(
    'Cg9CdXNpbmVzc01hcERpZmYSGQoIYnNtYXBfaWQYASABKANSB2JzbWFwSWQSQAoMbW9kaWZ5X2'
    'JzbWFwGAIgASgLMhguZ2FsYXhpcy5tYXAuQnVzaW5lc3NNYXBIAFILbW9kaWZ5QnNtYXCIAQES'
    'JgoPcmVtb3ZlX25vZGVfaWRzGAMgAygDUg1yZW1vdmVOb2RlSWRzEiYKD3JlbW92ZV9lZGdlX2'
    'lkcxgEIAMoA1INcmVtb3ZlRWRnZUlkcxIxChVyZW1vdmVfZ29vZHNfc2xvdF9pZHMYBSADKANS'
    'EnJlbW92ZUdvb2RzU2xvdElkcxI3ChhyZW1vdmVfY29uZmxpY3Rfem9uZV9pZHMYBiADKANSFX'
    'JlbW92ZUNvbmZsaWN0Wm9uZUlkcxImCg9yZW1vdmVfcmFja19pZHMYByADKANSDXJlbW92ZVJh'
    'Y2tJZHMSPQobcmVtb3ZlX3Byb3BlcnR5X29iamVjdHNfaWRzGAggAygDUhhyZW1vdmVQcm9wZX'
    'J0eU9iamVjdHNJZHMSPQobcmVtb3ZlX2Z1bmN0aW9uYWxfYmxvY2tfaWRzGAkgAygDUhhyZW1v'
    'dmVGdW5jdGlvbmFsQmxvY2tJZHMSPAobcmVtb3ZlX2dvb2RzX3N0YWNrX2RhdGFfaWRzGAogAy'
    'gDUhdyZW1vdmVHb29kc1N0YWNrRGF0YUlkc0IPCg1fbW9kaWZ5X2JzbWFw');

@$core.Deprecated('Use mappingDataDiffDescriptor instead')
const MappingDataDiff$json = {
  '1': 'MappingDataDiff',
  '2': [
    {
      '1': 'modify_items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.BusinessMapDiff',
      '10': 'modifyItems'
    },
    {'1': 'remove_bsmap_ids', '3': 2, '4': 3, '5': 3, '10': 'removeBsmapIds'},
    {
      '1': 'pvdata_diff',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.PrivateDataDiff',
      '9': 0,
      '10': 'pvdataDiff',
      '17': true
    },
  ],
  '8': [
    {'1': '_pvdata_diff'},
  ],
};

/// Descriptor for `MappingDataDiff`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mappingDataDiffDescriptor = $convert.base64Decode(
    'Cg9NYXBwaW5nRGF0YURpZmYSPwoMbW9kaWZ5X2l0ZW1zGAEgAygLMhwuZ2FsYXhpcy5tYXAuQn'
    'VzaW5lc3NNYXBEaWZmUgttb2RpZnlJdGVtcxIoChByZW1vdmVfYnNtYXBfaWRzGAIgAygDUg5y'
    'ZW1vdmVCc21hcElkcxJCCgtwdmRhdGFfZGlmZhgDIAEoCzIcLmdhbGF4aXMubWFwLlByaXZhdG'
    'VEYXRhRGlmZkgAUgpwdmRhdGFEaWZmiAEBQg4KDF9wdmRhdGFfZGlmZg==');

@$core.Deprecated('Use nodePartDescriptor instead')
const NodePart$json = {
  '1': 'NodePart',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'markerType',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.MarkerType',
      '10': 'markerType'
    },
    {
      '1': 'location',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.Point',
      '9': 0,
      '10': 'location',
      '17': true
    },
    {
      '1': 'logicLocation',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.Point',
      '9': 1,
      '10': 'logicLocation',
      '17': true
    },
  ],
  '8': [
    {'1': '_location'},
    {'1': '_logicLocation'},
  ],
};

/// Descriptor for `NodePart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePartDescriptor = $convert.base64Decode(
    'CghOb2RlUGFydBIOCgJpZBgBIAEoA1ICaWQSNwoKbWFya2VyVHlwZRgCIAEoDjIXLmdhbGF4aX'
    'MubWFwLk1hcmtlclR5cGVSCm1hcmtlclR5cGUSMwoIbG9jYXRpb24YAyABKAsyEi5nYWxheGlz'
    'Lm1hcC5Qb2ludEgAUghsb2NhdGlvbogBARI9Cg1sb2dpY0xvY2F0aW9uGAQgASgLMhIuZ2FsYX'
    'hpcy5tYXAuUG9pbnRIAVINbG9naWNMb2NhdGlvbogBAUILCglfbG9jYXRpb25CEAoOX2xvZ2lj'
    'TG9jYXRpb24=');

@$core.Deprecated('Use edgePartDescriptor instead')
const EdgePart$json = {
  '1': 'EdgePart',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'endpoint1Id', '3': 2, '4': 1, '5': 3, '10': 'endpoint1Id'},
    {'1': 'endpoint2Id', '3': 3, '4': 1, '5': 3, '10': 'endpoint2Id'},
  ],
};

/// Descriptor for `EdgePart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgePartDescriptor = $convert.base64Decode(
    'CghFZGdlUGFydBIOCgJpZBgBIAEoA1ICaWQSIAoLZW5kcG9pbnQxSWQYAiABKANSC2VuZHBvaW'
    '50MUlkEiAKC2VuZHBvaW50MklkGAMgASgDUgtlbmRwb2ludDJJZA==');

@$core.Deprecated('Use goodsSlotPartDescriptor instead')
const GoodsSlotPart$json = {
  '1': 'GoodsSlotPart',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'horizontalGroupId',
      '3': 2,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'horizontalGroupId',
      '17': true
    },
    {
      '1': 'verticalGroupId',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'verticalGroupId',
      '17': true
    },
    {
      '1': 'localNumber',
      '3': 4,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'localNumber',
      '17': true
    },
    {
      '1': 'displayNumber',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 3,
      '10': 'displayNumber',
      '17': true
    },
  ],
  '8': [
    {'1': '_horizontalGroupId'},
    {'1': '_verticalGroupId'},
    {'1': '_localNumber'},
    {'1': '_displayNumber'},
  ],
};

/// Descriptor for `GoodsSlotPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List goodsSlotPartDescriptor = $convert.base64Decode(
    'Cg1Hb29kc1Nsb3RQYXJ0Eg4KAmlkGAEgASgDUgJpZBIxChFob3Jpem9udGFsR3JvdXBJZBgCIA'
    'EoCUgAUhFob3Jpem9udGFsR3JvdXBJZIgBARItCg92ZXJ0aWNhbEdyb3VwSWQYAyABKAlIAVIP'
    'dmVydGljYWxHcm91cElkiAEBEiUKC2xvY2FsTnVtYmVyGAQgASgJSAJSC2xvY2FsTnVtYmVyiA'
    'EBEikKDWRpc3BsYXlOdW1iZXIYBSABKAlIA1INZGlzcGxheU51bWJlcogBAUIUChJfaG9yaXpv'
    'bnRhbEdyb3VwSWRCEgoQX3ZlcnRpY2FsR3JvdXBJZEIOCgxfbG9jYWxOdW1iZXJCEAoOX2Rpc3'
    'BsYXlOdW1iZXI=');

@$core.Deprecated('Use conflictZonePartDescriptor instead')
const ConflictZonePart$json = {
  '1': 'ConflictZonePart',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {
      '1': 'pointList',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.Point',
      '10': 'pointList'
    },
    {'1': 'includeDataId', '3': 3, '4': 3, '5': 5, '10': 'includeDataId'},
    {
      '1': 'conflictZoneType',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.galaxis.map.ConflictZoneType',
      '10': 'conflictZoneType'
    },
  ],
};

/// Descriptor for `ConflictZonePart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conflictZonePartDescriptor = $convert.base64Decode(
    'ChBDb25mbGljdFpvbmVQYXJ0Eg4KAmlkGAEgASgDUgJpZBIwCglwb2ludExpc3QYAiADKAsyEi'
    '5nYWxheGlzLm1hcC5Qb2ludFIJcG9pbnRMaXN0EiQKDWluY2x1ZGVEYXRhSWQYAyADKAVSDWlu'
    'Y2x1ZGVEYXRhSWQSSQoQY29uZmxpY3Rab25lVHlwZRgEIAEoDjIdLmdhbGF4aXMubWFwLkNvbm'
    'ZsaWN0Wm9uZVR5cGVSEGNvbmZsaWN0Wm9uZVR5cGU=');

@$core.Deprecated('Use businessMapPartDescriptor instead')
const BusinessMapPart$json = {
  '1': 'BusinessMapPart',
  '2': [
    {'1': 'floorName', '3': 1, '4': 1, '5': 9, '10': 'floorName'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'floorNum', '3': 3, '4': 1, '5': 5, '10': 'floorNum'},
    {
      '1': 'node',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.NodePart',
      '10': 'node'
    },
    {
      '1': 'edge',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.EdgePart',
      '10': 'edge'
    },
    {
      '1': 'goodsSlot',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.GoodsSlotPart',
      '10': 'goodsSlot'
    },
    {
      '1': 'conflictZone',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.ConflictZonePart',
      '10': 'conflictZone'
    },
  ],
};

/// Descriptor for `BusinessMapPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List businessMapPartDescriptor = $convert.base64Decode(
    'Cg9CdXNpbmVzc01hcFBhcnQSHAoJZmxvb3JOYW1lGAEgASgJUglmbG9vck5hbWUSDgoCaWQYAi'
    'ABKANSAmlkEhoKCGZsb29yTnVtGAMgASgFUghmbG9vck51bRIpCgRub2RlGAQgAygLMhUuZ2Fs'
    'YXhpcy5tYXAuTm9kZVBhcnRSBG5vZGUSKQoEZWRnZRgFIAMoCzIVLmdhbGF4aXMubWFwLkVkZ2'
    'VQYXJ0UgRlZGdlEjgKCWdvb2RzU2xvdBgGIAMoCzIaLmdhbGF4aXMubWFwLkdvb2RzU2xvdFBh'
    'cnRSCWdvb2RzU2xvdBJBCgxjb25mbGljdFpvbmUYByADKAsyHS5nYWxheGlzLm1hcC5Db25mbG'
    'ljdFpvbmVQYXJ0Ugxjb25mbGljdFpvbmU=');

@$core.Deprecated('Use mappingDataPartDescriptor instead')
const MappingDataPart$json = {
  '1': 'MappingDataPart',
  '2': [
    {
      '1': 'businessMap',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.galaxis.map.BusinessMapPart',
      '10': 'businessMap'
    },
    {
      '1': 'privateData',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.galaxis.map.PrivateData',
      '9': 0,
      '10': 'privateData',
      '17': true
    },
  ],
  '8': [
    {'1': '_privateData'},
  ],
};

/// Descriptor for `MappingDataPart`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mappingDataPartDescriptor = $convert.base64Decode(
    'Cg9NYXBwaW5nRGF0YVBhcnQSPgoLYnVzaW5lc3NNYXAYASADKAsyHC5nYWxheGlzLm1hcC5CdX'
    'NpbmVzc01hcFBhcnRSC2J1c2luZXNzTWFwEj8KC3ByaXZhdGVEYXRhGAIgASgLMhguZ2FsYXhp'
    'cy5tYXAuUHJpdmF0ZURhdGFIAFILcHJpdmF0ZURhdGGIAQFCDgoMX3ByaXZhdGVEYXRh');
