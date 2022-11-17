///
//  Generated code. Do not modify.
//  source: walk_disk.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'walk_disk.pb.dart' as $0;
export 'walk_disk.pb.dart';

class CkToolGoRPCClient extends $grpc.Client {
  static final _$walkDisk =
      $grpc.ClientMethod<$0.RequestWalkDisk, $0.ResponseWalkDisk>(
          '/cr.CkToolGoRPC/WalkDisk',
          ($0.RequestWalkDisk value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResponseWalkDisk.fromBuffer(value));

  CkToolGoRPCClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ResponseWalkDisk> walkDisk($0.RequestWalkDisk request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$walkDisk, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class CkToolGoRPCServiceBase extends $grpc.Service {
  $core.String get $name => 'cr.CkToolGoRPC';

  CkToolGoRPCServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestWalkDisk, $0.ResponseWalkDisk>(
        'WalkDisk',
        walkDisk_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.RequestWalkDisk.fromBuffer(value),
        ($0.ResponseWalkDisk value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ResponseWalkDisk> walkDisk_Pre($grpc.ServiceCall call,
      $async.Future<$0.RequestWalkDisk> request) async* {
    yield* walkDisk(call, await request);
  }

  $async.Stream<$0.ResponseWalkDisk> walkDisk(
      $grpc.ServiceCall call, $0.RequestWalkDisk request);
}
