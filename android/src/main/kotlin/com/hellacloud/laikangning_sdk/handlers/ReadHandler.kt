package com.hellacloud.laikangning_sdk.handlers

import com.hellacloud.laikangning_sdk.converter.ProtobufMessageConverter
import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import io.flutter.plugin.common.EventChannel

class ReadHandler(mClient: ReactiveLmtpClient) : EventChannel.StreamHandler {

    private var mReadSink: EventChannel.EventSink? = null
    private val converter = ProtobufMessageConverter()

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        events?.let {
            mReadSink = events
            startReadData()
        }
    }

    override fun onCancel(arguments: Any?) {
        stopReadData()
    }

    private fun startReadData() {

    }

    private fun stopReadData() {

    }
}