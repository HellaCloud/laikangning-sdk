package com.hellacloud.laikangning_sdk

import android.content.Context
import com.hellacloud.laikangning_sdk.handlers.ReadHandler
import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

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
        private const val READ_CHANNEL = "flutter_laikangyun_read_channel"
        private const val WRITE_CHANNEL = "flutter_laikangyun_write_channel"

    }

    private lateinit var mContent: Context
    private lateinit var mClient: ReactiveLmtpClient

    private lateinit var mReadChannel: EventChannel
    private lateinit var mWriteChannel: EventChannel

    internal fun initialize(messenger: BinaryMessenger, context: Context) {
        mClient = ReactiveLmtpClient()

        mContent = context
        // 声明数据流处理
        val readHandler = ReadHandler(mClient)

        // 声明不同的事件通道
        mReadChannel = EventChannel(messenger, READ_CHANNEL)
        mWriteChannel = EventChannel(messenger, WRITE_CHANNEL)
        mReadChannel.setStreamHandler(readHandler)

    }

    internal fun deinitialize() {
        mClient.deinitialClient()
    }

    internal fun execute(call: MethodCall, result: MethodChannel.Result) {
        pluginMethods[call.method]?.invoke(call, result) ?: result.notImplemented()
    }

    // 初始化客户端
    private fun initializeClient(call: MethodCall, result: MethodChannel.Result) {
        mClient.initializeClient()
        result.success(null)
    }

    // 释放资源
    private fun deinitializeClient(call: MethodCall, result: MethodChannel.Result) {
        this.deinitialize()
        result.success(null)
    }

    // 停止工作
    private fun stopWork(call: MethodCall, result: MethodChannel.Result) {
        mClient.stopWork()
        result.success(null)
    }

    // 开始工作
    private fun startWork(call: MethodCall, result: MethodChannel.Result) {
        mClient.startWork()
        result.success(null)
    }

    // 开启胎心声音记录
    private fun beginRecordWave(call: MethodCall, result: MethodChannel.Result) {
        val path = call.argument<String>("path") ?: return result.error("400", "", "")
        val fileName = call.argument<String>("file_name") ?: return result.error("400", "", "")
        mClient.beginRecordWave(path, fileName)
        result.success(null)
    }

    // 完成胎心声音记录
    private fun finishRecordWave(call: MethodCall, result: MethodChannel.Result) {
        result.success(null)
    }

    // 写入蓝牙数据
    private fun putData(call: MethodCall, result: MethodChannel.Result) {

    }

    // 设置宫缩复位
    private fun sendTocoReset(call: MethodCall, result: MethodChannel.Result) {

    }

    // 设置一次手动胎动
    private fun setFM(call: MethodCall, result: MethodChannel.Result) {

    }

    // 设置胎心音量
    private fun putFhrVolume(call: MethodCall, result: MethodChannel.Result) {

    }

}