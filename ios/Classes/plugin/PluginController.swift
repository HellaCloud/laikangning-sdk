//
// Created by 候帅 on 2022/10/18.
//

import Foundation

final class PluginController {


    func initialize(name: FlutterMethodCall, completion: @escaping FlutterResult) {
        // 进行相应的初始化逻辑
        LMTPDecoder()
        
    }

    func deinitialize() {

    }

    func startWork() {

    }

    func stopWork() {

    }

    func putData(_ data: [UInt8]) {

    }

    func beginRecordWave(_ path: String, _ fileName: String) {

    }

    func finishRecordWaves() {

    }

    func sendTocoReset(_ value: Int) {

    }

}
