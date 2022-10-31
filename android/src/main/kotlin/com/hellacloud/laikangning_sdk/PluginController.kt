package com.hellacloud.laikangning_sdk

import android.content.Context
import android.util.Log
import com.hellacloud.laikangning_sdk.handlers.LmtpFhrDataChangedHandler
import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.hellacloud.laikangning_sdk.model.ProtobufModel as pb


class PluginController {

    private val pluginMethods =
        mapOf<String, (call: MethodCall, result: MethodChannel.Result) -> Unit>(
            "initialize" to this::initializeClient,
            "deinitialize" to this::deinitializeClient,
            "stopWork" to this::stopWork,
            "startWork" to this::startWork,
            "beginRecordWave" to this::beginRecordWave,
            "finishRecordWave" to this::finishRecordWave,
            "putData" to this::putData,
            "sendTocoReset" to this::sendTocoReset,
            "setFM" to this::setFM,
            "putFhrVolume" to this::putFhrVolume,
        )

    companion object {
        private const val READ_FHR_CHANGE_CHANNEL = "flutter_laikangyun_read_fhr_change_channel"
    }

    private lateinit var mContent: Context
    private var mClient: ReactiveLmtpClient? = null
    private var mFhrDataChangeHandler: LmtpFhrDataChangedHandler? = null

    internal fun initialize(messenger: BinaryMessenger, context: Context) {
        if (mClient != null) {
            Log.i(PluginController::class.java.name, "reinitialize")
            return
        }
        mClient = ReactiveLmtpClient()
        mContent = context

        mFhrDataChangeHandler = LmtpFhrDataChangedHandler()
        val fhrChangeChannel = EventChannel(messenger, READ_FHR_CHANGE_CHANNEL)
        fhrChangeChannel.setStreamHandler(mFhrDataChangeHandler)
    }

    internal fun deinitialize() {
        mClient?.deinitialClient()
        mClient = null
    }

    internal fun execute(call: MethodCall, result: MethodChannel.Result) {
        pluginMethods[call.method]?.invoke(call, result) ?: result.notImplemented()
    }

    // 初始化客户端
    private fun initializeClient(call: MethodCall, result: MethodChannel.Result) {
        mClient?.initializeClient(mFhrDataChangeHandler)
        result.success(null)
    }

    // 释放资源
    private fun deinitializeClient(call: MethodCall, result: MethodChannel.Result) {
        this.deinitialize()
        result.success(null)
    }

    // 停止工作
    private fun stopWork(call: MethodCall, result: MethodChannel.Result) {
        mClient?.stopWork()
        result.success(null)
    }

    // 开始工作
    private fun startWork(call: MethodCall, result: MethodChannel.Result) {
        mClient?.startWork()
        result.success(null)
    }

    // 开启胎心声音记录
    private fun beginRecordWave(call: MethodCall, result: MethodChannel.Result) {
        val recordWave = pb.LknRecordWave.parseFrom(call.arguments as ByteArray)
        mClient?.beginRecordWave(recordWave.path, recordWave.fileName)
        result.success(null)
    }

    // 完成胎心声音记录
    private fun finishRecordWave(call: MethodCall, result: MethodChannel.Result) {
        mClient?.finishRecordWaves()
        result.success(null)
    }

    // 写入蓝牙数据
    private fun putData(call: MethodCall, result: MethodChannel.Result) {
        val lknPutData = pb.LknPutData.parseFrom(call.arguments as ByteArray)
        mClient?.putData(lknPutData.data.toByteArray())
        result.success(null)
    }

    // 设置宫缩复位
    private fun sendTocoReset(call: MethodCall, result: MethodChannel.Result) {
        val lknPutData = pb.LknTocoReset.parseFrom(call.arguments as ByteArray)
        mClient?.sendTocoReset(lknPutData.value)
        result.success(null)
    }

    // 设置一次手动胎动
    private fun setFM(call: MethodCall, result: MethodChannel.Result) {
        mClient?.sendFM()
        result.success(null)
    }

    // 设置胎心音量
    private fun putFhrVolume(call: MethodCall, result: MethodChannel.Result) {
        val lknPutData = pb.LknFhrVolume.parseFrom(call.arguments as ByteArray)
        mClient?.sendFhrVolume(lknPutData.value)
        result.success(null)
    }

}