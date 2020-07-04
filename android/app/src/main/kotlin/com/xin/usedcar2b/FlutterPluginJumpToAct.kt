package com.xin.usedcar2b

import android.app.Activity
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry

class FlutterPluginJumpToAct private constructor(private val activity: Activity) : MethodChannel.MethodCallHandler {

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {

        //通过MethodCall可以获取参数和方法名，然后再寻找对应的平台业务，本案例做了2个跳转的业务

        //接收来自flutter的指令oneAct
        if (call.method == "oneAct") {

            result.success("success")
        } else if (call.method == "twoAct") {
            //返回给flutter的参数
            result.success("success")
        } else {
            result.notImplemented()
        }//接收来自flutter的指令twoAct
    }

    companion object {

        var CHANNEL = "com.jzhu.jump/plugin"

        internal var channel: MethodChannel? = null

        fun registerWith(registrar: PluginRegistry.Registrar) {
            channel = MethodChannel(registrar.messenger(), CHANNEL)
            val instance = FlutterPluginJumpToAct(registrar.activity())
            //setMethodCallHandler在此通道上接收方法调用的回调
            channel!!.setMethodCallHandler(instance)
        }
    }

}