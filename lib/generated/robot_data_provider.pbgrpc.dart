// This is a generated file - do not edit.
//
// Generated from robot_data_provider.proto.

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
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart' as $0;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'robot_data_provider.pb.dart' as $2;

export 'robot_data_provider.pb.dart';

@$pb.GrpcServiceName('galaxis.data.provider.RobotModelProvider')
class RobotModelProviderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  RobotModelProviderClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.StringValue> getServerVersion(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getServerVersion, request, options: options);
  }

  $grpc.ResponseFuture<$2.ComponentInfos> getComponentInfos(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getComponentInfos, request, options: options);
  }

  $grpc.ResponseFuture<$2.IntStringMap> getRos2Topics(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRos2Topics, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllInputSwitchCurveItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllInputSwitchCurveItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllBatteryCurveItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllBatteryCurveItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllLoadRatioCurveItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllLoadRatioCurveItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllMotionCurveItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllMotionCurveItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllDistanceSensorItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllDistanceSensorItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.RadarItems> getAllRadarDataItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllRadarDataItems, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllExceptionItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllExceptionItems, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllMotionItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllMotionItems, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllBncmdItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllBncmdItems, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItems> getAllBnreportItems(
    $2.UserLanguageType request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAllBnreportItems, request, options: options);
  }

  // method descriptors

  static final _$getServerVersion =
      $grpc.ClientMethod<$0.Empty, $1.StringValue>(
          '/galaxis.data.provider.RobotModelProvider/GetServerVersion',
          ($0.Empty value) => value.writeToBuffer(),
          $1.StringValue.fromBuffer);
  static final _$getComponentInfos =
      $grpc.ClientMethod<$0.Empty, $2.ComponentInfos>(
          '/galaxis.data.provider.RobotModelProvider/GetComponentInfos',
          ($0.Empty value) => value.writeToBuffer(),
          $2.ComponentInfos.fromBuffer);
  static final _$getRos2Topics = $grpc.ClientMethod<$0.Empty, $2.IntStringMap>(
      '/galaxis.data.provider.RobotModelProvider/GetRos2Topics',
      ($0.Empty value) => value.writeToBuffer(),
      $2.IntStringMap.fromBuffer);
  static final _$getAllInputSwitchCurveItems = $grpc.ClientMethod<
          $2.UserLanguageType, $2.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllInputSwitchCurveItems',
      ($2.UserLanguageType value) => value.writeToBuffer(),
      $2.CurveItems.fromBuffer);
  static final _$getAllBatteryCurveItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllBatteryCurveItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllLoadRatioCurveItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllLoadRatioCurveItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllMotionCurveItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllMotionCurveItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllDistanceSensorItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllDistanceSensorItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllRadarDataItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.RadarItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllRadarDataItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.RadarItems.fromBuffer);
  static final _$getAllExceptionItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllExceptionItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllMotionItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllMotionItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllBncmdItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllBncmdItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
  static final _$getAllBnreportItems =
      $grpc.ClientMethod<$2.UserLanguageType, $2.CurveItems>(
          '/galaxis.data.provider.RobotModelProvider/GetAllBnreportItems',
          ($2.UserLanguageType value) => value.writeToBuffer(),
          $2.CurveItems.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.data.provider.RobotModelProvider')
abstract class RobotModelProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.RobotModelProvider';

  RobotModelProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.StringValue>(
        'GetServerVersion',
        getServerVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.StringValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.ComponentInfos>(
        'GetComponentInfos',
        getComponentInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.ComponentInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.IntStringMap>(
        'GetRos2Topics',
        getRos2Topics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.IntStringMap value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllInputSwitchCurveItems',
        getAllInputSwitchCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllBatteryCurveItems',
        getAllBatteryCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllLoadRatioCurveItems',
        getAllLoadRatioCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllMotionCurveItems',
        getAllMotionCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllDistanceSensorItems',
        getAllDistanceSensorItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.RadarItems>(
        'GetAllRadarDataItems',
        getAllRadarDataItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.RadarItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllExceptionItems',
        getAllExceptionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllMotionItems',
        getAllMotionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllBncmdItems',
        getAllBncmdItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageType, $2.CurveItems>(
        'GetAllBnreportItems',
        getAllBnreportItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserLanguageType.fromBuffer(value),
        ($2.CurveItems value) => value.writeToBuffer()));
  }

  $async.Future<$1.StringValue> getServerVersion_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getServerVersion($call, await $request);
  }

  $async.Future<$1.StringValue> getServerVersion(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.ComponentInfos> getComponentInfos_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getComponentInfos($call, await $request);
  }

  $async.Future<$2.ComponentInfos> getComponentInfos(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.IntStringMap> getRos2Topics_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getRos2Topics($call, await $request);
  }

  $async.Future<$2.IntStringMap> getRos2Topics(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.CurveItems> getAllInputSwitchCurveItems_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllInputSwitchCurveItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllInputSwitchCurveItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllBatteryCurveItems_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllBatteryCurveItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllBatteryCurveItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllLoadRatioCurveItems_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllLoadRatioCurveItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllLoadRatioCurveItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllMotionCurveItems_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllMotionCurveItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllMotionCurveItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllDistanceSensorItems_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllDistanceSensorItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllDistanceSensorItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.RadarItems> getAllRadarDataItems_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllRadarDataItems($call, await $request);
  }

  $async.Future<$2.RadarItems> getAllRadarDataItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllExceptionItems_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllExceptionItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllExceptionItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllMotionItems_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllMotionItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllMotionItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllBncmdItems_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllBncmdItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllBncmdItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);

  $async.Future<$2.CurveItems> getAllBnreportItems_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageType> $request) async {
    return getAllBnreportItems($call, await $request);
  }

  $async.Future<$2.CurveItems> getAllBnreportItems(
      $grpc.ServiceCall call, $2.UserLanguageType request);
}

@$pb.GrpcServiceName('galaxis.data.provider.HistoryDataProvider')
class HistoryDataProviderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  HistoryDataProviderClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.Time> queryAgvLogFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryAgvLogFirst, request, options: options);
  }

  $grpc.ResponseFuture<$2.AgvLogs> queryAgvLogs(
    $2.AgvLogCountedRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryAgvLogs, request, options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryAgvStateLogFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryAgvStateLogFirst, request, options: options);
  }

  $grpc.ResponseFuture<$2.AgvStateLogs> queryAgvStateLogs(
    $2.CountedRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryAgvStateLogs, request, options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryBatteryStatusFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryBatteryStatusFirst, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.BatteryStatuses> queryBatteryStatuses(
    $2.ResampleTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryBatteryStatuses, request, options: options);
  }

  $grpc.ResponseFuture<$2.ExceptionStatusEvents> queryExceptionStatusEvents(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryExceptionStatusEvents, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryRadarDataFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryRadarDataFirst, request, options: options);
  }

  $grpc.ResponseFuture<$2.RadarPageDatas> queryRadarPageDatas(
    $2.Time request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryRadarPageDatas, request, options: options);
  }

  /// ///////////
  $grpc.ResponseFuture<$2.RadarRunningInfos> queryRadarObstacleTrend(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryRadarObstacleTrend, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.RadarDatas> queryRadarDatas(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryRadarDatas, request, options: options);
  }

  $grpc.ResponseFuture<$2.RadarDataSketchys> queryRadarDataSketchys(
    $2.CountedRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryRadarDataSketchys, request,
        options: options);
  }

  $grpc.ResponseStream<$2.ProcessStatus> createRadarDataDumpFile(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$createRadarDataDumpFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.FileInfo> getRadarDataDumpFileInfo(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRadarDataDumpFileInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.FetchDataResponse> downloadRadarFrameData(
    $2.FetchRadarDataRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$downloadRadarFrameData, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Time> querySensorSwitchItemFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$querySensorSwitchItemFirst, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.TimeaxisItems> querySensorSwitchTimeaxisItems(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$querySensorSwitchTimeaxisItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.SensorSwitchItems> querySensorSwitchItems(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$querySensorSwitchItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryMotionCurveDataFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryMotionCurveDataFirst, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItemDatas> queryMotionCurveDatas(
    $2.ResampleTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryMotionCurveDatas, request, options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryDistanceSensorDataFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryDistanceSensorDataFirst, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.CurveItemDatas> queryDistanceSensorDatas(
    $2.ResampleTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryDistanceSensorDatas, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Time> queryLoadRatioFirst(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryLoadRatioFirst, request, options: options);
  }

  $grpc.ResponseFuture<$2.CurveItemDatas> queryLoadRatios(
    $2.ResampleTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$queryLoadRatios, request, options: options);
  }

  /// //
  /// rpc QueryRobotStatusFirst(google.protobuf.Empty) returns (Time) {}
  /// rpc QueryRobotStatuses(TimeRange) returns (RobotStatuses) {}
  /// rpc StartListenRobotStatuses(UserLanguageSession) returns (stream RobotStatus) {}
  /// rpc StopListenRobotStatuses(UserSession) returns (google.protobuf.Empty) {}
  /// //
  $grpc.ResponseStream<$2.ProcessStatus> createRosbagDumpFile(
    $2.RosbagTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$createRosbagDumpFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.FileInfo> getRosbagDumpFileInfo(
    $2.RosbagTypeItem request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRosbagDumpFileInfo, request, options: options);
  }

  /// //
  $grpc.ResponseStream<$2.ProcessStatus> createCanDumpFile(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$createCanDumpFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.FileInfo> getCanDumpFileInfo(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getCanDumpFileInfo, request, options: options);
  }

  /// //
  $grpc.ResponseStream<$2.ProcessStatus> createDatabaseDumpFile(
    $2.ExtTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$createDatabaseDumpFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$2.FileInfo> getDatabaseDumpFileInfo(
    $0.Empty request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getDatabaseDumpFileInfo, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.StringValues> getVdumpsFileLists(
    $2.SteadyTimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getVdumpsFileLists, request, options: options);
  }

  $grpc.ResponseFuture<$1.BytesValue> getVdumpsFileData(
    $1.StringValue request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getVdumpsFileData, request, options: options);
  }

  // method descriptors

  static final _$queryAgvLogFirst = $grpc.ClientMethod<$0.Empty, $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvLogFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryAgvLogs =
      $grpc.ClientMethod<$2.AgvLogCountedRange, $2.AgvLogs>(
          '/galaxis.data.provider.HistoryDataProvider/QueryAgvLogs',
          ($2.AgvLogCountedRange value) => value.writeToBuffer(),
          $2.AgvLogs.fromBuffer);
  static final _$queryAgvStateLogFirst = $grpc.ClientMethod<$0.Empty, $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvStateLogFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryAgvStateLogs =
      $grpc.ClientMethod<$2.CountedRange, $2.AgvStateLogs>(
          '/galaxis.data.provider.HistoryDataProvider/QueryAgvStateLogs',
          ($2.CountedRange value) => value.writeToBuffer(),
          $2.AgvStateLogs.fromBuffer);
  static final _$queryBatteryStatusFirst =
      $grpc.ClientMethod<$0.Empty, $2.Time>(
          '/galaxis.data.provider.HistoryDataProvider/QueryBatteryStatusFirst',
          ($0.Empty value) => value.writeToBuffer(),
          $2.Time.fromBuffer);
  static final _$queryBatteryStatuses =
      $grpc.ClientMethod<$2.ResampleTimeRange, $2.BatteryStatuses>(
          '/galaxis.data.provider.HistoryDataProvider/QueryBatteryStatuses',
          ($2.ResampleTimeRange value) => value.writeToBuffer(),
          $2.BatteryStatuses.fromBuffer);
  static final _$queryExceptionStatusEvents = $grpc.ClientMethod<$2.TimeRange,
          $2.ExceptionStatusEvents>(
      '/galaxis.data.provider.HistoryDataProvider/QueryExceptionStatusEvents',
      ($2.TimeRange value) => value.writeToBuffer(),
      $2.ExceptionStatusEvents.fromBuffer);
  static final _$queryRadarDataFirst = $grpc.ClientMethod<$0.Empty, $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryRadarPageDatas =
      $grpc.ClientMethod<$2.Time, $2.RadarPageDatas>(
          '/galaxis.data.provider.HistoryDataProvider/QueryRadarPageDatas',
          ($2.Time value) => value.writeToBuffer(),
          $2.RadarPageDatas.fromBuffer);
  static final _$queryRadarObstacleTrend =
      $grpc.ClientMethod<$2.TimeRange, $2.RadarRunningInfos>(
          '/galaxis.data.provider.HistoryDataProvider/QueryRadarObstacleTrend',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.RadarRunningInfos.fromBuffer);
  static final _$queryRadarDatas =
      $grpc.ClientMethod<$2.TimeRange, $2.RadarDatas>(
          '/galaxis.data.provider.HistoryDataProvider/QueryRadarDatas',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.RadarDatas.fromBuffer);
  static final _$queryRadarDataSketchys =
      $grpc.ClientMethod<$2.CountedRange, $2.RadarDataSketchys>(
          '/galaxis.data.provider.HistoryDataProvider/QueryRadarDataSketchys',
          ($2.CountedRange value) => value.writeToBuffer(),
          $2.RadarDataSketchys.fromBuffer);
  static final _$createRadarDataDumpFile =
      $grpc.ClientMethod<$2.TimeRange, $2.ProcessStatus>(
          '/galaxis.data.provider.HistoryDataProvider/CreateRadarDataDumpFile',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.ProcessStatus.fromBuffer);
  static final _$getRadarDataDumpFileInfo =
      $grpc.ClientMethod<$0.Empty, $2.FileInfo>(
          '/galaxis.data.provider.HistoryDataProvider/GetRadarDataDumpFileInfo',
          ($0.Empty value) => value.writeToBuffer(),
          $2.FileInfo.fromBuffer);
  static final _$downloadRadarFrameData =
      $grpc.ClientMethod<$2.FetchRadarDataRequest, $2.FetchDataResponse>(
          '/galaxis.data.provider.HistoryDataProvider/DownloadRadarFrameData',
          ($2.FetchRadarDataRequest value) => value.writeToBuffer(),
          $2.FetchDataResponse.fromBuffer);
  static final _$querySensorSwitchItemFirst = $grpc.ClientMethod<$0.Empty,
          $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchItemFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$querySensorSwitchTimeaxisItems = $grpc.ClientMethod<
          $2.TimeRange, $2.TimeaxisItems>(
      '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchTimeaxisItems',
      ($2.TimeRange value) => value.writeToBuffer(),
      $2.TimeaxisItems.fromBuffer);
  static final _$querySensorSwitchItems =
      $grpc.ClientMethod<$2.TimeRange, $2.SensorSwitchItems>(
          '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchItems',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.SensorSwitchItems.fromBuffer);
  static final _$queryMotionCurveDataFirst = $grpc.ClientMethod<$0.Empty,
          $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryMotionCurveDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryMotionCurveDatas =
      $grpc.ClientMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
          '/galaxis.data.provider.HistoryDataProvider/QueryMotionCurveDatas',
          ($2.ResampleTimeRange value) => value.writeToBuffer(),
          $2.CurveItemDatas.fromBuffer);
  static final _$queryDistanceSensorDataFirst = $grpc.ClientMethod<$0.Empty,
          $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryDistanceSensorDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryDistanceSensorDatas =
      $grpc.ClientMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
          '/galaxis.data.provider.HistoryDataProvider/QueryDistanceSensorDatas',
          ($2.ResampleTimeRange value) => value.writeToBuffer(),
          $2.CurveItemDatas.fromBuffer);
  static final _$queryLoadRatioFirst = $grpc.ClientMethod<$0.Empty, $2.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryLoadRatioFirst',
      ($0.Empty value) => value.writeToBuffer(),
      $2.Time.fromBuffer);
  static final _$queryLoadRatios =
      $grpc.ClientMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
          '/galaxis.data.provider.HistoryDataProvider/QueryLoadRatios',
          ($2.ResampleTimeRange value) => value.writeToBuffer(),
          $2.CurveItemDatas.fromBuffer);
  static final _$createRosbagDumpFile =
      $grpc.ClientMethod<$2.RosbagTimeRange, $2.ProcessStatus>(
          '/galaxis.data.provider.HistoryDataProvider/CreateRosbagDumpFile',
          ($2.RosbagTimeRange value) => value.writeToBuffer(),
          $2.ProcessStatus.fromBuffer);
  static final _$getRosbagDumpFileInfo =
      $grpc.ClientMethod<$2.RosbagTypeItem, $2.FileInfo>(
          '/galaxis.data.provider.HistoryDataProvider/GetRosbagDumpFileInfo',
          ($2.RosbagTypeItem value) => value.writeToBuffer(),
          $2.FileInfo.fromBuffer);
  static final _$createCanDumpFile =
      $grpc.ClientMethod<$2.TimeRange, $2.ProcessStatus>(
          '/galaxis.data.provider.HistoryDataProvider/CreateCanDumpFile',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.ProcessStatus.fromBuffer);
  static final _$getCanDumpFileInfo = $grpc.ClientMethod<$0.Empty, $2.FileInfo>(
      '/galaxis.data.provider.HistoryDataProvider/GetCanDumpFileInfo',
      ($0.Empty value) => value.writeToBuffer(),
      $2.FileInfo.fromBuffer);
  static final _$createDatabaseDumpFile =
      $grpc.ClientMethod<$2.ExtTimeRange, $2.ProcessStatus>(
          '/galaxis.data.provider.HistoryDataProvider/CreateDatabaseDumpFile',
          ($2.ExtTimeRange value) => value.writeToBuffer(),
          $2.ProcessStatus.fromBuffer);
  static final _$getDatabaseDumpFileInfo =
      $grpc.ClientMethod<$0.Empty, $2.FileInfo>(
          '/galaxis.data.provider.HistoryDataProvider/GetDatabaseDumpFileInfo',
          ($0.Empty value) => value.writeToBuffer(),
          $2.FileInfo.fromBuffer);
  static final _$getVdumpsFileLists =
      $grpc.ClientMethod<$2.SteadyTimeRange, $2.StringValues>(
          '/galaxis.data.provider.HistoryDataProvider/GetVdumpsFileLists',
          ($2.SteadyTimeRange value) => value.writeToBuffer(),
          $2.StringValues.fromBuffer);
  static final _$getVdumpsFileData =
      $grpc.ClientMethod<$1.StringValue, $1.BytesValue>(
          '/galaxis.data.provider.HistoryDataProvider/GetVdumpsFileData',
          ($1.StringValue value) => value.writeToBuffer(),
          $1.BytesValue.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.data.provider.HistoryDataProvider')
abstract class HistoryDataProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.HistoryDataProvider';

  HistoryDataProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryAgvLogFirst',
        queryAgvLogFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AgvLogCountedRange, $2.AgvLogs>(
        'QueryAgvLogs',
        queryAgvLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.AgvLogCountedRange.fromBuffer(value),
        ($2.AgvLogs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryAgvStateLogFirst',
        queryAgvStateLogFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CountedRange, $2.AgvStateLogs>(
        'QueryAgvStateLogs',
        queryAgvStateLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CountedRange.fromBuffer(value),
        ($2.AgvStateLogs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryBatteryStatusFirst',
        queryBatteryStatusFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ResampleTimeRange, $2.BatteryStatuses>(
        'QueryBatteryStatuses',
        queryBatteryStatuses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ResampleTimeRange.fromBuffer(value),
        ($2.BatteryStatuses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.ExceptionStatusEvents>(
        'QueryExceptionStatusEvents',
        queryExceptionStatusEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.ExceptionStatusEvents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryRadarDataFirst',
        queryRadarDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Time, $2.RadarPageDatas>(
        'QueryRadarPageDatas',
        queryRadarPageDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Time.fromBuffer(value),
        ($2.RadarPageDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.RadarRunningInfos>(
        'QueryRadarObstacleTrend',
        queryRadarObstacleTrend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.RadarRunningInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.RadarDatas>(
        'QueryRadarDatas',
        queryRadarDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.RadarDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CountedRange, $2.RadarDataSketchys>(
        'QueryRadarDataSketchys',
        queryRadarDataSketchys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CountedRange.fromBuffer(value),
        ($2.RadarDataSketchys value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.ProcessStatus>(
        'CreateRadarDataDumpFile',
        createRadarDataDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.FileInfo>(
        'GetRadarDataDumpFileInfo',
        getRadarDataDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.FileInfo value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FetchRadarDataRequest, $2.FetchDataResponse>(
            'DownloadRadarFrameData',
            downloadRadarFrameData_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FetchRadarDataRequest.fromBuffer(value),
            ($2.FetchDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QuerySensorSwitchItemFirst',
        querySensorSwitchItemFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.TimeaxisItems>(
        'QuerySensorSwitchTimeaxisItems',
        querySensorSwitchTimeaxisItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.TimeaxisItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.SensorSwitchItems>(
        'QuerySensorSwitchItems',
        querySensorSwitchItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.SensorSwitchItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryMotionCurveDataFirst',
        queryMotionCurveDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
        'QueryMotionCurveDatas',
        queryMotionCurveDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ResampleTimeRange.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryDistanceSensorDataFirst',
        queryDistanceSensorDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
        'QueryDistanceSensorDatas',
        queryDistanceSensorDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ResampleTimeRange.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.Time>(
        'QueryLoadRatioFirst',
        queryLoadRatioFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ResampleTimeRange, $2.CurveItemDatas>(
        'QueryLoadRatios',
        queryLoadRatios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ResampleTimeRange.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RosbagTimeRange, $2.ProcessStatus>(
        'CreateRosbagDumpFile',
        createRosbagDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.RosbagTimeRange.fromBuffer(value),
        ($2.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RosbagTypeItem, $2.FileInfo>(
        'GetRosbagDumpFileInfo',
        getRosbagDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RosbagTypeItem.fromBuffer(value),
        ($2.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.ProcessStatus>(
        'CreateCanDumpFile',
        createCanDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.FileInfo>(
        'GetCanDumpFileInfo',
        getCanDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ExtTimeRange, $2.ProcessStatus>(
        'CreateDatabaseDumpFile',
        createDatabaseDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ExtTimeRange.fromBuffer(value),
        ($2.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $2.FileInfo>(
        'GetDatabaseDumpFileInfo',
        getDatabaseDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($2.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SteadyTimeRange, $2.StringValues>(
        'GetVdumpsFileLists',
        getVdumpsFileLists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SteadyTimeRange.fromBuffer(value),
        ($2.StringValues value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StringValue, $1.BytesValue>(
        'GetVdumpsFileData',
        getVdumpsFileData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value),
        ($1.BytesValue value) => value.writeToBuffer()));
  }

  $async.Future<$2.Time> queryAgvLogFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryAgvLogFirst($call, await $request);
  }

  $async.Future<$2.Time> queryAgvLogFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.AgvLogs> queryAgvLogs_Pre($grpc.ServiceCall $call,
      $async.Future<$2.AgvLogCountedRange> $request) async {
    return queryAgvLogs($call, await $request);
  }

  $async.Future<$2.AgvLogs> queryAgvLogs(
      $grpc.ServiceCall call, $2.AgvLogCountedRange request);

  $async.Future<$2.Time> queryAgvStateLogFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryAgvStateLogFirst($call, await $request);
  }

  $async.Future<$2.Time> queryAgvStateLogFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.AgvStateLogs> queryAgvStateLogs_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.CountedRange> $request) async {
    return queryAgvStateLogs($call, await $request);
  }

  $async.Future<$2.AgvStateLogs> queryAgvStateLogs(
      $grpc.ServiceCall call, $2.CountedRange request);

  $async.Future<$2.Time> queryBatteryStatusFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryBatteryStatusFirst($call, await $request);
  }

  $async.Future<$2.Time> queryBatteryStatusFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.BatteryStatuses> queryBatteryStatuses_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.ResampleTimeRange> $request) async {
    return queryBatteryStatuses($call, await $request);
  }

  $async.Future<$2.BatteryStatuses> queryBatteryStatuses(
      $grpc.ServiceCall call, $2.ResampleTimeRange request);

  $async.Future<$2.ExceptionStatusEvents> queryExceptionStatusEvents_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return queryExceptionStatusEvents($call, await $request);
  }

  $async.Future<$2.ExceptionStatusEvents> queryExceptionStatusEvents(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.Time> queryRadarDataFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryRadarDataFirst($call, await $request);
  }

  $async.Future<$2.Time> queryRadarDataFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.RadarPageDatas> queryRadarPageDatas_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.Time> $request) async {
    return queryRadarPageDatas($call, await $request);
  }

  $async.Future<$2.RadarPageDatas> queryRadarPageDatas(
      $grpc.ServiceCall call, $2.Time request);

  $async.Future<$2.RadarRunningInfos> queryRadarObstacleTrend_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return queryRadarObstacleTrend($call, await $request);
  }

  $async.Future<$2.RadarRunningInfos> queryRadarObstacleTrend(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.RadarDatas> queryRadarDatas_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return queryRadarDatas($call, await $request);
  }

  $async.Future<$2.RadarDatas> queryRadarDatas(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.RadarDataSketchys> queryRadarDataSketchys_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.CountedRange> $request) async {
    return queryRadarDataSketchys($call, await $request);
  }

  $async.Future<$2.RadarDataSketchys> queryRadarDataSketchys(
      $grpc.ServiceCall call, $2.CountedRange request);

  $async.Stream<$2.ProcessStatus> createRadarDataDumpFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async* {
    yield* createRadarDataDumpFile($call, await $request);
  }

  $async.Stream<$2.ProcessStatus> createRadarDataDumpFile(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.FileInfo> getRadarDataDumpFileInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getRadarDataDumpFileInfo($call, await $request);
  }

  $async.Future<$2.FileInfo> getRadarDataDumpFileInfo(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.FetchDataResponse> downloadRadarFrameData_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.FetchRadarDataRequest> $request) async {
    return downloadRadarFrameData($call, await $request);
  }

  $async.Future<$2.FetchDataResponse> downloadRadarFrameData(
      $grpc.ServiceCall call, $2.FetchRadarDataRequest request);

  $async.Future<$2.Time> querySensorSwitchItemFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return querySensorSwitchItemFirst($call, await $request);
  }

  $async.Future<$2.Time> querySensorSwitchItemFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.TimeaxisItems> querySensorSwitchTimeaxisItems_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return querySensorSwitchTimeaxisItems($call, await $request);
  }

  $async.Future<$2.TimeaxisItems> querySensorSwitchTimeaxisItems(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.SensorSwitchItems> querySensorSwitchItems_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return querySensorSwitchItems($call, await $request);
  }

  $async.Future<$2.SensorSwitchItems> querySensorSwitchItems(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.Time> queryMotionCurveDataFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryMotionCurveDataFirst($call, await $request);
  }

  $async.Future<$2.Time> queryMotionCurveDataFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.CurveItemDatas> queryMotionCurveDatas_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.ResampleTimeRange> $request) async {
    return queryMotionCurveDatas($call, await $request);
  }

  $async.Future<$2.CurveItemDatas> queryMotionCurveDatas(
      $grpc.ServiceCall call, $2.ResampleTimeRange request);

  $async.Future<$2.Time> queryDistanceSensorDataFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryDistanceSensorDataFirst($call, await $request);
  }

  $async.Future<$2.Time> queryDistanceSensorDataFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.CurveItemDatas> queryDistanceSensorDatas_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.ResampleTimeRange> $request) async {
    return queryDistanceSensorDatas($call, await $request);
  }

  $async.Future<$2.CurveItemDatas> queryDistanceSensorDatas(
      $grpc.ServiceCall call, $2.ResampleTimeRange request);

  $async.Future<$2.Time> queryLoadRatioFirst_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return queryLoadRatioFirst($call, await $request);
  }

  $async.Future<$2.Time> queryLoadRatioFirst(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.CurveItemDatas> queryLoadRatios_Pre($grpc.ServiceCall $call,
      $async.Future<$2.ResampleTimeRange> $request) async {
    return queryLoadRatios($call, await $request);
  }

  $async.Future<$2.CurveItemDatas> queryLoadRatios(
      $grpc.ServiceCall call, $2.ResampleTimeRange request);

  $async.Stream<$2.ProcessStatus> createRosbagDumpFile_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.RosbagTimeRange> $request) async* {
    yield* createRosbagDumpFile($call, await $request);
  }

  $async.Stream<$2.ProcessStatus> createRosbagDumpFile(
      $grpc.ServiceCall call, $2.RosbagTimeRange request);

  $async.Future<$2.FileInfo> getRosbagDumpFileInfo_Pre($grpc.ServiceCall $call,
      $async.Future<$2.RosbagTypeItem> $request) async {
    return getRosbagDumpFileInfo($call, await $request);
  }

  $async.Future<$2.FileInfo> getRosbagDumpFileInfo(
      $grpc.ServiceCall call, $2.RosbagTypeItem request);

  $async.Stream<$2.ProcessStatus> createCanDumpFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async* {
    yield* createCanDumpFile($call, await $request);
  }

  $async.Stream<$2.ProcessStatus> createCanDumpFile(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.FileInfo> getCanDumpFileInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getCanDumpFileInfo($call, await $request);
  }

  $async.Future<$2.FileInfo> getCanDumpFileInfo(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Stream<$2.ProcessStatus> createDatabaseDumpFile_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.ExtTimeRange> $request) async* {
    yield* createDatabaseDumpFile($call, await $request);
  }

  $async.Stream<$2.ProcessStatus> createDatabaseDumpFile(
      $grpc.ServiceCall call, $2.ExtTimeRange request);

  $async.Future<$2.FileInfo> getDatabaseDumpFileInfo_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getDatabaseDumpFileInfo($call, await $request);
  }

  $async.Future<$2.FileInfo> getDatabaseDumpFileInfo(
      $grpc.ServiceCall call, $0.Empty request);

  $async.Future<$2.StringValues> getVdumpsFileLists_Pre($grpc.ServiceCall $call,
      $async.Future<$2.SteadyTimeRange> $request) async {
    return getVdumpsFileLists($call, await $request);
  }

  $async.Future<$2.StringValues> getVdumpsFileLists(
      $grpc.ServiceCall call, $2.SteadyTimeRange request);

  $async.Future<$1.BytesValue> getVdumpsFileData_Pre(
      $grpc.ServiceCall $call, $async.Future<$1.StringValue> $request) async {
    return getVdumpsFileData($call, await $request);
  }

  $async.Future<$1.BytesValue> getVdumpsFileData(
      $grpc.ServiceCall call, $1.StringValue request);
}

@$pb.GrpcServiceName('galaxis.data.provider.RealtimeDataProvider')
class RealtimeDataProviderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  RealtimeDataProviderClient(super.channel,
      {super.options, super.interceptors});

  $grpc.ResponseStream<$2.AgvLog> startListenAgvLogs(
    $2.UserLanguageSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenAgvLogs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenAgvLogs(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenAgvLogs, request, options: options);
  }

  $grpc.ResponseStream<$2.AgvStateLog> startListenAgvStateLogs(
    $2.UserLanguageSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenAgvStateLogs, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenAgvStateLogs(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenAgvStateLogs, request,
        options: options);
  }

  $grpc.ResponseStream<$2.BatteryStatus> startListenBatteryStatus(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenBatteryStatus, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenBatteryStatus(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenBatteryStatus, request,
        options: options);
  }

  $grpc.ResponseStream<$2.RadarPageDatas> startReplayRadarData(
    $2.ReplayInfo request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startReplayRadarData, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopReplayRadarData(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopReplayRadarData, request, options: options);
  }

  $grpc.ResponseStream<$2.SensorSwitchItems> startListenSensorSwitches(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenSensorSwitches, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenSensorSwitches(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenSensorSwitches, request,
        options: options);
  }

  $grpc.ResponseStream<$2.CurveItemDatas> startListenDistanceSensors(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenDistanceSensors, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenDistanceSensors(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenDistanceSensors, request,
        options: options);
  }

  $grpc.ResponseStream<$2.CurveItemDatas> startListenLoadRatios(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenLoadRatios, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenLoadRatios(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenLoadRatios, request, options: options);
  }

  $grpc.ResponseStream<$2.CurveItemDatas> startListenMotionCurves(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenMotionCurves, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenMotionCurves(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$stopListenMotionCurves, request,
        options: options);
  }

  $grpc.ResponseStream<$2.RobotStatus> startListenRobotStatuses(
    $2.UserSession request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$startListenRobotStatuses, $async.Stream.fromIterable([request]),
        options: options);
  }

  // method descriptors

  static final _$startListenAgvLogs =
      $grpc.ClientMethod<$2.UserLanguageSession, $2.AgvLog>(
          '/galaxis.data.provider.RealtimeDataProvider/StartListenAgvLogs',
          ($2.UserLanguageSession value) => value.writeToBuffer(),
          $2.AgvLog.fromBuffer);
  static final _$stopListenAgvLogs =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopListenAgvLogs',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startListenAgvStateLogs =
      $grpc.ClientMethod<$2.UserLanguageSession, $2.AgvStateLog>(
          '/galaxis.data.provider.RealtimeDataProvider/StartListenAgvStateLogs',
          ($2.UserLanguageSession value) => value.writeToBuffer(),
          $2.AgvStateLog.fromBuffer);
  static final _$stopListenAgvStateLogs =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopListenAgvStateLogs',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startListenBatteryStatus = $grpc.ClientMethod<$2.UserSession,
          $2.BatteryStatus>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenBatteryStatus',
      ($2.UserSession value) => value.writeToBuffer(),
      $2.BatteryStatus.fromBuffer);
  static final _$stopListenBatteryStatus =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopListenBatteryStatus',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startReplayRadarData =
      $grpc.ClientMethod<$2.ReplayInfo, $2.RadarPageDatas>(
          '/galaxis.data.provider.RealtimeDataProvider/StartReplayRadarData',
          ($2.ReplayInfo value) => value.writeToBuffer(),
          $2.RadarPageDatas.fromBuffer);
  static final _$stopReplayRadarData =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopReplayRadarData',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startListenSensorSwitches = $grpc.ClientMethod<$2.UserSession,
          $2.SensorSwitchItems>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenSensorSwitches',
      ($2.UserSession value) => value.writeToBuffer(),
      $2.SensorSwitchItems.fromBuffer);
  static final _$stopListenSensorSwitches = $grpc.ClientMethod<$2.UserSession,
          $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenSensorSwitches',
      ($2.UserSession value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$startListenDistanceSensors = $grpc.ClientMethod<$2.UserSession,
          $2.CurveItemDatas>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenDistanceSensors',
      ($2.UserSession value) => value.writeToBuffer(),
      $2.CurveItemDatas.fromBuffer);
  static final _$stopListenDistanceSensors = $grpc.ClientMethod<$2.UserSession,
          $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenDistanceSensors',
      ($2.UserSession value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$startListenLoadRatios =
      $grpc.ClientMethod<$2.UserSession, $2.CurveItemDatas>(
          '/galaxis.data.provider.RealtimeDataProvider/StartListenLoadRatios',
          ($2.UserSession value) => value.writeToBuffer(),
          $2.CurveItemDatas.fromBuffer);
  static final _$stopListenLoadRatios =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopListenLoadRatios',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startListenMotionCurves =
      $grpc.ClientMethod<$2.UserSession, $2.CurveItemDatas>(
          '/galaxis.data.provider.RealtimeDataProvider/StartListenMotionCurves',
          ($2.UserSession value) => value.writeToBuffer(),
          $2.CurveItemDatas.fromBuffer);
  static final _$stopListenMotionCurves =
      $grpc.ClientMethod<$2.UserSession, $0.Empty>(
          '/galaxis.data.provider.RealtimeDataProvider/StopListenMotionCurves',
          ($2.UserSession value) => value.writeToBuffer(),
          $0.Empty.fromBuffer);
  static final _$startListenRobotStatuses = $grpc.ClientMethod<$2.UserSession,
          $2.RobotStatus>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenRobotStatuses',
      ($2.UserSession value) => value.writeToBuffer(),
      $2.RobotStatus.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.data.provider.RealtimeDataProvider')
abstract class RealtimeDataProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.RealtimeDataProvider';

  RealtimeDataProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.UserLanguageSession, $2.AgvLog>(
        'StartListenAgvLogs',
        startListenAgvLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $2.UserLanguageSession.fromBuffer(value),
        ($2.AgvLog value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenAgvLogs',
        stopListenAgvLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserLanguageSession, $2.AgvStateLog>(
        'StartListenAgvStateLogs',
        startListenAgvStateLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $2.UserLanguageSession.fromBuffer(value),
        ($2.AgvStateLog value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenAgvStateLogs',
        stopListenAgvStateLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.BatteryStatus>(
        'StartListenBatteryStatus',
        startListenBatteryStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.BatteryStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenBatteryStatus',
        stopListenBatteryStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ReplayInfo, $2.RadarPageDatas>(
        'StartReplayRadarData',
        startReplayRadarData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.ReplayInfo.fromBuffer(value),
        ($2.RadarPageDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopReplayRadarData',
        stopReplayRadarData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.SensorSwitchItems>(
        'StartListenSensorSwitches',
        startListenSensorSwitches_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.SensorSwitchItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenSensorSwitches',
        stopListenSensorSwitches_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.CurveItemDatas>(
        'StartListenDistanceSensors',
        startListenDistanceSensors_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenDistanceSensors',
        stopListenDistanceSensors_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.CurveItemDatas>(
        'StartListenLoadRatios',
        startListenLoadRatios_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenLoadRatios',
        stopListenLoadRatios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.CurveItemDatas>(
        'StartListenMotionCurves',
        startListenMotionCurves_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $0.Empty>(
        'StopListenMotionCurves',
        stopListenMotionCurves_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserSession, $2.RobotStatus>(
        'StartListenRobotStatuses',
        startListenRobotStatuses_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.UserSession.fromBuffer(value),
        ($2.RobotStatus value) => value.writeToBuffer()));
  }

  $async.Stream<$2.AgvLog> startListenAgvLogs_Pre($grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageSession> $request) async* {
    yield* startListenAgvLogs($call, await $request);
  }

  $async.Stream<$2.AgvLog> startListenAgvLogs(
      $grpc.ServiceCall call, $2.UserLanguageSession request);

  $async.Future<$0.Empty> stopListenAgvLogs_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenAgvLogs($call, await $request);
  }

  $async.Future<$0.Empty> stopListenAgvLogs(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.AgvStateLog> startListenAgvStateLogs_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.UserLanguageSession> $request) async* {
    yield* startListenAgvStateLogs($call, await $request);
  }

  $async.Stream<$2.AgvStateLog> startListenAgvStateLogs(
      $grpc.ServiceCall call, $2.UserLanguageSession request);

  $async.Future<$0.Empty> stopListenAgvStateLogs_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenAgvStateLogs($call, await $request);
  }

  $async.Future<$0.Empty> stopListenAgvStateLogs(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.BatteryStatus> startListenBatteryStatus_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenBatteryStatus($call, await $request);
  }

  $async.Stream<$2.BatteryStatus> startListenBatteryStatus(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Future<$0.Empty> stopListenBatteryStatus_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenBatteryStatus($call, await $request);
  }

  $async.Future<$0.Empty> stopListenBatteryStatus(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.RadarPageDatas> startReplayRadarData_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.ReplayInfo> $request) async* {
    yield* startReplayRadarData($call, await $request);
  }

  $async.Stream<$2.RadarPageDatas> startReplayRadarData(
      $grpc.ServiceCall call, $2.ReplayInfo request);

  $async.Future<$0.Empty> stopReplayRadarData_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopReplayRadarData($call, await $request);
  }

  $async.Future<$0.Empty> stopReplayRadarData(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.SensorSwitchItems> startListenSensorSwitches_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenSensorSwitches($call, await $request);
  }

  $async.Stream<$2.SensorSwitchItems> startListenSensorSwitches(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Future<$0.Empty> stopListenSensorSwitches_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenSensorSwitches($call, await $request);
  }

  $async.Future<$0.Empty> stopListenSensorSwitches(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.CurveItemDatas> startListenDistanceSensors_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenDistanceSensors($call, await $request);
  }

  $async.Stream<$2.CurveItemDatas> startListenDistanceSensors(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Future<$0.Empty> stopListenDistanceSensors_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenDistanceSensors($call, await $request);
  }

  $async.Future<$0.Empty> stopListenDistanceSensors(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.CurveItemDatas> startListenLoadRatios_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenLoadRatios($call, await $request);
  }

  $async.Stream<$2.CurveItemDatas> startListenLoadRatios(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Future<$0.Empty> stopListenLoadRatios_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenLoadRatios($call, await $request);
  }

  $async.Future<$0.Empty> stopListenLoadRatios(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.CurveItemDatas> startListenMotionCurves_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenMotionCurves($call, await $request);
  }

  $async.Stream<$2.CurveItemDatas> startListenMotionCurves(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Future<$0.Empty> stopListenMotionCurves_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async {
    return stopListenMotionCurves($call, await $request);
  }

  $async.Future<$0.Empty> stopListenMotionCurves(
      $grpc.ServiceCall call, $2.UserSession request);

  $async.Stream<$2.RobotStatus> startListenRobotStatuses_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.UserSession> $request) async* {
    yield* startListenRobotStatuses($call, await $request);
  }

  $async.Stream<$2.RobotStatus> startListenRobotStatuses(
      $grpc.ServiceCall call, $2.UserSession request);
}

@$pb.GrpcServiceName('galaxis.data.provider.OperationProvider')
class OperationProviderClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  OperationProviderClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$2.TimeViews> syncTimeView(
    $2.TimeViews request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$syncTimeView, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> setEnableReadOnlyMode(
    $2.OptionBoolValue request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setEnableReadOnlyMode, request, options: options);
  }

  $grpc.ResponseFuture<$2.MatchingCountedConditions> getSearchMatchingItems(
    $2.TimeRange request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getSearchMatchingItems, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.MatchingResponse> searchMatchingActions(
    $2.MatchingRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$searchMatchingActions, request, options: options);
  }

  // method descriptors

  static final _$syncTimeView = $grpc.ClientMethod<$2.TimeViews, $2.TimeViews>(
      '/galaxis.data.provider.OperationProvider/SyncTimeView',
      ($2.TimeViews value) => value.writeToBuffer(),
      $2.TimeViews.fromBuffer);
  static final _$setEnableReadOnlyMode =
      $grpc.ClientMethod<$2.OptionBoolValue, $1.BoolValue>(
          '/galaxis.data.provider.OperationProvider/SetEnableReadOnlyMode',
          ($2.OptionBoolValue value) => value.writeToBuffer(),
          $1.BoolValue.fromBuffer);
  static final _$getSearchMatchingItems =
      $grpc.ClientMethod<$2.TimeRange, $2.MatchingCountedConditions>(
          '/galaxis.data.provider.OperationProvider/GetSearchMatchingItems',
          ($2.TimeRange value) => value.writeToBuffer(),
          $2.MatchingCountedConditions.fromBuffer);
  static final _$searchMatchingActions =
      $grpc.ClientMethod<$2.MatchingRequest, $2.MatchingResponse>(
          '/galaxis.data.provider.OperationProvider/SearchMatchingActions',
          ($2.MatchingRequest value) => value.writeToBuffer(),
          $2.MatchingResponse.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.data.provider.OperationProvider')
abstract class OperationProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.OperationProvider';

  OperationProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.TimeViews, $2.TimeViews>(
        'SyncTimeView',
        syncTimeView_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeViews.fromBuffer(value),
        ($2.TimeViews value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.OptionBoolValue, $1.BoolValue>(
        'SetEnableReadOnlyMode',
        setEnableReadOnlyMode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.OptionBoolValue.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.TimeRange, $2.MatchingCountedConditions>(
        'GetSearchMatchingItems',
        getSearchMatchingItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.TimeRange.fromBuffer(value),
        ($2.MatchingCountedConditions value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.MatchingRequest, $2.MatchingResponse>(
        'SearchMatchingActions',
        searchMatchingActions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.MatchingRequest.fromBuffer(value),
        ($2.MatchingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.TimeViews> syncTimeView_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeViews> $request) async {
    return syncTimeView($call, await $request);
  }

  $async.Future<$2.TimeViews> syncTimeView(
      $grpc.ServiceCall call, $2.TimeViews request);

  $async.Future<$1.BoolValue> setEnableReadOnlyMode_Pre($grpc.ServiceCall $call,
      $async.Future<$2.OptionBoolValue> $request) async {
    return setEnableReadOnlyMode($call, await $request);
  }

  $async.Future<$1.BoolValue> setEnableReadOnlyMode(
      $grpc.ServiceCall call, $2.OptionBoolValue request);

  $async.Future<$2.MatchingCountedConditions> getSearchMatchingItems_Pre(
      $grpc.ServiceCall $call, $async.Future<$2.TimeRange> $request) async {
    return getSearchMatchingItems($call, await $request);
  }

  $async.Future<$2.MatchingCountedConditions> getSearchMatchingItems(
      $grpc.ServiceCall call, $2.TimeRange request);

  $async.Future<$2.MatchingResponse> searchMatchingActions_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$2.MatchingRequest> $request) async {
    return searchMatchingActions($call, await $request);
  }

  $async.Future<$2.MatchingResponse> searchMatchingActions(
      $grpc.ServiceCall call, $2.MatchingRequest request);
}
