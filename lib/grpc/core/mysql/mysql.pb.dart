///
//  Generated code. Do not modify.
//  source: mysql/mysql.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ReqStart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqStart', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_mysql'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReqStart._() : super();
  factory ReqStart() => create();
  factory ReqStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqStart clone() => ReqStart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqStart copyWith(void Function(ReqStart) updates) => super.copyWith((message) => updates(message as ReqStart)) as ReqStart; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqStart create() => ReqStart._();
  ReqStart createEmptyInstance() => create();
  static $pb.PbList<ReqStart> createRepeated() => $pb.PbList<ReqStart>();
  @$core.pragma('dart2js:noInline')
  static ReqStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqStart>(create);
  static ReqStart? _defaultInstance;
}

class ResStart extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResStart', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'proto_mysql'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResStart._() : super();
  factory ResStart() => create();
  factory ResStart.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResStart.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResStart clone() => ResStart()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResStart copyWith(void Function(ResStart) updates) => super.copyWith((message) => updates(message as ResStart)) as ResStart; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResStart create() => ResStart._();
  ResStart createEmptyInstance() => create();
  static $pb.PbList<ResStart> createRepeated() => $pb.PbList<ResStart>();
  @$core.pragma('dart2js:noInline')
  static ResStart getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResStart>(create);
  static ResStart? _defaultInstance;
}

