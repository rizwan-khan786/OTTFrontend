package com.codify.ott  // Yahan apka actual package name dalna

import android.os.Bundle
import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "secure_screen_channel"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "enableSecureScreen" -> {
                    enableSecureScreen()
                    result.success("Secure screen enabled")
                }
                else -> result.notImplemented()
            }
        }
        
        // Initially enable secure screen
        enableSecureScreen()
    }

    private fun enableSecureScreen() {
        try {
            // Ye line screenshot aur screen recording block karegi
            window.setFlags(
                WindowManager.LayoutParams.FLAG_SECURE,
                WindowManager.LayoutParams.FLAG_SECURE
            )
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    override fun onResume() {
        super.onResume()
        // Har baar app resume pe secure screen enable karo
        enableSecureScreen()
    }
}