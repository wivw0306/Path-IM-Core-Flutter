///
//  Generated code. Do not modify.
//  source: msg.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use sendMsgReqDescriptor instead')
const SendMsgReq$json = const {
  '1': 'SendMsgReq',
  '2': const [
    const {'1': 'msgData', '3': 1, '4': 1, '5': 11, '6': '.pb.MsgData', '10': 'msgData'},
  ],
};

/// Descriptor for `SendMsgReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgReqDescriptor = $convert.base64Decode('CgpTZW5kTXNnUmVxEiUKB21zZ0RhdGEYASABKAsyCy5wYi5Nc2dEYXRhUgdtc2dEYXRh');
@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData$json = const {
  '1': 'MsgData',
  '2': const [
    const {'1': 'clientMsgID', '3': 1, '4': 1, '5': 9, '10': 'clientMsgID'},
    const {'1': 'serverMsgID', '3': 2, '4': 1, '5': 9, '10': 'serverMsgID'},
    const {'1': 'conversationType', '3': 3, '4': 1, '5': 13, '10': 'conversationType'},
    const {'1': 'sendID', '3': 4, '4': 1, '5': 9, '10': 'sendID'},
    const {'1': 'receiveID', '3': 5, '4': 1, '5': 9, '10': 'receiveID'},
    const {'1': 'contentType', '3': 6, '4': 1, '5': 13, '10': 'contentType'},
    const {'1': 'content', '3': 7, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'atUserIDList', '3': 8, '4': 3, '5': 9, '10': 'atUserIDList'},
    const {'1': 'offlinePushInfo', '3': 9, '4': 1, '5': 11, '6': '.pb.OfflinePushInfo', '10': 'offlinePushInfo'},
    const {'1': 'clientTime', '3': 10, '4': 1, '5': 13, '10': 'clientTime'},
    const {'1': 'serverTime', '3': 11, '4': 1, '5': 13, '10': 'serverTime'},
    const {'1': 'seq', '3': 12, '4': 1, '5': 13, '10': 'seq'},
    const {'1': 'options', '3': 13, '4': 1, '5': 11, '6': '.pb.MsgData.Options', '10': 'options'},
  ],
  '3': const [MsgData_Options$json],
};

@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData_Options$json = const {
  '1': 'Options',
  '2': const [
    const {'1': 'persistent', '3': 1, '4': 1, '5': 8, '10': 'persistent'},
    const {'1': 'history', '3': 2, '4': 1, '5': 8, '10': 'history'},
    const {'1': 'unreadCount', '3': 3, '4': 1, '5': 8, '10': 'unreadCount'},
    const {'1': 'updateConversation', '3': 4, '4': 1, '5': 8, '10': 'updateConversation'},
  ],
};

/// Descriptor for `MsgData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataDescriptor = $convert.base64Decode('CgdNc2dEYXRhEiAKC2NsaWVudE1zZ0lEGAEgASgJUgtjbGllbnRNc2dJRBIgCgtzZXJ2ZXJNc2dJRBgCIAEoCVILc2VydmVyTXNnSUQSKgoQY29udmVyc2F0aW9uVHlwZRgDIAEoDVIQY29udmVyc2F0aW9uVHlwZRIWCgZzZW5kSUQYBCABKAlSBnNlbmRJRBIcCglyZWNlaXZlSUQYBSABKAlSCXJlY2VpdmVJRBIgCgtjb250ZW50VHlwZRgGIAEoDVILY29udGVudFR5cGUSGAoHY29udGVudBgHIAEoDFIHY29udGVudBIiCgxhdFVzZXJJRExpc3QYCCADKAlSDGF0VXNlcklETGlzdBI9Cg9vZmZsaW5lUHVzaEluZm8YCSABKAsyEy5wYi5PZmZsaW5lUHVzaEluZm9SD29mZmxpbmVQdXNoSW5mbxIeCgpjbGllbnRUaW1lGAogASgNUgpjbGllbnRUaW1lEh4KCnNlcnZlclRpbWUYCyABKA1SCnNlcnZlclRpbWUSEAoDc2VxGAwgASgNUgNzZXESLQoHb3B0aW9ucxgNIAEoCzITLnBiLk1zZ0RhdGEuT3B0aW9uc1IHb3B0aW9ucxqVAQoHT3B0aW9ucxIeCgpwZXJzaXN0ZW50GAEgASgIUgpwZXJzaXN0ZW50EhgKB2hpc3RvcnkYAiABKAhSB2hpc3RvcnkSIAoLdW5yZWFkQ291bnQYAyABKAhSC3VucmVhZENvdW50Ei4KEnVwZGF0ZUNvbnZlcnNhdGlvbhgEIAEoCFISdXBkYXRlQ29udmVyc2F0aW9u');
@$core.Deprecated('Use offlinePushInfoDescriptor instead')
const OfflinePushInfo$json = const {
  '1': 'OfflinePushInfo',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'ex', '3': 3, '4': 1, '5': 9, '10': 'ex'},
    const {'1': 'iOSPushSound', '3': 4, '4': 1, '5': 9, '10': 'iOSPushSound'},
    const {'1': 'iOSBadgeCount', '3': 5, '4': 1, '5': 8, '10': 'iOSBadgeCount'},
  ],
};

/// Descriptor for `OfflinePushInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlinePushInfoDescriptor = $convert.base64Decode('Cg9PZmZsaW5lUHVzaEluZm8SFAoFdGl0bGUYASABKAlSBXRpdGxlEhIKBGRlc2MYAiABKAlSBGRlc2MSDgoCZXgYAyABKAlSAmV4EiIKDGlPU1B1c2hTb3VuZBgEIAEoCVIMaU9TUHVzaFNvdW5kEiQKDWlPU0JhZGdlQ291bnQYBSABKAhSDWlPU0JhZGdlQ291bnQ=');
@$core.Deprecated('Use sendMsgRespDescriptor instead')
const SendMsgResp$json = const {
  '1': 'SendMsgResp',
  '2': const [
    const {'1': 'clientMsgID', '3': 1, '4': 1, '5': 9, '10': 'clientMsgID'},
    const {'1': 'serverMsgID', '3': 2, '4': 1, '5': 9, '10': 'serverMsgID'},
    const {'1': 'conversationType', '3': 3, '4': 1, '5': 13, '10': 'conversationType'},
    const {'1': 'receiveID', '3': 4, '4': 1, '5': 9, '10': 'receiveID'},
    const {'1': 'contentType', '3': 5, '4': 1, '5': 13, '10': 'contentType'},
    const {'1': 'serverTime', '3': 6, '4': 1, '5': 13, '10': 'serverTime'},
  ],
};

/// Descriptor for `SendMsgResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMsgRespDescriptor = $convert.base64Decode('CgtTZW5kTXNnUmVzcBIgCgtjbGllbnRNc2dJRBgBIAEoCVILY2xpZW50TXNnSUQSIAoLc2VydmVyTXNnSUQYAiABKAlSC3NlcnZlck1zZ0lEEioKEGNvbnZlcnNhdGlvblR5cGUYAyABKA1SEGNvbnZlcnNhdGlvblR5cGUSHAoJcmVjZWl2ZUlEGAQgASgJUglyZWNlaXZlSUQSIAoLY29udGVudFR5cGUYBSABKA1SC2NvbnRlbnRUeXBlEh4KCnNlcnZlclRpbWUYBiABKA1SCnNlcnZlclRpbWU=');
