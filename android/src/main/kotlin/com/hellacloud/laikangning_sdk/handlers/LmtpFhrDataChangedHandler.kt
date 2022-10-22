package com.hellacloud.laikangning_sdk.handlers

import com.hellacloud.laikangning_sdk.converter.ProtobufMessageConverter
import com.hellacloud.laikangning_sdk.lmtp.ReactiveLmtpClient
import com.luckcome.lmtpdecorder.data.FhrData
import io.flutter.plugin.common.EventChannel

class LmtpFhrDataChangedHandler(private val mClient: ReactiveLmtpClient) :
    EventChannel.StreamHandler {

    private var mReadSink: EventChannel.EventSink? = null
    private val mProtobufMessageConverter: ProtobufMessageConverter = ProtobufMessageConverter()

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        events?.let {
            mReadSink = events
            startReadData()
        }
    }

    override fun onCancel(arguments: Any?) {
        mReadSink = null
    }

    private fun startReadData() {
        // 读取当前数据
        mClient.setReadLMTPFhrChangeData(object : ReactiveLmtpClient.ReadLMTPFhrChangeData {
            override fun getChange(fhrData: FhrData?) {
                mReadSink?.success(mProtobufMessageConverter.convertFhrData(fhrData))
            }
        })

    }
}