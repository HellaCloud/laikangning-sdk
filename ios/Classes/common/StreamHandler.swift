//
// Created by 候帅 on 2022/10/26.
//

import Foundation
import Flutter

final class StreamHandler<Context: AnyObject>: NSObject, FlutterStreamHandler, StreamDelegate {

    typealias OnListenHandler = (Context, EventSink) -> FlutterError?
    typealias OnCancelHandler = (Context) -> FlutterError?

    private let name: String
    private weak var context: Context?
    private let onListenBody: OnListenHandler
    private let onCancelBody: OnCancelHandler
    private var sink: FlutterEventSink? = nil

    init(name: String, context: Context, onListen: @escaping OnListenHandler, onCancel: @escaping OnCancelHandler) {
        self.name = name
        self.context = context
        onListenBody = onListen
        onCancelBody = onCancel
        super.init()
    }

    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        assert(arguments == nil)

        guard let context = context
        else {
            return PluginError.internalInconcictency(
                            details: "\(StreamHandler.self)(name: \"\(name)\").\(#function) is called when the context is destroyed"
                    )
                    .asFlutterError
        }
        sink = events
        return onListenBody(context, EventSink(name: name, events))
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        assert(arguments == nil)

        guard let context = context
        else {
            return PluginError.internalInconcictency(
                            details: "\(StreamHandler.self)(name: \"\(name)\").\(#function) is called when the context is destroyed"
                    )
                    .asFlutterError
        }

        return onCancelBody(context)
    }

    func fhrData(withData data: LKCDecodeHeart) {
        // 转化为 protobuf 数据
        guard let innerSink = sink else {
            return
        }
        do {
            var fhrData = LknFhrData.FhrData.init()
            fhrData.afm = data.afm.data
            fhrData.afmFlag = data.afmFlag.data
            fhrData.fmFlag = data.fmFlag.data
            fhrData.tocoFlag = data.tocoFlag.data
            fhrData.toco = data.tocoValue.data
            fhrData.devicePower = data.battValue.data
            fhrData.docFlag = data.signal.data
            fhrData.fhr1 = Int32(data.isRate)
            fhrData.fhr2 = Int32(data.isRate2)
            fhrData.fhrSignal = data.signal.data
            fhrData.isHaveAfm = data.isAfm.data
            fhrData.isHaveFhr1 = data.isRate.data
            fhrData.isHaveFhr2 = data.isRate2.data
            fhrData.isHaveToco = data.isToco.data

            var lknFhrData = LknFhrData.init()
            lknFhrData.type = .fhrData
            lknFhrData.data = fhrData

            innerSink(FlutterStandardTypedData(bytes: try lknFhrData.serializedData()))
        } catch {
            print("LKN SDK StreamHandler fhrData is failed")
        }
    }

    func fhrError(withError error: [Int]) {
    }

    func fhrSend(withByte byte: [Int]) {
    }


}