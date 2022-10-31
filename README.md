# LKN SDK
> 本仓库是服务于莱康宁 远程胎监设备 `eFM` 系列。

[![LKN](https://img.shields.io/badge/home-莱康宁-brightgreen)](https://www.luckcome.com/solution_051.html)
[![FLUTTER](https://img.shields.io/badge/dev-flutter-orange)](https://flutter.dev/)
[![PLUGIN](https://img.shields.io/badge/plugin-v1.0.0-orange)](https://github.com/HellaCloud/laikangning-sdk)

# 功能

- 开启功能
```dart
  var laikangningSdk = LaikangningSdk();
  laikangningSdk.initialize();
```

- 开启声音
```dart
 laikangningSdk.startWork();
```

- 关闭声音
```dart
 laikangningSdk.stopWork();
```

- 发送数据
```dart
 laikangningSdk.putData(bytes);
```

- 接受解析协议后数据为
```dart
laikangningSdk.getFhrData().listen((event) {
    event.data.afm;
    _bleLogger.addToLog('type: ${event.type.name} - '
        'afm: ${event.data.afm} - '
        'toco: ${event.data.toco} - '
        'tocoFlag: ${event.data.tocoFlag}'
        'fhr1: ${event.data.fhr1} - '
        'fhr2: ${event.data.fhr2}'
        'devicePower: ${event.data.devicePower}'
        'afmFlag: ${event.data.afmFlag}'
        'docFlag: ${event.data.docFlag}'
        'fmFlag: ${event.data.fmFlag}');
  });
```

- 销毁sdk
```dart
laikangningSdk.deinitilize();
```