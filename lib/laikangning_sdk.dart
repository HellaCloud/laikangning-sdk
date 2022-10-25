import 'generated/fhrdata.pb.dart';
import 'laikangning_platform.dart';
import 'laikangning_platform_interface.dart';

class LaikangningSdk {
  static final LaikangningSdk _sharedInstance = LaikangningSdk._();

  factory LaikangningSdk() => _sharedInstance;

  LaikangningSdk._() {
    _trackStatus();
  }

  Future<void> _trackStatus() async {
    await initialize();
  }

  Future<void>? _initialization;
  late LaikangningSdkPlatform _lknPlatform;

  Future<void> initialize() async {
    if (_initialization == null) {
      print("REACTIVE_LAIKANGNING_SDK");
    }
    LaikangningSdkPlatform.instance =
        const LaikangningPlatformFactory().create();
    _lknPlatform = LaikangningSdkPlatform.instance;

    _initialization ?? _lknPlatform.initialize();

    await _initialization;
  }

  Future<void> deinitialize() async => _lknPlatform.deinitialize();

  Future<void> startWork() async => _lknPlatform.startWork();

  Future<void> stopWork() async => _lknPlatform.startWork();

  Future<void> putData(List<int> data) async => _lknPlatform.putData(data);

  Stream<LknFhrData> getFhrData() => _lknPlatform.getFhrdata();

  Future<void> beginRecordWave(String path, String fileName) async =>
      _lknPlatform.beginRecordWave(path, fileName);

  Future<void> finishRecordWave() async => _lknPlatform.finishRecordWave();

  Future<void> sendTocoReset(int value) async =>
      _lknPlatform.sendTocoReset(value);

  Future<void> setFM() async => _lknPlatform.setFM();

  Future<void> putFhrVolume(int value) async =>
      _lknPlatform.putFhrVolume(value);
}
