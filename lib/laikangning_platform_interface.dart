
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class LaikangningSdkPlatform extends PlatformInterface {
  LaikangningSdkPlatform(): super(token: _token);
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

  /// De-initializes the ble plugin platform specific counter parts.
  Future<void> deinitialize() {
    throw UnimplementedError('deInitialize() has not been implemented.');
  }




}