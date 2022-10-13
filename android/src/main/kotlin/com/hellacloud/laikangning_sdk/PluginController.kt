package com.hellacloud.laikangning_sdk

import android.content.Context
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class PluginController {

    private val pluginMethods =
        mapOf<String, (call: MethodCall, result: MethodChannel.Result) -> Unit>(

        )

    private lateinit var mContent: Context

    private lateinit var mDeviceConnectionChannel: EventChannel
    private lateinit var mDeviceStatusChannel: EventChannel
    private lateinit var mScanChannel: EventChannel

    internal fun initialize(messenger: BinaryMessenger, context: Context) {
        mContent = context
        // 声明流


        // 声明不同的事件通道
        mDeviceConnectionChannel = EventChannel(messenger, "flutter_aikang_ble_connected_device")
        mDeviceStatusChannel = EventChannel(messenger, "flutter_aikang_ble_status")
        mScanChannel = EventChannel(messenger, "flutter_reactive_ble_scan")

    }

    internal fun deinitialize() {
//        scandevicesHandler.stopDeviceScan()
//        deviceConnectionHandler.disconnectAll()
    }

    internal fun execute(call: MethodCall, result: MethodChannel.Result) {
        pluginMethods[call.method]?.invoke(call, result) ?: result.notImplemented()
    }

    // 执行扫描蓝牙


    // 执行蓝牙链接


    // 执行蓝牙重新链接


    // 执行蓝牙数据写入


    // 执行蓝牙数据读取

}