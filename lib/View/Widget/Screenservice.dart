import 'package:flutter/services.dart';

class SecureScreenService {
  static const platform = MethodChannel('secure_screen_channel');

  // Enable secure screen (block screenshots)
  static Future<void> enableSecureScreen() async {
    try {
      await platform.invokeMethod('enableSecureScreen');
      print('✅ Secure screen enabled - Screenshots blocked');
    } on PlatformException catch (e) {
      print('❌ Failed to enable secure screen: ${e.message}');
    }
  }

  // Disable secure screen (allow screenshots)
  static Future<void> disableSecureScreen() async {
    try {
      await platform.invokeMethod('disableSecureScreen');
      print('🔓 Secure screen disabled - Screenshots allowed');
    } on PlatformException catch (e) {
      print('❌ Failed to disable secure screen: ${e.message}');
    }
  }
}