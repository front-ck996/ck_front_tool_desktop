///
//  Generated code. Do not modify.
//  source: other/other.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use codeDescriptor instead')
const Code$json = const {
  '1': 'Code',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `Code`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List codeDescriptor = $convert.base64Decode('CgRDb2RlEhIKBGNvZGUYASABKAVSBGNvZGUSEAoDbXNnGAIgASgJUgNtc2cSFAoFZXJyb3IYAyABKAlSBWVycm9y');
@$core.Deprecated('Use requestWalkDiskDescriptor instead')
const RequestWalkDisk$json = const {
  '1': 'RequestWalkDisk',
  '2': const [
    const {'1': 'disk', '3': 1, '4': 1, '5': 9, '10': 'disk'},
  ],
};

/// Descriptor for `RequestWalkDisk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestWalkDiskDescriptor = $convert.base64Decode('Cg9SZXF1ZXN0V2Fsa0Rpc2sSEgoEZGlzaxgBIAEoCVIEZGlzaw==');
@$core.Deprecated('Use responseWalkDiskDescriptor instead')
const ResponseWalkDisk$json = const {
  '1': 'ResponseWalkDisk',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 9, '10': 'file'},
    const {'1': 'code', '3': 2, '4': 1, '5': 11, '6': '.proto_other.Code', '10': 'code'},
  ],
};

/// Descriptor for `ResponseWalkDisk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseWalkDiskDescriptor = $convert.base64Decode('ChBSZXNwb25zZVdhbGtEaXNrEhIKBGZpbGUYASABKAlSBGZpbGUSJQoEY29kZRgCIAEoCzIRLnByb3RvX290aGVyLkNvZGVSBGNvZGU=');
@$core.Deprecated('Use walkDiskListRequestDescriptor instead')
const WalkDiskListRequest$json = const {
  '1': 'WalkDiskListRequest',
  '2': const [
    const {'1': 'sort', '3': 1, '4': 3, '5': 9, '10': 'sort'},
    const {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
    const {'1': 'sId', '3': 3, '4': 1, '5': 5, '10': 'sId'},
    const {'1': 'pageSum', '3': 4, '4': 1, '5': 5, '10': 'pageSum'},
  ],
};

/// Descriptor for `WalkDiskListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walkDiskListRequestDescriptor = $convert.base64Decode('ChNXYWxrRGlza0xpc3RSZXF1ZXN0EhIKBHNvcnQYASADKAlSBHNvcnQSGgoIcGFnZVNpemUYAiABKAVSCHBhZ2VTaXplEhAKA3NJZBgDIAEoBVIDc0lkEhgKB3BhZ2VTdW0YBCABKAVSB3BhZ2VTdW0=');
@$core.Deprecated('Use walkDiskListResponseDescriptor instead')
const WalkDiskListResponse$json = const {
  '1': 'WalkDiskListResponse',
  '2': const [
    const {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.proto_other.WalkDiskListData', '10': 'data'},
    const {'1': 'pageSize', '3': 2, '4': 1, '5': 5, '10': 'pageSize'},
  ],
};

/// Descriptor for `WalkDiskListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walkDiskListResponseDescriptor = $convert.base64Decode('ChRXYWxrRGlza0xpc3RSZXNwb25zZRIxCgRkYXRhGAEgAygLMh0ucHJvdG9fb3RoZXIuV2Fsa0Rpc2tMaXN0RGF0YVIEZGF0YRIaCghwYWdlU2l6ZRgCIAEoBVIIcGFnZVNpemU=');
@$core.Deprecated('Use walkDiskListDataDescriptor instead')
const WalkDiskListData$json = const {
  '1': 'WalkDiskListData',
  '2': const [
    const {'1': 'dir', '3': 1, '4': 1, '5': 9, '10': 'dir'},
    const {'1': 'size', '3': 3, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'sizeFormat', '3': 4, '4': 1, '5': 9, '10': 'sizeFormat'},
    const {'1': 'id', '3': 5, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `WalkDiskListData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walkDiskListDataDescriptor = $convert.base64Decode('ChBXYWxrRGlza0xpc3REYXRhEhAKA2RpchgBIAEoCVIDZGlyEhIKBHNpemUYAyABKAVSBHNpemUSHgoKc2l6ZUZvcm1hdBgEIAEoCVIKc2l6ZUZvcm1hdBIOCgJpZBgFIAEoDVICaWQ=');
