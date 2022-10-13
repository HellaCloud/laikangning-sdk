import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:laikangning_sdk/laikangning_sdk_method_channel.dart';

void main() {
  MethodChannelLaikangningSdk platform = MethodChannelLaikangningSdk();
  const MethodChannel channel = MethodChannel('laikangning_sdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
