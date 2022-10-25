package com.hellacloud.laikangning_sdk.handlers

import android.util.Log
import com.hellacloud.laikangning_sdk.converter.ProtobufMessageConverter
import com.luckcome.lmtpdecorder.LMTPDecoderListener
import com.luckcome.lmtpdecorder.data.FhrData
import io.flutter.plugin.common.EventChannel
import io.reactivex.Observable
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.SerialDisposable

class LmtpFhrDataChangedHandler : EventChannel.StreamHandler, LMTPDecoderListener {

    private val TAG = LmtpFhrDataChangedHandler::class.java.name

    private var mSink: EventChannel.EventSink? = null
    private val mProtobufMessageConverter: ProtobufMessageConverter = ProtobufMessageConverter()
    private val subscriptionDisposable = SerialDisposable()

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        events?.let {
            mSink = events
        }
    }

    override fun onCancel(arguments: Any?) {
        mSink = null
        subscriptionDisposable.set(null)
    }

    override fun sendCommand(p0: ByteArray?) {
        mSink?.let { sink ->
            val subscribe = Observable.just(p0)
                .map { mProtobufMessageConverter.convertLineCommand(it).toByteArray() }
                .observeOn(AndroidSchedulers.mainThread()).subscribe({
                    sink.success(it)
                }, {
                    Log.e(TAG, "sendCommand: ${it.message}")
                })
            subscriptionDisposable.set(subscribe)
        }
    }

    override fun fhrDataChanged(p0: FhrData?) {
        mSink?.let { sink ->
            val subscribe = Observable.just(p0)
                .map { mProtobufMessageConverter.convertFhrData(it).toByteArray() }
                .observeOn(AndroidSchedulers.mainThread()).subscribe({
                    sink.success(it)
                }, {
                    Log.e(TAG, "fhrDataChanged: ${it.message}")
                })
            subscriptionDisposable.set(subscribe)
        }
    }

    override fun fhrDataError(p0: Int) {
        mSink?.let { sink ->
            val subscribe = Observable.just(p0)
                .map { mProtobufMessageConverter.convertErrorCommand(it).toByteArray() }
                .observeOn(AndroidSchedulers.mainThread()).subscribe({
                    sink.success(it)
                }, {
                    Log.e(TAG, "fhrDataError: ${it.message}")
                })
            subscriptionDisposable.set(subscribe)
        }
    }


}