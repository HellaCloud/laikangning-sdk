package com.hellacloud.laikangning_sdk.extensions

import com.google.protobuf.ByteString
import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.error400(errorDetail: String = "") {
    return this.error("400", "", errorDetail)
}

fun Byte?.copyByte(): ByteString {
    val data = this ?: return ByteString.EMPTY
    return ByteString.copyFrom(byteArrayOf(data))
}