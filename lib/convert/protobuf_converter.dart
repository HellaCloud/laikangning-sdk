import 'dart:typed_data';

import 'package:laikangning_sdk/generated/fhrdata.pb.dart' as pd;

abstract class ProtobufConverter {
  pd.LknFhrData fhrDataFrom(List<int> data);

  Uint8List lknPutDataFrom(List<int> data);

  Uint8List lknFhrVolumeFrom(int value);

  Uint8List lknRecordWaveFrom(String path, String fileName);

  Uint8List lknTocoResetFrom(int value);
}

class ProtobufConverterImpl implements ProtobufConverter {
  @override
  pd.LknFhrData fhrDataFrom(List<int> data) {
    return pd.LknFhrData.fromBuffer(data);
  }

  @override
  Uint8List lknFhrVolumeFrom(int value) {
    final pdData = pd.LknFhrVolume.create();
    pdData.value = value;
    return pdData.writeToBuffer();
  }

  @override
  Uint8List lknPutDataFrom(List<int> data) {
    final pdData = pd.LknPutData.create();
    pdData.data = data;
    return pdData.writeToBuffer();
  }

  @override
  Uint8List lknRecordWaveFrom(String path, String fileName) {
    final pdData = pd.LknRecordWave.create();
    pdData.path = path;
    pdData.fileName = fileName;
    return pdData.writeToBuffer();
  }

  @override
  Uint8List lknTocoResetFrom(int value) {
    final pdData = pd.LknTocoReset.create();
    pdData.value = value;
    return pdData.writeToBuffer();
  }
}
