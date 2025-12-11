//
//  Generated code. Do not modify.
//  source: robot_data_provider.proto
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
import 'google/protobuf/wrappers.pb.dart' as $1;
import 'robot_data_provider.pb.dart' as $5;

export 'robot_data_provider.pb.dart';

@$pb.GrpcServiceName('galaxis.data.provider.RobotModelProvider')
class RobotModelProviderClient extends $grpc.Client {
  static final _$getServerVersion = $grpc.ClientMethod<$0.Empty, $1.StringValue>(
      '/galaxis.data.provider.RobotModelProvider/GetServerVersion',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value));
  static final _$getComponentInfos = $grpc.ClientMethod<$0.Empty, $5.ComponentInfos>(
      '/galaxis.data.provider.RobotModelProvider/GetComponentInfos',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ComponentInfos.fromBuffer(value));
  static final _$getRos2Topics = $grpc.ClientMethod<$0.Empty, $5.IntStringMap>(
      '/galaxis.data.provider.RobotModelProvider/GetRos2Topics',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.IntStringMap.fromBuffer(value));
  static final _$getAllInputSwitchCurveItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllInputSwitchCurveItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllBatteryCurveItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllBatteryCurveItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllLoadRatioCurveItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllLoadRatioCurveItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllMotionCurveItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllMotionCurveItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllDistanceSensorItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllDistanceSensorItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllRadarDataItems = $grpc.ClientMethod<$5.UserLanguageType, $5.RadarItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllRadarDataItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarItems.fromBuffer(value));
  static final _$getAllExceptionItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllExceptionItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllMotionItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllMotionItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllBncmdItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllBncmdItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));
  static final _$getAllBnreportItems = $grpc.ClientMethod<$5.UserLanguageType, $5.CurveItems>(
      '/galaxis.data.provider.RobotModelProvider/GetAllBnreportItems',
      ($5.UserLanguageType value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItems.fromBuffer(value));

  RobotModelProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.StringValue> getServerVersion($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getServerVersion, request, options: options);
  }

  $grpc.ResponseFuture<$5.ComponentInfos> getComponentInfos($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getComponentInfos, request, options: options);
  }

  $grpc.ResponseFuture<$5.IntStringMap> getRos2Topics($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRos2Topics, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllInputSwitchCurveItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllInputSwitchCurveItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllBatteryCurveItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBatteryCurveItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllLoadRatioCurveItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllLoadRatioCurveItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllMotionCurveItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllMotionCurveItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllDistanceSensorItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDistanceSensorItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.RadarItems> getAllRadarDataItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllRadarDataItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllExceptionItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllExceptionItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllMotionItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllMotionItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllBncmdItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBncmdItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItems> getAllBnreportItems($5.UserLanguageType request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllBnreportItems, request, options: options);
  }
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
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.ComponentInfos>(
        'GetComponentInfos',
        getComponentInfos_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.ComponentInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.IntStringMap>(
        'GetRos2Topics',
        getRos2Topics_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.IntStringMap value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllInputSwitchCurveItems',
        getAllInputSwitchCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllBatteryCurveItems',
        getAllBatteryCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllLoadRatioCurveItems',
        getAllLoadRatioCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllMotionCurveItems',
        getAllMotionCurveItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllDistanceSensorItems',
        getAllDistanceSensorItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.RadarItems>(
        'GetAllRadarDataItems',
        getAllRadarDataItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.RadarItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllExceptionItems',
        getAllExceptionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllMotionItems',
        getAllMotionItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllBncmdItems',
        getAllBncmdItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageType, $5.CurveItems>(
        'GetAllBnreportItems',
        getAllBnreportItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserLanguageType.fromBuffer(value),
        ($5.CurveItems value) => value.writeToBuffer()));
  }

  $async.Future<$1.StringValue> getServerVersion_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getServerVersion(call, await request);
  }

  $async.Future<$5.ComponentInfos> getComponentInfos_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getComponentInfos(call, await request);
  }

  $async.Future<$5.IntStringMap> getRos2Topics_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getRos2Topics(call, await request);
  }

  $async.Future<$5.CurveItems> getAllInputSwitchCurveItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllInputSwitchCurveItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllBatteryCurveItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllBatteryCurveItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllLoadRatioCurveItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllLoadRatioCurveItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllMotionCurveItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllMotionCurveItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllDistanceSensorItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllDistanceSensorItems(call, await request);
  }

  $async.Future<$5.RadarItems> getAllRadarDataItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllRadarDataItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllExceptionItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllExceptionItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllMotionItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllMotionItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllBncmdItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllBncmdItems(call, await request);
  }

  $async.Future<$5.CurveItems> getAllBnreportItems_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageType> request) async {
    return getAllBnreportItems(call, await request);
  }

  $async.Future<$1.StringValue> getServerVersion($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.ComponentInfos> getComponentInfos($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.IntStringMap> getRos2Topics($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.CurveItems> getAllInputSwitchCurveItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllBatteryCurveItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllLoadRatioCurveItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllMotionCurveItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllDistanceSensorItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.RadarItems> getAllRadarDataItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllExceptionItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllMotionItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllBncmdItems($grpc.ServiceCall call, $5.UserLanguageType request);
  $async.Future<$5.CurveItems> getAllBnreportItems($grpc.ServiceCall call, $5.UserLanguageType request);
}
@$pb.GrpcServiceName('galaxis.data.provider.HistoryDataProvider')
class HistoryDataProviderClient extends $grpc.Client {
  static final _$queryAgvLogFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvLogFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryAgvLogs = $grpc.ClientMethod<$5.AgvLogCountedRange, $5.AgvLogs>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvLogs',
      ($5.AgvLogCountedRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AgvLogs.fromBuffer(value));
  static final _$queryAgvStateLogFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvStateLogFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryAgvStateLogs = $grpc.ClientMethod<$5.CountedRange, $5.AgvStateLogs>(
      '/galaxis.data.provider.HistoryDataProvider/QueryAgvStateLogs',
      ($5.CountedRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AgvStateLogs.fromBuffer(value));
  static final _$queryBatteryStatusFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryBatteryStatusFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryBatteryStatuses = $grpc.ClientMethod<$5.ResampleTimeRange, $5.BatteryStatuses>(
      '/galaxis.data.provider.HistoryDataProvider/QueryBatteryStatuses',
      ($5.ResampleTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.BatteryStatuses.fromBuffer(value));
  static final _$queryExceptionStatusEvents = $grpc.ClientMethod<$5.TimeRange, $5.ExceptionStatusEvents>(
      '/galaxis.data.provider.HistoryDataProvider/QueryExceptionStatusEvents',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ExceptionStatusEvents.fromBuffer(value));
  static final _$queryRadarDataFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryRadarPageDatas = $grpc.ClientMethod<$5.Time, $5.RadarPageDatas>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarPageDatas',
      ($5.Time value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarPageDatas.fromBuffer(value));
  static final _$queryRadarObstacleTrend = $grpc.ClientMethod<$5.TimeRange, $5.RadarRunningInfos>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarObstacleTrend',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarRunningInfos.fromBuffer(value));
  static final _$queryRadarDatas = $grpc.ClientMethod<$5.TimeRange, $5.RadarDatas>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarDatas',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarDatas.fromBuffer(value));
  static final _$queryRadarDataSketchys = $grpc.ClientMethod<$5.CountedRange, $5.RadarDataSketchys>(
      '/galaxis.data.provider.HistoryDataProvider/QueryRadarDataSketchys',
      ($5.CountedRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarDataSketchys.fromBuffer(value));
  static final _$createRadarDataDumpFile = $grpc.ClientMethod<$5.TimeRange, $5.ProcessStatus>(
      '/galaxis.data.provider.HistoryDataProvider/CreateRadarDataDumpFile',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ProcessStatus.fromBuffer(value));
  static final _$getRadarDataDumpFileInfo = $grpc.ClientMethod<$0.Empty, $5.FileInfo>(
      '/galaxis.data.provider.HistoryDataProvider/GetRadarDataDumpFileInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FileInfo.fromBuffer(value));
  static final _$downloadRadarFrameData = $grpc.ClientMethod<$5.FetchRadarDataRequest, $5.FetchDataResponse>(
      '/galaxis.data.provider.HistoryDataProvider/DownloadRadarFrameData',
      ($5.FetchRadarDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FetchDataResponse.fromBuffer(value));
  static final _$querySensorSwitchItemFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchItemFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$querySensorSwitchTimeaxisItems = $grpc.ClientMethod<$5.TimeRange, $5.TimeaxisItems>(
      '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchTimeaxisItems',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.TimeaxisItems.fromBuffer(value));
  static final _$querySensorSwitchItems = $grpc.ClientMethod<$5.TimeRange, $5.SensorSwitchItems>(
      '/galaxis.data.provider.HistoryDataProvider/QuerySensorSwitchItems',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SensorSwitchItems.fromBuffer(value));
  static final _$queryMotionCurveDataFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryMotionCurveDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryMotionCurveDatas = $grpc.ClientMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
      '/galaxis.data.provider.HistoryDataProvider/QueryMotionCurveDatas',
      ($5.ResampleTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$queryDistanceSensorDataFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryDistanceSensorDataFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryDistanceSensorDatas = $grpc.ClientMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
      '/galaxis.data.provider.HistoryDataProvider/QueryDistanceSensorDatas',
      ($5.ResampleTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$queryLoadRatioFirst = $grpc.ClientMethod<$0.Empty, $5.Time>(
      '/galaxis.data.provider.HistoryDataProvider/QueryLoadRatioFirst',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.Time.fromBuffer(value));
  static final _$queryLoadRatios = $grpc.ClientMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
      '/galaxis.data.provider.HistoryDataProvider/QueryLoadRatios',
      ($5.ResampleTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$createRosbagDumpFile = $grpc.ClientMethod<$5.RosbagTimeRange, $5.ProcessStatus>(
      '/galaxis.data.provider.HistoryDataProvider/CreateRosbagDumpFile',
      ($5.RosbagTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ProcessStatus.fromBuffer(value));
  static final _$getRosbagDumpFileInfo = $grpc.ClientMethod<$5.RosbagTypeItem, $5.FileInfo>(
      '/galaxis.data.provider.HistoryDataProvider/GetRosbagDumpFileInfo',
      ($5.RosbagTypeItem value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FileInfo.fromBuffer(value));
  static final _$createCanDumpFile = $grpc.ClientMethod<$5.TimeRange, $5.ProcessStatus>(
      '/galaxis.data.provider.HistoryDataProvider/CreateCanDumpFile',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ProcessStatus.fromBuffer(value));
  static final _$getCanDumpFileInfo = $grpc.ClientMethod<$0.Empty, $5.FileInfo>(
      '/galaxis.data.provider.HistoryDataProvider/GetCanDumpFileInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FileInfo.fromBuffer(value));
  static final _$createDatabaseDumpFile = $grpc.ClientMethod<$5.ExtTimeRange, $5.ProcessStatus>(
      '/galaxis.data.provider.HistoryDataProvider/CreateDatabaseDumpFile',
      ($5.ExtTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.ProcessStatus.fromBuffer(value));
  static final _$getDatabaseDumpFileInfo = $grpc.ClientMethod<$0.Empty, $5.FileInfo>(
      '/galaxis.data.provider.HistoryDataProvider/GetDatabaseDumpFileInfo',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.FileInfo.fromBuffer(value));
  static final _$getVdumpsFileLists = $grpc.ClientMethod<$5.SteadyTimeRange, $5.StringValues>(
      '/galaxis.data.provider.HistoryDataProvider/GetVdumpsFileLists',
      ($5.SteadyTimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.StringValues.fromBuffer(value));
  static final _$getVdumpsFileData = $grpc.ClientMethod<$1.StringValue, $1.BytesValue>(
      '/galaxis.data.provider.HistoryDataProvider/GetVdumpsFileData',
      ($1.StringValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BytesValue.fromBuffer(value));

  HistoryDataProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.Time> queryAgvLogFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryAgvLogFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.AgvLogs> queryAgvLogs($5.AgvLogCountedRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryAgvLogs, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryAgvStateLogFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryAgvStateLogFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.AgvStateLogs> queryAgvStateLogs($5.CountedRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryAgvStateLogs, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryBatteryStatusFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryBatteryStatusFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.BatteryStatuses> queryBatteryStatuses($5.ResampleTimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryBatteryStatuses, request, options: options);
  }

  $grpc.ResponseFuture<$5.ExceptionStatusEvents> queryExceptionStatusEvents($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryExceptionStatusEvents, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryRadarDataFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryRadarDataFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.RadarPageDatas> queryRadarPageDatas($5.Time request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryRadarPageDatas, request, options: options);
  }

  $grpc.ResponseFuture<$5.RadarRunningInfos> queryRadarObstacleTrend($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryRadarObstacleTrend, request, options: options);
  }

  $grpc.ResponseFuture<$5.RadarDatas> queryRadarDatas($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryRadarDatas, request, options: options);
  }

  $grpc.ResponseFuture<$5.RadarDataSketchys> queryRadarDataSketchys($5.CountedRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryRadarDataSketchys, request, options: options);
  }

  $grpc.ResponseStream<$5.ProcessStatus> createRadarDataDumpFile($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$createRadarDataDumpFile, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.FileInfo> getRadarDataDumpFileInfo($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRadarDataDumpFileInfo, request, options: options);
  }

  $grpc.ResponseFuture<$5.FetchDataResponse> downloadRadarFrameData($5.FetchRadarDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downloadRadarFrameData, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> querySensorSwitchItemFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$querySensorSwitchItemFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.TimeaxisItems> querySensorSwitchTimeaxisItems($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$querySensorSwitchTimeaxisItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.SensorSwitchItems> querySensorSwitchItems($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$querySensorSwitchItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryMotionCurveDataFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryMotionCurveDataFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItemDatas> queryMotionCurveDatas($5.ResampleTimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryMotionCurveDatas, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryDistanceSensorDataFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryDistanceSensorDataFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItemDatas> queryDistanceSensorDatas($5.ResampleTimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryDistanceSensorDatas, request, options: options);
  }

  $grpc.ResponseFuture<$5.Time> queryLoadRatioFirst($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryLoadRatioFirst, request, options: options);
  }

  $grpc.ResponseFuture<$5.CurveItemDatas> queryLoadRatios($5.ResampleTimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$queryLoadRatios, request, options: options);
  }

  $grpc.ResponseStream<$5.ProcessStatus> createRosbagDumpFile($5.RosbagTimeRange request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$createRosbagDumpFile, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.FileInfo> getRosbagDumpFileInfo($5.RosbagTypeItem request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRosbagDumpFileInfo, request, options: options);
  }

  $grpc.ResponseStream<$5.ProcessStatus> createCanDumpFile($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$createCanDumpFile, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.FileInfo> getCanDumpFileInfo($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCanDumpFileInfo, request, options: options);
  }

  $grpc.ResponseStream<$5.ProcessStatus> createDatabaseDumpFile($5.ExtTimeRange request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$createDatabaseDumpFile, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$5.FileInfo> getDatabaseDumpFileInfo($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDatabaseDumpFileInfo, request, options: options);
  }

  $grpc.ResponseFuture<$5.StringValues> getVdumpsFileLists($5.SteadyTimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVdumpsFileLists, request, options: options);
  }

  $grpc.ResponseFuture<$1.BytesValue> getVdumpsFileData($1.StringValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getVdumpsFileData, request, options: options);
  }
}

@$pb.GrpcServiceName('galaxis.data.provider.HistoryDataProvider')
abstract class HistoryDataProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.HistoryDataProvider';

  HistoryDataProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryAgvLogFirst',
        queryAgvLogFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AgvLogCountedRange, $5.AgvLogs>(
        'QueryAgvLogs',
        queryAgvLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.AgvLogCountedRange.fromBuffer(value),
        ($5.AgvLogs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryAgvStateLogFirst',
        queryAgvStateLogFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CountedRange, $5.AgvStateLogs>(
        'QueryAgvStateLogs',
        queryAgvStateLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CountedRange.fromBuffer(value),
        ($5.AgvStateLogs value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryBatteryStatusFirst',
        queryBatteryStatusFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ResampleTimeRange, $5.BatteryStatuses>(
        'QueryBatteryStatuses',
        queryBatteryStatuses_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ResampleTimeRange.fromBuffer(value),
        ($5.BatteryStatuses value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.ExceptionStatusEvents>(
        'QueryExceptionStatusEvents',
        queryExceptionStatusEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.ExceptionStatusEvents value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryRadarDataFirst',
        queryRadarDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.Time, $5.RadarPageDatas>(
        'QueryRadarPageDatas',
        queryRadarPageDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.Time.fromBuffer(value),
        ($5.RadarPageDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.RadarRunningInfos>(
        'QueryRadarObstacleTrend',
        queryRadarObstacleTrend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.RadarRunningInfos value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.RadarDatas>(
        'QueryRadarDatas',
        queryRadarDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.RadarDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CountedRange, $5.RadarDataSketchys>(
        'QueryRadarDataSketchys',
        queryRadarDataSketchys_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CountedRange.fromBuffer(value),
        ($5.RadarDataSketchys value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.ProcessStatus>(
        'CreateRadarDataDumpFile',
        createRadarDataDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.FileInfo>(
        'GetRadarDataDumpFileInfo',
        getRadarDataDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.FetchRadarDataRequest, $5.FetchDataResponse>(
        'DownloadRadarFrameData',
        downloadRadarFrameData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.FetchRadarDataRequest.fromBuffer(value),
        ($5.FetchDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QuerySensorSwitchItemFirst',
        querySensorSwitchItemFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.TimeaxisItems>(
        'QuerySensorSwitchTimeaxisItems',
        querySensorSwitchTimeaxisItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.TimeaxisItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.SensorSwitchItems>(
        'QuerySensorSwitchItems',
        querySensorSwitchItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.SensorSwitchItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryMotionCurveDataFirst',
        queryMotionCurveDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
        'QueryMotionCurveDatas',
        queryMotionCurveDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ResampleTimeRange.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryDistanceSensorDataFirst',
        queryDistanceSensorDataFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
        'QueryDistanceSensorDatas',
        queryDistanceSensorDatas_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ResampleTimeRange.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.Time>(
        'QueryLoadRatioFirst',
        queryLoadRatioFirst_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.Time value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ResampleTimeRange, $5.CurveItemDatas>(
        'QueryLoadRatios',
        queryLoadRatios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ResampleTimeRange.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RosbagTimeRange, $5.ProcessStatus>(
        'CreateRosbagDumpFile',
        createRosbagDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.RosbagTimeRange.fromBuffer(value),
        ($5.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RosbagTypeItem, $5.FileInfo>(
        'GetRosbagDumpFileInfo',
        getRosbagDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.RosbagTypeItem.fromBuffer(value),
        ($5.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.ProcessStatus>(
        'CreateCanDumpFile',
        createCanDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.FileInfo>(
        'GetCanDumpFileInfo',
        getCanDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ExtTimeRange, $5.ProcessStatus>(
        'CreateDatabaseDumpFile',
        createDatabaseDumpFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.ExtTimeRange.fromBuffer(value),
        ($5.ProcessStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $5.FileInfo>(
        'GetDatabaseDumpFileInfo',
        getDatabaseDumpFileInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($5.FileInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SteadyTimeRange, $5.StringValues>(
        'GetVdumpsFileLists',
        getVdumpsFileLists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SteadyTimeRange.fromBuffer(value),
        ($5.StringValues value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StringValue, $1.BytesValue>(
        'GetVdumpsFileData',
        getVdumpsFileData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StringValue.fromBuffer(value),
        ($1.BytesValue value) => value.writeToBuffer()));
  }

  $async.Future<$5.Time> queryAgvLogFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryAgvLogFirst(call, await request);
  }

  $async.Future<$5.AgvLogs> queryAgvLogs_Pre($grpc.ServiceCall call, $async.Future<$5.AgvLogCountedRange> request) async {
    return queryAgvLogs(call, await request);
  }

  $async.Future<$5.Time> queryAgvStateLogFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryAgvStateLogFirst(call, await request);
  }

  $async.Future<$5.AgvStateLogs> queryAgvStateLogs_Pre($grpc.ServiceCall call, $async.Future<$5.CountedRange> request) async {
    return queryAgvStateLogs(call, await request);
  }

  $async.Future<$5.Time> queryBatteryStatusFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryBatteryStatusFirst(call, await request);
  }

  $async.Future<$5.BatteryStatuses> queryBatteryStatuses_Pre($grpc.ServiceCall call, $async.Future<$5.ResampleTimeRange> request) async {
    return queryBatteryStatuses(call, await request);
  }

  $async.Future<$5.ExceptionStatusEvents> queryExceptionStatusEvents_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return queryExceptionStatusEvents(call, await request);
  }

  $async.Future<$5.Time> queryRadarDataFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryRadarDataFirst(call, await request);
  }

  $async.Future<$5.RadarPageDatas> queryRadarPageDatas_Pre($grpc.ServiceCall call, $async.Future<$5.Time> request) async {
    return queryRadarPageDatas(call, await request);
  }

  $async.Future<$5.RadarRunningInfos> queryRadarObstacleTrend_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return queryRadarObstacleTrend(call, await request);
  }

  $async.Future<$5.RadarDatas> queryRadarDatas_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return queryRadarDatas(call, await request);
  }

  $async.Future<$5.RadarDataSketchys> queryRadarDataSketchys_Pre($grpc.ServiceCall call, $async.Future<$5.CountedRange> request) async {
    return queryRadarDataSketchys(call, await request);
  }

  $async.Stream<$5.ProcessStatus> createRadarDataDumpFile_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async* {
    yield* createRadarDataDumpFile(call, await request);
  }

  $async.Future<$5.FileInfo> getRadarDataDumpFileInfo_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getRadarDataDumpFileInfo(call, await request);
  }

  $async.Future<$5.FetchDataResponse> downloadRadarFrameData_Pre($grpc.ServiceCall call, $async.Future<$5.FetchRadarDataRequest> request) async {
    return downloadRadarFrameData(call, await request);
  }

  $async.Future<$5.Time> querySensorSwitchItemFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return querySensorSwitchItemFirst(call, await request);
  }

  $async.Future<$5.TimeaxisItems> querySensorSwitchTimeaxisItems_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return querySensorSwitchTimeaxisItems(call, await request);
  }

  $async.Future<$5.SensorSwitchItems> querySensorSwitchItems_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return querySensorSwitchItems(call, await request);
  }

  $async.Future<$5.Time> queryMotionCurveDataFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryMotionCurveDataFirst(call, await request);
  }

  $async.Future<$5.CurveItemDatas> queryMotionCurveDatas_Pre($grpc.ServiceCall call, $async.Future<$5.ResampleTimeRange> request) async {
    return queryMotionCurveDatas(call, await request);
  }

  $async.Future<$5.Time> queryDistanceSensorDataFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryDistanceSensorDataFirst(call, await request);
  }

  $async.Future<$5.CurveItemDatas> queryDistanceSensorDatas_Pre($grpc.ServiceCall call, $async.Future<$5.ResampleTimeRange> request) async {
    return queryDistanceSensorDatas(call, await request);
  }

  $async.Future<$5.Time> queryLoadRatioFirst_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return queryLoadRatioFirst(call, await request);
  }

  $async.Future<$5.CurveItemDatas> queryLoadRatios_Pre($grpc.ServiceCall call, $async.Future<$5.ResampleTimeRange> request) async {
    return queryLoadRatios(call, await request);
  }

  $async.Stream<$5.ProcessStatus> createRosbagDumpFile_Pre($grpc.ServiceCall call, $async.Future<$5.RosbagTimeRange> request) async* {
    yield* createRosbagDumpFile(call, await request);
  }

  $async.Future<$5.FileInfo> getRosbagDumpFileInfo_Pre($grpc.ServiceCall call, $async.Future<$5.RosbagTypeItem> request) async {
    return getRosbagDumpFileInfo(call, await request);
  }

  $async.Stream<$5.ProcessStatus> createCanDumpFile_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async* {
    yield* createCanDumpFile(call, await request);
  }

  $async.Future<$5.FileInfo> getCanDumpFileInfo_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getCanDumpFileInfo(call, await request);
  }

  $async.Stream<$5.ProcessStatus> createDatabaseDumpFile_Pre($grpc.ServiceCall call, $async.Future<$5.ExtTimeRange> request) async* {
    yield* createDatabaseDumpFile(call, await request);
  }

  $async.Future<$5.FileInfo> getDatabaseDumpFileInfo_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getDatabaseDumpFileInfo(call, await request);
  }

  $async.Future<$5.StringValues> getVdumpsFileLists_Pre($grpc.ServiceCall call, $async.Future<$5.SteadyTimeRange> request) async {
    return getVdumpsFileLists(call, await request);
  }

  $async.Future<$1.BytesValue> getVdumpsFileData_Pre($grpc.ServiceCall call, $async.Future<$1.StringValue> request) async {
    return getVdumpsFileData(call, await request);
  }

  $async.Future<$5.Time> queryAgvLogFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.AgvLogs> queryAgvLogs($grpc.ServiceCall call, $5.AgvLogCountedRange request);
  $async.Future<$5.Time> queryAgvStateLogFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.AgvStateLogs> queryAgvStateLogs($grpc.ServiceCall call, $5.CountedRange request);
  $async.Future<$5.Time> queryBatteryStatusFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.BatteryStatuses> queryBatteryStatuses($grpc.ServiceCall call, $5.ResampleTimeRange request);
  $async.Future<$5.ExceptionStatusEvents> queryExceptionStatusEvents($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.Time> queryRadarDataFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.RadarPageDatas> queryRadarPageDatas($grpc.ServiceCall call, $5.Time request);
  $async.Future<$5.RadarRunningInfos> queryRadarObstacleTrend($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.RadarDatas> queryRadarDatas($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.RadarDataSketchys> queryRadarDataSketchys($grpc.ServiceCall call, $5.CountedRange request);
  $async.Stream<$5.ProcessStatus> createRadarDataDumpFile($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.FileInfo> getRadarDataDumpFileInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.FetchDataResponse> downloadRadarFrameData($grpc.ServiceCall call, $5.FetchRadarDataRequest request);
  $async.Future<$5.Time> querySensorSwitchItemFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.TimeaxisItems> querySensorSwitchTimeaxisItems($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.SensorSwitchItems> querySensorSwitchItems($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.Time> queryMotionCurveDataFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.CurveItemDatas> queryMotionCurveDatas($grpc.ServiceCall call, $5.ResampleTimeRange request);
  $async.Future<$5.Time> queryDistanceSensorDataFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.CurveItemDatas> queryDistanceSensorDatas($grpc.ServiceCall call, $5.ResampleTimeRange request);
  $async.Future<$5.Time> queryLoadRatioFirst($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.CurveItemDatas> queryLoadRatios($grpc.ServiceCall call, $5.ResampleTimeRange request);
  $async.Stream<$5.ProcessStatus> createRosbagDumpFile($grpc.ServiceCall call, $5.RosbagTimeRange request);
  $async.Future<$5.FileInfo> getRosbagDumpFileInfo($grpc.ServiceCall call, $5.RosbagTypeItem request);
  $async.Stream<$5.ProcessStatus> createCanDumpFile($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.FileInfo> getCanDumpFileInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$5.ProcessStatus> createDatabaseDumpFile($grpc.ServiceCall call, $5.ExtTimeRange request);
  $async.Future<$5.FileInfo> getDatabaseDumpFileInfo($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$5.StringValues> getVdumpsFileLists($grpc.ServiceCall call, $5.SteadyTimeRange request);
  $async.Future<$1.BytesValue> getVdumpsFileData($grpc.ServiceCall call, $1.StringValue request);
}
@$pb.GrpcServiceName('galaxis.data.provider.RealtimeDataProvider')
class RealtimeDataProviderClient extends $grpc.Client {
  static final _$startListenAgvLogs = $grpc.ClientMethod<$5.UserLanguageSession, $5.AgvLog>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenAgvLogs',
      ($5.UserLanguageSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AgvLog.fromBuffer(value));
  static final _$stopListenAgvLogs = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenAgvLogs',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenAgvStateLogs = $grpc.ClientMethod<$5.UserLanguageSession, $5.AgvStateLog>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenAgvStateLogs',
      ($5.UserLanguageSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.AgvStateLog.fromBuffer(value));
  static final _$stopListenAgvStateLogs = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenAgvStateLogs',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenBatteryStatus = $grpc.ClientMethod<$5.UserSession, $5.BatteryStatus>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenBatteryStatus',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.BatteryStatus.fromBuffer(value));
  static final _$stopListenBatteryStatus = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenBatteryStatus',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startReplayRadarData = $grpc.ClientMethod<$5.ReplayInfo, $5.RadarPageDatas>(
      '/galaxis.data.provider.RealtimeDataProvider/StartReplayRadarData',
      ($5.ReplayInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RadarPageDatas.fromBuffer(value));
  static final _$stopReplayRadarData = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopReplayRadarData',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenSensorSwitches = $grpc.ClientMethod<$5.UserSession, $5.SensorSwitchItems>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenSensorSwitches',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SensorSwitchItems.fromBuffer(value));
  static final _$stopListenSensorSwitches = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenSensorSwitches',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenDistanceSensors = $grpc.ClientMethod<$5.UserSession, $5.CurveItemDatas>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenDistanceSensors',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$stopListenDistanceSensors = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenDistanceSensors',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenLoadRatios = $grpc.ClientMethod<$5.UserSession, $5.CurveItemDatas>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenLoadRatios',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$stopListenLoadRatios = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenLoadRatios',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenMotionCurves = $grpc.ClientMethod<$5.UserSession, $5.CurveItemDatas>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenMotionCurves',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.CurveItemDatas.fromBuffer(value));
  static final _$stopListenMotionCurves = $grpc.ClientMethod<$5.UserSession, $0.Empty>(
      '/galaxis.data.provider.RealtimeDataProvider/StopListenMotionCurves',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$startListenRobotStatuses = $grpc.ClientMethod<$5.UserSession, $5.RobotStatus>(
      '/galaxis.data.provider.RealtimeDataProvider/StartListenRobotStatuses',
      ($5.UserSession value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RobotStatus.fromBuffer(value));

  RealtimeDataProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$5.AgvLog> startListenAgvLogs($5.UserLanguageSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenAgvLogs, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenAgvLogs($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenAgvLogs, request, options: options);
  }

  $grpc.ResponseStream<$5.AgvStateLog> startListenAgvStateLogs($5.UserLanguageSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenAgvStateLogs, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenAgvStateLogs($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenAgvStateLogs, request, options: options);
  }

  $grpc.ResponseStream<$5.BatteryStatus> startListenBatteryStatus($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenBatteryStatus, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenBatteryStatus($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenBatteryStatus, request, options: options);
  }

  $grpc.ResponseStream<$5.RadarPageDatas> startReplayRadarData($5.ReplayInfo request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startReplayRadarData, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopReplayRadarData($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopReplayRadarData, request, options: options);
  }

  $grpc.ResponseStream<$5.SensorSwitchItems> startListenSensorSwitches($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenSensorSwitches, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenSensorSwitches($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenSensorSwitches, request, options: options);
  }

  $grpc.ResponseStream<$5.CurveItemDatas> startListenDistanceSensors($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenDistanceSensors, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenDistanceSensors($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenDistanceSensors, request, options: options);
  }

  $grpc.ResponseStream<$5.CurveItemDatas> startListenLoadRatios($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenLoadRatios, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenLoadRatios($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenLoadRatios, request, options: options);
  }

  $grpc.ResponseStream<$5.CurveItemDatas> startListenMotionCurves($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenMotionCurves, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> stopListenMotionCurves($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stopListenMotionCurves, request, options: options);
  }

  $grpc.ResponseStream<$5.RobotStatus> startListenRobotStatuses($5.UserSession request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$startListenRobotStatuses, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('galaxis.data.provider.RealtimeDataProvider')
abstract class RealtimeDataProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.RealtimeDataProvider';

  RealtimeDataProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.UserLanguageSession, $5.AgvLog>(
        'StartListenAgvLogs',
        startListenAgvLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserLanguageSession.fromBuffer(value),
        ($5.AgvLog value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenAgvLogs',
        stopListenAgvLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserLanguageSession, $5.AgvStateLog>(
        'StartListenAgvStateLogs',
        startListenAgvStateLogs_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserLanguageSession.fromBuffer(value),
        ($5.AgvStateLog value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenAgvStateLogs',
        stopListenAgvStateLogs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.BatteryStatus>(
        'StartListenBatteryStatus',
        startListenBatteryStatus_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.BatteryStatus value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenBatteryStatus',
        stopListenBatteryStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.ReplayInfo, $5.RadarPageDatas>(
        'StartReplayRadarData',
        startReplayRadarData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.ReplayInfo.fromBuffer(value),
        ($5.RadarPageDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopReplayRadarData',
        stopReplayRadarData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.SensorSwitchItems>(
        'StartListenSensorSwitches',
        startListenSensorSwitches_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.SensorSwitchItems value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenSensorSwitches',
        stopListenSensorSwitches_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.CurveItemDatas>(
        'StartListenDistanceSensors',
        startListenDistanceSensors_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenDistanceSensors',
        stopListenDistanceSensors_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.CurveItemDatas>(
        'StartListenLoadRatios',
        startListenLoadRatios_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenLoadRatios',
        stopListenLoadRatios_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.CurveItemDatas>(
        'StartListenMotionCurves',
        startListenMotionCurves_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.CurveItemDatas value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $0.Empty>(
        'StopListenMotionCurves',
        stopListenMotionCurves_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UserSession, $5.RobotStatus>(
        'StartListenRobotStatuses',
        startListenRobotStatuses_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $5.UserSession.fromBuffer(value),
        ($5.RobotStatus value) => value.writeToBuffer()));
  }

  $async.Stream<$5.AgvLog> startListenAgvLogs_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageSession> request) async* {
    yield* startListenAgvLogs(call, await request);
  }

  $async.Future<$0.Empty> stopListenAgvLogs_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenAgvLogs(call, await request);
  }

  $async.Stream<$5.AgvStateLog> startListenAgvStateLogs_Pre($grpc.ServiceCall call, $async.Future<$5.UserLanguageSession> request) async* {
    yield* startListenAgvStateLogs(call, await request);
  }

  $async.Future<$0.Empty> stopListenAgvStateLogs_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenAgvStateLogs(call, await request);
  }

  $async.Stream<$5.BatteryStatus> startListenBatteryStatus_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenBatteryStatus(call, await request);
  }

  $async.Future<$0.Empty> stopListenBatteryStatus_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenBatteryStatus(call, await request);
  }

  $async.Stream<$5.RadarPageDatas> startReplayRadarData_Pre($grpc.ServiceCall call, $async.Future<$5.ReplayInfo> request) async* {
    yield* startReplayRadarData(call, await request);
  }

  $async.Future<$0.Empty> stopReplayRadarData_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopReplayRadarData(call, await request);
  }

  $async.Stream<$5.SensorSwitchItems> startListenSensorSwitches_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenSensorSwitches(call, await request);
  }

  $async.Future<$0.Empty> stopListenSensorSwitches_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenSensorSwitches(call, await request);
  }

  $async.Stream<$5.CurveItemDatas> startListenDistanceSensors_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenDistanceSensors(call, await request);
  }

  $async.Future<$0.Empty> stopListenDistanceSensors_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenDistanceSensors(call, await request);
  }

  $async.Stream<$5.CurveItemDatas> startListenLoadRatios_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenLoadRatios(call, await request);
  }

  $async.Future<$0.Empty> stopListenLoadRatios_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenLoadRatios(call, await request);
  }

  $async.Stream<$5.CurveItemDatas> startListenMotionCurves_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenMotionCurves(call, await request);
  }

  $async.Future<$0.Empty> stopListenMotionCurves_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async {
    return stopListenMotionCurves(call, await request);
  }

  $async.Stream<$5.RobotStatus> startListenRobotStatuses_Pre($grpc.ServiceCall call, $async.Future<$5.UserSession> request) async* {
    yield* startListenRobotStatuses(call, await request);
  }

  $async.Stream<$5.AgvLog> startListenAgvLogs($grpc.ServiceCall call, $5.UserLanguageSession request);
  $async.Future<$0.Empty> stopListenAgvLogs($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.AgvStateLog> startListenAgvStateLogs($grpc.ServiceCall call, $5.UserLanguageSession request);
  $async.Future<$0.Empty> stopListenAgvStateLogs($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.BatteryStatus> startListenBatteryStatus($grpc.ServiceCall call, $5.UserSession request);
  $async.Future<$0.Empty> stopListenBatteryStatus($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.RadarPageDatas> startReplayRadarData($grpc.ServiceCall call, $5.ReplayInfo request);
  $async.Future<$0.Empty> stopReplayRadarData($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.SensorSwitchItems> startListenSensorSwitches($grpc.ServiceCall call, $5.UserSession request);
  $async.Future<$0.Empty> stopListenSensorSwitches($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.CurveItemDatas> startListenDistanceSensors($grpc.ServiceCall call, $5.UserSession request);
  $async.Future<$0.Empty> stopListenDistanceSensors($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.CurveItemDatas> startListenLoadRatios($grpc.ServiceCall call, $5.UserSession request);
  $async.Future<$0.Empty> stopListenLoadRatios($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.CurveItemDatas> startListenMotionCurves($grpc.ServiceCall call, $5.UserSession request);
  $async.Future<$0.Empty> stopListenMotionCurves($grpc.ServiceCall call, $5.UserSession request);
  $async.Stream<$5.RobotStatus> startListenRobotStatuses($grpc.ServiceCall call, $5.UserSession request);
}
@$pb.GrpcServiceName('galaxis.data.provider.OperationProvider')
class OperationProviderClient extends $grpc.Client {
  static final _$syncTimeView = $grpc.ClientMethod<$5.TimeViews, $5.TimeViews>(
      '/galaxis.data.provider.OperationProvider/SyncTimeView',
      ($5.TimeViews value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.TimeViews.fromBuffer(value));
  static final _$setEnableReadOnlyMode = $grpc.ClientMethod<$5.OptionBoolValue, $1.BoolValue>(
      '/galaxis.data.provider.OperationProvider/SetEnableReadOnlyMode',
      ($5.OptionBoolValue value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BoolValue.fromBuffer(value));
  static final _$getSearchMatchingItems = $grpc.ClientMethod<$5.TimeRange, $5.MatchingCountedConditions>(
      '/galaxis.data.provider.OperationProvider/GetSearchMatchingItems',
      ($5.TimeRange value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.MatchingCountedConditions.fromBuffer(value));
  static final _$searchMatchingActions = $grpc.ClientMethod<$5.MatchingRequest, $5.MatchingResponse>(
      '/galaxis.data.provider.OperationProvider/SearchMatchingActions',
      ($5.MatchingRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.MatchingResponse.fromBuffer(value));

  OperationProviderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.TimeViews> syncTimeView($5.TimeViews request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncTimeView, request, options: options);
  }

  $grpc.ResponseFuture<$1.BoolValue> setEnableReadOnlyMode($5.OptionBoolValue request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setEnableReadOnlyMode, request, options: options);
  }

  $grpc.ResponseFuture<$5.MatchingCountedConditions> getSearchMatchingItems($5.TimeRange request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSearchMatchingItems, request, options: options);
  }

  $grpc.ResponseFuture<$5.MatchingResponse> searchMatchingActions($5.MatchingRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchMatchingActions, request, options: options);
  }
}

@$pb.GrpcServiceName('galaxis.data.provider.OperationProvider')
abstract class OperationProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.data.provider.OperationProvider';

  OperationProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.TimeViews, $5.TimeViews>(
        'SyncTimeView',
        syncTimeView_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeViews.fromBuffer(value),
        ($5.TimeViews value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.OptionBoolValue, $1.BoolValue>(
        'SetEnableReadOnlyMode',
        setEnableReadOnlyMode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.OptionBoolValue.fromBuffer(value),
        ($1.BoolValue value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.TimeRange, $5.MatchingCountedConditions>(
        'GetSearchMatchingItems',
        getSearchMatchingItems_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.TimeRange.fromBuffer(value),
        ($5.MatchingCountedConditions value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.MatchingRequest, $5.MatchingResponse>(
        'SearchMatchingActions',
        searchMatchingActions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.MatchingRequest.fromBuffer(value),
        ($5.MatchingResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.TimeViews> syncTimeView_Pre($grpc.ServiceCall call, $async.Future<$5.TimeViews> request) async {
    return syncTimeView(call, await request);
  }

  $async.Future<$1.BoolValue> setEnableReadOnlyMode_Pre($grpc.ServiceCall call, $async.Future<$5.OptionBoolValue> request) async {
    return setEnableReadOnlyMode(call, await request);
  }

  $async.Future<$5.MatchingCountedConditions> getSearchMatchingItems_Pre($grpc.ServiceCall call, $async.Future<$5.TimeRange> request) async {
    return getSearchMatchingItems(call, await request);
  }

  $async.Future<$5.MatchingResponse> searchMatchingActions_Pre($grpc.ServiceCall call, $async.Future<$5.MatchingRequest> request) async {
    return searchMatchingActions(call, await request);
  }

  $async.Future<$5.TimeViews> syncTimeView($grpc.ServiceCall call, $5.TimeViews request);
  $async.Future<$1.BoolValue> setEnableReadOnlyMode($grpc.ServiceCall call, $5.OptionBoolValue request);
  $async.Future<$5.MatchingCountedConditions> getSearchMatchingItems($grpc.ServiceCall call, $5.TimeRange request);
  $async.Future<$5.MatchingResponse> searchMatchingActions($grpc.ServiceCall call, $5.MatchingRequest request);
}
