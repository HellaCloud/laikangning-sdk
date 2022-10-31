# LKN SDK
> 本仓库是服务于莱康宁 远程胎监设备 `eFM` 系列。

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