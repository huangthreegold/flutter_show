//
//  Generated code. Do not modify.
//  source: get_marker_data.proto
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

import 'get_marker_data.pb.dart' as $4;
import 'google/protobuf/empty.pb.dart' as $0;

export 'get_marker_data.pb.dart';

@$pb.GrpcServiceName('galaxis.map.MapHealthService')
class MapHealthServiceClient extends $grpc.Client {
  static final _$reportCurrentMarkData = $grpc.ClientMethod<$4.CurrentMarkData, $0.Empty>(
      '/galaxis.map.MapHealthService/ReportCurrentMarkData',
      ($4.CurrentMarkData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  MapHealthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> reportCurrentMarkData($4.CurrentMarkData request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reportCurrentMarkData, request, options: options);
  }
}

@$pb.GrpcServiceName('galaxis.map.MapHealthService')
abstract class MapHealthServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.map.MapHealthService';

  MapHealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.CurrentMarkData, $0.Empty>(
        'ReportCurrentMarkData',
        reportCurrentMarkData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.CurrentMarkData.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> reportCurrentMarkData_Pre($grpc.ServiceCall call, $async.Future<$4.CurrentMarkData> request) async {
    return reportCurrentMarkData(call, await request);
  }

  $async.Future<$0.Empty> reportCurrentMarkData($grpc.ServiceCall call, $4.CurrentMarkData request);
}
