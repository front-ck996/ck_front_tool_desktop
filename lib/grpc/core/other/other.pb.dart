///
//  Generated code. Do not modify.
//  source: other/other.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class Code extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Code', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  Code._() : super();
  factory Code({
    $core.int? code,
    $core.String? msg,
    $core.String? error,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory Code.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Code.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Code clone() => Code()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Code copyWith(void Function(Code) updates) => super.copyWith((message) => updates(message as Code)) as Code; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Code create() => Code._();
  Code createEmptyInstance() => create();
  static $pb.PbList<Code> createRepeated() => $pb.PbList<Code>();
  @$core.pragma('dart2js:noInline')
  static Code getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Code>(create);
  static Code? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class RequestWalkDisk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RequestWalkDisk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disk')
    ..hasRequiredFields = false
  ;

  RequestWalkDisk._() : super();
  factory RequestWalkDisk({
    $core.String? disk,
  }) {
    final _result = create();
    if (disk != null) {
      _result.disk = disk;
    }
    return _result;
  }
  factory RequestWalkDisk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestWalkDisk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestWalkDisk clone() => RequestWalkDisk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestWalkDisk copyWith(void Function(RequestWalkDisk) updates) => super.copyWith((message) => updates(message as RequestWalkDisk)) as RequestWalkDisk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RequestWalkDisk create() => RequestWalkDisk._();
  RequestWalkDisk createEmptyInstance() => create();
  static $pb.PbList<RequestWalkDisk> createRepeated() => $pb.PbList<RequestWalkDisk>();
  @$core.pragma('dart2js:noInline')
  static RequestWalkDisk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestWalkDisk>(create);
  static RequestWalkDisk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get disk => $_getSZ(0);
  @$pb.TagNumber(1)
  set disk($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDisk() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisk() => clearField(1);
}

class ResponseWalkDisk extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseWalkDisk', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'file')
    ..aOM<Code>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', subBuilder: Code.create)
    ..hasRequiredFields = false
  ;

  ResponseWalkDisk._() : super();
  factory ResponseWalkDisk({
    $core.String? file,
    Code? code,
  }) {
    final _result = create();
    if (file != null) {
      _result.file = file;
    }
    if (code != null) {
      _result.code = code;
    }
    return _result;
  }
  factory ResponseWalkDisk.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseWalkDisk.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseWalkDisk clone() => ResponseWalkDisk()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseWalkDisk copyWith(void Function(ResponseWalkDisk) updates) => super.copyWith((message) => updates(message as ResponseWalkDisk)) as ResponseWalkDisk; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseWalkDisk create() => ResponseWalkDisk._();
  ResponseWalkDisk createEmptyInstance() => create();
  static $pb.PbList<ResponseWalkDisk> createRepeated() => $pb.PbList<ResponseWalkDisk>();
  @$core.pragma('dart2js:noInline')
  static ResponseWalkDisk getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseWalkDisk>(create);
  static ResponseWalkDisk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get file => $_getSZ(0);
  @$pb.TagNumber(1)
  set file($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearFile() => clearField(1);

  @$pb.TagNumber(2)
  Code get code => $_getN(1);
  @$pb.TagNumber(2)
  set code(Code v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);
  @$pb.TagNumber(2)
  Code ensureCode() => $_ensure(1);
}

class WalkDiskListRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalkDiskListRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sort')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sId', $pb.PbFieldType.O3, protoName: 'sId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSum', $pb.PbFieldType.O3, protoName: 'pageSum')
    ..hasRequiredFields = false
  ;

  WalkDiskListRequest._() : super();
  factory WalkDiskListRequest({
    $core.Iterable<$core.String>? sort,
    $core.int? pageSize,
    $core.int? sId,
    $core.int? pageSum,
  }) {
    final _result = create();
    if (sort != null) {
      _result.sort.addAll(sort);
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    if (sId != null) {
      _result.sId = sId;
    }
    if (pageSum != null) {
      _result.pageSum = pageSum;
    }
    return _result;
  }
  factory WalkDiskListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalkDiskListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalkDiskListRequest clone() => WalkDiskListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalkDiskListRequest copyWith(void Function(WalkDiskListRequest) updates) => super.copyWith((message) => updates(message as WalkDiskListRequest)) as WalkDiskListRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalkDiskListRequest create() => WalkDiskListRequest._();
  WalkDiskListRequest createEmptyInstance() => create();
  static $pb.PbList<WalkDiskListRequest> createRepeated() => $pb.PbList<WalkDiskListRequest>();
  @$core.pragma('dart2js:noInline')
  static WalkDiskListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalkDiskListRequest>(create);
  static WalkDiskListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get sort => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get sId => $_getIZ(2);
  @$pb.TagNumber(3)
  set sId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get pageSum => $_getIZ(3);
  @$pb.TagNumber(4)
  set pageSum($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPageSum() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageSum() => clearField(4);
}

class WalkDiskListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalkDiskListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..pc<WalkDiskListData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: WalkDiskListData.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3, protoName: 'pageSize')
    ..hasRequiredFields = false
  ;

  WalkDiskListResponse._() : super();
  factory WalkDiskListResponse({
    $core.Iterable<WalkDiskListData>? data,
    $core.int? pageSize,
  }) {
    final _result = create();
    if (data != null) {
      _result.data.addAll(data);
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    return _result;
  }
  factory WalkDiskListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalkDiskListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalkDiskListResponse clone() => WalkDiskListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalkDiskListResponse copyWith(void Function(WalkDiskListResponse) updates) => super.copyWith((message) => updates(message as WalkDiskListResponse)) as WalkDiskListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalkDiskListResponse create() => WalkDiskListResponse._();
  WalkDiskListResponse createEmptyInstance() => create();
  static $pb.PbList<WalkDiskListResponse> createRepeated() => $pb.PbList<WalkDiskListResponse>();
  @$core.pragma('dart2js:noInline')
  static WalkDiskListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalkDiskListResponse>(create);
  static WalkDiskListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WalkDiskListData> get data => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);
}

class WalkDiskListData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalkDiskListData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_other'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dir')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sizeFormat', protoName: 'sizeFormat')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  WalkDiskListData._() : super();
  factory WalkDiskListData({
    $core.String? dir,
    $core.int? size,
    $core.String? sizeFormat,
    $core.int? id,
  }) {
    final _result = create();
    if (dir != null) {
      _result.dir = dir;
    }
    if (size != null) {
      _result.size = size;
    }
    if (sizeFormat != null) {
      _result.sizeFormat = sizeFormat;
    }
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory WalkDiskListData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalkDiskListData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalkDiskListData clone() => WalkDiskListData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalkDiskListData copyWith(void Function(WalkDiskListData) updates) => super.copyWith((message) => updates(message as WalkDiskListData)) as WalkDiskListData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalkDiskListData create() => WalkDiskListData._();
  WalkDiskListData createEmptyInstance() => create();
  static $pb.PbList<WalkDiskListData> createRepeated() => $pb.PbList<WalkDiskListData>();
  @$core.pragma('dart2js:noInline')
  static WalkDiskListData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalkDiskListData>(create);
  static WalkDiskListData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dir => $_getSZ(0);
  @$pb.TagNumber(1)
  set dir($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDir() => $_has(0);
  @$pb.TagNumber(1)
  void clearDir() => clearField(1);

  @$pb.TagNumber(3)
  $core.int get size => $_getIZ(1);
  @$pb.TagNumber(3)
  set size($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sizeFormat => $_getSZ(2);
  @$pb.TagNumber(4)
  set sizeFormat($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSizeFormat() => $_has(2);
  @$pb.TagNumber(4)
  void clearSizeFormat() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get id => $_getIZ(3);
  @$pb.TagNumber(5)
  set id($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(5)
  void clearId() => clearField(5);
}

