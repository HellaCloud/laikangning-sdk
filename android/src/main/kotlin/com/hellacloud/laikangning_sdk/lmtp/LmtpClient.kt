package com.hellacloud.laikangning_sdk.lmtp

interface LmtpClient {
    fun initializeClient()
    fun startWork()
    fun stopWork()
    fun putData(data: ByteArray?)
    fun beginRecordWave(path: String, fileName: String)
    fun finishRecordWaves()
    fun sendTocoReset(value: Int)
    fun sendFM()
    fun sendFhrVolume(value: Int)
    fun deinitialClient()
    fun setReadLMTPSendCommand(listener: ReactiveLmtpClient.ReadLMTPSendCommand)
    fun setReadLMTPFhrDataError(readLMTPFhrErrorData: ReactiveLmtpClient.ReadLMTPFhrErrorData)
    fun setReadLMTPFhrChangeData(readLMTPFhrChangeData: ReactiveLmtpClient.ReadLMTPFhrChangeData)
}