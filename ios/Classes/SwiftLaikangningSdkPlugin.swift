import Flutter
import UIKit

public class SwiftLaikangningSdkPlugin: NSObject, FlutterPlugin {

    private static let MAIN_CHANNEL_NAME = "flutter_laikangning_sdk"
    private static let READ_SEND_COMMAND_CHANNEL = "flutter_laikangyun_read_send_command_channel"
    private static let READ_FHR_CHANGE_CHANNEL = "flutter_laikangyun_read_fhr_change_channel"
    private static let READ_FHR_ERROR_CHANNEL = "flutter_laikangyun_read_fhr_error_channel"

    public static func register(with registrar: FlutterPluginRegistrar) {

        let plugin = SwiftLaikangningSdkPlugin()
        let methodChannel = FlutterMethodChannel(name: MAIN_CHANNEL_NAME, binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(plugin, channel: methodChannel)

        // 监听数据流进入




    }


    private let context = PluginController()

    public func handle(_ call: FlutterMethodCall, result completion: @escaping FlutterResult) {
        context.initialize(name: call, completion: completion)
    }

}
