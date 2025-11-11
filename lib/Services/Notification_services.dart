// import 'dart:ui';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class NotificationService {
//   static final FlutterLocalNotificationsPlugin _notifications =
//       FlutterLocalNotificationsPlugin();

//   static bool _isInitialized = false;

//   /// Initialize notification service
//   static Future<void> initialize() async {
//     if (_isInitialized) return;

//     // Android initialization settings
//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings('@mipmap/launcher_icon');

//     // iOS initialization settings
//     const DarwinInitializationSettings iosSettings =
//         DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//     );

//     const InitializationSettings initSettings = InitializationSettings(
//       android: androidSettings,
//       iOS: iosSettings,
//     );

//     await _notifications.initialize(
//       initSettings,
//       onDidReceiveNotificationResponse: _onNotificationTapped,
//     );

//     _isInitialized = true;
//     print('✅ Notification Service Initialized');
//   }

//   /// Handle notification tap
//   static void _onNotificationTapped(NotificationResponse response) {
//     print('🔔 Notification tapped: ${response.payload}');
//     // Navigate to notification screen if needed
//   }

//   /// Request notification permission
//   static Future<bool> requestPermission() async {
//     if (await Permission.notification.isGranted) {
//       print('✅ Notification permission already granted');
//       return true;
//     }

//     final status = await Permission.notification.request();
    
//     if (status.isGranted) {
//       print('✅ Notification permission granted');
//       return true;
//     } else if (status.isDenied) {
//       print('❌ Notification permission denied');
//       return false;
//     } else if (status.isPermanentlyDenied) {
//       print('⚠️ Notification permission permanently denied');
//       openAppSettings();
//       return false;
//     }

//     return false;
//   }

//   /// Show notification
//   static Future<void> showNotification({
//     required int id,
//     required String title,
//     required String body,
//     String? payload,
//   }) async {
//     if (!_isInitialized) {
//       await initialize();
//     }

//     const AndroidNotificationDetails androidDetails =
//         AndroidNotificationDetails(
//       'sahyadri_ott_notifications',
//       'Sahyadri OTT Notifications',
//       channelDescription: 'Notifications from Sahyadri OTT app',
//       importance: Importance.max,
//       priority: Priority.high,
//       showWhen: true,
//       enableVibration: true,
//       playSound: true,
//       icon: '@mipmap/launcher_icon',
//       color: Color(0xFF2196F3),
//       largeIcon: DrawableResourceAndroidBitmap('@mipmap/launcher_icon'),
//       styleInformation: BigTextStyleInformation(''),
//       ticker: 'New Notification',
//     );

//     const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
//       presentAlert: true,
//       presentBadge: true,
//       presentSound: true,
//     );

//     const NotificationDetails notificationDetails = NotificationDetails(
//       android: androidDetails,
//       iOS: iosDetails,
//     );

//     await _notifications.show(
//       id,
//       title,
//       body,
//       notificationDetails,
//       payload: payload,
//     );

//     print('✅ Notification shown: $title');
//   }

//   /// Save shown notification ID
//   static Future<void> saveShownNotificationId(String notificationId) async {
//     final prefs = await SharedPreferences.getInstance();
//     List<String> shownIds = prefs.getStringList('shown_notification_ids') ?? [];
//     if (!shownIds.contains(notificationId)) {
//       shownIds.add(notificationId);
//       await prefs.setStringList('shown_notification_ids', shownIds);
//     }
//   }

//   /// Check if notification already shown
//   static Future<bool> isNotificationShown(String notificationId) async {
//     final prefs = await SharedPreferences.getInstance();
//     List<String> shownIds = prefs.getStringList('shown_notification_ids') ?? [];
//     return shownIds.contains(notificationId);
//   }

//   /// Cancel a notification
//   static Future<void> cancelNotification(int id) async {
//     await _notifications.cancel(id);
//   }

//   /// Cancel all notifications
//   static Future<void> cancelAllNotifications() async {
//     await _notifications.cancelAll();
//   }
// }


import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();

  static bool _isInitialized = false;

  static Future<void> initialize() async {
    if (_isInitialized) {
      print('ℹ️ Notification Service already initialized');
      return;
    }

    // Android initialization settings
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/launcher_icon');

    // iOS initialization settings
    const DarwinInitializationSettings iosSettings =
        DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    const InitializationSettings initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );

    _isInitialized = true;
    print('✅ Notification Service Initialized');
  }

  static void _onNotificationTapped(NotificationResponse response) {
    print('🔔 Notification tapped: ${response.payload}');
    // Navigate to notification screen if needed
    if (response.payload != null) {
      Get.toNamed('/notifications'); // Adjust route as per your app
    }
  }

  static Future<bool> requestPermission() async {
    if (await Permission.notification.isGranted) {
      print('✅ Notification permission already granted');
      return true;
    }

    final status = await Permission.notification.request();
    
    if (status.isGranted) {
      print('✅ Notification permission granted');
      return true;
    } else if (status.isDenied) {
      print('❌ Notification permission denied');
      Get.snackbar(
        'Permission Required',
        'Please allow notifications to receive updates',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return false;
    } else if (status.isPermanentlyDenied) {
      print('⚠️ Notification permission permanently denied');
      Get.snackbar(
        'Permission Required',
        'Please enable notifications in app settings',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      await openAppSettings();
      return false;
    }

    return false;
  }

  static Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    if (!_isInitialized) {
      await initialize();
    }

    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
      'sahyadri_ott_notifications',
      'Sahyadri OTT Notifications',
      channelDescription: 'Notifications from Sahyadri OTT app',
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
      enableVibration: true,
      playSound: true,
      icon: '@mipmap/launcher_icon',
      color: Color(0xFF2196F3),
      largeIcon: DrawableResourceAndroidBitmap('@mipmap/launcher_icon'),
      styleInformation: BigTextStyleInformation(''),
      ticker: 'New Notification',
    );

    const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    const NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notifications.show(
      id,
      title,
      body,
      notificationDetails,
      payload: payload,
    );

    print('✅ Notification shown: $title (ID: $id, Payload: $payload)');
  }

  static Future<void> saveShownNotificationId(String notificationId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> shownIds = prefs.getStringList('shown_notification_ids') ?? [];
    if (!shownIds.contains(notificationId)) {
      shownIds.add(notificationId);
      await prefs.setStringList('shown_notification_ids', shownIds);
      print('✅ Saved shown notification ID: $notificationId');
    }
  }

  static Future<bool> isNotificationShown(String notificationId) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> shownIds = prefs.getStringList('shown_notification_ids') ?? [];
    bool isShown = shownIds.contains(notificationId);
    print('ℹ️ Notification $notificationId shown status: $isShown');
    return isShown;
  }

  static Future<void> cancelNotification(int id) async {
    await _notifications.cancel(id);
    print('🛑 Notification cancelled: $id');
  }

  static Future<void> cancelAllNotifications() async {
    await _notifications.cancelAll();
    print('🛑 All notifications cancelled');
  }
}