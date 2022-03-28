package com.nativemodulesdemo

import android.os.Build
import com.facebook.react.bridge.Callback
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.bridge.ReactContextBaseJavaModule
import com.facebook.react.bridge.ReactMethod

class PogChamp(context: ReactApplicationContext): ReactContextBaseJavaModule(context) {
    override fun getName(): String {
        return "PogChamp"
    }

    override fun getConstants(): Map<String, Any>? {
        // this method works automatically, but only with static data
        val constants: MutableMap<String, Any> = HashMap()
        constants["deviceName"] = Build.MODEL
        return constants
    }

    // any method you want to call in JS must be marked with @ReactMethod
    @ReactMethod
    fun pogMethod() {
        print("Perhaps the archives are incomplete")
    }

    @ReactMethod
    fun getPog(callback: Callback) {
        callback.invoke("I don't like sand, it's course and rough and irritating, and it gets everywhere, just like native modules.")
    }
}