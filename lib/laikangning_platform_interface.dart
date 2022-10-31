import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'generated/fhrdata.pb.dart';

abstract class LaikangningSdkPlatform extends PlatformInterface {
  LaikangningSdkPlatform() : super(token: _token);
  static final Object _token = Object();
  static late LaikangningSdkPlatform _instance;

  static LaikangningSdkPlatform get instance => _instance;

  static set instance(LaikangningSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> initialize() {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> deinitialize() {
    throw UnimplementedError('deInitialize() has not been implemented.');
  }

  Future<void> startWork() {
    throw UnimplementedError('deInitialize() has not been implemented.');
  }

  Future<void> stopWork() {
    throw UnimplementedError('deInitialize() has not been implemented.');
  }

  Stream<LknFhrData> getFhrdata() {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> putData(List<int> data) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> beginRecordWave(String path, String fileName) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> finishRecordWave() {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> sendTocoReset(int value) {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> setFM() {
    throw UnimplementedError('initialize() has not been implemented.');
  }

  Future<void> putFhrVolume(int value) {
    throw UnimplementedError('initialize() has not been implemented.');
  }
}
