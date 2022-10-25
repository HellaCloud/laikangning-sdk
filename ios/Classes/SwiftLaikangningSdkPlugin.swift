import Flutter
import UIKit

public class SwiftLaikangningSdkPlugin: NSObject, FlutterPlugin {

    private static let MAIN_CHANNEL_NAME = "flutter_laikangning_sdk"
    private static let READ_FHR_CHANGE_CHANNEL = "flutter_laikangyun_read_fhr_change_channel"
    private var streamHandler: StreamDelegate? = nil
    private let context: PluginController = PluginController()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let plugin = SwiftLaikangningSdkPlugin()
        let methodChannel = FlutterMethodChannel(name: MAIN_CHANNEL_NAME, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(plugin, channel: methodChannel)
        let handler = plugin.fhrDataStreamHandler
        FlutterEventChannel(name: READ_FHR_CHANGE_CHANNEL, binaryMessenger: registrar.messenger()).setStreamHandler(handler)
        plugin.context.setStreamDelegate(handler)
    }

    private var fhrDataStreamHandler: StreamHandler<PluginController> {
        StreamHandler(
                name: "fhr data stream handler", context: context, onListen: { context, sink in
            nil
        }, onCancel: { context in
            nil
        })
    }


    public func handle(_ call: FlutterMethodCall, result completion: @escaping FlutterResult) {
        methodHandler.handle(in: context, call, completion: completion)
    }

    private let methodHandler = MethodHandler<PluginController>([
        AnyPlatformMethod(NullaryPlatformMethod(name: "initialize") { name, context, completion in
            context.initialize(completion: completion)
        }),
        AnyPlatformMethod(NullaryPlatformMethod(name: "deinitialize") { name, context, completion in
            context.deinitialize(completion: completion)
        }),
        AnyPlatformMethod(NullaryPlatformMethod(name: "startWork") { name, context, completion in
            context.startWork(completion: completion)
        }),
        AnyPlatformMethod(NullaryPlatformMethod(name: "stopWork") { name, context, completion in
            context.stopWork(completion: completion)
        }),
        AnyPlatformMethod(UnaryPlatformMethod(name: "putData") { (name, context, args: LknPutData, completion) in
            context.putData(args: args, completion: completion)
        }),
        AnyPlatformMethod(UnaryPlatformMethod(name: "beginRecordWave") { (name, context, args: LknRecordWave, completion) in
            context.beginRecordWave(args: args, completion: completion)
        }),
        AnyPlatformMethod(NullaryPlatformMethod(name: "finishRecordWaves") { name, context, completion in
            context.finishRecordWaves(completion: completion)
        }),
        AnyPlatformMethod(UnaryPlatformMethod(name: "sendTocoReset") { (name, context, args: LknTocoReset, completion) in
            context.sendTocoReset(args: args, completion: completion)
        }),
        AnyPlatformMethod(NullaryPlatformMethod(name: "sendFM") { name, context, completion in
            context.sendFM(completion: completion)
        }),
        AnyPlatformMethod(UnaryPlatformMethod(name: "sendFhrVolume") { (name, context, args: LknFhrVolume, completion) in
            context.sendFhrVolume(args: args, completion: completion)
        }),
    ])

}
