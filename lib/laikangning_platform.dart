import 'package:flutter/services.dart';
import 'package:laikangning_sdk/convert/protobuf_converter.dart';

import 'generated/fhrdata.pb.dart';
import 'laikangning_platform_interface.dart';

class LaikangningPlatform extends LaikangningSdkPlatform {
  LaikangningPlatform({
    required MethodChannel methodChannel,
    required ProtobufConverter protobufConverter,
    required Stream<List<int>> fhrEventChannel,
  })  : _methodChannel = methodChannel,
        _protobufConverter = protobufConverter,
        _fhrEventChannel = fhrEventChannel;

  final MethodChannel _methodChannel;
  final ProtobufConverter _protobufConverter;
  final Stream<List<int>> _fhrEventChannel;

  Stream<LknFhrData>? _fhrData;

  @override
  Future<void> deinitialize() =>
      _methodChannel.invokeMethod<void>("deinitialize");

  @override
  Future<void> initialize() => _methodChannel.invokeMethod<void>("initialize");

  @override
  Stream<LknFhrData> getFhrdata() =>
      _fhrData ?? _fhrEventChannel.map(_protobufConverter.fhrDataFrom);

  @override
  Future<void> putData(List<int> data) => _methodChannel.invokeMethod<void>(
      "putData", _protobufConverter.lknPutDataFrom(data));

  @override
  Future<void> stopWork() => _methodChannel.invokeMethod("stopWork");

  @override
  Future<void> startWork() => _methodChannel.invokeMethod("startWork");

  @override
  Future<void> putFhrVolume(int value) => _methodChannel.invokeMethod(
      "putFhrVolume", _protobufConverter.lknFhrVolumeFrom(value));

  @override
  Future<void> setFM() => _methodChannel.invokeMethod("setFM");

  @override
  Future<void> sendTocoReset(int value) => _methodChannel.invokeMethod(
      "sendTocoReset", _protobufConverter.lknFhrVolumeFrom(value));

  @override
  Future<void> finishRecordWave() =>
      _methodChannel.invokeMethod("finishRecordWave");

  @override
  Future<void> beginRecordWave(String path, String fileName) =>
      _methodChannel.invokeMethod("beginRecordWave",
          _protobufConverter.lknRecordWaveFrom(path, fileName));
}

class LaikangningPlatformFactory {
  const LaikangningPlatformFactory();

  LaikangningPlatform create() {
    const lkiSdkChannel = MethodChannel("flutter_laikangning_sdk");

    const fhrEventChannel =
        EventChannel("flutter_laikangyun_read_fhr_change_channel");

    return LaikangningPlatform(
        methodChannel: lkiSdkChannel,
        protobufConverter: ProtobufConverterImpl(),
        fhrEventChannel:
            fhrEventChannel.receiveBroadcastStream().cast<List<int>>());
  }
}
