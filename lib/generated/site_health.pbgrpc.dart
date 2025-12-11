//
//  Generated code. Do not modify.
//  source: site_health.proto
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

import 'google/protobuf/empty.pb.dart' as $0;
import 'site_health.pb.dart' as $6;

export 'site_health.pb.dart';

@$pb.GrpcServiceName('galaxis.site.health.SiteHealthService')
class SiteHealthServiceClient extends $grpc.Client {
  static final _$reportSiteHealthInfo = $grpc.ClientMethod<$6.SiteHealthInfo, $0.Empty>(
      '/galaxis.site.health.SiteHealthService/ReportSiteHealthInfo',
      ($6.SiteHealthInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$batchReportSiteHealthInfo = $grpc.ClientMethod<$6.SiteHealthInfo, $0.Empty>(
      '/galaxis.site.health.SiteHealthService/BatchReportSiteHealthInfo',
      ($6.SiteHealthInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$queryHealthInfo = $grpc.ClientMethod<$6.HealthInfoQueryRequest, $6.HealthInfoQueryResponse>(
      '/galaxis.site.health.SiteHealthService/QueryHealthInfo',
      ($6.HealthInfoQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.HealthInfoQueryResponse.fromBuffer(value));
  static final _$getHealthStatistics = $grpc.ClientMethod<$0.Empty, $6.HealthStatistics>(
      '/galaxis.site.health.SiteHealthService/GetHealthStatistics',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.HealthStatistics.fromBuffer(value));
  static final _$subscribeHealthStatus = $grpc.ClientMethod<$0.Empty, $6.SiteHealthInfo>(
      '/galaxis.site.health.SiteHealthService/SubscribeHealthStatus',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SiteHealthInfo.fromBuffer(value));
  static final _$analyzeLocationException = $grpc.ClientMethod<$6.LocationExceptionAnalysisRequest, $6.LocationExceptionAnalysisResponse>(
      '/galaxis.site.health.SiteHealthService/AnalyzeLocationException',
      ($6.LocationExceptionAnalysisRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.LocationExceptionAnalysisResponse.fromBuffer(value));
  static final _$analyzeCarException = $grpc.ClientMethod<$6.CarExceptionAnalysisRequest, $6.CarExceptionAnalysisResponse>(
      '/galaxis.site.health.SiteHealthService/AnalyzeCarException',
      ($6.CarExceptionAnalysisRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CarExceptionAnalysisResponse.fromBuffer(value));
  static final _$cleanupData = $grpc.ClientMethod<$6.DataCleanupRequest, $6.DataCleanupResponse>(
      '/galaxis.site.health.SiteHealthService/CleanupData',
      ($6.DataCleanupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.DataCleanupResponse.fromBuffer(value));
  static final _$getCarLocationStats = $grpc.ClientMethod<$6.CarLocationStatsRequest, $6.CarLocationStatsResponse>(
      '/galaxis.site.health.SiteHealthService/GetCarLocationStats',
      ($6.CarLocationStatsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.CarLocationStatsResponse.fromBuffer(value));

  SiteHealthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> reportSiteHealthInfo($6.SiteHealthInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reportSiteHealthInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> batchReportSiteHealthInfo($async.Stream<$6.SiteHealthInfo> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$batchReportSiteHealthInfo, request, options: options).single;
  }

  $grpc.ResponseFuture<$6.HealthInfoQueryResponse> queryHealthInfo($6.HealthInfoQueryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryHealthInfo, request, options: options);
  }

  $grpc.ResponseFuture<$6.HealthStatistics> getHealthStatistics($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHealthStatistics, request, options: options);
  }

  $grpc.ResponseStream<$6.SiteHealthInfo> subscribeHealthStatus($0.Empty request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeHealthStatus, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$6.LocationExceptionAnalysisResponse> analyzeLocationException($6.LocationExceptionAnalysisRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$analyzeLocationException, request, options: options);
  }

  $grpc.ResponseFuture<$6.CarExceptionAnalysisResponse> analyzeCarException($6.CarExceptionAnalysisRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$analyzeCarException, request, options: options);
  }

  $grpc.ResponseFuture<$6.DataCleanupResponse> cleanupData($6.DataCleanupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cleanupData, request, options: options);
  }

  $grpc.ResponseFuture<$6.CarLocationStatsResponse> getCarLocationStats($6.CarLocationStatsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCarLocationStats, request, options: options);
  }
}

@$pb.GrpcServiceName('galaxis.site.health.SiteHealthService')
abstract class SiteHealthServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.site.health.SiteHealthService';

  SiteHealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.SiteHealthInfo, $0.Empty>(
        'ReportSiteHealthInfo',
        reportSiteHealthInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SiteHealthInfo.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SiteHealthInfo, $0.Empty>(
        'BatchReportSiteHealthInfo',
        batchReportSiteHealthInfo,
        true,
        false,
        ($core.List<$core.int> value) => $6.SiteHealthInfo.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.HealthInfoQueryRequest, $6.HealthInfoQueryResponse>(
        'QueryHealthInfo',
        queryHealthInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.HealthInfoQueryRequest.fromBuffer(value),
        ($6.HealthInfoQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.HealthStatistics>(
        'GetHealthStatistics',
        getHealthStatistics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.HealthStatistics value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $6.SiteHealthInfo>(
        'SubscribeHealthStatus',
        subscribeHealthStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($6.SiteHealthInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.LocationExceptionAnalysisRequest, $6.LocationExceptionAnalysisResponse>(
        'AnalyzeLocationException',
        analyzeLocationException_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.LocationExceptionAnalysisRequest.fromBuffer(value),
        ($6.LocationExceptionAnalysisResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CarExceptionAnalysisRequest, $6.CarExceptionAnalysisResponse>(
        'AnalyzeCarException',
        analyzeCarException_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CarExceptionAnalysisRequest.fromBuffer(value),
        ($6.CarExceptionAnalysisResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DataCleanupRequest, $6.DataCleanupResponse>(
        'CleanupData',
        cleanupData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.DataCleanupRequest.fromBuffer(value),
        ($6.DataCleanupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CarLocationStatsRequest, $6.CarLocationStatsResponse>(
        'GetCarLocationStats',
        getCarLocationStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.CarLocationStatsRequest.fromBuffer(value),
        ($6.CarLocationStatsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> reportSiteHealthInfo_Pre($grpc.ServiceCall call, $async.Future<$6.SiteHealthInfo> request) async {
    return reportSiteHealthInfo(call, await request);
  }

  $async.Future<$6.HealthInfoQueryResponse> queryHealthInfo_Pre($grpc.ServiceCall call, $async.Future<$6.HealthInfoQueryRequest> request) async {
    return queryHealthInfo(call, await request);
  }

  $async.Future<$6.HealthStatistics> getHealthStatistics_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getHealthStatistics(call, await request);
  }

  $async.Stream<$6.SiteHealthInfo> subscribeHealthStatus_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* subscribeHealthStatus(call, await request);
  }

  $async.Future<$6.LocationExceptionAnalysisResponse> analyzeLocationException_Pre($grpc.ServiceCall call, $async.Future<$6.LocationExceptionAnalysisRequest> request) async {
    return analyzeLocationException(call, await request);
  }

  $async.Future<$6.CarExceptionAnalysisResponse> analyzeCarException_Pre($grpc.ServiceCall call, $async.Future<$6.CarExceptionAnalysisRequest> request) async {
    return analyzeCarException(call, await request);
  }

  $async.Future<$6.DataCleanupResponse> cleanupData_Pre($grpc.ServiceCall call, $async.Future<$6.DataCleanupRequest> request) async {
    return cleanupData(call, await request);
  }

  $async.Future<$6.CarLocationStatsResponse> getCarLocationStats_Pre($grpc.ServiceCall call, $async.Future<$6.CarLocationStatsRequest> request) async {
    return getCarLocationStats(call, await request);
  }

  $async.Future<$0.Empty> reportSiteHealthInfo($grpc.ServiceCall call, $6.SiteHealthInfo request);
  $async.Future<$0.Empty> batchReportSiteHealthInfo($grpc.ServiceCall call, $async.Stream<$6.SiteHealthInfo> request);
  $async.Future<$6.HealthInfoQueryResponse> queryHealthInfo($grpc.ServiceCall call, $6.HealthInfoQueryRequest request);
  $async.Future<$6.HealthStatistics> getHealthStatistics($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$6.SiteHealthInfo> subscribeHealthStatus($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$6.LocationExceptionAnalysisResponse> analyzeLocationException($grpc.ServiceCall call, $6.LocationExceptionAnalysisRequest request);
  $async.Future<$6.CarExceptionAnalysisResponse> analyzeCarException($grpc.ServiceCall call, $6.CarExceptionAnalysisRequest request);
  $async.Future<$6.DataCleanupResponse> cleanupData($grpc.ServiceCall call, $6.DataCleanupRequest request);
  $async.Future<$6.CarLocationStatsResponse> getCarLocationStats($grpc.ServiceCall call, $6.CarLocationStatsRequest request);
}
