
import 'laikangning_sdk_platform_interface.dart';

class LaikangningSdk {
  Future<String?> getPlatformVersion() {
    return LaikangningSdkPlatform.instance.getPlatformVersion();
  }
}
