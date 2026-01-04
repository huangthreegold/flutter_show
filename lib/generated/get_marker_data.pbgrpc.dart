// This is a generated file - do not edit.
//
// Generated from get_marker_data.proto.

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

import 'get_marker_data.pb.dart' as $0;

export 'get_marker_data.pb.dart';

@$pb.GrpcServiceName('galaxis.map.MapHealthService')
class MapHealthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  MapHealthServiceClient(super.channel, {super.options, super.interceptors});

  /// 小车读取到新的二维码码值时上报数据
  $grpc.ResponseFuture<$1.Empty> reportCurrentMarkData(
    $0.CurrentMarkData request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$reportCurrentMarkData, request, options: options);
  }

  // method descriptors

  static final _$reportCurrentMarkData =
      $grpc.ClientMethod<$0.CurrentMarkData, $1.Empty>(
          '/galaxis.map.MapHealthService/ReportCurrentMarkData',
          ($0.CurrentMarkData value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('galaxis.map.MapHealthService')
abstract class MapHealthServiceBase extends $grpc.Service {
  $core.String get $name => 'galaxis.map.MapHealthService';

  MapHealthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CurrentMarkData, $1.Empty>(
        'ReportCurrentMarkData',
        reportCurrentMarkData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CurrentMarkData.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.Empty> reportCurrentMarkData_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CurrentMarkData> $request) async {
    return reportCurrentMarkData($call, await $request);
  }

  $async.Future<$1.Empty> reportCurrentMarkData(
      $grpc.ServiceCall call, $0.CurrentMarkData request);
}
