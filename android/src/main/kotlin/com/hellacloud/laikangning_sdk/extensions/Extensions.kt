package com.hellacloud.laikangning_sdk.extensions

import io.flutter.plugin.common.MethodChannel

fun MethodChannel.Result.error400(errorDetail: String = ""){
    return this.error("400", "", errorDetail)
}