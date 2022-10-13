import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'laikangning_sdk_method_channel.dart';

abstract class LaikangningSdkPlatform extends PlatformInterface {
  /// Constructs a LaikangningSdkPlatform.
  LaikangningSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static LaikangningSdkPlatform _instance = MethodChannelLaikangningSdk();

  /// The default instance of [LaikangningSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelLaikangningSdk].
  static LaikangningSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LaikangningSdkPlatform] when
  /// they register themselves.
  static set instance(LaikangningSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
