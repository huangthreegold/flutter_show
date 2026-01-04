// This is a generated file - do not edit.
//
// Generated from site_health.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $1;

import 'site_health.pb.dart' as $0;

export 'site_health.pb.dart';

@$pb.GrpcServiceName('galaxis.site.health.SiteHealthService')
class SiteHealthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  SiteHealthServiceClient(super.channel, {super.options, super.interceptors});

  /// 上报场地健康数据
  $grpc.ResponseFuture<$1.Empty> reportSiteHealthInfo(
    $0.SiteHealthInfo request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$reportSiteHealthInfo, request, options: options);
  }

  /// 批量上报场地健康数据
  $grpc.ResponseFuture<$1.Empty> batchReportSiteHealthInfo(
    $async.Stream<$0.SiteHealthInfo> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$batchReportSiteHealthInfo, request,
            options: options)
        .single;
  }

  /// 查询健康信息（包含最新检测+综合状态，原有接口保持兼容）
  $grpc.ResponseFuture<$0.HealthInfoQueryResponse> queryHealthInfo(
    $0.HealthInfoQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryHealthInfo, request, options: options);
  }

  /// 查询综合状态（只返回综合判定结果，不含具体检测数据）
  $grpc.ResponseFuture<$0.OverallStatusQueryResponse> queryOverallStatus(
    $0.HealthInfoQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryOverallStatus, request, options: options);
  }

  /// 查询最新检测数据（只返回最新一次检测，health_status是单次检测状态）
  $grpc.ResponseFuture<$0.LatestDetectionQueryResponse> queryLatestDetection(
    $0.HealthInfoQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryLatestDetection, request, options: options);
  }

  /// 查询二维码历史检测记录（包含所有车辆的完整历史）
  $grpc.ResponseFuture<$0.MarkerDetectionHistoryResponse>
      queryMarkerDetectionHistory(
    $0.MarkerDetectionHistoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryMarkerDetectionHistory, request,
        options: options);
  }

  /// 获取健康统计信息
  $grpc.ResponseFuture<$0.HealthStatistics> getHealthStatistics(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getHealthStatistics, request, options: options);
  }

  /// 订阅健康状态变化（流式）
  $grpc.ResponseStream<$0.SiteHealthInfo> subscribeHealthStatus(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$subscribeHealthStatus, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// 位置异常概率分析（判断是否为场地问题）
  $grpc.ResponseFuture<$0.LocationExceptionAnalysisResponse>
      analyzeLocationException(
    $0.LocationExceptionAnalysisRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$analyzeLocationException, request,
        options: options);
  }

  /// 单车异常概率分析（判断是否为车辆问题）
  $grpc.ResponseFuture<$0.CarExceptionAnalysisResponse> analyzeCarException(
    $0.CarExceptionAnalysisRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$analyzeCarException, request, options: options);
  }

  /// 数据清理/更新（如二维码更换后清理旧数据）
  $grpc.ResponseFuture<$0.DataCleanupResponse> cleanupData(
    $0.DataCleanupRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cleanupData, request, options: options);
  }

  /// 查询某台车在某个逻辑坐标的健康状态统计
  $grpc.ResponseFuture<$0.CarLocationStatsResponse> getCarLocationStats(
    $0.CarLocationStatsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getCarLocationStats, request, options: options);
  }

  /// 重置某个位置的健康状态数据（用于重新检测）
  $grpc.ResponseFuture<$0.DataCleanupResponse> resetLocationHealthData(
    $0.HealthInfoQueryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$resetLocationHealthData, request,
        options: options);
  }

  /// 手动添加二维码异常信息（可被查询接口查出）
  $grpc.ResponseFuture<$0.AddMarkerExceptionResponse> addMarkerException(
    $0.AddMarkerExceptionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addMarkerException, request, options: options);
  }

  /// 上报角度学习数据（单车上报）
  $grpc.ResponseFuture<$0.ReportAngleLearningResponse> reportAngleLearning(
    $0.ReportAngleLearningRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$reportAngleLearning, request, options: options);
  }

  /// 查询角度学习结果（单个位置）
  $grpc.ResponseFuture<$0.QueryAngleLearningResponse> queryAngleLearning(
    $0.QueryAngleLearningRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryAngleLearning, request, options: options);
  }

  /// 批量查询角度学习结果
  $grpc.ResponseFuture<$0.BatchQueryAngleLearningResponse>
      batchQueryAngleLearning(
    $0.BatchQueryAngleLearningRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$batchQueryAngleLearning, request,
        options: options);
  }

  /// 重置角度学习数据
  $grpc.ResponseFuture<$0.ResetAngleLearningResponse> resetAngleLearning(
    $0.ResetAngleLearningRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$resetAngleLearning, request, options: options);
  }

  /// 清除角度学习数据（支持更多过滤条件）
  $grpc.ResponseFuture<$0.CleanupAngleLearningResponse> cleanupAngleLearning(
    $0.CleanupAngleLearningRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$cleanupAngleLearning, request, options: options);
  }

  /// 获取角度学习统计信息
  $grpc.ResponseFuture<$0.AngleLearningStatistics> getAngleLearningStatistics(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAngleLearningStatistics, request,
        options: options);
  }

  /// 获取所有角度学习位置（返回所有有数据的位置）
  $grpc.ResponseFuture<$0.AngleLearningLocationsResponse>
      getAllAngleLearningLocations(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllAngleLearningLocations, request,
        options: options);
  }

  /// 订阅角度学习状态变化（流式）
  $grpc.ResponseStream<$0.GlobalAngleLearningResult>
      subscribeAngleLearningStatus(
    $1.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$subscribeAngleLearningStatus, $async.Stream.fromIterable([request]),
        options: options);
  }

  /// 手动添加角度数据
  $grpc.ResponseFuture<$1.Empty> addManualAngleSample(
    $0.AngleSample request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addManualAngleSample, request, options: options);
  }

  // method descriptors

  static final _$reportSiteHealthInfo =
      $grpc.ClientMethod<$0.SiteHealthInfo, $1.Empty>(
          '/galaxis.site.health.SiteHealthService/ReportSiteHealthInfo',
          ($0.SiteHealthInfo value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$batchReportSiteHealthInfo =
      $grpc.ClientMethod<$0.SiteHealthInfo, $1.Empty>(
          '/galaxis.site.health.SiteHealthService/BatchReportSiteHealthInfo',
          ($0.SiteHealthInfo value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$queryHealthInfo =
      $grpc.ClientMethod<$0.HealthInfoQueryRequest, $0.HealthInfoQueryResponse>(
          '/galaxis.site.health.SiteHealthService/QueryHealthInfo',
          ($0.HealthInfoQueryRequest value) => value.writeToBuffer(),
          $0.HealthInfoQueryResponse.fromBuffer);
  static final _$queryOverallStatus = $grpc.ClientMethod<
          $0.HealthInfoQueryRequest, $0.OverallStatusQueryResponse>(
      '/galaxis.site.health.SiteHealthService/QueryOverallStatus',
      ($0.HealthInfoQueryRequest value) => value.writeToBuffer(),
      $0.OverallStatusQueryResponse.fromBuffer);
  static final _$queryLatestDetection = $grpc.ClientMethod<
          $0.HealthInfoQueryRequest, $0.LatestDetectionQueryResponse>(
      '/galaxis.site.health.SiteHealthService/QueryLatestDetection',
      ($0.HealthInfoQueryRequest value) => value.writeToBuffer(),
      $0.LatestDetectionQueryResponse.fromBuffer);
  static final _$queryMarkerDetectionHistory = $grpc.ClientMethod<
          $0.MarkerDetectionHistoryRequest, $0.MarkerDetectionHistoryResponse>(
      '/galaxis.site.health.SiteHealthService/QueryMarkerDetectionHistory',
      ($0.MarkerDetectionHistoryRequest value) => value.writeToBuffer(),
      $0.MarkerDetectionHistoryResponse.fromBuffer);
  static final _$getHealthStatistics =
      $grpc.ClientMethod<$1.Empty, $0.HealthStatistics>(
          '/galaxis.site.health.SiteHealthService/GetHealthStatistics',
          ($1.Empty value) => value.writeToBuffer(),
          $0.HealthStatistics.fromBuffer);
  static final _$subscribeHealthStatus =
      $grpc.ClientMethod<$1.Empty, $0.SiteHealthInfo>(
          '/galaxis.site.health.SiteHealthService/SubscribeHealthStatus',
          ($1.Empty value) => value.writeToBuffer(),
          $0.SiteHealthInfo.fromBuffer);
  static final _$analyzeLocationException = $grpc.ClientMethod<
          $0.LocationExceptionAnalysisRequest,
          $0.LocationExceptionAnalysisResponse>(
      '/galaxis.site.health.SiteHealthService/AnalyzeLocationException',
      ($0.LocationExceptionAnalysisRequest value) => value.writeToBuffer(),
      $0.LocationExceptionAnalysisResponse.fromBuffer);
  static final _$analyzeCarException = $grpc.ClientMethod<
          $0.CarExceptionAnalysisRequest, $0.CarExceptionAnalysisResponse>(
      '/galaxis.site.health.SiteHealthService/AnalyzeCarException',
      ($0.CarExceptionAnalysisRequest value) => value.writeToBuffer(),
      $0.CarExceptionAnalysisResponse.fromBuffer);
  static final _$cleanupData =
      $grpc.ClientMethod<$0.DataCleanupRequest, $0.DataCleanupResponse>(
          '/galaxis.site.health.SiteHealthService/CleanupData',
          ($0.DataCleanupRequest value) => value.writeToBuffer(),
          $0.DataCleanupResponse.fromBuffer);
  static final _$getCarLocationStats = $grpc.ClientMethod<
          $0.CarLocationStatsRequest, $0.CarLocationStatsResponse>(
      '/galaxis.site.health.SiteHealthService/GetCarLocationStats',
      ($0.CarLocationStatsRequest value) => value.writeToBuffer(),
      $0.CarLocationStatsResponse.fromBuffer);
  static final _$resetLocationHealthData =
      $grpc.ClientMethod<$0.HealthInfoQueryRequest, $0.DataCleanupResponse>(
          '/galaxis.site.health.SiteHealthService/ResetLocationHealthData',
          ($0.HealthInfoQueryRequest value) => value.writeToBuffer(),
          $0.DataCleanupResponse.fromBuffer);
  static final _$addMarkerException = $grpc.ClientMethod<
          $0.AddMarkerExceptionRequest, $0.AddMarkerExceptionResponse>(
      '/galaxis.site.health.SiteHealthService/AddMarkerException',
      ($0.AddMarkerExceptionRequest value) => value.writeToBuffer(),
      $0.AddMarkerExceptionResponse.fromBuffer);
  static final _$reportAngleLearning = $grpc.ClientMethod<
          $0.ReportAngleLearningRequest, $0.ReportAngleLearningResponse>(
      '/galaxis.site.health.SiteHealthService/ReportAngleLearning',
      ($0.ReportAngleLearningRequest value) => value.writeToBuffer(),
      $0.ReportAngleLearningResponse.fromBuffer);
  static final _$queryAngleLearning = $grpc.ClientMethod<
          $0.QueryAngleLearningRequest, $0.QueryAngleLearningResponse>(
      '/galaxis.site.health.SiteHealthService/QueryAngleLearning',
      ($0.QueryAngleLearningRequest value) => value.writeToBuffer(),
      $0.QueryAngleLearningResponse.fromBuffer);
  static final _$batchQueryAngleLearning = $grpc.ClientMethod<
          $0.BatchQueryAngleLearningRequest,
          $0.BatchQueryAngleLearningResponse>(
      '/galaxis.site.health.SiteHealthService/BatchQueryAngleLearning',
      ($0.BatchQueryAngleLearningRequest value) => value.writeToBuffer(),
      $0.BatchQueryAngleLearningResponse.fromBuffer);
  static final _$resetAngleLearning = $grpc.ClientMethod<
          $0.ResetAngleLearningRequest, $0.ResetAngleLearningResponse>(
      '/galaxis.site.health.SiteHealthService/ResetAngleLearning',
      ($0.ResetAngleLearningRequest value) => value.writeToBuffer(),
      $0.ResetAngleLearningResponse.fromBuffer);
  static final _$cleanupAngleLearning = $grpc.ClientMethod<
          $0.CleanupAngleLearningRequest, $0.CleanupAngleLearningResponse>(
      '/galaxis.site.health.SiteHealthService/CleanupAngleLearning',
      ($0.CleanupAngleLearningRequest value) => value.writeToBuffer(),
      $0.CleanupAngleLearningResponse.fromBuffer);
  static final _$getAngleLearningStatistics =
      $grpc.ClientMethod<$1.Empty, $0.AngleLearningStatistics>(
          '/galaxis.site.health.SiteHealthService/GetAngleLearningStatistics',
          ($1.Empty value) => value.writeToBuffer(),
          $0.AngleLearningStatistics.fromBuffer);
  static final _$getAllAngleLearningLocations =
      $grpc.ClientMethod<$1.Empty, $0.AngleLearningLocationsResponse>(
          '/galaxis.site.health.SiteHealthService/GetAllAngleLearningLocations',
          ($1.Empty value) => value.writeToBuffer(),
          $0.AngleLearningLocationsResponse.fromBuffer);
  static final _$subscribeAngleLearningStatus =
      $grpc.ClientMethod<$1.Empty, $0.GlobalAngleLearningResult>(
          '/galaxis.site.health.SiteHealthService/SubscribeAngleLearningStatus',
          ($1.Empty value) => value.writeToBuffer(),
          $0.GlobalAngleLearningResult.fromBuffer);
  static final _$addManualAngleSample =
      $grpc.ClientMethod<$0.AngleSample, $1.Empty>(
          '/galaxis.site.health.SiteHealthService/AddManualAngleSample',
          ($0.AngleSample value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.site.health.SiteHealthService')
abstract class SiteHealthServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.site.health.SiteHealthService';

  SiteHealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SiteHealthInfo, $1.Empty>(
        'ReportSiteHealthInfo',
        reportSiteHealthInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SiteHealthInfo.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SiteHealthInfo, $1.Empty>(
        'BatchReportSiteHealthInfo',
        batchReportSiteHealthInfo,
        true,
        false,
        ($core.List<$core.int> value) => $0.SiteHealthInfo.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HealthInfoQueryRequest,
            $0.HealthInfoQueryResponse>(
        'QueryHealthInfo',
        queryHealthInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.HealthInfoQueryRequest.fromBuffer(value),
        ($0.HealthInfoQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HealthInfoQueryRequest,
            $0.OverallStatusQueryResponse>(
        'QueryOverallStatus',
        queryOverallStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.HealthInfoQueryRequest.fromBuffer(value),
        ($0.OverallStatusQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HealthInfoQueryRequest,
            $0.LatestDetectionQueryResponse>(
        'QueryLatestDetection',
        queryLatestDetection_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.HealthInfoQueryRequest.fromBuffer(value),
        ($0.LatestDetectionQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MarkerDetectionHistoryRequest,
            $0.MarkerDetectionHistoryResponse>(
        'QueryMarkerDetectionHistory',
        queryMarkerDetectionHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MarkerDetectionHistoryRequest.fromBuffer(value),
        ($0.MarkerDetectionHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.HealthStatistics>(
        'GetHealthStatistics',
        getHealthStatistics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.HealthStatistics value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.SiteHealthInfo>(
        'SubscribeHealthStatus',
        subscribeHealthStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.SiteHealthInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LocationExceptionAnalysisRequest,
            $0.LocationExceptionAnalysisResponse>(
        'AnalyzeLocationException',
        analyzeLocationException_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.LocationExceptionAnalysisRequest.fromBuffer(value),
        ($0.LocationExceptionAnalysisResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CarExceptionAnalysisRequest,
            $0.CarExceptionAnalysisResponse>(
        'AnalyzeCarException',
        analyzeCarException_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CarExceptionAnalysisRequest.fromBuffer(value),
        ($0.CarExceptionAnalysisResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DataCleanupRequest, $0.DataCleanupResponse>(
            'CleanupData',
            cleanupData_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DataCleanupRequest.fromBuffer(value),
            ($0.DataCleanupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CarLocationStatsRequest,
            $0.CarLocationStatsResponse>(
        'GetCarLocationStats',
        getCarLocationStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CarLocationStatsRequest.fromBuffer(value),
        ($0.CarLocationStatsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.HealthInfoQueryRequest, $0.DataCleanupResponse>(
            'ResetLocationHealthData',
            resetLocationHealthData_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.HealthInfoQueryRequest.fromBuffer(value),
            ($0.DataCleanupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddMarkerExceptionRequest,
            $0.AddMarkerExceptionResponse>(
        'AddMarkerException',
        addMarkerException_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddMarkerExceptionRequest.fromBuffer(value),
        ($0.AddMarkerExceptionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReportAngleLearningRequest,
            $0.ReportAngleLearningResponse>(
        'ReportAngleLearning',
        reportAngleLearning_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ReportAngleLearningRequest.fromBuffer(value),
        ($0.ReportAngleLearningResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAngleLearningRequest,
            $0.QueryAngleLearningResponse>(
        'QueryAngleLearning',
        queryAngleLearning_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAngleLearningRequest.fromBuffer(value),
        ($0.QueryAngleLearningResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BatchQueryAngleLearningRequest,
            $0.BatchQueryAngleLearningResponse>(
        'BatchQueryAngleLearning',
        batchQueryAngleLearning_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.BatchQueryAngleLearningRequest.fromBuffer(value),
        ($0.BatchQueryAngleLearningResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResetAngleLearningRequest,
            $0.ResetAngleLearningResponse>(
        'ResetAngleLearning',
        resetAngleLearning_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ResetAngleLearningRequest.fromBuffer(value),
        ($0.ResetAngleLearningResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CleanupAngleLearningRequest,
            $0.CleanupAngleLearningResponse>(
        'CleanupAngleLearning',
        cleanupAngleLearning_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CleanupAngleLearningRequest.fromBuffer(value),
        ($0.CleanupAngleLearningResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.AngleLearningStatistics>(
        'GetAngleLearningStatistics',
        getAngleLearningStatistics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.AngleLearningStatistics value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.AngleLearningLocationsResponse>(
        'GetAllAngleLearningLocations',
        getAllAngleLearningLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.AngleLearningLocationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.GlobalAngleLearningResult>(
        'SubscribeAngleLearningStatus',
        subscribeAngleLearningStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.GlobalAngleLearningResult value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AngleSample, $1.Empty>(
        'AddManualAngleSample',
        addManualAngleSample_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AngleSample.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> reportSiteHealthInfo_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SiteHealthInfo> $request) async {
    return reportSiteHealthInfo($call, await $request);
  }

  $async.Future<$1.Empty> reportSiteHealthInfo(
      $grpc.ServiceCall call, $0.SiteHealthInfo request);

  $async.Future<$1.Empty> batchReportSiteHealthInfo(
      $grpc.ServiceCall call, $async.Stream<$0.SiteHealthInfo> request);

  $async.Future<$0.HealthInfoQueryResponse> queryHealthInfo_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.HealthInfoQueryRequest> $request) async {
    return queryHealthInfo($call, await $request);
  }

  $async.Future<$0.HealthInfoQueryResponse> queryHealthInfo(
      $grpc.ServiceCall call, $0.HealthInfoQueryRequest request);

  $async.Future<$0.OverallStatusQueryResponse> queryOverallStatus_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.HealthInfoQueryRequest> $request) async {
    return queryOverallStatus($call, await $request);
  }

  $async.Future<$0.OverallStatusQueryResponse> queryOverallStatus(
      $grpc.ServiceCall call, $0.HealthInfoQueryRequest request);

  $async.Future<$0.LatestDetectionQueryResponse> queryLatestDetection_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.HealthInfoQueryRequest> $request) async {
    return queryLatestDetection($call, await $request);
  }

  $async.Future<$0.LatestDetectionQueryResponse> queryLatestDetection(
      $grpc.ServiceCall call, $0.HealthInfoQueryRequest request);

  $async.Future<$0.MarkerDetectionHistoryResponse>
      queryMarkerDetectionHistory_Pre($grpc.ServiceCall $call,
          $async.Future<$0.MarkerDetectionHistoryRequest> $request) async {
    return queryMarkerDetectionHistory($call, await $request);
  }

  $async.Future<$0.MarkerDetectionHistoryResponse> queryMarkerDetectionHistory(
      $grpc.ServiceCall call, $0.MarkerDetectionHistoryRequest request);

  $async.Future<$0.HealthStatistics> getHealthStatistics_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getHealthStatistics($call, await $request);
  }

  $async.Future<$0.HealthStatistics> getHealthStatistics(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Stream<$0.SiteHealthInfo> subscribeHealthStatus_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async* {
    yield* subscribeHealthStatus($call, await $request);
  }

  $async.Stream<$0.SiteHealthInfo> subscribeHealthStatus(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.LocationExceptionAnalysisResponse>
      analyzeLocationException_Pre($grpc.ServiceCall $call,
          $async.Future<$0.LocationExceptionAnalysisRequest> $request) async {
    return analyzeLocationException($call, await $request);
  }

  $async.Future<$0.LocationExceptionAnalysisResponse> analyzeLocationException(
      $grpc.ServiceCall call, $0.LocationExceptionAnalysisRequest request);

  $async.Future<$0.CarExceptionAnalysisResponse> analyzeCarException_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CarExceptionAnalysisRequest> $request) async {
    return analyzeCarException($call, await $request);
  }

  $async.Future<$0.CarExceptionAnalysisResponse> analyzeCarException(
      $grpc.ServiceCall call, $0.CarExceptionAnalysisRequest request);

  $async.Future<$0.DataCleanupResponse> cleanupData_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DataCleanupRequest> $request) async {
    return cleanupData($call, await $request);
  }

  $async.Future<$0.DataCleanupResponse> cleanupData(
      $grpc.ServiceCall call, $0.DataCleanupRequest request);

  $async.Future<$0.CarLocationStatsResponse> getCarLocationStats_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CarLocationStatsRequest> $request) async {
    return getCarLocationStats($call, await $request);
  }

  $async.Future<$0.CarLocationStatsResponse> getCarLocationStats(
      $grpc.ServiceCall call, $0.CarLocationStatsRequest request);

  $async.Future<$0.DataCleanupResponse> resetLocationHealthData_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.HealthInfoQueryRequest> $request) async {
    return resetLocationHealthData($call, await $request);
  }

  $async.Future<$0.DataCleanupResponse> resetLocationHealthData(
      $grpc.ServiceCall call, $0.HealthInfoQueryRequest request);

  $async.Future<$0.AddMarkerExceptionResponse> addMarkerException_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AddMarkerExceptionRequest> $request) async {
    return addMarkerException($call, await $request);
  }

  $async.Future<$0.AddMarkerExceptionResponse> addMarkerException(
      $grpc.ServiceCall call, $0.AddMarkerExceptionRequest request);

  $async.Future<$0.ReportAngleLearningResponse> reportAngleLearning_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ReportAngleLearningRequest> $request) async {
    return reportAngleLearning($call, await $request);
  }

  $async.Future<$0.ReportAngleLearningResponse> reportAngleLearning(
      $grpc.ServiceCall call, $0.ReportAngleLearningRequest request);

  $async.Future<$0.QueryAngleLearningResponse> queryAngleLearning_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.QueryAngleLearningRequest> $request) async {
    return queryAngleLearning($call, await $request);
  }

  $async.Future<$0.QueryAngleLearningResponse> queryAngleLearning(
      $grpc.ServiceCall call, $0.QueryAngleLearningRequest request);

  $async.Future<$0.BatchQueryAngleLearningResponse> batchQueryAngleLearning_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.BatchQueryAngleLearningRequest> $request) async {
    return batchQueryAngleLearning($call, await $request);
  }

  $async.Future<$0.BatchQueryAngleLearningResponse> batchQueryAngleLearning(
      $grpc.ServiceCall call, $0.BatchQueryAngleLearningRequest request);

  $async.Future<$0.ResetAngleLearningResponse> resetAngleLearning_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ResetAngleLearningRequest> $request) async {
    return resetAngleLearning($call, await $request);
  }

  $async.Future<$0.ResetAngleLearningResponse> resetAngleLearning(
      $grpc.ServiceCall call, $0.ResetAngleLearningRequest request);

  $async.Future<$0.CleanupAngleLearningResponse> cleanupAngleLearning_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CleanupAngleLearningRequest> $request) async {
    return cleanupAngleLearning($call, await $request);
  }

  $async.Future<$0.CleanupAngleLearningResponse> cleanupAngleLearning(
      $grpc.ServiceCall call, $0.CleanupAngleLearningRequest request);

  $async.Future<$0.AngleLearningStatistics> getAngleLearningStatistics_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getAngleLearningStatistics($call, await $request);
  }

  $async.Future<$0.AngleLearningStatistics> getAngleLearningStatistics(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$0.AngleLearningLocationsResponse>
      getAllAngleLearningLocations_Pre(
          $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getAllAngleLearningLocations($call, await $request);
  }

  $async.Future<$0.AngleLearningLocationsResponse> getAllAngleLearningLocations(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Stream<$0.GlobalAngleLearningResult> subscribeAngleLearningStatus_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async* {
    yield* subscribeAngleLearningStatus($call, await $request);
  }

  $async.Stream<$0.GlobalAngleLearningResult> subscribeAngleLearningStatus(
      $grpc.ServiceCall call, $1.Empty request);

  $async.Future<$1.Empty> addManualAngleSample_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.AngleSample> $request) async {
    return addManualAngleSample($call, await $request);
  }

  $async.Future<$1.Empty> addManualAngleSample(
      $grpc.ServiceCall call, $0.AngleSample request);
}
