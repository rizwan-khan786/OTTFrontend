// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // // import 'package:ott/View/Screen/Auth/signin.dart';
// // // // import 'package:ott/View/Screen/Bottombar.dart';
// // // // import 'package:ott/View/Screen/Homescreen.dart';
// // // // import 'package:ott/View/Screen/Subscribtion.dart';


// // // // void main() {
// // // //   runApp(const MyApp());
// // // // }

// // // // class MyApp extends StatelessWidget {
// // // //   const MyApp({super.key});

// // // //   // This widget is the root of your application.
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return GetMaterialApp(
// // // //       debugShowCheckedModeBanner: false,
// // // //       title: 'Flutter Demo',   
// // // //       home:Signin()
// // // //     );
// // // //   }
// // // // }



// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Auth/signin.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'package:ott/View/Screen/Homescreen.dart';
// // // import 'package:ott/View/Screen/Subscribtion.dart';
// // // import 'package:shared_preferences/shared_preferences.dart';

// // // void main() {
// // //   runApp(const MyApp());
// // // }

// // // class MyApp extends StatelessWidget {
// // //   const MyApp({super.key});

// // //   // This widget is the root of your application.
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return GetMaterialApp(
// // //       debugShowCheckedModeBanner: false,
   
// // //       home: const AuthCheck(),
// // //     );
// // //   }
// // // }

// // // class AuthCheck extends StatefulWidget {
// // //   const AuthCheck({super.key});

// // //   @override
// // //   State<AuthCheck> createState() => _AuthCheckState();
// // // }

// // // class _AuthCheckState extends State<AuthCheck> {
// // //   bool _isLoading = true;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _checkLoginStatus();
// // //   }

// // //   Future<void> _checkLoginStatus() async {
// // //     final prefs = await SharedPreferences.getInstance();
// // //     final String? token = prefs.getString('auth_token');
// // //     if (mounted) {
// // //       setState(() {
// // //         _isLoading = false;
// // //       });
// // //       if (token != null && token.isNotEmpty) {
// // //         Get.offAll(() => const Bottombar());
// // //       } else {
// // //         Get.offAll(() => const Signin());
// // //       }
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.black,
// // //       body: const Center(
// // //         child: CircularProgressIndicator(
// // //           color: Colors.white,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:ott/Services/Background_services.dart';
// // import 'package:ott/Services/Notification_services.dart';
// // import 'package:ott/View/Screen/Auth/Signup.dart';
// // import 'package:ott/View/Screen/Auth/signin.dart';
// // import 'package:ott/View/Screen/Bottombar.dart';

// // import 'package:shared_preferences/shared_preferences.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
  
// //   // Initialize notification service
// //   await NotificationService.initialize();
  
// //   // Initialize background service
// //   await BackgroundService.initialize();
  
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return GetMaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: const AuthCheck(),
// //     );
// //   }
// // }

// // class AuthCheck extends StatefulWidget {
// //   const AuthCheck({super.key});

// //   @override
// //   State<AuthCheck> createState() => _AuthCheckState();
// // }

// // class _AuthCheckState extends State<AuthCheck> {
// //   bool _isLoading = true;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _checkLoginStatus();
// //   }

// //   Future<void> _checkLoginStatus() async {
// //     final prefs = await SharedPreferences.getInstance();
// //     final String? token = prefs.getString('auth_token');
    
// //     if (mounted) {
// //       setState(() {
// //         _isLoading = false;
// //       });
      
// //       if (token != null && token.isNotEmpty) {
// //         // Request notification permission
// //         await NotificationService.requestPermission();
        
// //         // Start background service
// //         await BackgroundService.startBackgroundTask();
        
// //         Get.offAll(() => const Bottombar());
// //       } else {
// //         Get.offAll(() => const Signin());
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.black,
// //       body: const Center(
// //         child: CircularProgressIndicator(
// //           color: Colors.white,
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/Services/Background_services.dart';
// import 'package:ott/Services/Notification_services.dart';
// import 'package:ott/View/Screen/Auth/Signup.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:ott/View/Screen/Bottombar.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:permission_handler/permission_handler.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   // Request notification permission
//   await NotificationService.requestPermission();

//   // Request battery optimization permission
//   await _requestBatteryOptimizationPermission();

//   // Initialize notification service
//   await NotificationService.initialize();

//   // Initialize background service
//   await BackgroundService.initialize();

//   // Start background task (1-min chaining)
//   await BackgroundService.startBackgroundTask();

//   runApp(const MyApp());
// }

// Future<void> _requestBatteryOptimizationPermission() async {
//   final status = await Permission.ignoreBatteryOptimizations.status;
//   if (!status.isGranted) {
//     await Permission.ignoreBatteryOptimizations.request();
//     print('✅ Requested battery optimization permission');
//   } else {
//     print('✅ Battery optimization permission already granted');
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const AuthCheck(),
//     );
//   }
// }

// class AuthCheck extends StatefulWidget {
//   const AuthCheck({super.key});

//   @override
//   State<AuthCheck> createState() => _AuthCheckState();
// }

// class _AuthCheckState extends State<AuthCheck> {
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _checkLoginStatus();
//   }

//   Future<void> _checkLoginStatus() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final String? token = prefs.getString('auth_token');
      
//       if (mounted) {
//         setState(() {
//           _isLoading = false;
//         });
        
//         if (token != null && token.isNotEmpty) {
//           Get.offAll(() => const Bottombar());
//         } else {
//           Get.offAll(() => const Signin());
//         }
//       }
//     } catch (e) {
//       print('❌ Error checking login status: $e');
//       if (mounted) {
//         setState(() {
//           _isLoading = false;
//         });
//         Get.offAll(() => const Signin());
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: const Center(
//         child: CircularProgressIndicator(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ott/Services/Background_services.dart';
import 'package:ott/Services/Notification_services.dart';
import 'package:ott/View/Screen/Auth/Signup.dart';
import 'package:ott/View/Screen/Auth/signin.dart';
import 'package:ott/View/Screen/Bottombar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Secure screen enable karo
  await setupSecureScreen();

  // Request notification permission
  await NotificationService.requestPermission();

  // Request battery optimization permission
  await _requestBatteryOptimizationPermission();

  // Initialize notification service
  await NotificationService.initialize();

  // Initialize background service
  await BackgroundService.initialize();

  // Start background task (1-min chaining)
  await BackgroundService.startBackgroundTask();

  runApp(const MyApp());
}

Future<void> setupSecureScreen() async {
  try {
    const MethodChannel('secure_screen_channel').invokeMethod('enableSecureScreen');
    print('✅ Secure screen setup completed');
  } on PlatformException catch (e) {
    print('⚠️ Secure screen setup: ${e.message}');
  }
}

Future<void> _requestBatteryOptimizationPermission() async {
  final status = await Permission.ignoreBatteryOptimizations.status;
  if (!status.isGranted) {
    await Permission.ignoreBatteryOptimizations.request();
    print('✅ Requested battery optimization permission');
  } else {
    print('✅ Battery optimization permission already granted');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthCheck(),
    );
  }
}

class AuthCheck extends StatefulWidget {
  const AuthCheck({super.key});

  @override
  State<AuthCheck> createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> with WidgetsBindingObserver {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _checkLoginStatus();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // App foreground mein aaye to secure screen enable karo
    if (state == AppLifecycleState.resumed) {
      _enableSecureScreen();
    }
  }

  Future<void> _enableSecureScreen() async {
    try {
      await const MethodChannel('secure_screen_channel').invokeMethod('enableSecureScreen');
    } on PlatformException catch (e) {
      print('⚠️ Error enabling secure screen: ${e.message}');
    }
  }

  Future<void> _checkLoginStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('auth_token');
      
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        
        if (token != null && token.isNotEmpty) {
          Get.offAll(() => const Bottombar());
        } else {
          Get.offAll(() => const Signin());
        }
      }
    } catch (e) {
      print('❌ Error checking login status: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        Get.offAll(() => const Signin());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }
}