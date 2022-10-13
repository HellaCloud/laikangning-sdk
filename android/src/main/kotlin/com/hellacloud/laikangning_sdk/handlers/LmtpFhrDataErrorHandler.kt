package com.hellacloud.laikangning_sdk.handlers

import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import io.flutter.plugin.common.EventChannel

class LmtpFhrDataErrorHandler(val mClient: ReactiveLmtpClient) : EventChannel.StreamHandler {

    private var mReadSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        events?.let {
            mReadSink = events
            startReadData()
        }
    }

    private fun startReadData() {
        // 读取当前数据
        mClient.setReadLMTPFhrDataError(object : ReactiveLmtpClient.ReadLMTPFhrErrorData {
            override fun getErrorData(errorCode: Int) {
                mReadSink?.success(errorCode)
            }
        })

    }

    override fun onCancel(arguments: Any?) {
        mReadSink = null
    }
}