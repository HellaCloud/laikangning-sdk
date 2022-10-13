import 'package:flutter_test/flutter_test.dart';
import 'package:laikangning_sdk/laikangning_sdk.dart';
import 'package:laikangning_sdk/laikangning_sdk_platform_interface.dart';
import 'package:laikangning_sdk/laikangning_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLaikangningSdkPlatform
    with MockPlatformInterfaceMixin
    implements LaikangningSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LaikangningSdkPlatform initialPlatform = LaikangningSdkPlatform.instance;

  test('$MethodChannelLaikangningSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLaikangningSdk>());
  });

  test('getPlatformVersion', () async {
    LaikangningSdk laikangningSdkPlugin = LaikangningSdk();
    MockLaikangningSdkPlatform fakePlatform = MockLaikangningSdkPlatform();
    LaikangningSdkPlatform.instance = fakePlatform;

    expect(await laikangningSdkPlugin.getPlatformVersion(), '42');
  });
}
