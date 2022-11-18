///
//  Generated code. Do not modify.
//  source: other/other.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
    ..hasRequiredFields = false
  ;

  ResponseWalkDisk._() : super();
  factory ResponseWalkDisk({
    $core.String? file,
  }) {
    final _result = create();
    if (file != null) {
      _result.file = file;
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
}

