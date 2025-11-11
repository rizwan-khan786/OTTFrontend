// import 'package:ott/Services/Notification_services.dart';
// import 'package:workmanager/workmanager.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// /// Background task callback
// @pragma('vm:entry-point')
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     print('🔄 Background task started: $task');
    
//     try {
//       await NotificationService.initialize();
//       await _checkForNewNotifications();
//       print('✅ Background task completed successfully');
//       return Future.value(true);
//     } catch (e) {
//       print('❌ Background task failed: $e');
//       return Future.value(false);
//     }
//   });
// }

// /// Check for new notifications
// Future<void> _checkForNewNotifications() async {
//   try {
//     final prefs = await SharedPreferences.getInstance();
//     final String? token = prefs.getString('auth_token');
//     final String? userId = prefs.getString('user_id');
    
//     if (token == null || userId == null) {
//       print('❌ No token or user ID found');
//       return;
//     }

//     const String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
    
//     print('📡 Fetching notifications from background...');
    
//     final response = await http.get(
//       Uri.parse('$baseUrl/notifications'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     ).timeout(Duration(seconds: 10));

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> responseData = jsonDecode(response.body);
//       final List<dynamic> notifications = responseData['notifications'] ?? [];
      
//       print('📊 Found ${notifications.length} notifications');
      
//       // Show notifications for unread ones
//       for (var notification in notifications) {
//         final String notificationId = notification['_id'] ?? '';
//         final List<dynamic> readBy = notification['readBy'] ?? [];
        
//         // Check if user hasn't read this notification
//         if (!readBy.contains(userId)) {
//           // Check if we already showed this notification
//           bool alreadyShown = await NotificationService.isNotificationShown(notificationId);
          
//           if (!alreadyShown) {
//             final String headline = notification['headline'] ?? 'New Notification';
//             final String message = notification['message'] ?? '';
            
//             await NotificationService.showNotification(
//               id: notificationId.hashCode,
//               title: headline,
//               body: message,
//               payload: notificationId,
//             );
            
//             await NotificationService.saveShownNotificationId(notificationId);
//             print('✅ Showed notification: $headline');
//           }
//         }
//       }
//     } else {
//       print('❌ Failed to fetch notifications: ${response.statusCode}');
//     }
//   } catch (e) {
//     print('❌ Error checking notifications: $e');
//   }
// }

// class BackgroundService {
//   /// Initialize WorkManager
//   static Future<void> initialize() async {
//     await Workmanager().initialize(
//       callbackDispatcher,
//       isInDebugMode: false, // Set to false in production
//     );
//     print('✅ Background Service Initialized');
//   }

//   /// Start periodic background task
//   static Future<void> startBackgroundTask() async {
//     await Workmanager().registerPeriodicTask(
//       'notification_checker',
//       'checkNotifications',
//       frequency: Duration(minutes: 15), // Minimum 15 minutes for Android
//       constraints: Constraints(
//         networkType: NetworkType.connected,
//       ),
//       initialDelay: Duration(seconds: 10),
//       existingWorkPolicy: ExistingPeriodicWorkPolicy.replace,
//     );
//     print('✅ Background task registered');
//   }

//   /// Stop background task
//   static Future<void> stopBackgroundTask() async {
//     await Workmanager().cancelByUniqueName('notification_checker');
//     print('🛑 Background task stopped');
//   }

//   /// Cancel all background tasks
//   static Future<void> cancelAllTasks() async {
//     await Workmanager().cancelAll();
//     print('🛑 All background tasks cancelled');
//   }
// }


// import 'dart:async';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:workmanager/workmanager.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ott/Services/Notification_services.dart';

// @pragma('vm:entry-point')
// void callbackDispatcher() {
//   Workmanager().executeTask((task, inputData) async {
//     print('🔄 Background task started: $task');
    
//     try {
//       // Initialize notifications
//       await NotificationService.initialize();
      
//       // Fetch and show notifications
//       await _checkForNewNotifications();
      
//       print('✅ Background task completed successfully');
//       return Future.value(true);
//     } catch (e, stackTrace) {
//       print('❌ Background task failed: $e');
//       print('📍 Stack trace: $stackTrace');
//       return Future.value(false);
//     }
//   });
// }

// Future<void> _checkForNewNotifications() async {
//   try {
//     final prefs = await SharedPreferences.getInstance();
//     final String? token = prefs.getString('auth_token');
//     final String? userId = prefs.getString('user_id');
    
//     if (token == null || userId == null) {
//       print('❌ No token or user ID found in SharedPreferences');
//       return;
//     }

//     const String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
    
//     print('📡 Fetching notifications from background...');
    
//     final response = await http.get(
//       Uri.parse('$baseUrl/notifications'),
//       headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer $token',
//       },
//     ).timeout(const Duration(seconds: 10), onTimeout: () {
//       print('❌ API request timed out');
//       throw TimeoutException('Request timed out');
//     });

//     print('📊 Response Status: ${response.statusCode}');
//     print('📊 Response Body: ${response.body}');

//     if (response.statusCode == 200) {
//       final Map<String, dynamic> responseData = jsonDecode(response.body);
//       final List<dynamic> notifications = responseData['notifications'] ?? [];
      
//       print('📊 Found ${notifications.length} notifications');
      
//       for (var notification in notifications) {
//         final String notificationId = notification['_id'] ?? '';
//         final List<dynamic> readBy = notification['readBy'] ?? [];
        
//         if (!readBy.contains(userId)) {
//           bool alreadyShown = await NotificationService.isNotificationShown(notificationId);
          
//           if (!alreadyShown) {
//             final String headline = notification['headline'] ?? 'New Notification';
//             final String message = notification['message'] ?? '';
            
//             await NotificationService.showNotification(
//               id: notificationId.hashCode,
//               title: headline,
//               body: message,
//               payload: notificationId,
//             );
            
//             await NotificationService.saveShownNotificationId(notificationId);
//             print('✅ Showed notification: $headline (ID: $notificationId)');
//           } else {
//             print('ℹ️ Notification already shown: $notificationId');
//           }
//         } else {
//           print('ℹ️ Notification already read by user: $notificationId');
//         }
//       }
//     } else {
//       print('❌ Failed to fetch notifications: ${response.statusCode} - ${response.body}');
//     }
//   } catch (e, stackTrace) {
//     print('❌ Error checking notifications: $e');
//     print('📍 Stack trace: $stackTrace');
//   }
// }

// class BackgroundService {
//   static Future<void> initialize() async {
//     await Workmanager().initialize(
//       callbackDispatcher,
//       isInDebugMode: true, // Production mein false kar dena
//     );
//     print('✅ Background Service Initialized');
//   }

//   static Future<void> startBackgroundTask() async {
//     await Workmanager().registerPeriodicTask(
//       'notification_checker',
//       'checkNotifications',
//       frequency: const Duration(minutes: 15),
//       constraints: Constraints(
//         networkType: NetworkType.connected,
//         requiresBatteryNotLow: false,
//         requiresCharging: false,
//       ),
//       initialDelay: const Duration(seconds: 10),
//       existingWorkPolicy: ExistingPeriodicWorkPolicy.replace,
//     );
//     print('✅ Background task registered');
//   }

//   static Future<void> stopBackgroundTask() async {
//     await Workmanager().cancelByUniqueName('notification_checker');
//     print('🛑 Background task stopped');
//   }

//   static Future<void> cancelAllTasks() async {
//     await Workmanager().cancelAll();
//     print('🛑 All background tasks cancelled');
//   }

//   // For manual testing
//   static Future<void> triggerOneOffTask() async {
//     await Workmanager().registerOneOffTask(
//       'notification_checker_test',
//       'checkNotifications',
//       initialDelay: const Duration(seconds: 5),
//       constraints: Constraints(networkType: NetworkType.connected),
//     );
//     print('✅ One-off task triggered for testing');
//   }
// }


import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ott/Services/Notification_services.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print('🔄 Background task started: $task');
    
    try {
      // Initialize notifications
      await NotificationService.initialize();
      
      // Fetch and show notifications
      await _checkForNewNotifications();
      
      // Chain next task after 1 minute for faster polling
      await _scheduleNextTask();
      
      print('✅ Background task completed successfully');
      return Future.value(true);
    } catch (e, stackTrace) {
      print('❌ Background task failed: $e');
      print('📍 Stack trace: $stackTrace');
      
      // Retry after 10 seconds if failed
      await Future.delayed(const Duration(seconds: 10));
      await _scheduleNextTask();
      
      return Future.value(false);
    }
  });
}

Future<void> _checkForNewNotifications() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('auth_token');
    final String? userId = prefs.getString('user_id');
    
    if (token == null || userId == null) {
      print('❌ No token or user ID found in SharedPreferences');
      return;
    }

    const String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
    
    print('📡 Fetching notifications from background...');
    
    final response = await http.get(
      Uri.parse('$baseUrl/notifications'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    ).timeout(const Duration(seconds: 10), onTimeout: () {
      print('❌ API request timed out');
      throw TimeoutException('Request timed out');
    });

    print('📊 Response Status: ${response.statusCode}');
    print('📊 Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final List<dynamic> notifications = responseData['notifications'] ?? [];
      
      print('📊 Found ${notifications.length} notifications');
      
      for (var notification in notifications) {
        final String notificationId = notification['_id'] ?? '';
        final List<dynamic> readBy = notification['readBy'] ?? [];
        
        if (!readBy.contains(userId)) {
          bool alreadyShown = await NotificationService.isNotificationShown(notificationId);
          
          if (!alreadyShown) {
            final String headline = notification['headline'] ?? 'New Notification';
            final String message = notification['message'] ?? '';
            
            await NotificationService.showNotification(
              id: notificationId.hashCode,
              title: headline,
              body: message,
              payload: notificationId,
            );
            
            await NotificationService.saveShownNotificationId(notificationId);
            print('✅ Showed notification: $headline (ID: $notificationId)');
          } else {
            print('ℹ️ Notification already shown: $notificationId');
          }
        } else {
          print('ℹ️ Notification already read by user: $notificationId');
        }
      }
    } else {
      print('❌ Failed to fetch notifications: ${response.statusCode} - ${response.body}');
    }
  } catch (e, stackTrace) {
    print('❌ Error checking notifications: $e');
    print('📍 Stack trace: $stackTrace');
  }
}

// Chain next task after 1 minute for faster polling
Future<void> _scheduleNextTask() async {
  await Workmanager().registerOneOffTask(
    'notification_checker_next',
    'checkNotifications',
    initialDelay: const Duration(minutes: 1), // 1 minute interval for quick polling
    constraints: Constraints(
      networkType: NetworkType.connected,
      requiresBatteryNotLow: false,
      requiresCharging: false,
    ),
  );
  print('⏰ Next task scheduled in 1 minute');
}

class BackgroundService {
  static Future<void> initialize() async {
    await Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: true, // Production mein false kar dena
    );
    print('✅ Background Service Initialized');
  }

  static Future<void> startBackgroundTask() async {
    // Start the first task
    await _scheduleNextTask();
    print('✅ Initial task started with 1-min chaining');
  }

  static Future<void> stopBackgroundTask() async {
    await Workmanager().cancelByUniqueName('notification_checker_next');
    print('🛑 Background task stopped');
  }

  static Future<void> cancelAllTasks() async {
    await Workmanager().cancelAll();
    print('🛑 All background tasks cancelled');
  }

  // For manual testing (optional, uncomment if needed)
  static Future<void> triggerOneOffTask() async {
    await Workmanager().registerOneOffTask(
      'notification_checker_test',
      'checkNotifications',
      initialDelay: const Duration(seconds: 5),
      constraints: Constraints(networkType: NetworkType.connected),
    );
    print('✅ One-off task triggered for testing');
  }
}