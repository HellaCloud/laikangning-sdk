package com.hellacloud.laikangning_sdk.lmtp

import com.luckcome.lmtpdecorder.LMTPDecoder
import com.luckcome.lmtpdecorder.LMTPDecoderListener
import com.luckcome.lmtpdecorder.data.FhrData
import java.io.File

class ReactiveLmtpClient : LmtpClient {

    private var mLmtpDecoder: LMTPDecoder? = null
    private var mListener: LMTPDListener? = null

    private val nullException = NullPointerException("need call initializeClient function")

    override fun initializeClient() {
        mLmtpDecoder = LMTPDecoder()
        mListener = LMTPDListener()
        mLmtpDecoder?.setLMTPDecoderListener(mListener)
        mLmtpDecoder?.prepare()
    }

    override fun startWork() {
        mLmtpDecoder?.startWork() ?: throw nullException
    }

    override fun stopWork() {
        mLmtpDecoder?.stopWork() ?: throw nullException
    }

    override fun putData(data: ByteArray?) {
        mLmtpDecoder?.putData(data, 0, data?.size ?: 0) ?: throw nullException
    }

    override fun beginRecordWave(path: String, fileName: String) {
        val file = File(path)
        if (!file.isDirectory) {
            throw NoSuchFileException(file, reason = "not find directory in $path");
        }
        mLmtpDecoder?.beginRecordWave(file, fileName) ?: throw nullException
    }

    override fun finishRecordWaves() {
        mLmtpDecoder?.finishRecordWave() ?: throw nullException
    }

    override fun sendTocoReset(value: Int) {
        mLmtpDecoder?.sendTocoReset(value) ?: throw nullException
    }

    override fun sendFM() {
        mLmtpDecoder?.setFM() ?: throw nullException
    }

    override fun sendFhrVolume(value: Int) {
        mLmtpDecoder?.sendFhrVolue(value) ?: throw nullException
    }

    override fun deinitialClient() {
        mLmtpDecoder?.release() ?: throw nullException
    }

    override fun setReadLMTPSendCommand(listener: ReadLMTPSendCommand) {
        mListener?.readLMTPSendCommand = listener
    }

    override fun setReadLMTPFhrDataError(listener: ReadLMTPFhrErrorData) {
        mListener?.fhrErrorData = listener
    }

    override fun setReadLMTPFhrChangeData(listener: ReadLMTPFhrChangeData) {
        mListener?.fhrChangeData = listener
    }

    interface ReadLMTPSendCommand {
        fun sendData(bytesData: ByteArray?)
    }

    interface ReadLMTPFhrChangeData {
        fun getChange(fhrData: FhrData?)
    }

    interface ReadLMTPFhrErrorData {
        fun getErrorData(errorCode: Int)
    }

    inner class LMTPDListener(
        var readLMTPSendCommand: ReadLMTPSendCommand? = null,
        var fhrChangeData: ReadLMTPFhrChangeData? = null,
        var fhrErrorData: ReadLMTPFhrErrorData? = null
    ) :
        LMTPDecoderListener {

        override fun sendCommand(p0: ByteArray?) {
            readLMTPSendCommand?.sendData(p0)
        }

        override fun fhrDataChanged(p0: FhrData?) {
            fhrChangeData?.getChange(p0)
        }

        override fun fhrDataError(p0: Int) {
            fhrErrorData?.getErrorData(p0)
        }
    }
}