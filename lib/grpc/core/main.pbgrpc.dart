///
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'other/other.pb.dart' as $0;
import 'mysql/mysql.pb.dart' as $1;
export 'main.pb.dart';

class CkToolGoRPCClient extends $grpc.Client {
  static final _$walkDisk =
      $grpc.ClientMethod<$0.RequestWalkDisk, $0.ResponseWalkDisk>(
          '/cr.CkToolGoRPC/WalkDisk',
          ($0.RequestWalkDisk value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ResponseWalkDisk.fromBuffer(value));
  static final _$walkDiskList =
      $grpc.ClientMethod<$0.WalkDiskListRequest, $0.WalkDiskListResponse>(
          '/cr.CkToolGoRPC/WalkDiskList',
          ($0.WalkDiskListRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.WalkDiskListResponse.fromBuffer(value));
  static final _$walkDiskProcess = $grpc.ClientMethod<$0.Empty, $0.Code>(
      '/cr.CkToolGoRPC/WalkDiskProcess',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Code.fromBuffer(value));
  static final _$mysqlStart = $grpc.ClientMethod<$1.MysqlReqStart, $0.Code>(
      '/cr.CkToolGoRPC/MysqlStart',
      ($1.MysqlReqStart value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Code.fromBuffer(value));
  static final _$mysqlStop = $grpc.ClientMethod<$1.MysqlReqStart, $0.Code>(
      '/cr.CkToolGoRPC/MysqlStop',
      ($1.MysqlReqStart value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Code.fromBuffer(value));

  CkToolGoRPCClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResponseWalkDisk> walkDisk($0.RequestWalkDisk request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walkDisk, request, options: options);
  }

  $grpc.ResponseFuture<$0.WalkDiskListResponse> walkDiskList(
      $0.WalkDiskListRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walkDiskList, request, options: options);
  }

  $grpc.ResponseFuture<$0.Code> walkDiskProcess($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$walkDiskProcess, request, options: options);
  }

  $grpc.ResponseFuture<$0.Code> mysqlStart($1.MysqlReqStart request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mysqlStart, request, options: options);
  }

  $grpc.ResponseFuture<$0.Code> mysqlStop($1.MysqlReqStart request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$mysqlStop, request, options: options);
  }
}

abstract class CkToolGoRPCServiceBase extends $grpc.Service {
  $core.String get $name => 'cr.CkToolGoRPC';

  CkToolGoRPCServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RequestWalkDisk, $0.ResponseWalkDisk>(
        'WalkDisk',
        walkDisk_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RequestWalkDisk.fromBuffer(value),
        ($0.ResponseWalkDisk value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.WalkDiskListRequest, $0.WalkDiskListResponse>(
            'WalkDiskList',
            walkDiskList_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.WalkDiskListRequest.fromBuffer(value),
            ($0.WalkDiskListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Code>(
        'WalkDiskProcess',
        walkDiskProcess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Code value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MysqlReqStart, $0.Code>(
        'MysqlStart',
        mysqlStart_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MysqlReqStart.fromBuffer(value),
        ($0.Code value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MysqlReqStart, $0.Code>(
        'MysqlStop',
        mysqlStop_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MysqlReqStart.fromBuffer(value),
        ($0.Code value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResponseWalkDisk> walkDisk_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RequestWalkDisk> request) async {
    return walkDisk(call, await request);
  }

  $async.Future<$0.WalkDiskListResponse> walkDiskList_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.WalkDiskListRequest> request) async {
    return walkDiskList(call, await request);
  }

  $async.Future<$0.Code> walkDiskProcess_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return walkDiskProcess(call, await request);
  }

  $async.Future<$0.Code> mysqlStart_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MysqlReqStart> request) async {
    return mysqlStart(call, await request);
  }

  $async.Future<$0.Code> mysqlStop_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MysqlReqStart> request) async {
    return mysqlStop(call, await request);
  }

  $async.Future<$0.ResponseWalkDisk> walkDisk(
      $grpc.ServiceCall call, $0.RequestWalkDisk request);
  $async.Future<$0.WalkDiskListResponse> walkDiskList(
      $grpc.ServiceCall call, $0.WalkDiskListRequest request);
  $async.Future<$0.Code> walkDiskProcess(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Code> mysqlStart(
      $grpc.ServiceCall call, $1.MysqlReqStart request);
  $async.Future<$0.Code> mysqlStop(
      $grpc.ServiceCall call, $1.MysqlReqStart request);
}
