package com.hellacloud.laikangning_sdk

import android.content.Context
import com.hellacloud.laikangning_sdk.extensions.error400
import com.hellacloud.laikangning_sdk.handlers.LmtpFhrDataChangedHandler
import com.hellacloud.laikangning_sdk.handlers.LmtpFhrDataErrorHandler
import com.hellacloud.laikangning_sdk.handlers.LmtpSendCommandHandler
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
        private const val READ_SEND_COMMAND_CHANNEL = "flutter_laikangyun_read_send_command_channel"
        private const val READ_FHR_CHANGE_CHANNEL = "flutter_laikangyun_read_fhr_change_channel"
        private const val READ_FHR_ERROR_CHANNEL = "flutter_laikangyun_read_fhr_error_channel"
    }

    private lateinit var mContent: Context
    private lateinit var mClient: ReactiveLmtpClient


    internal fun initialize(messenger: BinaryMessenger, context: Context) {
        mClient = ReactiveLmtpClient()
        mContent = context

        val sendCommand = LmtpSendCommandHandler(mClient)
        val fhrDataChangeHandler = LmtpFhrDataChangedHandler(mClient)
        val fhrDataErrorHandler = LmtpFhrDataErrorHandler(mClient)

        val sendCommandChannel = EventChannel(messenger, READ_SEND_COMMAND_CHANNEL)
        val fhrChangeChannel = EventChannel(messenger, READ_FHR_CHANGE_CHANNEL)
        val fhrErrorChannel = EventChannel(messenger, READ_FHR_ERROR_CHANNEL)
        sendCommandChannel.setStreamHandler(sendCommand)
        fhrChangeChannel.setStreamHandler(fhrDataChangeHandler)
        fhrErrorChannel.setStreamHandler(fhrDataErrorHandler)
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
        val path = call.argument<String>("path") ?: return result.error400("path")
        val fileName = call.argument<String>("file_name") ?: return result.error400("file_name")
        mClient.beginRecordWave(path, fileName)
        result.success(null)
    }

    // 完成胎心声音记录
    private fun finishRecordWave(call: MethodCall, result: MethodChannel.Result) {
        mClient.finishRecordWaves()
        result.success(null)
    }

    // 写入蓝牙数据
    private fun putData(call: MethodCall, result: MethodChannel.Result) {
        val argument = call.argument<ByteArray>("data")
        mClient.putData(argument)
        result.success(null)
    }

    // 设置宫缩复位
    private fun sendTocoReset(call: MethodCall, result: MethodChannel.Result) {
        val reset = call.argument<Int>("value") ?: return result.error400("value")
        mClient.sendTocoReset(reset)
        result.success(null)
    }

    // 设置一次手动胎动
    private fun setFM(call: MethodCall, result: MethodChannel.Result) {
        mClient.sendFM()
        result.success(null)
    }

    // 设置胎心音量
    private fun putFhrVolume(call: MethodCall, result: MethodChannel.Result) {
        val value = call.argument<Int>("value") ?: return result.error400("value")
        mClient.sendFhrVolume(value)
        result.success(null)
    }

}