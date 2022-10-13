import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'laikangning_sdk_platform_interface.dart';

/// An implementation of [LaikangningSdkPlatform] that uses method channels.
class MethodChannelLaikangningSdk extends LaikangningSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('laikangning_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
