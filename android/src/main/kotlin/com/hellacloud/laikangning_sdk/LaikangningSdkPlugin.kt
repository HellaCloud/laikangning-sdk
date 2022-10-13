package com.hellacloud.laikangning_sdk

import android.annotation.SuppressLint
import android.content.Context
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class LaikangningSdkPlugin : FlutterPlugin, MethodCallHandler {

    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        initializePlugin(binding.binaryMessenger, binding.applicationContext, this)
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        deinitializePlugin()
    }

    companion object {
        @SuppressLint("StaticFieldLeak")
        private lateinit var pluginController: PluginController

        @JvmStatic
        private fun initializePlugin(
            messenger: BinaryMessenger,
            context: Context,
            plugin: LaikangningSdkPlugin
        ) {
            val channel = MethodChannel(messenger, "flutter_aikangyun_ble_method")
            channel.setMethodCallHandler(plugin)
            pluginController = PluginController()
            pluginController.initialize(messenger, context)
        }

        @JvmStatic
        private fun deinitializePlugin() {
            pluginController.deinitialize()
        }
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        pluginController.execute(call, result)
    }


}
