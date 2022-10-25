//
// Created by 候帅 on 2022/10/18.
//

import Foundation
import CoreBluetooth
import Flutter

final class PluginController {

    private var decoder: LMTPDecoder?
    private var streamDelegate: StreamDelegate?

    func initialize(completion: @escaping PlatformMethodCompletionHandler) {
        // 进行相应的初始化逻辑
        guard decoder != nil else {
            decoder = LMTPDecoder.shareInstance() as? LMTPDecoder
            // 添加对应的声明
            return
        }
        completion(.success(nil))
    }

    func deinitialize(completion: @escaping PlatformMethodCompletionHandler) {
        guard let decoder = decoder else {
            print("not initialize")
            return
        }
        decoder.stopMoniter()
        completion(.success(nil))
    }

    func startWork(completion: @escaping PlatformMethodCompletionHandler) {
        decoder?.startRealTimeAudioPlyer()
        completion(.success(nil))
    }

    func setStreamDelegate(_ handler: StreamDelegate) {
        streamDelegate = handler
    }

    func stopWork(completion: @escaping PlatformMethodCompletionHandler) {
        decoder?.stopRealTimeAudioPlyer()
        completion(.success(nil))
    }

    func putData(args data: LknPutData, completion: @escaping PlatformMethodCompletionHandler) {
        let data = decoder?.start(withCharacterData: data.data)
        // 接口传递当前至内容 并推送至 流数据中。
        guard let lknHeaderData = data else {
            completion(.success(nil))
            return
        }
        streamDelegate?.fhrData(withData: lknHeaderData)
        completion(.success(nil))
    }

    func beginRecordWave(args data: LknRecordWave, completion: @escaping PlatformMethodCompletionHandler) {
        let fileManager = FileManager()
        if !fileManager.fileExists(atPath: data.path) {
            do {
                try fileManager.createDirectory(atPath: data.path, withIntermediateDirectories: true)
            } catch {
                print("file manager is error")
            }
        }
        decoder?.startMonitor(withAudioFilePath: "\(data.path)/\(data.fileName)")
        completion(.success(nil))
    }

    func finishRecordWaves(completion: @escaping PlatformMethodCompletionHandler) {
        decoder?.stopMoniter()
        completion(.success(nil))
    }

    func sendTocoReset(args data: LknTocoReset, completion: @escaping PlatformMethodCompletionHandler) {

        completion(.success(nil))
    }

    func sendFM(completion: @escaping PlatformMethodCompletionHandler) {
        decoder?.setFM()
        completion(.success(nil))
    }

    func sendFhrVolume(args data: LknFhrVolume, completion: @escaping PlatformMethodCompletionHandler) {
        completion(.success(nil))
    }
}
