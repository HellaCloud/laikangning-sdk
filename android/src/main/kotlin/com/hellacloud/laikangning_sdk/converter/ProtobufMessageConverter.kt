package com.hellacloud.laikangning_sdk.converter

import com.hellacloud.laikangning_sdk.extensions.copyByte
import com.luckcome.lmtpdecorder.data.FhrData
import com.hellacloud.laikangning_sdk.model.ProtobufModel as pb

class ProtobufMessageConverter {

    fun convertFhrData(fhrData: FhrData?): pb.LknFhrData {
        val lknFhrData = pb.LknFhrData.newBuilder()
        lknFhrData.type = pb.LknFhrData.StreamType.FHR_DATA
        lknFhrData.data = pb.LknFhrData.FhrData.newBuilder().setFhr1(fhrData?.fhr1 ?: 0)
            .setFhr2(fhrData?.fhr1 ?: 0).setAfm(fhrData?.afm.copyByte())
            .setFhrSignal(fhrData?.fhrSignal.copyByte()).setAfmFlag(fhrData?.afmFlag.copyByte())
            .setDevicePower(fhrData?.devicePower.copyByte()).setDocFlag(fhrData?.docFlag.copyByte())
            .setFmFlag(fhrData?.fmFlag.copyByte()).setIsHaveAfm(fhrData?.isHaveAfm.copyByte())
            .setIsHaveFhr1(fhrData?.isHaveFhr1.copyByte())
            .setIsHaveFhr2(fhrData?.isHaveFhr2.copyByte()).setToco(fhrData?.toco.copyByte())
            .setIsHaveToco(fhrData?.isHaveToco.copyByte()).setTocoFlag(fhrData?.tocoFlag.copyByte())
            .build()
        return lknFhrData.build()
    }

    fun convertLineCommand(bytes: ByteArray?): pb.LknFhrData {
        val lknFhrData = pb.LknFhrData.newBuilder()
        lknFhrData.type = pb.LknFhrData.StreamType.FHR_SEND
        lknFhrData.send = pb.LknFhrData.SendData.parseFrom(bytes)
        return lknFhrData.build()
    }

    fun convertErrorCommand(bytes: Int): pb.LknFhrData {
        val lknFhrData = pb.LknFhrData.newBuilder()
        lknFhrData.type = pb.LknFhrData.StreamType.FHR_ERROR
        lknFhrData.error = pb.LknFhrData.ErrorData.parseFrom(arrayOf(bytes.toByte()).toByteArray())
        return lknFhrData.build()
    }
}