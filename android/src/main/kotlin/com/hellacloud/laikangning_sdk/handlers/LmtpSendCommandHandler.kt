package com.hellacloud.laikangning_sdk.handlers

import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import io.flutter.plugin.common.EventChannel

class LmtpSendCommandHandler(private val mClient: ReactiveLmtpClient) : EventChannel.StreamHandler {

    private var mReadSink: EventChannel.EventSink? = null

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
        // 读取当前数据
        mClient.setReadLMTPSendCommand(object : ReactiveLmtpClient.ReadLMTPSendCommand {
            override fun sendData(bytesData: ByteArray?) {
                mReadSink?.success(bytesData)
            }
        })
    }

    private fun stopReadData() {
        mReadSink = null
    }
}