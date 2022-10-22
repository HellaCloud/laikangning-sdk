import 'package:flutter/services.dart';

import 'laikangning_platform_interface.dart';

class LaikangningPlatform extends LaikangningSdkPlatform {
  LaikangningPlatform({
    required Stream<List<int>> connectedDeviceChannel,
  });

  @override
  Future<Function> deinitialize() {
    // return Future(() => Function.apply(
    // printWineDetails, [2018], {#country: 'USA', #name: 'Dominus Estate'}));
    throw UnimplementedError('scanStream has not been implemented.');
  }

  @override
  Future<Function> initialize() {
    throw UnimplementedError('scanStream has not been implemented.');
  }
}

class LaikangningPlatformFactory {
  const LaikangningPlatformFactory();

  LaikangningPlatform create() {
    const _bleMethodChannel = MethodChannel("flutter_laikangning_sdk");
    const connectedDeviceChannel =
        EventChannel("flutter_reactive_ble_connected_device");
    const charEventChannel =
        EventChannel("flutter_laikangyun_read_send_command_channel");
    const scanEventChannel =
        EventChannel("flutter_laikangyun_read_fhr_change_channel");
    const bleStatusChannel =
        EventChannel("flutter_laikangyun_read_fhr_error_channel");

    return LaikangningPlatform(
        connectedDeviceChannel:
            bleStatusChannel.receiveBroadcastStream().cast<List<int>>());
  }
}
