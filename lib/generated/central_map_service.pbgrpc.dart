//
//  Generated code. Do not modify.
//  source: central_map_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'central_map_service.pb.dart' as $2;
import 'elements.pb.dart' as $3;
import 'google/protobuf/empty.pb.dart' as $0;
import 'google/protobuf/wrappers.pb.dart' as $1;

export 'central_map_service.pb.dart';

@$pb.GrpcServiceName('galaxis.map.CentralMapService')
class CentralMapServiceClient extends $grpc.Client {
  static final _$getVersion = $grpc.ClientMethod<$0.Empty, $1.StringValue>(
      '/galaxis.map.CentralMapService/GetVersion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getProjectList = $grpc.ClientMethod<$0.Empty, $2.ProjectInfos>(
      '/galaxis.map.CentralMapService/GetProjectList',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ProjectInfos.fromBuffer(value));
  static final _$getMapList = $grpc.ClientMethod<$2.ProjectIdMessage, $2.MapVersionInfos>(
      '/galaxis.map.CentralMapService/GetMapList',
      ($2.ProjectIdMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.MapVersionInfos.fromBuffer(value));
  static final _$getMapData = $grpc.ClientMethod<$2.VersionMessage, $3.MappingData>(
      '/galaxis.map.CentralMapService/GetMapData',
      ($2.VersionMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.MappingData.fromBuffer(value));
  static final _$queryNeo4jMarkValues = $grpc.ClientMethod<$2.VersionMapSpecifyData, $2.Neo4jMarkValueResponse>(
      '/galaxis.map.CentralMapService/QueryNeo4jMarkValues',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Neo4jMarkValueResponse.fromBuffer(value));
  static final _$deleteProject = $grpc.ClientMethod<$2.ProjectIdMessage, $0.Empty>(
      '/galaxis.map.CentralMapService/DeleteProject',
      ($2.ProjectIdMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$createProject = $grpc.ClientMethod<$2.ProjectMapData, $1.StringValue>(
      '/galaxis.map.CentralMapService/CreateProject',
      ($2.ProjectMapData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$commitProjectMapData = $grpc.ClientMethod<$2.CommitMapDataRequest, $1.StringValue>(
      '/galaxis.map.CentralMapService/CommitProjectMapData',
      ($2.CommitMapDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getMapDataPart = $grpc.ClientMethod<$2.GetMapDataPartRequest, $2.MappingDataPart>(
      '/galaxis.map.CentralMapService/GetMapDataPart',
      ($2.GetMapDataPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.MappingDataPart.fromBuffer(value));
  static final _$getMapDataDetailPart = $grpc.ClientMethod<$2.GetMapDataDetailPartRequest, $3.BusinessMap>(
      '/galaxis.map.CentralMapService/GetMapDataDetailPart',
      ($2.GetMapDataDetailPartRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.BusinessMap.fromBuffer(value));
  static final _$commitProjectMapDataDiff = $grpc.ClientMethod<$2.CommitMapDataDiffRequest, $1.StringValue>(
      '/galaxis.map.CentralMapService/CommitProjectMapDataDiff',
      ($2.CommitMapDataDiffRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getProjectMapDataDiff = $grpc.ClientMethod<$2.VersionsMessage, $2.MappingDataDiff>(
      '/galaxis.map.CentralMapService/GetProjectMapDataDiff',
      ($2.VersionsMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.MappingDataDiff.fromBuffer(value));
  static final _$getNeo4jVersionInfo = $grpc.ClientMethod<$2.VersionMapSpecifyData, $2.Neo4jVersionInfoResponse>(
      '/galaxis.map.CentralMapService/GetNeo4jVersionInfo',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Neo4jVersionInfoResponse.fromBuffer(value));
  static final _$getRcsVersionInfo = $grpc.ClientMethod<$2.VersionMapSpecifyData, $2.RcsVersionInfoResponse>(
      '/galaxis.map.CentralMapService/GetRcsVersionInfo',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.RcsVersionInfoResponse.fromBuffer(value));
  static final _$exportRcsJson = $grpc.ClientMethod<$2.VersionMapSpecifyData, $1.StringValue>(
      '/galaxis.map.CentralMapService/ExportRcsJson',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$uploadRcsMapJsonData = $grpc.ClientMethod<$2.VersionMapSpecifyData, $0.Empty>(
      '/galaxis.map.CentralMapService/UploadRcsMapJsonData',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$restartRcs = $grpc.ClientMethod<$2.VersionMapSpecifyData, $1.StringValue>(
      '/galaxis.map.CentralMapService/RestartRcs',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$uploadNeo4jData = $grpc.ClientMethod<$2.UploadNeo4jDataRequest, $2.UploadNeo4jDataResponse>(
      '/galaxis.map.CentralMapService/UploadNeo4jData',
      ($2.UploadNeo4jDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UploadNeo4jDataResponse.fromBuffer(value));
  static final _$uploadNeo4jDataIncrement = $grpc.ClientMethod<$2.VersionMapSpecifyData, $0.Empty>(
      '/galaxis.map.CentralMapService/UploadNeo4jDataIncrement',
      ($2.VersionMapSpecifyData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$uploadNeo4jMarkValues = $grpc.ClientMethod<$2.UploadNeo4jMarkValuesRequest, $0.Empty>(
      '/galaxis.map.CentralMapService/UploadNeo4jMarkValues',
      ($2.UploadNeo4jMarkValuesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$neo4jOperation = $grpc.ClientMethod<$2.Neo4jOperationRequest, $1.StringValue>(
      '/galaxis.map.CentralMapService/Neo4jOperation',
      ($2.Neo4jOperationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getActivedMapVersion = $grpc.ClientMethod<$2.ProjectIdMessage, $1.StringValue>(
      '/galaxis.map.CentralMapService/GetActivedMapVersion',
      ($2.ProjectIdMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$activeMapVersion = $grpc.ClientMethod<$2.VersionMessage, $0.Empty>(
      '/galaxis.map.CentralMapService/ActiveMapVersion',
      ($2.VersionMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$updateMarkerCodes = $grpc.ClientMethod<$2.UpdateMarkerCodesRequest, $0.Empty>(
      '/galaxis.map.CentralMapService/UpdateMarkerCodes',
      ($2.UpdateMarkerCodesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$subscribeMapEvents = $grpc.ClientMethod<$2.MapEventRequest, $2.MapEvents>(
      '/galaxis.map.CentralMapService/SubscribeMapEvents',
      ($2.MapEventRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.MapEvents.fromBuffer(value));
  static final _$getTempFiles = $grpc.ClientMethod<$1.StringValue, $2.StringItems>(
      '/galaxis.map.CentralMapService/GetTempFiles',
      ($1.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StringItems.fromBuffer(value));
  static final _$restoreNeo4jBackupFile = $grpc.ClientMethod<$2.RestoreNeo4jBackupFileRequest, $1.StringValue>(
      '/galaxis.map.CentralMapService/RestoreNeo4jBackupFile',
      ($2.RestoreNeo4jBackupFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getPartnerMapInfos = $grpc.ClientMethod<$2.VersionMessage, $2.PartnerMapInfos>(
      '/galaxis.map.CentralMapService/GetPartnerMapInfos',
      ($2.VersionMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PartnerMapInfos.fromBuffer(value));
  static final _$getPartnerMapData = $grpc.ClientMethod<$2.MapVersionMessage, $1.StringValue>(
      '/galaxis.map.CentralMapService/GetPartnerMapData',
      ($2.MapVersionMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$checkPartnerMapCompatible = $grpc.ClientMethod<$2.CheckPartnerMapCompatibleRequest, $1.BoolValue>(
      '/galaxis.map.CentralMapService/CheckPartnerMapCompatible',
      ($2.CheckPartnerMapCompatibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$commitPartnerMapAndUpgrade = $grpc.ClientMethod<$2.CommitPartnerMapAndUpgradeRequest, $0.Empty>(
      '/galaxis.map.CentralMapService/CommitPartnerMapAndUpgrade',
      ($2.CommitPartnerMapAndUpgradeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  CentralMapServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.StringValue> getVersion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVersion, request, options: options);
  }

  $grpc.ResponseFuture<$2.ProjectInfos> getProjectList($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProjectList, request, options: options);
  }

  $grpc.ResponseFuture<$2.MapVersionInfos> getMapList($2.ProjectIdMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapList, request, options: options);
  }

  $grpc.ResponseFuture<$3.MappingData> getMapData($2.VersionMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapData, request, options: options);
  }

  $grpc.ResponseFuture<$2.Neo4jMarkValueResponse> queryNeo4jMarkValues($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryNeo4jMarkValues, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteProject($2.ProjectIdMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> createProject($2.ProjectMapData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> commitProjectMapData($2.CommitMapDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commitProjectMapData, request, options: options);
  }

  $grpc.ResponseFuture<$2.MappingDataPart> getMapDataPart($2.GetMapDataPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapDataPart, request, options: options);
  }

  $grpc.ResponseFuture<$3.BusinessMap> getMapDataDetailPart($2.GetMapDataDetailPartRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMapDataDetailPart, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> commitProjectMapDataDiff($2.CommitMapDataDiffRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commitProjectMapDataDiff, request, options: options);
  }

  $grpc.ResponseFuture<$2.MappingDataDiff> getProjectMapDataDiff($2.VersionsMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProjectMapDataDiff, request, options: options);
  }

  $grpc.ResponseFuture<$2.Neo4jVersionInfoResponse> getNeo4jVersionInfo($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNeo4jVersionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.RcsVersionInfoResponse> getRcsVersionInfo($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRcsVersionInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> exportRcsJson($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exportRcsJson, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> uploadRcsMapJsonData($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadRcsMapJsonData, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> restartRcs($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$restartRcs, request, options: options);
  }

  $grpc.ResponseFuture<$2.UploadNeo4jDataResponse> uploadNeo4jData($2.UploadNeo4jDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadNeo4jData, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> uploadNeo4jDataIncrement($2.VersionMapSpecifyData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadNeo4jDataIncrement, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> uploadNeo4jMarkValues($2.UploadNeo4jMarkValuesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadNeo4jMarkValues, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> neo4jOperation($2.Neo4jOperationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$neo4jOperation, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> getActivedMapVersion($2.ProjectIdMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActivedMapVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> activeMapVersion($2.VersionMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$activeMapVersion, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateMarkerCodes($2.UpdateMarkerCodesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateMarkerCodes, request, options: options);
  }

  $grpc.ResponseStream<$2.MapEvents> subscribeMapEvents($2.MapEventRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeMapEvents, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$2.StringItems> getTempFiles($1.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTempFiles, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> restoreNeo4jBackupFile($2.RestoreNeo4jBackupFileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$restoreNeo4jBackupFile, request, options: options);
  }

  $grpc.ResponseFuture<$2.PartnerMapInfos> getPartnerMapInfos($2.VersionMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPartnerMapInfos, request, options: options);
  }

  $grpc.ResponseFuture<$1.StringValue> getPartnerMapData($2.MapVersionMessage request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPartnerMapData, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> checkPartnerMapCompatible($2.CheckPartnerMapCompatibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkPartnerMapCompatible, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> commitPartnerMapAndUpgrade($2.CommitPartnerMapAndUpgradeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$commitPartnerMapAndUpgrade, request, options: options);
  }
}

@$pb.GrpcServiceName('galaxis.map.CentralMapService')
abstract class CentralMapServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.map.CentralMapService';

  CentralMapServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.StringValue>(
        'GetVersion',
        getVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.ProjectInfos>(
        'GetProjectList',
        getProjectList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.ProjectInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ProjectIdMessage, $2.MapVersionInfos>(
        'GetMapList',
        getMapList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProjectIdMessage.fromBuffer(value),
        ($2.MapVersionInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMessage, $3.MappingData>(
        'GetMapData',
        getMapData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMessage.fromBuffer(value),
        ($3.MappingData value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $2.Neo4jMarkValueResponse>(
        'QueryNeo4jMarkValues',
        queryNeo4jMarkValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($2.Neo4jMarkValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ProjectIdMessage, $0.Empty>(
        'DeleteProject',
        deleteProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProjectIdMessage.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ProjectMapData, $1.StringValue>(
        'CreateProject',
        createProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProjectMapData.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CommitMapDataRequest, $1.StringValue>(
        'CommitProjectMapData',
        commitProjectMapData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CommitMapDataRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetMapDataPartRequest, $2.MappingDataPart>(
        'GetMapDataPart',
        getMapDataPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetMapDataPartRequest.fromBuffer(value),
        ($2.MappingDataPart value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetMapDataDetailPartRequest, $3.BusinessMap>(
        'GetMapDataDetailPart',
        getMapDataDetailPart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetMapDataDetailPartRequest.fromBuffer(value),
        ($3.BusinessMap value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CommitMapDataDiffRequest, $1.StringValue>(
        'CommitProjectMapDataDiff',
        commitProjectMapDataDiff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CommitMapDataDiffRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionsMessage, $2.MappingDataDiff>(
        'GetProjectMapDataDiff',
        getProjectMapDataDiff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionsMessage.fromBuffer(value),
        ($2.MappingDataDiff value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $2.Neo4jVersionInfoResponse>(
        'GetNeo4jVersionInfo',
        getNeo4jVersionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($2.Neo4jVersionInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $2.RcsVersionInfoResponse>(
        'GetRcsVersionInfo',
        getRcsVersionInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($2.RcsVersionInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $1.StringValue>(
        'ExportRcsJson',
        exportRcsJson_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $0.Empty>(
        'UploadRcsMapJsonData',
        uploadRcsMapJsonData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $1.StringValue>(
        'RestartRcs',
        restartRcs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UploadNeo4jDataRequest, $2.UploadNeo4jDataResponse>(
        'UploadNeo4jData',
        uploadNeo4jData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UploadNeo4jDataRequest.fromBuffer(value),
        ($2.UploadNeo4jDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMapSpecifyData, $0.Empty>(
        'UploadNeo4jDataIncrement',
        uploadNeo4jDataIncrement_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMapSpecifyData.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UploadNeo4jMarkValuesRequest, $0.Empty>(
        'UploadNeo4jMarkValues',
        uploadNeo4jMarkValues_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UploadNeo4jMarkValuesRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Neo4jOperationRequest, $1.StringValue>(
        'Neo4jOperation',
        neo4jOperation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Neo4jOperationRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ProjectIdMessage, $1.StringValue>(
        'GetActivedMapVersion',
        getActivedMapVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ProjectIdMessage.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMessage, $0.Empty>(
        'ActiveMapVersion',
        activeMapVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMessage.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateMarkerCodesRequest, $0.Empty>(
        'UpdateMarkerCodes',
        updateMarkerCodes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateMarkerCodesRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MapEventRequest, $2.MapEvents>(
        'SubscribeMapEvents',
        subscribeMapEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.MapEventRequest.fromBuffer(value),
        ($2.MapEvents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StringValue, $2.StringItems>(
        'GetTempFiles',
        getTempFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value),
        ($2.StringItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RestoreNeo4jBackupFileRequest, $1.StringValue>(
        'RestoreNeo4jBackupFile',
        restoreNeo4jBackupFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RestoreNeo4jBackupFileRequest.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VersionMessage, $2.PartnerMapInfos>(
        'GetPartnerMapInfos',
        getPartnerMapInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VersionMessage.fromBuffer(value),
        ($2.PartnerMapInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MapVersionMessage, $1.StringValue>(
        'GetPartnerMapData',
        getPartnerMapData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MapVersionMessage.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CheckPartnerMapCompatibleRequest, $1.BoolValue>(
        'CheckPartnerMapCompatible',
        checkPartnerMapCompatible_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CheckPartnerMapCompatibleRequest.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CommitPartnerMapAndUpgradeRequest, $0.Empty>(
        'CommitPartnerMapAndUpgrade',
        commitPartnerMapAndUpgrade_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CommitPartnerMapAndUpgradeRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.StringValue> getVersion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getVersion(call, await request);
  }

  $async.Future<$2.ProjectInfos> getProjectList_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getProjectList(call, await request);
  }

  $async.Future<$2.MapVersionInfos> getMapList_Pre($grpc.ServiceCall call, $async.Future<$2.ProjectIdMessage> request) async {
    return getMapList(call, await request);
  }

  $async.Future<$3.MappingData> getMapData_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMessage> request) async {
    return getMapData(call, await request);
  }

  $async.Future<$2.Neo4jMarkValueResponse> queryNeo4jMarkValues_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return queryNeo4jMarkValues(call, await request);
  }

  $async.Future<$0.Empty> deleteProject_Pre($grpc.ServiceCall call, $async.Future<$2.ProjectIdMessage> request) async {
    return deleteProject(call, await request);
  }

  $async.Future<$1.StringValue> createProject_Pre($grpc.ServiceCall call, $async.Future<$2.ProjectMapData> request) async {
    return createProject(call, await request);
  }

  $async.Future<$1.StringValue> commitProjectMapData_Pre($grpc.ServiceCall call, $async.Future<$2.CommitMapDataRequest> request) async {
    return commitProjectMapData(call, await request);
  }

  $async.Future<$2.MappingDataPart> getMapDataPart_Pre($grpc.ServiceCall call, $async.Future<$2.GetMapDataPartRequest> request) async {
    return getMapDataPart(call, await request);
  }

  $async.Future<$3.BusinessMap> getMapDataDetailPart_Pre($grpc.ServiceCall call, $async.Future<$2.GetMapDataDetailPartRequest> request) async {
    return getMapDataDetailPart(call, await request);
  }

  $async.Future<$1.StringValue> commitProjectMapDataDiff_Pre($grpc.ServiceCall call, $async.Future<$2.CommitMapDataDiffRequest> request) async {
    return commitProjectMapDataDiff(call, await request);
  }

  $async.Future<$2.MappingDataDiff> getProjectMapDataDiff_Pre($grpc.ServiceCall call, $async.Future<$2.VersionsMessage> request) async {
    return getProjectMapDataDiff(call, await request);
  }

  $async.Future<$2.Neo4jVersionInfoResponse> getNeo4jVersionInfo_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return getNeo4jVersionInfo(call, await request);
  }

  $async.Future<$2.RcsVersionInfoResponse> getRcsVersionInfo_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return getRcsVersionInfo(call, await request);
  }

  $async.Future<$1.StringValue> exportRcsJson_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return exportRcsJson(call, await request);
  }

  $async.Future<$0.Empty> uploadRcsMapJsonData_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return uploadRcsMapJsonData(call, await request);
  }

  $async.Future<$1.StringValue> restartRcs_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return restartRcs(call, await request);
  }

  $async.Future<$2.UploadNeo4jDataResponse> uploadNeo4jData_Pre($grpc.ServiceCall call, $async.Future<$2.UploadNeo4jDataRequest> request) async {
    return uploadNeo4jData(call, await request);
  }

  $async.Future<$0.Empty> uploadNeo4jDataIncrement_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMapSpecifyData> request) async {
    return uploadNeo4jDataIncrement(call, await request);
  }

  $async.Future<$0.Empty> uploadNeo4jMarkValues_Pre($grpc.ServiceCall call, $async.Future<$2.UploadNeo4jMarkValuesRequest> request) async {
    return uploadNeo4jMarkValues(call, await request);
  }

  $async.Future<$1.StringValue> neo4jOperation_Pre($grpc.ServiceCall call, $async.Future<$2.Neo4jOperationRequest> request) async {
    return neo4jOperation(call, await request);
  }

  $async.Future<$1.StringValue> getActivedMapVersion_Pre($grpc.ServiceCall call, $async.Future<$2.ProjectIdMessage> request) async {
    return getActivedMapVersion(call, await request);
  }

  $async.Future<$0.Empty> activeMapVersion_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMessage> request) async {
    return activeMapVersion(call, await request);
  }

  $async.Future<$0.Empty> updateMarkerCodes_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateMarkerCodesRequest> request) async {
    return updateMarkerCodes(call, await request);
  }

  $async.Stream<$2.MapEvents> subscribeMapEvents_Pre($grpc.ServiceCall call, $async.Future<$2.MapEventRequest> request) async* {
    yield* subscribeMapEvents(call, await request);
  }

  $async.Future<$2.StringItems> getTempFiles_Pre($grpc.ServiceCall call, $async.Future<$1.StringValue> request) async {
    return getTempFiles(call, await request);
  }

  $async.Future<$1.StringValue> restoreNeo4jBackupFile_Pre($grpc.ServiceCall call, $async.Future<$2.RestoreNeo4jBackupFileRequest> request) async {
    return restoreNeo4jBackupFile(call, await request);
  }

  $async.Future<$2.PartnerMapInfos> getPartnerMapInfos_Pre($grpc.ServiceCall call, $async.Future<$2.VersionMessage> request) async {
    return getPartnerMapInfos(call, await request);
  }

  $async.Future<$1.StringValue> getPartnerMapData_Pre($grpc.ServiceCall call, $async.Future<$2.MapVersionMessage> request) async {
    return getPartnerMapData(call, await request);
  }

  $async.Future<$1.BoolValue> checkPartnerMapCompatible_Pre($grpc.ServiceCall call, $async.Future<$2.CheckPartnerMapCompatibleRequest> request) async {
    return checkPartnerMapCompatible(call, await request);
  }

  $async.Future<$0.Empty> commitPartnerMapAndUpgrade_Pre($grpc.ServiceCall call, $async.Future<$2.CommitPartnerMapAndUpgradeRequest> request) async {
    return commitPartnerMapAndUpgrade(call, await request);
  }

  $async.Future<$1.StringValue> getVersion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$2.ProjectInfos> getProjectList($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$2.MapVersionInfos> getMapList($grpc.ServiceCall call, $2.ProjectIdMessage request);
  $async.Future<$3.MappingData> getMapData($grpc.ServiceCall call, $2.VersionMessage request);
  $async.Future<$2.Neo4jMarkValueResponse> queryNeo4jMarkValues($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$0.Empty> deleteProject($grpc.ServiceCall call, $2.ProjectIdMessage request);
  $async.Future<$1.StringValue> createProject($grpc.ServiceCall call, $2.ProjectMapData request);
  $async.Future<$1.StringValue> commitProjectMapData($grpc.ServiceCall call, $2.CommitMapDataRequest request);
  $async.Future<$2.MappingDataPart> getMapDataPart($grpc.ServiceCall call, $2.GetMapDataPartRequest request);
  $async.Future<$3.BusinessMap> getMapDataDetailPart($grpc.ServiceCall call, $2.GetMapDataDetailPartRequest request);
  $async.Future<$1.StringValue> commitProjectMapDataDiff($grpc.ServiceCall call, $2.CommitMapDataDiffRequest request);
  $async.Future<$2.MappingDataDiff> getProjectMapDataDiff($grpc.ServiceCall call, $2.VersionsMessage request);
  $async.Future<$2.Neo4jVersionInfoResponse> getNeo4jVersionInfo($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$2.RcsVersionInfoResponse> getRcsVersionInfo($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$1.StringValue> exportRcsJson($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$0.Empty> uploadRcsMapJsonData($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$1.StringValue> restartRcs($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$2.UploadNeo4jDataResponse> uploadNeo4jData($grpc.ServiceCall call, $2.UploadNeo4jDataRequest request);
  $async.Future<$0.Empty> uploadNeo4jDataIncrement($grpc.ServiceCall call, $2.VersionMapSpecifyData request);
  $async.Future<$0.Empty> uploadNeo4jMarkValues($grpc.ServiceCall call, $2.UploadNeo4jMarkValuesRequest request);
  $async.Future<$1.StringValue> neo4jOperation($grpc.ServiceCall call, $2.Neo4jOperationRequest request);
  $async.Future<$1.StringValue> getActivedMapVersion($grpc.ServiceCall call, $2.ProjectIdMessage request);
  $async.Future<$0.Empty> activeMapVersion($grpc.ServiceCall call, $2.VersionMessage request);
  $async.Future<$0.Empty> updateMarkerCodes($grpc.ServiceCall call, $2.UpdateMarkerCodesRequest request);
  $async.Stream<$2.MapEvents> subscribeMapEvents($grpc.ServiceCall call, $2.MapEventRequest request);
  $async.Future<$2.StringItems> getTempFiles($grpc.ServiceCall call, $1.StringValue request);
  $async.Future<$1.StringValue> restoreNeo4jBackupFile($grpc.ServiceCall call, $2.RestoreNeo4jBackupFileRequest request);
  $async.Future<$2.PartnerMapInfos> getPartnerMapInfos($grpc.ServiceCall call, $2.VersionMessage request);
  $async.Future<$1.StringValue> getPartnerMapData($grpc.ServiceCall call, $2.MapVersionMessage request);
  $async.Future<$1.BoolValue> checkPartnerMapCompatible($grpc.ServiceCall call, $2.CheckPartnerMapCompatibleRequest request);
  $async.Future<$0.Empty> commitPartnerMapAndUpgrade($grpc.ServiceCall call, $2.CommitPartnerMapAndUpgradeRequest request);
}
