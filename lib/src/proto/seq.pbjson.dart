///
//  Generated code. Do not modify.
//  source: seq.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getMinAndMaxSeqReqDescriptor instead')
const GetMinAndMaxSeqReq$json = const {
  '1': 'GetMinAndMaxSeqReq',
};

/// Descriptor for `GetMinAndMaxSeqReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinAndMaxSeqReqDescriptor = $convert.base64Decode('ChJHZXRNaW5BbmRNYXhTZXFSZXE=');
@$core.Deprecated('Use getMinAndMaxSeqRespDescriptor instead')
const GetMinAndMaxSeqResp$json = const {
  '1': 'GetMinAndMaxSeqResp',
  '2': const [
    const {'1': 'minSeq', '3': 1, '4': 1, '5': 13, '10': 'minSeq'},
    const {'1': 'maxSeq', '3': 2, '4': 1, '5': 13, '10': 'maxSeq'},
  ],
};

/// Descriptor for `GetMinAndMaxSeqResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinAndMaxSeqRespDescriptor = $convert.base64Decode('ChNHZXRNaW5BbmRNYXhTZXFSZXNwEhYKBm1pblNlcRgBIAEoDVIGbWluU2VxEhYKBm1heFNlcRgCIAEoDVIGbWF4U2Vx');
@$core.Deprecated('Use getMinAndMaxGroupSeqReqDescriptor instead')
const GetMinAndMaxGroupSeqReq$json = const {
  '1': 'GetMinAndMaxGroupSeqReq',
  '2': const [
    const {'1': 'groupIDList', '3': 1, '4': 3, '5': 9, '10': 'groupIDList'},
  ],
};

/// Descriptor for `GetMinAndMaxGroupSeqReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinAndMaxGroupSeqReqDescriptor = $convert.base64Decode('ChdHZXRNaW5BbmRNYXhHcm91cFNlcVJlcRIgCgtncm91cElETGlzdBgBIAMoCVILZ3JvdXBJRExpc3Q=');
@$core.Deprecated('Use getMinAndMaxGroupSeqRespDescriptor instead')
const GetMinAndMaxGroupSeqResp$json = const {
  '1': 'GetMinAndMaxGroupSeqResp',
  '2': const [
    const {'1': 'groupSeqList', '3': 1, '4': 3, '5': 11, '6': '.pb.GetMinAndMaxGroupSeqItem', '10': 'groupSeqList'},
  ],
};

/// Descriptor for `GetMinAndMaxGroupSeqResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinAndMaxGroupSeqRespDescriptor = $convert.base64Decode('ChhHZXRNaW5BbmRNYXhHcm91cFNlcVJlc3ASQAoMZ3JvdXBTZXFMaXN0GAEgAygLMhwucGIuR2V0TWluQW5kTWF4R3JvdXBTZXFJdGVtUgxncm91cFNlcUxpc3Q=');
@$core.Deprecated('Use getMinAndMaxGroupSeqItemDescriptor instead')
const GetMinAndMaxGroupSeqItem$json = const {
  '1': 'GetMinAndMaxGroupSeqItem',
  '2': const [
    const {'1': 'groupID', '3': 1, '4': 1, '5': 9, '10': 'groupID'},
    const {'1': 'minSeq', '3': 2, '4': 1, '5': 13, '10': 'minSeq'},
    const {'1': 'maxSeq', '3': 3, '4': 1, '5': 13, '10': 'maxSeq'},
  ],
};

/// Descriptor for `GetMinAndMaxGroupSeqItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMinAndMaxGroupSeqItemDescriptor = $convert.base64Decode('ChhHZXRNaW5BbmRNYXhHcm91cFNlcUl0ZW0SGAoHZ3JvdXBJRBgBIAEoCVIHZ3JvdXBJRBIWCgZtaW5TZXEYAiABKA1SBm1pblNlcRIWCgZtYXhTZXEYAyABKA1SBm1heFNlcQ==');
