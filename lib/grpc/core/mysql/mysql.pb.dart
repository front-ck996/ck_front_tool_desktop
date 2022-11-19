///
//  Generated code. Do not modify.
//  source: mysql/mysql.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../other/other.pb.dart' as $0;

class MysqlReqStart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MysqlReqStart', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_mysql'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  MysqlReqStart._() : super();
  factory MysqlReqStart() => create();
  factory MysqlReqStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MysqlReqStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MysqlReqStart clone() => MysqlReqStart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MysqlReqStart copyWith(void Function(MysqlReqStart) updates) => super.copyWith((message) => updates(message as MysqlReqStart)) as MysqlReqStart; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MysqlReqStart create() => MysqlReqStart._();
  MysqlReqStart createEmptyInstance() => create();
  static $pb.PbList<MysqlReqStart> createRepeated() => $pb.PbList<MysqlReqStart>();
  @$core.pragma('dart2js:noInline')
  static MysqlReqStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MysqlReqStart>(create);
  static MysqlReqStart? _defaultInstance;
}

class MysqlResStart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MysqlResStart', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_mysql'), createEmptyInstance: create)
    ..aOM<$0.Code>(100, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', subBuilder: $0.Code.create)
    ..hasRequiredFields = false
  ;

  MysqlResStart._() : super();
  factory MysqlResStart({
    $0.Code? code,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    return _result;
  }
  factory MysqlResStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MysqlResStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MysqlResStart clone() => MysqlResStart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MysqlResStart copyWith(void Function(MysqlResStart) updates) => super.copyWith((message) => updates(message as MysqlResStart)) as MysqlResStart; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MysqlResStart create() => MysqlResStart._();
  MysqlResStart createEmptyInstance() => create();
  static $pb.PbList<MysqlResStart> createRepeated() => $pb.PbList<MysqlResStart>();
  @$core.pragma('dart2js:noInline')
  static MysqlResStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MysqlResStart>(create);
  static MysqlResStart? _defaultInstance;

  @$pb.TagNumber(100)
  $0.Code get code => $_getN(0);
  @$pb.TagNumber(100)
  set code($0.Code v) { setField(100, v); }
  @$pb.TagNumber(100)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(100)
  void clearCode() => clearField(100);
  @$pb.TagNumber(100)
  $0.Code ensureCode() => $_ensure(0);
}

