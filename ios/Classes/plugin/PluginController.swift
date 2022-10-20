//
// Created by 候帅 on 2022/10/18.
//

import Foundation
import CoreBluetooth

final class PluginController {

    private var decoder: LMTPDecoder?

    func initialize(name: FlutterMethodCall, completion: @escaping FlutterResult) {
        // 进行相应的初始化逻辑
        decoder = LMTPDecoder.shareInstance() as? LMTPDecoder
    }

    func deinitialize() {
        guard let decoder = decoder else {
            print("not initialize")
            return
        }

        decoder.stopMoniter()

    }

    func startWork() {

    }

    func stopWork() {

    }

    func putData(_ data: [UInt8]) {
        let readData: Data = Data(bytes: data)
        decoder?.start(withCharacterData: readData)
    }

    func beginRecordWave(_ path: String, _ fileName: String) {
        let fileManager = FileManager()
        if !fileManager.fileExists(atPath: path) {
            do {
                try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true)
            } catch {
                print("file manager is error")
            }
        }
        decoder?.startMonitor(withAudioFilePath: "\(path)/\(fileName)")
    }

    func finishRecordWaves() {
        decoder?.stopMoniter()
    }

    func sendTocoReset(_ value: Int, _ uuid: String, _ deviceName: String) {
        // TODO 待修改当前逻辑内容

        // 获取当前蓝牙连通设备
        var peripheral: CBPeripheral? = nil
        let centralManager = CBCentralManager()
        let devices = centralManager.retrieveConnectedPeripherals(withServices: [CBUUID(string: uuid)])
        for item in devices {
            if (item.name == deviceName) {
                peripheral = item
            }
        }
        // 进行蓝牙数据写入操作
        let write = peripheral?.services?[0].characteristics?[0]

        decoder?.sendTocoReset(1, withTocoResetValue: 1, for: peripheral, with: write)
    }

    func sendFM() {
        decoder?.setFM()
    }

    func sendFhrVolume(_ value: Int) {
//        decoder?.sendFhrValue(<#T##audioValue: Int32##Swift.Int32#>, for: <#T##CBPeripheral!##CBPeripheral!#>, with: <#T##CBCharacteristic!##CBCharacteristic!#>)

    }

    func stopRealSound() {
        decoder?.stopRealTimeAudioPlyer()
    }

    func startRealTimeAutoPlayer() {
        decoder?.startRealTimeAudioPlyer()
    }

}
