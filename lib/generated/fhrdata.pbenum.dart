///
//  Generated code. Do not modify.
//  source: fhrdata.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LknFhrData_StreamType extends $pb.ProtobufEnum {
  static const LknFhrData_StreamType FHR_DATA = LknFhrData_StreamType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FHR_DATA');
  static const LknFhrData_StreamType FHR_ERROR = LknFhrData_StreamType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FHR_ERROR');
  static const LknFhrData_StreamType FHR_SEND = LknFhrData_StreamType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FHR_SEND');

  static const $core.List<LknFhrData_StreamType> values = <LknFhrData_StreamType> [
    FHR_DATA,
    FHR_ERROR,
    FHR_SEND,
  ];

  static final $core.Map<$core.int, LknFhrData_StreamType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LknFhrData_StreamType? valueOf($core.int value) => _byValue[value];

  const LknFhrData_StreamType._($core.int v, $core.String n) : super(v, n);
}

