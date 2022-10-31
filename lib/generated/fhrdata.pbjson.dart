///
//  Generated code. Do not modify.
//  source: fhrdata.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lknFhrDataDescriptor instead')
const LknFhrData$json = const {
  '1': 'LknFhrData',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.LknFhrData.StreamType', '10': 'type'},
    const {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.LknFhrData.FhrData', '10': 'data'},
    const {'1': 'error', '3': 3, '4': 1, '5': 11, '6': '.LknFhrData.ErrorData', '10': 'error'},
    const {'1': 'send', '3': 4, '4': 1, '5': 11, '6': '.LknFhrData.SendData', '10': 'send'},
  ],
  '3': const [LknFhrData_FhrData$json, LknFhrData_ErrorData$json, LknFhrData_SendData$json],
  '4': const [LknFhrData_StreamType$json],
};

@$core.Deprecated('Use lknFhrDataDescriptor instead')
const LknFhrData_FhrData$json = const {
  '1': 'FhrData',
  '2': const [
    const {'1': 'fhr1', '3': 1, '4': 1, '5': 5, '10': 'fhr1'},
    const {'1': 'fhr2', '3': 2, '4': 1, '5': 5, '10': 'fhr2'},
    const {'1': 'toco', '3': 3, '4': 1, '5': 12, '10': 'toco'},
    const {'1': 'afm', '3': 4, '4': 1, '5': 12, '10': 'afm'},
    const {'1': 'fhrSignal', '3': 5, '4': 1, '5': 12, '10': 'fhrSignal'},
    const {'1': 'afmFlag', '3': 6, '4': 1, '5': 12, '10': 'afmFlag'},
    const {'1': 'fmFlag', '3': 7, '4': 1, '5': 12, '10': 'fmFlag'},
    const {'1': 'tocoFlag', '3': 8, '4': 1, '5': 12, '10': 'tocoFlag'},
    const {'1': 'docFlag', '3': 9, '4': 1, '5': 12, '10': 'docFlag'},
    const {'1': 'devicePower', '3': 10, '4': 1, '5': 12, '10': 'devicePower'},
    const {'1': 'isHaveFhr1', '3': 11, '4': 1, '5': 12, '10': 'isHaveFhr1'},
    const {'1': 'isHaveFhr2', '3': 12, '4': 1, '5': 12, '10': 'isHaveFhr2'},
    const {'1': 'isHaveToco', '3': 13, '4': 1, '5': 12, '10': 'isHaveToco'},
    const {'1': 'isHaveAfm', '3': 14, '4': 1, '5': 12, '10': 'isHaveAfm'},
  ],
};

@$core.Deprecated('Use lknFhrDataDescriptor instead')
const LknFhrData_ErrorData$json = const {
  '1': 'ErrorData',
  '2': const [
    const {'1': 'bytesData', '3': 1, '4': 1, '5': 12, '10': 'bytesData'},
  ],
};

@$core.Deprecated('Use lknFhrDataDescriptor instead')
const LknFhrData_SendData$json = const {
  '1': 'SendData',
  '2': const [
    const {'1': 'bytesData', '3': 1, '4': 1, '5': 12, '10': 'bytesData'},
  ],
};

@$core.Deprecated('Use lknFhrDataDescriptor instead')
const LknFhrData_StreamType$json = const {
  '1': 'StreamType',
  '2': const [
    const {'1': 'FHR_DATA', '2': 0},
    const {'1': 'FHR_ERROR', '2': 1},
    const {'1': 'FHR_SEND', '2': 2},
  ],
};

/// Descriptor for `LknFhrData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lknFhrDataDescriptor = $convert.base64Decode('CgpMa25GaHJEYXRhEioKBHR5cGUYASABKA4yFi5Ma25GaHJEYXRhLlN0cmVhbVR5cGVSBHR5cGUSJwoEZGF0YRgCIAEoCzITLkxrbkZockRhdGEuRmhyRGF0YVIEZGF0YRIrCgVlcnJvchgDIAEoCzIVLkxrbkZockRhdGEuRXJyb3JEYXRhUgVlcnJvchIoCgRzZW5kGAQgASgLMhQuTGtuRmhyRGF0YS5TZW5kRGF0YVIEc2VuZBr9AgoHRmhyRGF0YRISCgRmaHIxGAEgASgFUgRmaHIxEhIKBGZocjIYAiABKAVSBGZocjISEgoEdG9jbxgDIAEoDFIEdG9jbxIQCgNhZm0YBCABKAxSA2FmbRIcCglmaHJTaWduYWwYBSABKAxSCWZoclNpZ25hbBIYCgdhZm1GbGFnGAYgASgMUgdhZm1GbGFnEhYKBmZtRmxhZxgHIAEoDFIGZm1GbGFnEhoKCHRvY29GbGFnGAggASgMUgh0b2NvRmxhZxIYCgdkb2NGbGFnGAkgASgMUgdkb2NGbGFnEiAKC2RldmljZVBvd2VyGAogASgMUgtkZXZpY2VQb3dlchIeCgppc0hhdmVGaHIxGAsgASgMUgppc0hhdmVGaHIxEh4KCmlzSGF2ZUZocjIYDCABKAxSCmlzSGF2ZUZocjISHgoKaXNIYXZlVG9jbxgNIAEoDFIKaXNIYXZlVG9jbxIcCglpc0hhdmVBZm0YDiABKAxSCWlzSGF2ZUFmbRopCglFcnJvckRhdGESHAoJYnl0ZXNEYXRhGAEgASgMUglieXRlc0RhdGEaKAoIU2VuZERhdGESHAoJYnl0ZXNEYXRhGAEgASgMUglieXRlc0RhdGEiNwoKU3RyZWFtVHlwZRIMCghGSFJfREFUQRAAEg0KCUZIUl9FUlJPUhABEgwKCEZIUl9TRU5EEAI=');
@$core.Deprecated('Use lknPutDataDescriptor instead')
const LknPutData$json = const {
  '1': 'LknPutData',
  '2': const [
    const {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `LknPutData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lknPutDataDescriptor = $convert.base64Decode('CgpMa25QdXREYXRhEhIKBGRhdGEYASABKAxSBGRhdGE=');
@$core.Deprecated('Use lknRecordWaveDescriptor instead')
const LknRecordWave$json = const {
  '1': 'LknRecordWave',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    const {'1': 'fileName', '3': 2, '4': 1, '5': 9, '10': 'fileName'},
  ],
};

/// Descriptor for `LknRecordWave`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lknRecordWaveDescriptor = $convert.base64Decode('Cg1Ma25SZWNvcmRXYXZlEhIKBHBhdGgYASABKAlSBHBhdGgSGgoIZmlsZU5hbWUYAiABKAlSCGZpbGVOYW1l');
@$core.Deprecated('Use lknTocoResetDescriptor instead')
const LknTocoReset$json = const {
  '1': 'LknTocoReset',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `LknTocoReset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lknTocoResetDescriptor = $convert.base64Decode('CgxMa25Ub2NvUmVzZXQSFAoFdmFsdWUYASABKA1SBXZhbHVl');
@$core.Deprecated('Use lknFhrVolumeDescriptor instead')
const LknFhrVolume$json = const {
  '1': 'LknFhrVolume',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 13, '10': 'value'},
  ],
};

/// Descriptor for `LknFhrVolume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lknFhrVolumeDescriptor = $convert.base64Decode('CgxMa25GaHJWb2x1bWUSFAoFdmFsdWUYASABKA1SBXZhbHVl');
