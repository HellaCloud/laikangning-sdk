///
//  Generated code. Do not modify.
//  source: fhrdata.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'fhrdata.pbenum.dart';

export 'fhrdata.pbenum.dart';

class LknFhrData_FhrData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknFhrData.FhrData', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fhr1', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fhr2', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toco', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'afm', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fhrSignal', $pb.PbFieldType.OY, protoName: 'fhrSignal')
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'afmFlag', $pb.PbFieldType.OY, protoName: 'afmFlag')
    ..a<$core.List<$core.int>>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fmFlag', $pb.PbFieldType.OY, protoName: 'fmFlag')
    ..a<$core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tocoFlag', $pb.PbFieldType.OY, protoName: 'tocoFlag')
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'docFlag', $pb.PbFieldType.OY, protoName: 'docFlag')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devicePower', $pb.PbFieldType.OY, protoName: 'devicePower')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHaveFhr1', $pb.PbFieldType.OY, protoName: 'isHaveFhr1')
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHaveFhr2', $pb.PbFieldType.OY, protoName: 'isHaveFhr2')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHaveToco', $pb.PbFieldType.OY, protoName: 'isHaveToco')
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isHaveAfm', $pb.PbFieldType.OY, protoName: 'isHaveAfm')
    ..hasRequiredFields = false
  ;

  LknFhrData_FhrData._() : super();
  factory LknFhrData_FhrData({
    $core.int? fhr1,
    $core.int? fhr2,
    $core.List<$core.int>? toco,
    $core.List<$core.int>? afm,
    $core.List<$core.int>? fhrSignal,
    $core.List<$core.int>? afmFlag,
    $core.List<$core.int>? fmFlag,
    $core.List<$core.int>? tocoFlag,
    $core.List<$core.int>? docFlag,
    $core.List<$core.int>? devicePower,
    $core.List<$core.int>? isHaveFhr1,
    $core.List<$core.int>? isHaveFhr2,
    $core.List<$core.int>? isHaveToco,
    $core.List<$core.int>? isHaveAfm,
  }) {
    final _result = create();
    if (fhr1 != null) {
      _result.fhr1 = fhr1;
    }
    if (fhr2 != null) {
      _result.fhr2 = fhr2;
    }
    if (toco != null) {
      _result.toco = toco;
    }
    if (afm != null) {
      _result.afm = afm;
    }
    if (fhrSignal != null) {
      _result.fhrSignal = fhrSignal;
    }
    if (afmFlag != null) {
      _result.afmFlag = afmFlag;
    }
    if (fmFlag != null) {
      _result.fmFlag = fmFlag;
    }
    if (tocoFlag != null) {
      _result.tocoFlag = tocoFlag;
    }
    if (docFlag != null) {
      _result.docFlag = docFlag;
    }
    if (devicePower != null) {
      _result.devicePower = devicePower;
    }
    if (isHaveFhr1 != null) {
      _result.isHaveFhr1 = isHaveFhr1;
    }
    if (isHaveFhr2 != null) {
      _result.isHaveFhr2 = isHaveFhr2;
    }
    if (isHaveToco != null) {
      _result.isHaveToco = isHaveToco;
    }
    if (isHaveAfm != null) {
      _result.isHaveAfm = isHaveAfm;
    }
    return _result;
  }
  factory LknFhrData_FhrData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknFhrData_FhrData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknFhrData_FhrData clone() => LknFhrData_FhrData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknFhrData_FhrData copyWith(void Function(LknFhrData_FhrData) updates) => super.copyWith((message) => updates(message as LknFhrData_FhrData)) as LknFhrData_FhrData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknFhrData_FhrData create() => LknFhrData_FhrData._();
  LknFhrData_FhrData createEmptyInstance() => create();
  static $pb.PbList<LknFhrData_FhrData> createRepeated() => $pb.PbList<LknFhrData_FhrData>();
  @$core.pragma('dart2js:noInline')
  static LknFhrData_FhrData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknFhrData_FhrData>(create);
  static LknFhrData_FhrData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get fhr1 => $_getIZ(0);
  @$pb.TagNumber(1)
  set fhr1($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFhr1() => $_has(0);
  @$pb.TagNumber(1)
  void clearFhr1() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get fhr2 => $_getIZ(1);
  @$pb.TagNumber(2)
  set fhr2($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFhr2() => $_has(1);
  @$pb.TagNumber(2)
  void clearFhr2() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get toco => $_getN(2);
  @$pb.TagNumber(3)
  set toco($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasToco() => $_has(2);
  @$pb.TagNumber(3)
  void clearToco() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get afm => $_getN(3);
  @$pb.TagNumber(4)
  set afm($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAfm() => $_has(3);
  @$pb.TagNumber(4)
  void clearAfm() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get fhrSignal => $_getN(4);
  @$pb.TagNumber(5)
  set fhrSignal($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFhrSignal() => $_has(4);
  @$pb.TagNumber(5)
  void clearFhrSignal() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get afmFlag => $_getN(5);
  @$pb.TagNumber(6)
  set afmFlag($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAfmFlag() => $_has(5);
  @$pb.TagNumber(6)
  void clearAfmFlag() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<$core.int> get fmFlag => $_getN(6);
  @$pb.TagNumber(7)
  set fmFlag($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFmFlag() => $_has(6);
  @$pb.TagNumber(7)
  void clearFmFlag() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get tocoFlag => $_getN(7);
  @$pb.TagNumber(8)
  set tocoFlag($core.List<$core.int> v) { $_setBytes(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTocoFlag() => $_has(7);
  @$pb.TagNumber(8)
  void clearTocoFlag() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$core.int> get docFlag => $_getN(8);
  @$pb.TagNumber(9)
  set docFlag($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDocFlag() => $_has(8);
  @$pb.TagNumber(9)
  void clearDocFlag() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get devicePower => $_getN(9);
  @$pb.TagNumber(10)
  set devicePower($core.List<$core.int> v) { $_setBytes(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDevicePower() => $_has(9);
  @$pb.TagNumber(10)
  void clearDevicePower() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get isHaveFhr1 => $_getN(10);
  @$pb.TagNumber(11)
  set isHaveFhr1($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasIsHaveFhr1() => $_has(10);
  @$pb.TagNumber(11)
  void clearIsHaveFhr1() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get isHaveFhr2 => $_getN(11);
  @$pb.TagNumber(12)
  set isHaveFhr2($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIsHaveFhr2() => $_has(11);
  @$pb.TagNumber(12)
  void clearIsHaveFhr2() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.int> get isHaveToco => $_getN(12);
  @$pb.TagNumber(13)
  set isHaveToco($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasIsHaveToco() => $_has(12);
  @$pb.TagNumber(13)
  void clearIsHaveToco() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get isHaveAfm => $_getN(13);
  @$pb.TagNumber(14)
  set isHaveAfm($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasIsHaveAfm() => $_has(13);
  @$pb.TagNumber(14)
  void clearIsHaveAfm() => clearField(14);
}

class LknFhrData_ErrorData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknFhrData.ErrorData', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesData', $pb.PbFieldType.OY, protoName: 'bytesData')
    ..hasRequiredFields = false
  ;

  LknFhrData_ErrorData._() : super();
  factory LknFhrData_ErrorData({
    $core.List<$core.int>? bytesData,
  }) {
    final _result = create();
    if (bytesData != null) {
      _result.bytesData = bytesData;
    }
    return _result;
  }
  factory LknFhrData_ErrorData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknFhrData_ErrorData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknFhrData_ErrorData clone() => LknFhrData_ErrorData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknFhrData_ErrorData copyWith(void Function(LknFhrData_ErrorData) updates) => super.copyWith((message) => updates(message as LknFhrData_ErrorData)) as LknFhrData_ErrorData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknFhrData_ErrorData create() => LknFhrData_ErrorData._();
  LknFhrData_ErrorData createEmptyInstance() => create();
  static $pb.PbList<LknFhrData_ErrorData> createRepeated() => $pb.PbList<LknFhrData_ErrorData>();
  @$core.pragma('dart2js:noInline')
  static LknFhrData_ErrorData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknFhrData_ErrorData>(create);
  static LknFhrData_ErrorData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytesData => $_getN(0);
  @$pb.TagNumber(1)
  set bytesData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytesData() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesData() => clearField(1);
}

class LknFhrData_SendData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknFhrData.SendData', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesData', $pb.PbFieldType.OY, protoName: 'bytesData')
    ..hasRequiredFields = false
  ;

  LknFhrData_SendData._() : super();
  factory LknFhrData_SendData({
    $core.List<$core.int>? bytesData,
  }) {
    final _result = create();
    if (bytesData != null) {
      _result.bytesData = bytesData;
    }
    return _result;
  }
  factory LknFhrData_SendData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknFhrData_SendData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknFhrData_SendData clone() => LknFhrData_SendData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknFhrData_SendData copyWith(void Function(LknFhrData_SendData) updates) => super.copyWith((message) => updates(message as LknFhrData_SendData)) as LknFhrData_SendData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknFhrData_SendData create() => LknFhrData_SendData._();
  LknFhrData_SendData createEmptyInstance() => create();
  static $pb.PbList<LknFhrData_SendData> createRepeated() => $pb.PbList<LknFhrData_SendData>();
  @$core.pragma('dart2js:noInline')
  static LknFhrData_SendData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknFhrData_SendData>(create);
  static LknFhrData_SendData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get bytesData => $_getN(0);
  @$pb.TagNumber(1)
  set bytesData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBytesData() => $_has(0);
  @$pb.TagNumber(1)
  void clearBytesData() => clearField(1);
}

class LknFhrData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknFhrData', createEmptyInstance: create)
    ..e<LknFhrData_StreamType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: LknFhrData_StreamType.FHR_DATA, valueOf: LknFhrData_StreamType.valueOf, enumValues: LknFhrData_StreamType.values)
    ..aOM<LknFhrData_FhrData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: LknFhrData_FhrData.create)
    ..aOM<LknFhrData_ErrorData>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: LknFhrData_ErrorData.create)
    ..aOM<LknFhrData_SendData>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'send', subBuilder: LknFhrData_SendData.create)
    ..hasRequiredFields = false
  ;

  LknFhrData._() : super();
  factory LknFhrData({
    LknFhrData_StreamType? type,
    LknFhrData_FhrData? data,
    LknFhrData_ErrorData? error,
    LknFhrData_SendData? send,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (data != null) {
      _result.data = data;
    }
    if (error != null) {
      _result.error = error;
    }
    if (send != null) {
      _result.send = send;
    }
    return _result;
  }
  factory LknFhrData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknFhrData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknFhrData clone() => LknFhrData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknFhrData copyWith(void Function(LknFhrData) updates) => super.copyWith((message) => updates(message as LknFhrData)) as LknFhrData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknFhrData create() => LknFhrData._();
  LknFhrData createEmptyInstance() => create();
  static $pb.PbList<LknFhrData> createRepeated() => $pb.PbList<LknFhrData>();
  @$core.pragma('dart2js:noInline')
  static LknFhrData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknFhrData>(create);
  static LknFhrData? _defaultInstance;

  @$pb.TagNumber(1)
  LknFhrData_StreamType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(LknFhrData_StreamType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  LknFhrData_FhrData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(LknFhrData_FhrData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  LknFhrData_FhrData ensureData() => $_ensure(1);

  @$pb.TagNumber(3)
  LknFhrData_ErrorData get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(LknFhrData_ErrorData v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
  @$pb.TagNumber(3)
  LknFhrData_ErrorData ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  LknFhrData_SendData get send => $_getN(3);
  @$pb.TagNumber(4)
  set send(LknFhrData_SendData v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSend() => $_has(3);
  @$pb.TagNumber(4)
  void clearSend() => clearField(4);
  @$pb.TagNumber(4)
  LknFhrData_SendData ensureSend() => $_ensure(3);
}

class LknPutData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknPutData', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  LknPutData._() : super();
  factory LknPutData({
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory LknPutData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknPutData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknPutData clone() => LknPutData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknPutData copyWith(void Function(LknPutData) updates) => super.copyWith((message) => updates(message as LknPutData)) as LknPutData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknPutData create() => LknPutData._();
  LknPutData createEmptyInstance() => create();
  static $pb.PbList<LknPutData> createRepeated() => $pb.PbList<LknPutData>();
  @$core.pragma('dart2js:noInline')
  static LknPutData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknPutData>(create);
  static LknPutData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
}

class LknRecordWave extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknRecordWave', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName', protoName: 'fileName')
    ..hasRequiredFields = false
  ;

  LknRecordWave._() : super();
  factory LknRecordWave({
    $core.String? path,
    $core.String? fileName,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    return _result;
  }
  factory LknRecordWave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknRecordWave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknRecordWave clone() => LknRecordWave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknRecordWave copyWith(void Function(LknRecordWave) updates) => super.copyWith((message) => updates(message as LknRecordWave)) as LknRecordWave; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknRecordWave create() => LknRecordWave._();
  LknRecordWave createEmptyInstance() => create();
  static $pb.PbList<LknRecordWave> createRepeated() => $pb.PbList<LknRecordWave>();
  @$core.pragma('dart2js:noInline')
  static LknRecordWave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknRecordWave>(create);
  static LknRecordWave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => clearField(2);
}

class LknTocoReset extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknTocoReset', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  LknTocoReset._() : super();
  factory LknTocoReset({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory LknTocoReset.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknTocoReset.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknTocoReset clone() => LknTocoReset()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknTocoReset copyWith(void Function(LknTocoReset) updates) => super.copyWith((message) => updates(message as LknTocoReset)) as LknTocoReset; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknTocoReset create() => LknTocoReset._();
  LknTocoReset createEmptyInstance() => create();
  static $pb.PbList<LknTocoReset> createRepeated() => $pb.PbList<LknTocoReset>();
  @$core.pragma('dart2js:noInline')
  static LknTocoReset getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknTocoReset>(create);
  static LknTocoReset? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class LknFhrVolume extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LknFhrVolume', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  LknFhrVolume._() : super();
  factory LknFhrVolume({
    $core.int? value,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory LknFhrVolume.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LknFhrVolume.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LknFhrVolume clone() => LknFhrVolume()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LknFhrVolume copyWith(void Function(LknFhrVolume) updates) => super.copyWith((message) => updates(message as LknFhrVolume)) as LknFhrVolume; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LknFhrVolume create() => LknFhrVolume._();
  LknFhrVolume createEmptyInstance() => create();
  static $pb.PbList<LknFhrVolume> createRepeated() => $pb.PbList<LknFhrVolume>();
  @$core.pragma('dart2js:noInline')
  static LknFhrVolume getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LknFhrVolume>(create);
  static LknFhrVolume? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

