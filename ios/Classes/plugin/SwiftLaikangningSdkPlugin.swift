import Flutter
import UIKit

public class SwiftLaikangningSdkPlugin: NSObject, FlutterPlugin {
    
    private static let MAIN_CHANNEL_NAME = "flutter_laikangning_sdk"
    private static let READ_SEND_COMMAND_CHANNEL = "flutter_laikangyun_read_send_command_channel"
    private static let READ_FHR_CHANGE_CHANNEL = "flutter_laikangyun_read_fhr_change_channel"
    private static let READ_FHR_ERROR_CHANNEL = "flutter_laikangyun_read_fhr_error_channel"
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        let plugin = SwiftReactiveBlePlugin()
        let methodChannel = FlutterMethodChannel(name: MAIN_CHANNEL_NAME, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(plugin, channel: methodChannel)
        
        // 进行响应的注册内容
        FlutterEventChannel(name: READ_SEND_COMMAND_CHANNEL, binaryMessenger: registrar.messenger())
            .setStreamHandler(plugin.GetSendCommandData)
        
    }
    
    var GetSendCommandData: StreamHandler<PluginController> {
        return StreamHandler(
            name: "characteristic value update stream handler",
            context: context,
            onListen: { context, sink in
                context.characteristicValueUpdateSink = sink
                context.messageQueue.forEach { msg in
                    sink.add(.success(msg))
                }
                context.messageQueue.removeAll()
                return nil
            },
            onCancel: { context in
                context.messageQueue.removeAll()
                context.characteristicValueUpdateSink = nil
                return nil
            }
        )
    }
    
    private let context = PluginController()
    
    private let methodHandler = MethodHandler<PluginController>([
        AnyPlatformMethod(NullaryPlatformMethod(name: "initialize") { name, context, completion in
            context.initialize(name: name, completion: completion)
        }),
    ])
    
    public func handle(_ call: FlutterMethodCall, result completion: @escaping FlutterResult) {
        methodHandler.handle(in: context, call, completion: completion)
    }
    
}
