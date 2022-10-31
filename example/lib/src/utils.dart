// ignore: avoid_print
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

void log(String text) => print("[FlutterReactiveBLEApp] $text");

// 增加读写逻辑内容 以及广播
Uuid CLIENT_CHARACTERISTIC_CONFIG =
    Uuid.parse("00002902-0000-1000-8000-00805f9b34fb");

Uuid BLE_READ_UUID = Uuid.parse("0000fed6-0000-1000-8000-00805f9b34fb");
Uuid BLE_WRITE_UUID = Uuid.parse("0000fff2-0000-1000-8000-00805f9b34fb");

Uuid IOS_BLE_PARENT_UUID = Uuid.parse("fff0");
Uuid IOS_BLE_NOTIFICATION_UUID = Uuid.parse("fff1");
Uuid IOS_BLE_WRITE_UUID = Uuid.parse("fff2");

Uuid? getBleServiceId(Uuid characteristic, List<DiscoveredService> services) {
  for (var element in services) {
    for (var inner in element.characteristics) {
      if (inner.characteristicId == characteristic) {
        return inner.serviceId;
      }
    }
  }
  return null;
}
