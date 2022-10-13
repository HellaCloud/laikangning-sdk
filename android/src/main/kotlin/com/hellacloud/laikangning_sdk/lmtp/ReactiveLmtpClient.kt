package com.hellacloud.laikangning_sdk.lmtp

import com.luckcome.lmtpdecorder.LMTPDecoder
import com.luckcome.lmtpdecorder.LMTPDecoderListener
import com.luckcome.lmtpdecorder.data.FhrData
import java.io.File

class ReactiveLmtpClient : LmtpClient {

    private var mLmtpDecoder: LMTPDecoder? = null

    private val nullException = NullPointerException("need call initializeClient function")

    override fun initializeClient() {
        mLmtpDecoder = LMTPDecoder()
        val lmtpdListener = LMTPDListener()
        mLmtpDecoder?.setLMTPDecoderListener(lmtpdListener)
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

    inner class LMTPDListener() : LMTPDecoderListener {

        override fun sendCommand(p0: ByteArray?) {
            TODO("Not yet implemented")
        }

        override fun fhrDataChanged(p0: FhrData?) {
            TODO("Not yet implemented")
        }

        override fun fhrDataError(p0: Int) {
            TODO("Not yet implemented")
        }

    }


}