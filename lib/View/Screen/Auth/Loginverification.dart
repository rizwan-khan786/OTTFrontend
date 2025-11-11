// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'package:ott/View/Screen/Bottombar.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Login OTP Verification Response Model
// class LoginOtpVerificationResponse {
//   final bool success;
//   final String message;
//   final String? token;
//   final UserData? user;

//   LoginOtpVerificationResponse({
//     required this.success,
//     required this.message,
//     this.token,
//     this.user,
//   });

//   factory LoginOtpVerificationResponse.fromJson(Map<String, dynamic> json) {
//     return LoginOtpVerificationResponse(
//       success: json['success'] ?? false,
//       message: json['message'] ?? '',
//       token: json['token'],
//       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
//     );
//   }
// }

// // Resend Login OTP Response Model
// class ResendLoginOtpResponse {
//   final bool success;
//   final String message;

//   ResendLoginOtpResponse({
//     required this.success,
//     required this.message,
//   });

//   factory ResendLoginOtpResponse.fromJson(Map<String, dynamic> json) {
//     return ResendLoginOtpResponse(
//       success: json['success'] ?? false,
//       message: json['message'] ?? '',
//     );
//   }
// }

// // User Data Model
// class UserData {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? createdAt;

//   UserData({
//     this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.createdAt,
//   });

//   factory UserData.fromJson(Map<String, dynamic> json) {
//     return UserData(
//       id: json['id']?.toString(),
//       name: json['name']?.toString(),
//       email: json['email']?.toString(),
//       mobile: json['mobile']?.toString(),
//       createdAt: json['createdAt']?.toString(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'email': email,
//       'mobile': mobile,
//       'createdAt': createdAt,
//     };
//   }
// }

// // Login OTP Verification Controller
// class LoginOtpVerificationController extends GetxController {
//   final String mobile;
  
//   LoginOtpVerificationController({required this.mobile});

//   // OTP Controllers for 4 digits
//   final otp1Controller = TextEditingController();
//   final otp2Controller = TextEditingController();
//   final otp3Controller = TextEditingController();
//   final otp4Controller = TextEditingController();

//   // Focus Nodes
//   final otp1Focus = FocusNode();
//   final otp2Focus = FocusNode();
//   final otp3Focus = FocusNode();
//   final otp4Focus = FocusNode();

//   RxBool isLoading = false.obs;
//   RxBool isResending = false.obs;
//   RxInt countdown = 600.obs; // 10 minutes
//   RxBool canResend = false.obs;

//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     startCountdown();
//   }

//   // Start Countdown Timer - 10 minutes
//   void startCountdown() {
//     countdown.value = 600; // 10 minutes in seconds
//     canResend.value = false;
    
//     Future.doWhile(() async {
//       await Future.delayed(const Duration(seconds: 1));
//       if (countdown.value > 0) {
//         countdown.value--;
//         return true;
//       } else {
//         canResend.value = true;
//         return false;
//       }
//     });
//   }

//   // Format time to display as MM:SS
//   String getFormattedTime() {
//     int minutes = countdown.value ~/ 60;
//     int seconds = countdown.value % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
//   }

//   // Save Token to SharedPreferences
//   Future<void> saveToken(String token) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('auth_token', token);
//       print('Token saved successfully: $token');
//     } catch (e) {
//       print('Error saving token: $e');
//     }
//   }

//   // Save User Data to SharedPreferences
//   Future<void> saveUserData(UserData user) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.setString('user_id', user.id ?? '');
//       await prefs.setString('user_name', user.name ?? '');
//       await prefs.setString('user_email', user.email ?? '');
//       await prefs.setString('user_mobile', user.mobile ?? '');
//       print('User data saved successfully');
//     } catch (e) {
//       print('Error saving user data: $e');
//     }
//   }

//   // Show Toast Message
//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       timeInSecForIosWeb: 2,
//       backgroundColor: isError ? Colors.red : Color(0xFF00A8E8),
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   // Get Complete OTP
//   String getOtp() {
//     return otp1Controller.text +
//         otp2Controller.text +
//         otp3Controller.text +
//         otp4Controller.text;
//   }

//   // Verify Login OTP API Call
//   Future<void> verifyOtp() async {
//     String otp = getOtp();

//     // Validation
//     if (otp.length != 4) {
//       showToast('Please enter complete 4-digit OTP', isError: true);
//       return;
//     }

//     // Start Loading
//     isLoading.value = true;

//     try {
//       print('Verifying Login OTP...');
//       print('Mobile: $mobile');
//       print('OTP: $otp');

//       // API Call
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/verify-login-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'mobile': mobile,
//           'otp': otp,
//         }),
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       // Parse Response
//       final responseData = jsonDecode(response.body);
//       final otpResponse = LoginOtpVerificationResponse.fromJson(responseData);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         // Save Token
//         if (otpResponse.token != null) {
//           await saveToken(otpResponse.token!);
//           print('Token saved: ${otpResponse.token}');
//         }

//         // Save User Data
//         if (otpResponse.user != null) {
//           await saveUserData(otpResponse.user!);
//           print('User data saved');
//         }

//         // Show Success Toast
//         showToast(otpResponse.message);

//         print('Navigating to Bottombar...');

//         // Clear OTP fields
//         otp1Controller.clear();
//         otp2Controller.clear();
//         otp3Controller.clear();
//         otp4Controller.clear();

//         // Stop loading
//         isLoading.value = false;

//         // Add a small delay to ensure toast is visible before navigation
//         await Future.delayed(const Duration(milliseconds: 1500));

//         // Navigate to Bottombar - Remove all previous screens
//         Get.offAll(
//           () => const Bottombar(),
//           transition: Transition.rightToLeft,
//           duration: const Duration(milliseconds: 300),
//         );
//       } else {
//         // Handle Error Response
//         showToast(
//             otpResponse.message.isNotEmpty
//                 ? otpResponse.message
//                 : 'OTP verification failed. Please try again.',
//             isError: true);
//       }
//     } catch (e) {
//       print('Error during OTP verification: $e');
//       showToast('An error occurred. Please check your internet connection.',
//           isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   // Resend Login OTP API Call
//   Future<void> resendOtp() async {
//     if (!canResend.value) {
//       showToast('Please wait before resending OTP', isError: true);
//       return;
//     }

//     // Start Loading
//     isResending.value = true;

//     try {
//       print('Resending Login OTP to: $mobile');

//       // API Call
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/request-login-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'mobile': mobile,
//         }),
//       );

//       print('Resend OTP Response Status Code: ${response.statusCode}');
//       print('Resend OTP Response Body: ${response.body}');

//       // Parse Response
//       final responseData = jsonDecode(response.body);
//       final resendResponse = ResendLoginOtpResponse.fromJson(responseData);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         if (resendResponse.success) {
//           showToast(resendResponse.message);
          
//           // Clear OTP fields
//           otp1Controller.clear();
//           otp2Controller.clear();
//           otp3Controller.clear();
//           otp4Controller.clear();
          
//           // Restart countdown (10 minutes)
//           startCountdown();
          
//           // Focus on first field
//           otp1Focus.requestFocus();
//         } else {
//           showToast(resendResponse.message, isError: true);
//         }
//       } else {
//         showToast(
//             resendResponse.message.isNotEmpty
//                 ? resendResponse.message
//                 : 'Failed to resend OTP. Please try again.',
//             isError: true);
//       }
//     } catch (e) {
//       print('Error during resend OTP: $e');
//       showToast('An error occurred. Please check your internet connection.',
//           isError: true);
//     } finally {
//       isResending.value = false;
//     }
//   }

//   @override
//   void onClose() {
//     otp1Controller.dispose();
//     otp2Controller.dispose();
//     otp3Controller.dispose();
//     otp4Controller.dispose();
//     otp1Focus.dispose();
//     otp2Focus.dispose();
//     otp3Focus.dispose();
//     otp4Focus.dispose();
//     super.onClose();
//   }
// }

// class LoginOtpVerification extends StatelessWidget {
//   final String mobile;

//   const LoginOtpVerification({super.key, required this.mobile});

//   @override
//   Widget build(BuildContext context) {
//     final LoginOtpVerificationController controller =
//         Get.put(LoginOtpVerificationController(mobile: mobile));

//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;

//           return SafeArea(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: width * (isLandscape ? 0.1 : 0.06),
//                   vertical: height * (isLandscape ? 0.05 : 0.03),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Back Button
//                     InkWell(
//                       onTap: () => Get.back(),
//                       child: Icon(
//                         Icons.arrow_back,
//                         color: Colors.white,
//                         size: width * (isLandscape ? 0.04 : 0.06),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),

//                     // Icon
//                     Center(
//                       child: Container(
//                         width: width * (isLandscape ? 0.15 : 0.25),
//                         height: width * (isLandscape ? 0.15 : 0.25),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFF00A8E8).withOpacity(0.1),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(
//                           Icons.phone_outlined,
//                           color: const Color(0xFF00A8E8),
//                           size: width * (isLandscape ? 0.08 : 0.12),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

//                     // Title
//                     Center(
//                       child: Text(
//                         'Verify Your Mobile',
//                         style: GoogleFonts.inter(
//                           color: Colors.white,
//                           fontSize: width * (isLandscape ? 0.045 : 0.07),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),

//                     // Description
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(horizontal: width * 0.05),
//                         child: Text(
//                           'We have sent a 4-digit verification code to',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.inter(
//                             color: Colors.grey[400],
//                             fontSize: width * (isLandscape ? 0.025 : 0.038),
//                           ),
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.01 : 0.008)),

//                     // Mobile
//                     Center(
//                       child: Text(
//                         mobile,
//                         style: GoogleFonts.inter(
//                           color: const Color(0xFF00A8E8),
//                           fontSize: width * (isLandscape ? 0.028 : 0.04),
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),

//                     // OTP Input Fields
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         _buildOtpField(
//                           controller.otp1Controller,
//                           controller.otp1Focus,
//                           controller.otp2Focus,
//                           null,
//                           width,
//                           height,
//                           isLandscape,
//                         ),
//                         _buildOtpField(
//                           controller.otp2Controller,
//                           controller.otp2Focus,
//                           controller.otp3Focus,
//                           controller.otp1Focus,
//                           width,
//                           height,
//                           isLandscape,
//                         ),
//                         _buildOtpField(
//                           controller.otp3Controller,
//                           controller.otp3Focus,
//                           controller.otp4Focus,
//                           controller.otp2Focus,
//                           width,
//                           height,
//                           isLandscape,
//                         ),
//                         _buildOtpField(
//                           controller.otp4Controller,
//                           controller.otp4Focus,
//                           null,
//                           controller.otp3Focus,
//                           width,
//                           height,
//                           isLandscape,
//                         ),
//                       ],
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),

//                     // Verify Button
//                     Obx(() => InkWell(
//                           onTap: controller.isLoading.value
//                               ? null
//                               : () => controller.verifyOtp(),
//                           child: Container(
//                             width: double.infinity,
//                             padding: EdgeInsets.symmetric(
//                               vertical: height * (isLandscape ? 0.025 : 0.02),
//                             ),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   const Color(0xFF00A8E8),
//                                   const Color(0xFF0077B6),
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Center(
//                               child: controller.isLoading.value
//                                   ? SizedBox(
//                                       width: width * (isLandscape ? 0.03 : 0.05),
//                                       height:
//                                           width * (isLandscape ? 0.03 : 0.05),
//                                       child: const CircularProgressIndicator(
//                                         color: Colors.white,
//                                         strokeWidth: 2,
//                                       ),
//                                     )
//                                   : Text(
//                                       'Verify OTP',
//                                       style: GoogleFonts.inter(
//                                         color: Colors.white,
//                                         fontSize:
//                                             width * (isLandscape ? 0.03 : 0.045),
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                             ),
//                           ),
//                         )),

//                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

//                     // Resend OTP Section
//                     Center(
//                       child: Obx(() {
//                         if (controller.canResend.value) {
//                           return Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Didn\'t receive code? ',
//                                 style: GoogleFonts.inter(
//                                   color: Colors.grey[400],
//                                   fontSize:
//                                       width * (isLandscape ? 0.025 : 0.035),
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: controller.isResending.value
//                                     ? null
//                                     : () => controller.resendOtp(),
//                                 child: controller.isResending.value
//                                     ? SizedBox(
//                                         width: width *
//                                             (isLandscape ? 0.025 : 0.04),
//                                         height: width *
//                                             (isLandscape ? 0.025 : 0.04),
//                                         child:
//                                             const CircularProgressIndicator(
//                                           color: Color(0xFF00A8E8),
//                                           strokeWidth: 2,
//                                         ),
//                                       )
//                                     : Text(
//                                         'Resend',
//                                         style: GoogleFonts.inter(
//                                           color: const Color(0xFF00A8E8),
//                                           fontSize: width *
//                                               (isLandscape ? 0.025 : 0.035),
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                               ),
//                             ],
//                           );
//                         } else {
//                           return Text(
//                             'Resend OTP in ${controller.getFormattedTime()}',
//                             style: GoogleFonts.inter(
//                               color: Colors.grey[500],
//                               fontSize: width * (isLandscape ? 0.025 : 0.035),
//                             ),
//                           );
//                         }
//                       }),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildOtpField(
//     TextEditingController controller,
//     FocusNode currentFocus,
//     FocusNode? nextFocus,
//     FocusNode? previousFocus,
//     double width,
//     double height,
//     bool isLandscape,
//   ) {
//     return Container(
//       width: width * (isLandscape ? 0.08 : 0.13),
//       height: width * (isLandscape ? 0.1 : 0.15),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1A1A1A),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Colors.grey[800]!,
//           width: 1.5,
//         ),
//       ),
//       child: TextField(
//         controller: controller,
//         focusNode: currentFocus,
//         textAlign: TextAlign.center,
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         style: GoogleFonts.inter(
//           color: Colors.white,
//           fontSize: width * (isLandscape ? 0.035 : 0.055),
//           fontWeight: FontWeight.bold,
//         ),
//         inputFormatters: [
//           FilteringTextInputFormatter.digitsOnly,
//         ],
//         decoration: const InputDecoration(
//           counterText: '',
//           border: InputBorder.none,
//         ),
//         onChanged: (value) {
//           if (value.length == 1 && nextFocus != null) {
//             nextFocus.requestFocus();
//           } else if (value.isEmpty && previousFocus != null) {
//             previousFocus.requestFocus();
//           }
//         },
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ott/View/Screen/Bottombar.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Login OTP Verification Response Model
class LoginOtpVerificationResponse {
  final bool success;
  final String message;
  final String? token;
  final UserData? user;

  LoginOtpVerificationResponse({
    required this.success,
    required this.message,
    this.token,
    this.user,
  });

  factory LoginOtpVerificationResponse.fromJson(Map<String, dynamic> json) {
    return LoginOtpVerificationResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      token: json['token'],
      user: json['user'] != null ? UserData.fromJson(json['user']) : null,
    );
  }
}

// Resend Login OTP Response Model
class ResendLoginOtpResponse {
  final bool success;
  final String message;

  ResendLoginOtpResponse({
    required this.success,
    required this.message,
  });

  factory ResendLoginOtpResponse.fromJson(Map<String, dynamic> json) {
    return ResendLoginOtpResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}

// User Data Model
class UserData {
  final String? id;
  final String? name;
  final String? email;
  final String? mobile;
  final String? createdAt;

  UserData({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.createdAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id']?.toString(),
      name: json['name']?.toString(),
      email: json['email']?.toString(),
      mobile: json['mobile']?.toString(),
      createdAt: json['createdAt']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'mobile': mobile,
      'createdAt': createdAt,
    };
  }
}

// Login OTP Verification Controller
class LoginOtpVerificationController extends GetxController {
  final String mobile;
  
  LoginOtpVerificationController({required this.mobile});

  // OTP Controllers for 4 digits
  final otp1Controller = TextEditingController();
  final otp2Controller = TextEditingController();
  final otp3Controller = TextEditingController();
  final otp4Controller = TextEditingController();

  // Focus Nodes
  final otp1Focus = FocusNode();
  final otp2Focus = FocusNode();
  final otp3Focus = FocusNode();
  final otp4Focus = FocusNode();

  RxBool isLoading = false.obs;
  RxBool isResending = false.obs;
  RxInt countdown = 600.obs; // 10 minutes
  RxBool canResend = false.obs;

  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  @override
  void onInit() {
    super.onInit();
    startCountdown();
  }

  // Start Countdown Timer - 10 minutes
  void startCountdown() {
    countdown.value = 600; // 10 minutes in seconds
    canResend.value = false;
    
    Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      if (countdown.value > 0) {
        countdown.value--;
        return true;
      } else {
        canResend.value = true;
        return false;
      }
    });
  }

  // Format time to display as MM:SS
  String getFormattedTime() {
    int minutes = countdown.value ~/ 60;
    int seconds = countdown.value % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  // Save Token to SharedPreferences
  Future<void> saveToken(String token) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('auth_token', token);
      print('Token saved successfully: $token');
    } catch (e) {
      print('Error saving token: $e');
    }
  }

  // Save User Data to SharedPreferences
  Future<void> saveUserData(UserData user) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('user_id', user.id ?? '');
      await prefs.setString('user_name', user.name ?? '');
      await prefs.setString('user_email', user.email ?? '');
      await prefs.setString('user_mobile', user.mobile ?? '');
      print('User data saved successfully');
    } catch (e) {
      print('Error saving user data: $e');
    }
  }

  // Show Toast Message
  void showToast(String message, {bool isError = false}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: isError ? Colors.red : Color(0xFF00A8E8),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Get Complete OTP
  String getOtp() {
    return otp1Controller.text +
        otp2Controller.text +
        otp3Controller.text +
        otp4Controller.text;
  }

  // Verify Login OTP API Call
  Future<void> verifyOtp() async {
    String otp = getOtp();

    // Validation
    if (otp.length != 4) {
      showToast('Please enter complete 4-digit OTP', isError: true);
      return;
    }

    // Start Loading
    isLoading.value = true;

    try {
      print('Verifying Login OTP...');
      print('Mobile: $mobile');
      print('OTP: $otp');

      // API Call
      final response = await http.post(
        Uri.parse('$baseUrl/auth/verify-login-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'mobile': mobile,
          'otp': otp,
        }),
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      // Parse Response
      final responseData = jsonDecode(response.body);
      final otpResponse = LoginOtpVerificationResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Save Token
        if (otpResponse.token != null) {
          await saveToken(otpResponse.token!);
          print('Token saved: ${otpResponse.token}');
        }

        // Save User Data
        if (otpResponse.user != null) {
          await saveUserData(otpResponse.user!);
          print('User data saved');
        }

        // Show Success Toast
        showToast(otpResponse.message);

        print('Navigating to Bottombar...');

        // Clear OTP fields
        otp1Controller.clear();
        otp2Controller.clear();
        otp3Controller.clear();
        otp4Controller.clear();

        // Stop loading
        isLoading.value = false;

        // Add a small delay to ensure toast is visible before navigation
        await Future.delayed(const Duration(milliseconds: 1500));

        // Navigate to Bottombar - Remove all previous screens
        Get.offAll(
          () => const Bottombar(),
          transition: Transition.rightToLeft,
          duration: const Duration(milliseconds: 300),
        );
      } else {
        // Handle Error Response
        showToast(
            otpResponse.message.isNotEmpty
                ? otpResponse.message
                : 'OTP verification failed. Please try again.',
            isError: true);
      }
    } catch (e) {
      print('Error during OTP verification: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  // Resend Login OTP API Call
  Future<void> resendOtp() async {
    if (!canResend.value) {
      showToast('Please wait before resending OTP', isError: true);
      return;
    }

    // Start Loading
    isResending.value = true;

    try {
      print('Resending Login OTP to: $mobile');

      // API Call
      final response = await http.post(
        Uri.parse('$baseUrl/auth/request-login-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'mobile': mobile,
        }),
      );

      print('Resend OTP Response Status Code: ${response.statusCode}');
      print('Resend OTP Response Body: ${response.body}');

      // Parse Response
      final responseData = jsonDecode(response.body);
      final resendResponse = ResendLoginOtpResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (resendResponse.success) {
          showToast(resendResponse.message);
          
          // Clear OTP fields
          otp1Controller.clear();
          otp2Controller.clear();
          otp3Controller.clear();
          otp4Controller.clear();
          
          // Restart countdown (10 minutes)
          startCountdown();
          
          // Focus on first field
          otp1Focus.requestFocus();
        } else {
          showToast(resendResponse.message, isError: true);
        }
      } else {
        showToast(
            resendResponse.message.isNotEmpty
                ? resendResponse.message
                : 'Failed to resend OTP. Please try again.',
            isError: true);
      }
    } catch (e) {
      print('Error during resend OTP: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isResending.value = false;
    }
  }

  @override
  void onClose() {
    otp1Controller.dispose();
    otp2Controller.dispose();
    otp3Controller.dispose();
    otp4Controller.dispose();
    otp1Focus.dispose();
    otp2Focus.dispose();
    otp3Focus.dispose();
    otp4Focus.dispose();
    super.onClose();
  }
}

class LoginOtpVerification extends StatelessWidget {
  final String mobile;

  const LoginOtpVerification({super.key, required this.mobile});

  @override
  Widget build(BuildContext context) {
    final LoginOtpVerificationController controller =
        Get.put(LoginOtpVerificationController(mobile: mobile));

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: OrientationBuilder(
        builder: (context, orientation) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;
          bool isLandscape = orientation == Orientation.landscape;

          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * (isLandscape ? 0.1 : 0.06),
                  vertical: height * (isLandscape ? 0.05 : 0.03),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Back Button
                    InkWell(
                      onTap: () => Get.back(),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: width * (isLandscape ? 0.04 : 0.06),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),

                    // Icon
                    Center(
                      child: Container(
                        width: width * (isLandscape ? 0.15 : 0.25),
                        height: width * (isLandscape ? 0.15 : 0.25),
                        decoration: BoxDecoration(
                          color: const Color(0xFF00A8E8).withOpacity(0.1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone_outlined,
                          color: const Color(0xFF00A8E8),
                          size: width * (isLandscape ? 0.08 : 0.12),
                        ),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

                    // Title
                    Center(
                      child: Text(
                        'Verify Your Mobile',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: width * (isLandscape ? 0.045 : 0.07),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),

                    // Description
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Text(
                          'We have sent a 4-digit verification code to',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.grey[400],
                            fontSize: width * (isLandscape ? 0.025 : 0.038),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.01 : 0.008)),

                    // Mobile
                    Center(
                      child: Text(
                        mobile,
                        style: GoogleFonts.inter(
                          color: const Color(0xFF00A8E8),
                          fontSize: width * (isLandscape ? 0.028 : 0.04),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),

                    // OTP Input Fields
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildOtpField(
                          controller.otp1Controller,
                          controller.otp1Focus,
                          controller.otp2Focus,
                          null,
                          width,
                          height,
                          isLandscape,
                        ),
                        _buildOtpField(
                          controller.otp2Controller,
                          controller.otp2Focus,
                          controller.otp3Focus,
                          controller.otp1Focus,
                          width,
                          height,
                          isLandscape,
                        ),
                        _buildOtpField(
                          controller.otp3Controller,
                          controller.otp3Focus,
                          controller.otp4Focus,
                          controller.otp2Focus,
                          width,
                          height,
                          isLandscape,
                        ),
                        _buildOtpField(
                          controller.otp4Controller,
                          controller.otp4Focus,
                          null,
                          controller.otp3Focus,
                          width,
                          height,
                          isLandscape,
                        ),
                      ],
                    ),

                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),

                    // Verify Button
                    Obx(() => InkWell(
                          onTap: controller.isLoading.value
                              ? null
                              : () => controller.verifyOtp(),
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              vertical: height * (isLandscape ? 0.025 : 0.02),
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF00A8E8),
                                  const Color(0xFF0077B6),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: controller.isLoading.value
                                  ? SizedBox(
                                      width: width * (isLandscape ? 0.03 : 0.05),
                                      height:
                                          width * (isLandscape ? 0.03 : 0.05),
                                      child: const CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : Text(
                                      'Verify & Sign In',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize:
                                            width * (isLandscape ? 0.03 : 0.045),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        )),

                    SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

                    // Resend OTP Section
                    Center(
                      child: Obx(() {
                        if (controller.canResend.value) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Didn\'t receive code? ',
                                style: GoogleFonts.inter(
                                  color: Colors.grey[400],
                                  fontSize:
                                      width * (isLandscape ? 0.025 : 0.035),
                                ),
                              ),
                              InkWell(
                                onTap: controller.isResending.value
                                    ? null
                                    : () => controller.resendOtp(),
                                child: controller.isResending.value
                                    ? SizedBox(
                                        width: width *
                                            (isLandscape ? 0.025 : 0.04),
                                        height: width *
                                            (isLandscape ? 0.025 : 0.04),
                                        child:
                                            const CircularProgressIndicator(
                                          color: Color(0xFF00A8E8),
                                          strokeWidth: 2,
                                        ),
                                      )
                                    : Text(
                                        'Resend',
                                        style: GoogleFonts.inter(
                                          color: const Color(0xFF00A8E8),
                                          fontSize: width *
                                              (isLandscape ? 0.025 : 0.035),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ],
                          );
                        } else {
                          return Text(
                            'Resend OTP in ${controller.getFormattedTime()}',
                            style: GoogleFonts.inter(
                              color: Colors.grey[500],
                              fontSize: width * (isLandscape ? 0.025 : 0.035),
                            ),
                          );
                        }
                      }),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildOtpField(
    TextEditingController controller,
    FocusNode currentFocus,
    FocusNode? nextFocus,
    FocusNode? previousFocus,
    double width,
    double height,
    bool isLandscape,
  ) {
    return Container(
      width: width * (isLandscape ? 0.08 : 0.13),
      height: width * (isLandscape ? 0.1 : 0.15),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey[800]!,
          width: 1.5,
        ),
      ),
      child: TextField(
        controller: controller,
        focusNode: currentFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontSize: width * (isLandscape ? 0.035 : 0.055),
          fontWeight: FontWeight.bold,
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: const InputDecoration(
          counterText: '',
          border: InputBorder.none,
        ),
        onChanged: (value) {
          if (value.length == 1 && nextFocus != null) {
            nextFocus.requestFocus();
          } else if (value.isEmpty && previousFocus != null) {
            previousFocus.requestFocus();
          }
        },
      ),
    );
  }
}