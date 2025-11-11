// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:google_fonts/google_fonts.dart';

// // // // // GetX Controller
// // // // class SigninController extends GetxController {
// // // //   final emailController = TextEditingController();
// // // //   final passwordController = TextEditingController();
  
// // // //   RxBool isPasswordVisible = false.obs;
// // // //   RxBool keepMeSignedIn = false.obs;
// // // //   RxBool isLoading = false.obs;
  
// // // //   void togglePasswordVisibility() {
// // // //     isPasswordVisible.value = !isPasswordVisible.value;
// // // //   }
  
// // // //   void toggleKeepMeSignedIn(bool? value) {
// // // //     if (value != null) {
// // // //       keepMeSignedIn.value = value;
// // // //     }
// // // //   }
  
// // // //   void signin() {
// // // //     // Validation
// // // //     if (emailController.text.isEmpty) {
// // // //       Get.snackbar(
// // // //         'Error',
// // // //         'Please enter your email',
// // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // //         colorText: Colors.white,
// // // //         titleText: Text(
// // // //           'Error',
// // // //           style: GoogleFonts.inter(
// // // //             color: Colors.white,
// // // //             fontWeight: FontWeight.bold,
// // // //           ),
// // // //         ),
// // // //         messageText: Text(
// // // //           'Please enter your email',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //       return;
// // // //     }
    
// // // //     if (passwordController.text.isEmpty) {
// // // //       Get.snackbar(
// // // //         'Error',
// // // //         'Please enter your password',
// // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // //         colorText: Colors.white,
// // // //         titleText: Text(
// // // //           'Error',
// // // //           style: GoogleFonts.inter(
// // // //             color: Colors.white,
// // // //             fontWeight: FontWeight.bold,
// // // //           ),
// // // //         ),
// // // //         messageText: Text(
// // // //           'Please enter your password',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //       return;
// // // //     }
    
// // // //     // API integration will be done here later
// // // //     isLoading.value = true;
    
// // // //     // Simulate API call
// // // //     Future.delayed(const Duration(seconds: 2), () {
// // // //       isLoading.value = false;
// // // //       Get.snackbar(
// // // //         'Success',
// // // //         'Signed in successfully!',
// // // //         backgroundColor: Colors.green.withOpacity(0.8),
// // // //         colorText: Colors.white,
// // // //         titleText: Text(
// // // //           'Success',
// // // //           style: GoogleFonts.inter(
// // // //             color: Colors.white,
// // // //             fontWeight: FontWeight.bold,
// // // //           ),
// // // //         ),
// // // //         messageText: Text(
// // // //           'Signed in successfully!',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //     });
// // // //   }
  
// // // //   @override
// // // //   void onClose() {
// // // //     emailController.dispose();
// // // //     passwordController.dispose();
// // // //     super.onClose();
// // // //   }
// // // // }

// // // // class Signin extends StatelessWidget {
// // // //   const Signin({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final SigninController controller = Get.put(SigninController());
    
// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: OrientationBuilder(
// // // //         builder: (context, orientation) {
// // // //           double height = MediaQuery.of(context).size.height;
// // // //           double width = MediaQuery.of(context).size.width;
// // // //           bool isLandscape = orientation == Orientation.landscape;
          
// // // //           return SafeArea(
// // // //             child: SingleChildScrollView(
// // // //               child: Padding(
// // // //                 padding: EdgeInsets.symmetric(
// // // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // // //                 ),
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     // Back Button
// // // //                     InkWell(
// // // //                       onTap: () => Get.back(),
// // // //                       child: Icon(
// // // //                         Icons.arrow_back,
// // // //                         color: Colors.white,
// // // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // //                     // Prime Logo
// // // //                     // Center(
// // // //                     //   child: Image.asset(
// // // //                     //     'assets/prime_logo.png',
// // // //                     //     width: width * (isLandscape ? 0.2 : 0.35),
// // // //                     //     height: height * (isLandscape ? 0.08 : 0.06),
// // // //                     //     errorBuilder: (context, error, stackTrace) {
// // // //                     //       return Text(
// // // //                     //         'prime video',
// // // //                     //         style: GoogleFonts.inter(
// // // //                     //           color: Colors.white,
// // // //                     //           fontSize: width * (isLandscape ? 0.04 : 0.06),
// // // //                     //           fontWeight: FontWeight.bold,
// // // //                     //         ),
// // // //                     //       );
// // // //                     //     },
// // // //                     //   ),
// // // //                     // ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                    
// // // //                     // Title
// // // //                     Text(
// // // //                       'Welcome Back',
// // // //                       style: GoogleFonts.inter(
// // // //                         color: Colors.white,
// // // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                    
// // // //                     Text(
// // // //                       'Sign in to continue watching',
// // // //                       style: GoogleFonts.inter(
// // // //                         color: Colors.grey[400],
// // // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // //                     // Email Field
// // // //                     _buildTextField(
// // // //                       controller: controller.emailController,
// // // //                       label: 'Email',
// // // //                       hint: 'Enter your email',
// // // //                       icon: Icons.email_outlined,
// // // //                       keyboardType: TextInputType.emailAddress,
// // // //                       width: width,
// // // //                       height: height,
// // // //                       isLandscape: isLandscape,
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
// // // //                     // Password Field
// // // //                     Obx(() => _buildTextField(
// // // //                       controller: controller.passwordController,
// // // //                       label: 'Password',
// // // //                       hint: 'Enter your password',
// // // //                       icon: Icons.lock_outline,
// // // //                       isPassword: true,
// // // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // // //                       width: width,
// // // //                       height: height,
// // // //                       isLandscape: isLandscape,
// // // //                     )),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                    
// // // //                     // Keep me signed in & Forgot Password
// // // //                     Row(
// // // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                       children: [
// // // //                         // Keep me signed in checkbox
// // // //                         Obx(() => Row(
// // // //                           children: [
// // // //                             SizedBox(
// // // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // // //                               child: Checkbox(
// // // //                                 value: controller.keepMeSignedIn.value,
// // // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // // //                                 activeColor: const Color(0xFF00A8E8),
// // // //                                 checkColor: Colors.white,
// // // //                                 side: BorderSide(
// // // //                                   color: Colors.grey[600]!,
// // // //                                   width: 1.5,
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // // //                             Text(
// // // //                               'Keep me signed in',
// // // //                               style: GoogleFonts.inter(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // //                               ),
// // // //                             ),
// // // //                           ],
// // // //                         )),
                        
// // // //                         // Forgot Password
// // // //                         InkWell(
// // // //                           onTap: () {
// // // //                             // Navigate to forgot password
// // // //                           },
// // // //                           child: Text(
// // // //                             'Forgot Password?',
// // // //                             style: GoogleFonts.inter(
// // // //                               color: const Color(0xFF00A8E8),
// // // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // //                               fontWeight: FontWeight.w500,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // //                     // Sign In Button
// // // //                     Obx(() => InkWell(
// // // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // // //                       child: Container(
// // // //                         width: double.infinity,
// // // //                         padding: EdgeInsets.symmetric(
// // // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // // //                         ),
// // // //                         decoration: BoxDecoration(
// // // //                           gradient: LinearGradient(
// // // //                             colors: [
// // // //                               const Color(0xFF00A8E8),
// // // //                               const Color(0xFF0077B6),
// // // //                             ],
// // // //                           ),
// // // //                           borderRadius: BorderRadius.circular(8),
// // // //                         ),
// // // //                         child: Center(
// // // //                           child: controller.isLoading.value
// // // //                               ? SizedBox(
// // // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   child: const CircularProgressIndicator(
// // // //                                     color: Colors.white,
// // // //                                     strokeWidth: 2,
// // // //                                   ),
// // // //                                 )
// // // //                               : Text(
// // // //                                   'Sign In',
// // // //                                   style: GoogleFonts.inter(
// // // //                                     color: Colors.white,
// // // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // //                                     fontWeight: FontWeight.bold,
// // // //                                   ),
// // // //                                 ),
// // // //                         ),
// // // //                       ),
// // // //                     )),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                    
// // // //                     // // Divider
// // // //                     // Row(
// // // //                     //   children: [
// // // //                     //     Expanded(
// // // //                     //       child: Divider(
// // // //                     //         color: Colors.grey[700],
// // // //                     //         thickness: 1,
// // // //                     //       ),
// // // //                     //     ),
// // // //                     //     Padding(
// // // //                     //       padding: EdgeInsets.symmetric(horizontal: width * 0.03),
// // // //                     //       child: Text(
// // // //                     //         'OR',
// // // //                     //         style: GoogleFonts.inter(
// // // //                     //           color: Colors.grey[500],
// // // //                     //           fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // //                     //         ),
// // // //                     //       ),
// // // //                     //     ),
// // // //                     //     Expanded(
// // // //                     //       child: Divider(
// // // //                     //         color: Colors.grey[700],
// // // //                     //         thickness: 1,
// // // //                     //       ),
// // // //                     //     ),
// // // //                     //   ],
// // // //                     // ),
                    
// // // //                     // SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                    
// // // //                     // // Social Sign In Buttons
// // // //                     // _buildSocialButton(
// // // //                     //   'Continue with Google',
// // // //                     //   Icons.g_mobiledata,
// // // //                     //   width,
// // // //                     //   height,
// // // //                     //   isLandscape,
// // // //                     // ),
                    
// // // //                     // SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                    
// // // //                     // _buildSocialButton(
// // // //                     //   'Continue with Apple',
// // // //                     //   Icons.apple,
// // // //                     //   width,
// // // //                     //   height,
// // // //                     //   isLandscape,
// // // //                     // ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // //                     // Don't have account
// // // //                     Center(
// // // //                       child: Row(
// // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // //                         children: [
// // // //                           Text(
// // // //                             'Don\'t have an account? ',
// // // //                             style: GoogleFonts.inter(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // //                             ),
// // // //                           ),
// // // //                           InkWell(
// // // //                             onTap: () {
// // // //                               // Navigate to Sign Up
// // // //                             },
// // // //                             child: Text(
// // // //                               'Sign Up',
// // // //                               style: GoogleFonts.inter(
// // // //                                 color: const Color(0xFF00A8E8),
// // // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }
  
// // // //   Widget _buildTextField({
// // // //     required TextEditingController controller,
// // // //     required String label,
// // // //     required String hint,
// // // //     required IconData icon,
// // // //     TextInputType? keyboardType,
// // // //     bool isPassword = false,
// // // //     bool isPasswordVisible = false,
// // // //     VoidCallback? onPasswordToggle,
// // // //     required double width,
// // // //     required double height,
// // // //     required bool isLandscape,
// // // //   }) {
// // // //     return Column(
// // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // //       children: [
// // // //         Text(
// // // //           label,
// // // //           style: GoogleFonts.inter(
// // // //             color: Colors.white,
// // // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //             fontWeight: FontWeight.w500,
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // //         Container(
// // // //           decoration: BoxDecoration(
// // // //             color: const Color(0xFF1A1A1A),
// // // //             borderRadius: BorderRadius.circular(8),
// // // //             border: Border.all(
// // // //               color: Colors.grey[800]!,
// // // //               width: 1,
// // // //             ),
// // // //           ),
// // // //           child: TextField(
// // // //             controller: controller,
// // // //             obscureText: isPassword && !isPasswordVisible,
// // // //             keyboardType: keyboardType,
// // // //             style: GoogleFonts.inter(
// // // //               color: Colors.white,
// // // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //             ),
// // // //             decoration: InputDecoration(
// // // //               hintText: hint,
// // // //               hintStyle: GoogleFonts.inter(
// // // //                 color: Colors.grey[600],
// // // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //               ),
// // // //               prefixIcon: Icon(
// // // //                 icon,
// // // //                 color: Colors.grey[600],
// // // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // // //               ),
// // // //               suffixIcon: isPassword
// // // //                   ? InkWell(
// // // //                       onTap: onPasswordToggle,
// // // //                       child: Icon(
// // // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // // //                         color: Colors.grey[600],
// // // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // // //                       ),
// // // //                     )
// // // //                   : null,
// // // //               border: InputBorder.none,
// // // //               contentPadding: EdgeInsets.symmetric(
// // // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }
  
// // // //   Widget _buildSocialButton(
// // // //     String text,
// // // //     IconData icon,
// // // //     double width,
// // // //     double height,
// // // //     bool isLandscape,
// // // //   ) {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       padding: EdgeInsets.symmetric(
// // // //         vertical: height * (isLandscape ? 0.025 : 0.02),
// // // //       ),
// // // //       decoration: BoxDecoration(
// // // //         color: const Color(0xFF1A1A1A),
// // // //         borderRadius: BorderRadius.circular(8),
// // // //         border: Border.all(
// // // //           color: Colors.grey[800]!,
// // // //           width: 1,
// // // //         ),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.center,
// // // //         children: [
// // // //           Icon(
// // // //             icon,
// // // //             color: Colors.white,
// // // //             size: width * (isLandscape ? 0.04 : 0.06),
// // // //           ),
// // // //           SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // //           Text(
// // // //             text,
// // // //             style: GoogleFonts.inter(
// // // //               color: Colors.white,
// // // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //               fontWeight: FontWeight.w500,
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       Get.snackbar(
// // //         'Error',
// // //         'Please enter your email',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'Please enter your email',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       Get.snackbar(
// // //         'Error',
// // //         'Please enter your password',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'Please enter your password',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Snackbar
// // //         Get.snackbar(
// // //           'Success',
// // //           'Signed in successfully!',
// // //           backgroundColor: Colors.green.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           titleText: Text(
// // //             'Success',
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           messageText: Text(
// // //             'Signed in successfully!',
// // //             style: GoogleFonts.inter(color: Colors.white),
// // //           ),
// // //         );

// // //         // Navigate to Bottombar
// // //         Get.offAll(() => Bottombar());
// // //       } else {
// // //         // Handle Error Response
// // //         Get.snackbar(
// // //           'Error',
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           titleText: Text(
// // //             'Error',
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           messageText: Text(
// // //             signinResponse.message.isNotEmpty
// // //                 ? signinResponse.message
// // //                 : 'Sign in failed. Please try again.',
// // //             style: GoogleFonts.inter(color: Colors.white),
// // //           ),
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'An error occurred. Please check your internet connection.',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'An error occurred. Please check your internet connection.',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Prime Logo
// // //                     // Center(
// // //                     // child: Image.asset(
// // //                     // 'assets/prime_logo.png',
// // //                     // width: width * (isLandscape ? 0.2 : 0.35),
// // //                     // height: height * (isLandscape ? 0.08 : 0.06),
// // //                     // errorBuilder: (context, error, stackTrace) {
// // //                     // return Text(
// // //                     // 'prime video',
// // //                     // style: GoogleFonts.inter(
// // //                     // color: Colors.white,
// // //                     // fontSize: width * (isLandscape ? 0.04 : 0.06),
// // //                     // fontWeight: FontWeight.bold,
// // //                     // ),
// // //                     // );
// // //                     // },
// // //                     // ),
// // //                     // ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         // Keep me signed in checkbox
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
                       
// // //                         // Forgot Password
// // //                         InkWell(
// // //                           onTap: () {
// // //                             // Navigate to forgot password
// // //                           },
// // //                           child: Text(
// // //                             'Forgot Password?',
// // //                             style: GoogleFonts.inter(
// // //                               color: const Color(0xFF00A8E8),
// // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               fontWeight: FontWeight.w500,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                   
// // //                     // // Divider
// // //                     // Row(
// // //                     // children: [
// // //                     // Expanded(
// // //                     // child: Divider(
// // //                     // color: Colors.grey[700],
// // //                     // thickness: 1,
// // //                     // ),
// // //                     // ),
// // //                     // Padding(
// // //                     // padding: EdgeInsets.symmetric(horizontal: width * 0.03),
// // //                     // child: Text(
// // //                     // 'OR',
// // //                     // style: GoogleFonts.inter(
// // //                     // color: Colors.grey[500],
// // //                     // fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                     // ),
// // //                     // ),
// // //                     // ),
// // //                     // Expanded(
// // //                     // child: Divider(
// // //                     // color: Colors.grey[700],
// // //                     // thickness: 1,
// // //                     // ),
// // //                     // ),
// // //                     // ],
// // //                     // ),
                   
// // //                     // SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                   
// // //                     // // Social Sign In Buttons
// // //                     // _buildSocialButton(
// // //                     // 'Continue with Google',
// // //                     // Icons.g_mobiledata,
// // //                     // width,
// // //                     // height,
// // //                     // isLandscape,
// // //                     // ),
                   
// // //                     // SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // _buildSocialButton(
// // //                     // 'Continue with Apple',
// // //                     // Icons.apple,
// // //                     // width,
// // //                     // height,
// // //                     // isLandscape,
// // //                     // ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
 
// // //   Widget _buildSocialButton(
// // //     String text,
// // //     IconData icon,
// // //     double width,
// // //     double height,
// // //     bool isLandscape,
// // //   ) {
// // //     return Container(
// // //       width: double.infinity,
// // //       padding: EdgeInsets.symmetric(
// // //         vertical: height * (isLandscape ? 0.025 : 0.02),
// // //       ),
// // //       decoration: BoxDecoration(
// // //         color: const Color(0xFF1A1A1A),
// // //         borderRadius: BorderRadius.circular(8),
// // //         border: Border.all(
// // //           color: Colors.grey[800]!,
// // //           width: 1,
// // //         ),
// // //       ),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: [
// // //           Icon(
// // //             icon,
// // //             color: Colors.white,
// // //             size: width * (isLandscape ? 0.04 : 0.06),
// // //           ),
// // //           SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // //           Text(
// // //             text,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               fontWeight: FontWeight.w500,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       Get.snackbar(
// // //         'Error',
// // //         'Please enter your email',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'Please enter your email',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       Get.snackbar(
// // //         'Error',
// // //         'Please enter your password',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'Please enter your password',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Snackbar
// // //         Get.snackbar(
// // //           'Success',
// // //           'Signed in successfully!',
// // //           backgroundColor: Colors.green.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           titleText: Text(
// // //             'Success',
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           messageText: Text(
// // //             'Signed in successfully!',
// // //             style: GoogleFonts.inter(color: Colors.white),
// // //           ),
// // //         );

// // //         // Navigate to Bottombar
// // //         Get.offAll(() => Bottombar());
// // //       } else {
// // //         // Handle Error Response
// // //         Get.snackbar(
// // //           'Error',
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           titleText: Text(
// // //             'Error',
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //           messageText: Text(
// // //             signinResponse.message.isNotEmpty
// // //                 ? signinResponse.message
// // //                 : 'Sign in failed. Please try again.',
// // //             style: GoogleFonts.inter(color: Colors.white),
// // //           ),
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'An error occurred. Please check your internet connection.',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         titleText: Text(
// // //           'Error',
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         messageText: Text(
// // //           'An error occurred. Please check your internet connection.',
// // //           style: GoogleFonts.inter(color: Colors.white),
// // //         ),
// // //       );
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Prime Logo
// // //                     // Center(
// // //                     // child: Image.asset(
// // //                     // 'assets/prime_logo.png',
// // //                     // width: width * (isLandscape ? 0.2 : 0.35),
// // //                     // height: height * (isLandscape ? 0.08 : 0.06),
// // //                     // errorBuilder: (context, error, stackTrace) {
// // //                     // return Text(
// // //                     // 'prime video',
// // //                     // style: GoogleFonts.inter(
// // //                     // color: Colors.white,
// // //                     // fontSize: width * (isLandscape ? 0.04 : 0.06),
// // //                     // fontWeight: FontWeight.bold,
// // //                     // ),
// // //                     // );
// // //                     // },
// // //                     // ),
// // //                     // ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         // Keep me signed in checkbox
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
                       
// // //                         // // Forgot Password
// // //                         // InkWell(
// // //                         //   onTap: () {
// // //                         //     // Navigate to forgot password
// // //                         //   },
// // //                         //   child: Text(
// // //                         //     'Forgot Password?',
// // //                         //     style: GoogleFonts.inter(
// // //                         //       color: const Color(0xFF00A8E8),
// // //                         //       fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                         //       fontWeight: FontWeight.w500,
// // //                         //     ),
// // //                         //   ),
// // //                         // ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                   
// // //                     // // Divider
// // //                     // Row(
// // //                     // children: [
// // //                     // Expanded(
// // //                     // child: Divider(
// // //                     // color: Colors.grey[700],
// // //                     // thickness: 1,
// // //                     // ),
// // //                     // ),
// // //                     // Padding(
// // //                     // padding: EdgeInsets.symmetric(horizontal: width * 0.03),
// // //                     // child: Text(
// // //                     // 'OR',
// // //                     // style: GoogleFonts.inter(
// // //                     // color: Colors.grey[500],
// // //                     // fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                     // ),
// // //                     // ),
// // //                     // ),
// // //                     // Expanded(
// // //                     // child: Divider(
// // //                     // color: Colors.grey[700],
// // //                     // thickness: 1,
// // //                     // ),
// // //                     // ),
// // //                     // ],
// // //                     // ),
                   
// // //                     // SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                   
// // //                     // // Social Sign In Buttons
// // //                     // _buildSocialButton(
// // //                     // 'Continue with Google',
// // //                     // Icons.g_mobiledata,
// // //                     // width,
// // //                     // height,
// // //                     // isLandscape,
// // //                     // ),
                   
// // //                     // SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // _buildSocialButton(
// // //                     // 'Continue with Apple',
// // //                     // Icons.apple,
// // //                     // width,
// // //                     // height,
// // //                     // isLandscape,
// // //                     // ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
 
// // //   Widget _buildSocialButton(
// // //     String text,
// // //     IconData icon,
// // //     double width,
// // //     double height,
// // //     bool isLandscape,
// // //   ) {
// // //     return Container(
// // //       width: double.infinity,
// // //       padding: EdgeInsets.symmetric(
// // //         vertical: height * (isLandscape ? 0.025 : 0.02),
// // //       ),
// // //       decoration: BoxDecoration(
// // //         color: const Color(0xFF1A1A1A),
// // //         borderRadius: BorderRadius.circular(8),
// // //         border: Border.all(
// // //           color: Colors.grey[800]!,
// // //           width: 1,
// // //         ),
// // //       ),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: [
// // //           Icon(
// // //             icon,
// // //             color: Colors.white,
// // //             size: width * (isLandscape ? 0.04 : 0.06),
// // //           ),
// // //           SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // //           Text(
// // //             text,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               fontWeight: FontWeight.w500,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, bool isSuccess) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.TOP,
// // //       timeInSecForIosWeb: 3,
// // //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       showToast('Please enter your email', false);
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       showToast('Please enter your password', false);
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Toast
// // //         showToast('Signed in successfully! Welcome back.', true);

// // //         // Navigate to Bottombar
// // //         Future.delayed(const Duration(milliseconds: 500), () {
// // //           Get.offAll(() => Bottombar());
// // //         });
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           false,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       showToast('An error occurred. Please check your internet connection.', false);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
 
// // //   Widget _buildSocialButton(
// // //     String text,
// // //     IconData icon,
// // //     double width,
// // //     double height,
// // //     bool isLandscape,
// // //   ) {
// // //     return Container(
// // //       width: double.infinity,
// // //       padding: EdgeInsets.symmetric(
// // //         vertical: height * (isLandscape ? 0.025 : 0.02),
// // //       ),
// // //       decoration: BoxDecoration(
// // //         color: const Color(0xFF1A1A1A),
// // //         borderRadius: BorderRadius.circular(8),
// // //         border: Border.all(
// // //           color: Colors.grey[800]!,
// // //           width: 1,
// // //         ),
// // //       ),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.center,
// // //         children: [
// // //           Icon(
// // //             icon,
// // //             color: Colors.white,
// // //             size: width * (isLandscape ? 0.04 : 0.06),
// // //           ),
// // //           SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // //           Text(
// // //             text,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               fontWeight: FontWeight.w500,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }




// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'package:ott/View/Screen/Forgotpassword.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, bool isSuccess) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.TOP,
// // //       timeInSecForIosWeb: 3,
// // //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       showToast('Please enter your email', false);
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       showToast('Please enter your password', false);
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Toast
// // //         showToast('Signed in successfully! Welcome back.', true);

// // //         // Navigate to Bottombar
// // //         Future.delayed(const Duration(milliseconds: 500), () {
// // //           Get.offAll(() => Bottombar());
// // //         });
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           false,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       showToast('An error occurred. Please check your internet connection.', false);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   // Forgot Password Handler
// // //   void handleForgotPassword() {
// // //     // Yahan forgot password screen navigate kar sakte ho
// // //     // Example: Get.to(() => ForgotPasswordScreen());
// // //     showToast('Forgot Password feature coming soon!', true);
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
// // //                         InkWell(
// // //                           onTap: ()=>Forgotpassword(),
// // //                           child: Text(
// // //                             'Forgot Password?',
// // //                             style: GoogleFonts.inter(
// // //                               color: const Color(0xFF00A8E8),
// // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               fontWeight: FontWeight.w500,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'package:ott/View/Screen/Forgotpassword.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, bool isSuccess) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.TOP,
// // //       timeInSecForIosWeb: 3,
// // //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       showToast('Please enter your email', false);
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       showToast('Please enter your password', false);
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Toast
// // //         showToast('Signed in successfully! Welcome back.', true);

// // //         // Navigate to Bottombar
// // //         Future.delayed(const Duration(milliseconds: 500), () {
// // //           Get.offAll(() => Bottombar());
// // //         });
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           false,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       showToast('An error occurred. Please check your internet connection.', false);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   // Forgot Password Handler
// // //   void handleForgotPassword() {
// // //     // Yahan forgot password screen navigate kar sakte ho
// // //     // Example: Get.to(() => ForgotPasswordScreen());
// // //     showToast('Forgot Password feature coming soon!', true);
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
// // //                         InkWell(
// // //                           onTap: () => Get.to(() => Forgotpassword()),
// // //                           child: Text(
// // //                             'Forgot Password?',
// // //                             style: GoogleFonts.inter(
// // //                               color: const Color(0xFF00A8E8),
// // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               fontWeight: FontWeight.w500,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'package:ott/View/Screen/Forgotpassword.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     print('SigninController initialized');
// // //   }
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, bool isSuccess) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.TOP,
// // //       timeInSecForIosWeb: 3,
// // //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       showToast('Please enter your email', false);
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       showToast('Please enter your password', false);
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Toast
// // //         showToast('Signed in successfully! Welcome back.', true);

// // //         // Navigate to Bottombar
// // //         Future.delayed(const Duration(milliseconds: 500), () {
// // //           Get.offAll(() => Bottombar());
// // //         });
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           false,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       showToast('An error occurred. Please check your internet connection.', false);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   // Forgot Password Handler
// // //   void handleForgotPassword() {
// // //     Get.to(() => const Forgotpassword());
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     print('SigninController disposing...');
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
  
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // IMPORTANT: Delete old controller and create fresh one
// // //     // This ensures controller is always fresh when page loads
// // //     Get.delete<SigninController>();
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
// // //                         InkWell(
// // //                           onTap: () => controller.handleForgotPassword(),
// // //                           child: Text(
// // //                             'Forgot Password?',
// // //                             style: GoogleFonts.inter(
// // //                               color: const Color(0xFF00A8E8),
// // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               fontWeight: FontWeight.w500,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: const LinearGradient(
// // //                             colors: [
// // //                               Color(0xFF00A8E8),
// // //                               Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(() => const Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }




// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:google_fonts/google_fonts.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Auth/Signup.dart';
// // // import 'package:ott/View/Screen/Bottombar.dart';
// // // import 'package:ott/View/Screen/Forgotpassword.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signin Response Model
// // // class SigninResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SigninResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SigninResponse.fromJson(Map<String, dynamic> json) {
// // //     return SigninResponse(
// // //       success: json['success'] ?? false,
// // //       message: json['message'] ?? '',
// // //       token: json['token'],
// // //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'success': success,
// // //       'message': message,
// // //       'token': token,
// // //       'user': user?.toJson(),
// // //     };
// // //   }
// // // }

// // // // User Data Model
// // // class UserData {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? createdAt;

// // //   UserData({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.createdAt,
// // //   });

// // //   factory UserData.fromJson(Map<String, dynamic> json) {
// // //     return UserData(
// // //       id: json['id']?.toString(),
// // //       name: json['name']?.toString(),
// // //       email: json['email']?.toString(),
// // //       mobile: json['mobile']?.toString(),
// // //       createdAt: json['createdAt']?.toString(),
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'id': id,
// // //       'name': name,
// // //       'email': email,
// // //       'mobile': mobile,
// // //       'createdAt': createdAt,
// // //     };
// // //   }
// // // }

// // // // Signin Request Model
// // // class SigninRequest {
// // //   final String email;
// // //   final String password;
// // //   final bool keepMeSignedIn;

// // //   SigninRequest({
// // //     required this.email,
// // //     required this.password,
// // //     required this.keepMeSignedIn,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'email': email,
// // //       'password': password,
// // //       'keepMeSignedIn': keepMeSignedIn,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SigninController extends GetxController {
// // //   late TextEditingController emailController;
// // //   late TextEditingController passwordController;
 
// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool keepMeSignedIn = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     // Initialize controllers in onInit instead of directly in the class
// // //     emailController = TextEditingController();
// // //     passwordController = TextEditingController();
// // //   }
 
// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
// // //   }
 
// // //   void toggleKeepMeSignedIn(bool? value) {
// // //     if (value != null) {
// // //       keepMeSignedIn.value = value;
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, bool isSuccess) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.TOP,
// // //       timeInSecForIosWeb: 3,
// // //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Save Token to SharedPreferences
// // //   Future<void> saveToken(String token) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('auth_token', token);
// // //       print('Token saved successfully: $token');
// // //     } catch (e) {
// // //       print('Error saving token: $e');
// // //     }
// // //   }

// // //   // Save User Data to SharedPreferences
// // //   Future<void> saveUserData(UserData user) async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.setString('user_id', user.id ?? '');
// // //       await prefs.setString('user_name', user.name ?? '');
// // //       await prefs.setString('user_email', user.email ?? '');
// // //       await prefs.setString('user_mobile', user.mobile ?? '');
// // //       print('User data saved successfully');
// // //     } catch (e) {
// // //       print('Error saving user data: $e');
// // //     }
// // //   }
 
// // //   void signin() async {
// // //     // Validation
// // //     if (emailController.text.isEmpty) {
// // //       showToast('Please enter your email', false);
// // //       return;
// // //     }
   
// // //     if (passwordController.text.isEmpty) {
// // //       showToast('Please enter your password', false);
// // //       return;
// // //     }

// // //     // API integration
// // //     isLoading.value = true;
   
// // //     try {
// // //       // Create Request Body
// // //       final signinRequest = SigninRequest(
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //         keepMeSignedIn: keepMeSignedIn.value,
// // //       );

// // //       print('Sending signin request...');
// // //       print('Email: ${emailController.text.trim()}');

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signin'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signinRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signinResponse = SigninResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         // Save token and user data if available
// // //         if (signinResponse.token != null) {
// // //           await saveToken(signinResponse.token!);
// // //         }
// // //         if (signinResponse.user != null) {
// // //           await saveUserData(signinResponse.user!);
// // //         }

// // //         // Show Success Toast
// // //         showToast('Signed in successfully! Welcome back.', true);

// // //         // Navigate to Bottombar
// // //         Future.delayed(const Duration(milliseconds: 500), () {
// // //           Get.offAll(() => Bottombar());
// // //         });
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(
// // //           signinResponse.message.isNotEmpty
// // //               ? signinResponse.message
// // //               : 'Sign in failed. Please try again.',
// // //           false,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('Error during signin: $e');
// // //       showToast('An error occurred. Please check your internet connection.', false);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   // Forgot Password Handler
// // //   void handleForgotPassword() {
// // //     Get.to(() => Forgotpassword());
// // //   }

// // //   // Clear controllers (call this when needed)
// // //   void clearControllers() {
// // //     emailController.clear();
// // //     passwordController.clear();
// // //   }
 
// // //   @override
// // //   void onClose() {
// // //     // Only dispose if controllers are not already disposed
// // //     if (!emailController.hasListeners) {
// // //       emailController.dispose();
// // //     }
// // //     if (!passwordController.hasListeners) {
// // //       passwordController.dispose();
// // //     }
// // //     super.onClose();
// // //   }
// // // }

// // // class Signin extends StatelessWidget {
// // //   const Signin({super.key});
  
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // Delete any existing controller to ensure fresh instance
// // //     if (Get.isRegistered<SigninController>()) {
// // //       Get.delete<SigninController>(force: true);
// // //     }
    
// // //     final SigninController controller = Get.put(SigninController());
   
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
         
// // //           return SafeArea(
// // //             child: SingleChildScrollView(
// // //               child: Padding(
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // //                 ),
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Back Button
// // //                     InkWell(
// // //                       onTap: () => Get.back(),
// // //                       child: Icon(
// // //                         Icons.arrow_back,
// // //                         color: Colors.white,
// // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// // //                     // Title
// // //                     Text(
// // //                       'Welcome Back',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// // //                     Text(
// // //                       'Sign in to continue watching',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Email Field
// // //                     _buildTextField(
// // //                       controller: controller.emailController,
// // //                       label: 'Email',
// // //                       hint: 'Enter your email',
// // //                       icon: Icons.email_outlined,
// // //                       keyboardType: TextInputType.emailAddress,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                   
// // //                     // Password Field
// // //                     Obx(() => _buildTextField(
// // //                       controller: controller.passwordController,
// // //                       label: 'Password',
// // //                       hint: 'Enter your password',
// // //                       icon: Icons.lock_outline,
// // //                       isPassword: true,
// // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                   
// // //                     // Keep me signed in & Forgot Password
// // //                     Row(
// // //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                       children: [
// // //                         Obx(() => Row(
// // //                           children: [
// // //                             SizedBox(
// // //                               width: width * (isLandscape ? 0.03 : 0.05),
// // //                               height: width * (isLandscape ? 0.03 : 0.05),
// // //                               child: Checkbox(
// // //                                 value: controller.keepMeSignedIn.value,
// // //                                 onChanged: controller.toggleKeepMeSignedIn,
// // //                                 activeColor: const Color(0xFF00A8E8),
// // //                                 checkColor: Colors.white,
// // //                                 side: BorderSide(
// // //                                   color: Colors.grey[600]!,
// // //                                   width: 1.5,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: width * (isLandscape ? 0.015 : 0.02)),
// // //                             Text(
// // //                               'Keep me signed in',
// // //                               style: GoogleFonts.inter(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         )),
// // //                         InkWell(
// // //                           onTap: () => Get.to(() => Forgotpassword()),
// // //                           child: Text(
// // //                             'Forgot Password?',
// // //                             style: GoogleFonts.inter(
// // //                               color: const Color(0xFF00A8E8),
// // //                               fontSize: width * (isLandscape ? 0.022 : 0.035),
// // //                               fontWeight: FontWeight.w500,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Sign In Button
// // //                     Obx(() => InkWell(
// // //                       onTap: controller.isLoading.value ? null : () => controller.signin(),
// // //                       child: Container(
// // //                         width: double.infinity,
// // //                         padding: EdgeInsets.symmetric(
// // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             colors: [
// // //                               const Color(0xFF00A8E8),
// // //                               const Color(0xFF0077B6),
// // //                             ],
// // //                           ),
// // //                           borderRadius: BorderRadius.circular(8),
// // //                         ),
// // //                         child: Center(
// // //                           child: controller.isLoading.value
// // //                               ? SizedBox(
// // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // //                                   child: const CircularProgressIndicator(
// // //                                     color: Colors.white,
// // //                                     strokeWidth: 2,
// // //                                   ),
// // //                                 )
// // //                               : Text(
// // //                                   'Sign In',
// // //                                   style: GoogleFonts.inter(
// // //                                     color: Colors.white,
// // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //                                     fontWeight: FontWeight.bold,
// // //                                   ),
// // //                                 ),
// // //                         ),
// // //                       ),
// // //                     )),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// // //                     // Don't have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Don\'t have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () {
// // //                               Get.to(Signup());
// // //                             },
// // //                             child: Text(
// // //                               'Sign Up',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
                   
// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
 
// // //   Widget _buildTextField({
// // //     required TextEditingController controller,
// // //     required String label,
// // //     required String hint,
// // //     required IconData icon,
// // //     TextInputType? keyboardType,
// // //     bool isPassword = false,
// // //     bool isPasswordVisible = false,
// // //     VoidCallback? onPasswordToggle,
// // //     required double width,
// // //     required double height,
// // //     required bool isLandscape,
// // //   }) {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           label,
// // //           style: GoogleFonts.inter(
// // //             color: Colors.white,
// // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             fontWeight: FontWeight.w500,
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //         Container(
// // //           decoration: BoxDecoration(
// // //             color: const Color(0xFF1A1A1A),
// // //             borderRadius: BorderRadius.circular(8),
// // //             border: Border.all(
// // //               color: Colors.grey[800]!,
// // //               width: 1,
// // //             ),
// // //           ),
// // //           child: TextField(
// // //             controller: controller,
// // //             obscureText: isPassword && !isPasswordVisible,
// // //             keyboardType: keyboardType,
// // //             style: GoogleFonts.inter(
// // //               color: Colors.white,
// // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //             ),
// // //             decoration: InputDecoration(
// // //               hintText: hint,
// // //               hintStyle: GoogleFonts.inter(
// // //                 color: Colors.grey[600],
// // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //               ),
// // //               prefixIcon: Icon(
// // //                 icon,
// // //                 color: Colors.grey[600],
// // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // //               ),
// // //               suffixIcon: isPassword
// // //                   ? InkWell(
// // //                       onTap: onPasswordToggle,
// // //                       child: Icon(
// // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // //                         color: Colors.grey[600],
// // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // //                       ),
// // //                     )
// // //                   : null,
// // //               border: InputBorder.none,
// // //               contentPadding: EdgeInsets.symmetric(
// // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // //               ),
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Auth/Loginverification.dart';
// // import 'package:ott/View/Screen/Auth/Signup.dart';
// // import 'package:ott/View/Screen/Forgotpassword.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Request Login OTP Response Model
// // class RequestLoginOtpResponse {
// //   final bool success;
// //   final String message;

// //   RequestLoginOtpResponse({
// //     required this.success,
// //     required this.message,
// //   });

// //   factory RequestLoginOtpResponse.fromJson(Map<String, dynamic> json) {
// //     return RequestLoginOtpResponse(
// //       success: json['success'] ?? false,
// //       message: json['message'] ?? '',
// //     );
// //   }
// // }

// // // GetX Controller
// // class SigninController extends GetxController {
// //   late TextEditingController mobileController;
 
// //   RxBool isLoading = false.obs;

// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     // Initialize controllers in onInit
// //     mobileController = TextEditingController();
// //   }
 
// //   // Validate Mobile
// //   bool isValidMobile(String mobile) {
// //     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
// //   }

// //   // Show Toast Message
// //   void showToast(String message, bool isSuccess) {
// //     Fluttertoast.showToast(
// //       msg: message,
// //       toastLength: Toast.LENGTH_LONG,
// //       gravity: ToastGravity.TOP,
// //       timeInSecForIosWeb: 3,
// //       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
// //       textColor: Colors.white,
// //       fontSize: 16.0,
// //     );
// //   }

// //   // Request Login OTP API Call
// //   Future<void> requestLoginOtp(BuildContext context) async {
// //     // Validation
// //     if (mobileController.text.trim().isEmpty) {
// //       showToast('Please enter your mobile number', false);
// //       return;
// //     }

// //     if (!isValidMobile(mobileController.text.trim())) {
// //       showToast('Please enter a valid 10-digit mobile number', false);
// //       return;
// //     }

// //     // Start Loading
// //     isLoading.value = true;

// //     try {
// //       print('Sending login OTP request...');
// //       print('Mobile: ${mobileController.text.trim()}');

// //       // API Call
// //       final response = await http.post(
// //         Uri.parse('$baseUrl/auth/request-login-otp'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //         },
// //         body: jsonEncode({
// //           'mobile': mobileController.text.trim(),
// //         }),
// //       );

// //       print('Response Status Code: ${response.statusCode}');
// //       print('Response Body: ${response.body}');

// //       // Parse Response
// //       final responseData = jsonDecode(response.body);
// //       final otpResponse = RequestLoginOtpResponse.fromJson(responseData);

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         if (otpResponse.success) {
// //           // Show Success Toast
// //           showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'OTP sent successfully!', true);

// //           // Store mobile for OTP verification
// //           String userMobile = mobileController.text.trim();
          
// //           print('Navigating to OTP verification with mobile: $userMobile');

// //           // Clear Text Field
// //           mobileController.clear();

// //           // Stop loading before navigation
// //           isLoading.value = false;

// //           // Navigate to OTP Verification Screen immediately
// //           Get.to(
// //             () => LoginOtpVerification(mobile: userMobile),
// //             transition: Transition.rightToLeft,
// //             duration: const Duration(milliseconds: 300),
// //           );
// //         } else {
// //           showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'Failed to send OTP. Please try again.', false);
// //         }
// //       } else {
// //         // Handle Error Response
// //         showToast(
// //           otpResponse.message.isNotEmpty
// //               ? otpResponse.message
// //               : 'Failed to send OTP. Please try again.',
// //           false,
// //         );
// //       }
// //     } catch (e) {
// //       print('Error during OTP request: $e');
// //       showToast('An error occurred. Please check your internet connection.', false);
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   // Forgot Password Handler
// //   void handleForgotPassword() {
// //     Get.to(() => Forgotpassword());
// //   }

// //   // Clear controllers (call this when needed)
// //   void clearControllers() {
// //     mobileController.clear();
// //   }
 
// //   @override
// //   void onClose() {
// //     if (!mobileController.hasListeners) {
// //       mobileController.dispose();
// //     }
// //     super.onClose();
// //   }
// // }

// // class Signin extends StatelessWidget {
// //   const Signin({super.key});
  
// //   @override
// //   Widget build(BuildContext context) {
// //     // Delete any existing controller to ensure fresh instance
// //     if (Get.isRegistered<SigninController>()) {
// //       Get.delete<SigninController>(force: true);
// //     }
    
// //     final SigninController controller = Get.put(SigninController());
   
// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: OrientationBuilder(
// //         builder: (context, orientation) {
// //           double height = MediaQuery.of(context).size.height;
// //           double width = MediaQuery.of(context).size.width;
// //           bool isLandscape = orientation == Orientation.landscape;
         
// //           return SafeArea(
// //             child: SingleChildScrollView(
// //               child: Padding(
// //                 padding: EdgeInsets.symmetric(
// //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// //                 ),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     // Back Button
// //                     InkWell(
// //                       onTap: () => Get.back(),
// //                       child: Icon(
// //                         Icons.arrow_back,
// //                         color: Colors.white,
// //                         size: width * (isLandscape ? 0.04 : 0.06),
// //                       ),
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
// //                     // Title
// //                     Text(
// //                       'Welcome Back',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.white,
// //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
// //                     Text(
// //                       'Sign in to continue watching',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.grey[400],
// //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// //                       ),
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// //                     // Mobile Field
// //                     _buildTextField(
// //                       controller: controller.mobileController,
// //                       label: 'Mobile Number',
// //                       hint: 'Enter your mobile number',
// //                       icon: Icons.phone_outlined,
// //                       keyboardType: TextInputType.phone,
// //                       width: width,
// //                       height: height,
// //                       isLandscape: isLandscape,
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// //                     // Forgot Password
// //                     InkWell(
// //                       onTap: () => controller.handleForgotPassword(),
// //                       child: Align(
// //                         alignment: Alignment.centerRight,
// //                         child: Text(
// //                           'Forgot Password?',
// //                           style: GoogleFonts.inter(
// //                             color: const Color(0xFF00A8E8),
// //                             fontSize: width * (isLandscape ? 0.022 : 0.035),
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// //                     // Sign In Button (now Send OTP)
// //                     Obx(() => InkWell(
// //                       onTap: controller.isLoading.value ? null : () => controller.requestLoginOtp(context),
// //                       child: Container(
// //                         width: double.infinity,
// //                         padding: EdgeInsets.symmetric(
// //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// //                         ),
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             colors: [
// //                               const Color(0xFF00A8E8),
// //                               const Color(0xFF0077B6),
// //                             ],
// //                           ),
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         child: Center(
// //                           child: controller.isLoading.value
// //                               ? SizedBox(
// //                                   width: width * (isLandscape ? 0.03 : 0.05),
// //                                   height: width * (isLandscape ? 0.03 : 0.05),
// //                                   child: const CircularProgressIndicator(
// //                                     color: Colors.white,
// //                                     strokeWidth: 2,
// //                                   ),
// //                                 )
// //                               : Text(
// //                                   'Sign In',
// //                                   style: GoogleFonts.inter(
// //                                     color: Colors.white,
// //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// //                                     fontWeight: FontWeight.bold,
// //                                   ),
// //                                 ),
// //                         ),
// //                       ),
// //                     )),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
// //                     // Don't have account
// //                     Center(
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             'Don\'t have an account? ',
// //                             style: GoogleFonts.inter(
// //                               color: Colors.grey[400],
// //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// //                             ),
// //                           ),
// //                           InkWell(
// //                             onTap: () {
// //                               Get.to(Signup());
// //                             },
// //                             child: Text(
// //                               'Sign Up',
// //                               style: GoogleFonts.inter(
// //                                 color: const Color(0xFF00A8E8),
// //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
                   
// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
 
// //   Widget _buildTextField({
// //     required TextEditingController controller,
// //     required String label,
// //     required String hint,
// //     required IconData icon,
// //     TextInputType? keyboardType,
// //     bool isPassword = false,
// //     bool isPasswordVisible = false,
// //     VoidCallback? onPasswordToggle,
// //     required double width,
// //     required double height,
// //     required bool isLandscape,
// //   }) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Text(
// //           label,
// //           style: GoogleFonts.inter(
// //             color: Colors.white,
// //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// //             fontWeight: FontWeight.w500,
// //           ),
// //         ),
// //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// //         Container(
// //           decoration: BoxDecoration(
// //             color: const Color(0xFF1A1A1A),
// //             borderRadius: BorderRadius.circular(8),
// //             border: Border.all(
// //               color: Colors.grey[800]!,
// //               width: 1,
// //             ),
// //           ),
// //           child: TextField(
// //             controller: controller,
// //             obscureText: isPassword && !isPasswordVisible,
// //             keyboardType: keyboardType,
// //             style: GoogleFonts.inter(
// //               color: Colors.white,
// //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// //             ),
// //             decoration: InputDecoration(
// //               hintText: hint,
// //               hintStyle: GoogleFonts.inter(
// //                 color: Colors.grey[600],
// //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// //               ),
// //               prefixIcon: Icon(
// //                 icon,
// //                 color: Colors.grey[600],
// //                 size: width * (isLandscape ? 0.03 : 0.05),
// //               ),
// //               suffixIcon: isPassword
// //                   ? InkWell(
// //                       onTap: onPasswordToggle,
// //                       child: Icon(
// //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// //                         color: Colors.grey[600],
// //                         size: width * (isLandscape ? 0.03 : 0.05),
// //                       ),
// //                     )
// //                   : null,
// //               border: InputBorder.none,
// //               contentPadding: EdgeInsets.symmetric(
// //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }






// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;
// import 'package:ott/View/Screen/Auth/Loginverification.dart';
// import 'package:ott/View/Screen/Auth/Signup.dart';
// import 'package:ott/View/Screen/Forgotpassword.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Request Login OTP Response Model
// class RequestLoginOtpResponse {
//   final bool success;
//   final String message;

//   RequestLoginOtpResponse({
//     required this.success,
//     required this.message,
//   });

//   factory RequestLoginOtpResponse.fromJson(Map<String, dynamic> json) {
//     return RequestLoginOtpResponse(
//       success: json['success'] ?? false,
//       message: json['message'] ?? '',
//     );
//   }
// }

// // GetX Controller
// class SigninController extends GetxController {
//   late TextEditingController mobileController;
 
//   RxBool isLoading = false.obs;

//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     // Initialize controllers in onInit
//     mobileController = TextEditingController();
//   }
 
//   // Validate Mobile
//   bool isValidMobile(String mobile) {
//     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
//   }

//   // Show Toast Message
//   void showToast(String message, bool isSuccess) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.TOP,
//       timeInSecForIosWeb: 3,
//       backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   // Request Login OTP API Call
//   Future<void> requestLoginOtp(BuildContext context) async {
//     // Validation
//     if (mobileController.text.trim().isEmpty) {
//       showToast('Please enter your mobile number', false);
//       return;
//     }

//     if (!isValidMobile(mobileController.text.trim())) {
//       showToast('Please enter a valid 10-digit mobile number', false);
//       return;
//     }

//     // Start Loading
//     isLoading.value = true;

//     try {
//       print('=== DEBUG: Sending login OTP request... ===');
//       print('=== DEBUG: Mobile: ${mobileController.text.trim()} ===');

//       // API Call
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/request-login-otp'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode({
//           'mobile': mobileController.text.trim(),
//         }),
//       );

//       print('=== DEBUG: Response Status Code: ${response.statusCode} ===');
//       print('=== DEBUG: Response Body: ${response.body} ===');

//       // Parse Response
//       final responseData = jsonDecode(response.body);
//       final otpResponse = RequestLoginOtpResponse.fromJson(responseData);

//       print('=== DEBUG: Parsed success: ${otpResponse.success}, message: ${otpResponse.message} ===');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         // Extra check: Even if success false, if message indicates OTP sent, proceed
//         bool shouldProceed = otpResponse.success || otpResponse.message.toLowerCase().contains('sent') || otpResponse.message.toLowerCase().contains('otp');
        
//         print('=== DEBUG: Should proceed to navigation? $shouldProceed ===');

//         if (shouldProceed) {
//           // Show Success Toast
//           showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'OTP sent successfully!', true);

//           // Store mobile for OTP verification
//           String userMobile = mobileController.text.trim();
          
//           print('=== DEBUG: Navigating to OTP verification with mobile: $userMobile ===');

//           // Clear Text Field
//           mobileController.clear();

//           // Stop loading before navigation
//           isLoading.value = false;

//           // Small delay to ensure UI updates
//           await Future.delayed(const Duration(milliseconds: 500));

//           // Navigate to OTP Verification Screen immediately
//           final navigated = Get.to(
//             () => LoginOtpVerification(mobile: userMobile),
//             transition: Transition.rightToLeft,
//             duration: const Duration(milliseconds: 300),
//           );

//           print('=== DEBUG: Navigation result: $navigated ===');  // This will print true/false if navigation happened

//         } else {
//           print('=== DEBUG: Success false, not proceeding ===');
//           showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'Failed to send OTP. Please try again.', false);
//         }
//       } else {
//         print('=== DEBUG: Status code not 200/201, not proceeding ===');
//         // Handle Error Response
//         showToast(
//           otpResponse.message.isNotEmpty
//               ? otpResponse.message
//               : 'Failed to send OTP. Please try again.',
//           false,
//         );
//       }
//     } catch (e) {
//       print('=== DEBUG: Error during OTP request: $e ===');
//       showToast('An error occurred. Please check your internet connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   // Forgot Password Handler
//   void handleForgotPassword() {
//     Get.to(() => Forgotpassword());
//   }

//   // Clear controllers (call this when needed)
//   void clearControllers() {
//     mobileController.clear();
//   }
 
//   @override
//   void onClose() {
//     if (!mobileController.hasListeners) {
//       mobileController.dispose();
//     }
//     super.onClose();
//   }
// }

// class Signin extends StatelessWidget {
//   const Signin({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     // Delete any existing controller to ensure fresh instance
//     if (Get.isRegistered<SigninController>()) {
//       Get.delete<SigninController>(force: true);
//     }
    
//     final SigninController controller = Get.put(SigninController());
   
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
                   
//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
//                     SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
//                     // Title
//                     Text(
//                       'Welcome Back',
//                       style: GoogleFonts.inter(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.045 : 0.07),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
                   
//                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
//                     Text(
//                       'Sign in to continue watching',
//                       style: GoogleFonts.inter(
//                         color: Colors.grey[400],
//                         fontSize: width * (isLandscape ? 0.025 : 0.04),
//                       ),
//                     ),
                   
//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
                    
                   
//                     // Mobile Field
//                     _buildTextField(
//                       controller: controller.mobileController,
//                       label: 'Mobile Number',
//                       hint: 'Enter your mobile number',
//                       icon: Icons.phone_outlined,
//                       keyboardType: TextInputType.phone,
//                       width: width,
//                       height: height,
//                       isLandscape: isLandscape,
//                     ),
                   
//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
//                     // // Forgot Password
//                     // InkWell(
//                     //   onTap: () => controller.handleForgotPassword(),
//                     //   child: Align(
//                     //     alignment: Alignment.centerRight,
//                     //     child: Text(
//                     //       'Forgot Password?',
//                     //       style: GoogleFonts.inter(
//                     //         color: const Color(0xFF00A8E8),
//                     //         fontSize: width * (isLandscape ? 0.022 : 0.035),
//                     //         fontWeight: FontWeight.w500,
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
                   
//                     // SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
//                     // Sign In Button (now Send OTP)
//                     Obx(() => InkWell(
//                       onTap: controller.isLoading.value ? null : () => controller.requestLoginOtp(context),
//                       child: Container(
//                         width: double.infinity,
//                         padding: EdgeInsets.symmetric(
//                           vertical: height * (isLandscape ? 0.025 : 0.02),
//                         ),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               const Color(0xFF00A8E8),
//                               const Color(0xFF0077B6),
//                             ],
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Center(
//                           child: controller.isLoading.value
//                               ? SizedBox(
//                                   width: width * (isLandscape ? 0.03 : 0.05),
//                                   height: width * (isLandscape ? 0.03 : 0.05),
//                                   child: const CircularProgressIndicator(
//                                     color: Colors.white,
//                                     strokeWidth: 2,
//                                   ),
//                                 )
//                               : Text(
//                                   'Send OTP',
//                                   style: GoogleFonts.inter(
//                                     color: Colors.white,
//                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                         ),
//                       ),
//                     )),
                   
//                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
//                     // // Don't have account
//                     // Center(
//                     //   child: Row(
//                     //     mainAxisAlignment: MainAxisAlignment.center,
//                     //     children: [
//                     //       Text(
//                     //         'Don\'t have an account? ',
//                     //         style: GoogleFonts.inter(
//                     //           color: Colors.grey[400],
//                     //           fontSize: width * (isLandscape ? 0.025 : 0.035),
//                     //         ),
//                     //       ),
//                     //       InkWell(
//                     //         onTap: () {
//                     //           Get.to(Signup());
//                     //         },
//                     //         child: Text(
//                     //           'Sign Up',
//                     //           style: GoogleFonts.inter(
//                     //             color: const Color(0xFF00A8E8),
//                     //             fontSize: width * (isLandscape ? 0.025 : 0.035),
//                     //             fontWeight: FontWeight.bold,
//                     //           ),
//                     //         ),
//                     //       ),
//                     //     ],
//                     //   ),
//                     // ),
                   
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
 
//   Widget _buildTextField({
//     required TextEditingController controller,
//     required String label,
//     required String hint,
//     required IconData icon,
//     TextInputType? keyboardType,
//     bool isPassword = false,
//     bool isPasswordVisible = false,
//     VoidCallback? onPasswordToggle,
//     required double width,
//     required double height,
//     required bool isLandscape,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: GoogleFonts.inter(
//             color: Colors.white,
//             fontSize: width * (isLandscape ? 0.025 : 0.04),
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//         Container(
//           decoration: BoxDecoration(
//             color: const Color(0xFF1A1A1A),
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(
//               color: Colors.grey[800]!,
//               width: 1,
//             ),
//           ),
//           child: TextField(
//             controller: controller,
//             obscureText: isPassword && !isPasswordVisible,
//             keyboardType: keyboardType,
//             style: GoogleFonts.inter(
//               color: Colors.white,
//               fontSize: width * (isLandscape ? 0.025 : 0.04),
//             ),
//             decoration: InputDecoration(
//               hintText: hint,
//               hintStyle: GoogleFonts.inter(
//                 color: Colors.grey[600],
//                 fontSize: width * (isLandscape ? 0.025 : 0.04),
//               ),
//               prefixIcon: Icon(
//                 icon,
//                 color: Colors.grey[600],
//                 size: width * (isLandscape ? 0.03 : 0.05),
//               ),
//               suffixIcon: isPassword
//                   ? InkWell(
//                       onTap: onPasswordToggle,
//                       child: Icon(
//                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//                         color: Colors.grey[600],
//                         size: width * (isLandscape ? 0.03 : 0.05),
//                       ),
//                     )
//                   : null,
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.symmetric(
//                 horizontal: width * (isLandscape ? 0.03 : 0.04),
//                 vertical: height * (isLandscape ? 0.025 : 0.02),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ott/View/Screen/Auth/Loginverification.dart';
import 'package:ott/View/Screen/Auth/Signup.dart';
import 'package:ott/View/Screen/Forgotpassword.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Request Login OTP Response Model
class RequestLoginOtpResponse {
  final bool success;
  final String message;

  RequestLoginOtpResponse({
    required this.success,
    required this.message,
  });

  factory RequestLoginOtpResponse.fromJson(Map<String, dynamic> json) {
    return RequestLoginOtpResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}

// GetX Controller
class SigninController extends GetxController {
  late TextEditingController mobileController;
 
  RxBool isLoading = false.obs;

  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  @override
  void onInit() {
    super.onInit();
    // Initialize controllers in onInit
    mobileController = TextEditingController();
  }
 
  // Validate Mobile
  bool isValidMobile(String mobile) {
    return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
  }

  // Show Toast Message
  void showToast(String message, bool isSuccess) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: isSuccess ? const Color(0xFF00A8E8) : const Color(0xFFDC2626),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Request Login OTP API Call
  Future<void> requestLoginOtp(BuildContext context) async {
    // Validation
    if (mobileController.text.trim().isEmpty) {
      showToast('Please enter your mobile number', false);
      return;
    }

    if (!isValidMobile(mobileController.text.trim())) {
      showToast('Please enter a valid 10-digit mobile number', false);
      return;
    }

    // Start Loading
    isLoading.value = true;

    try {
      print('=== DEBUG: Sending login OTP request... ===');
      print('=== DEBUG: Mobile: ${mobileController.text.trim()} ===');

      // API Call
      final response = await http.post(
        Uri.parse('$baseUrl/auth/request-login-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'mobile': mobileController.text.trim(),
        }),
      );

      print('=== DEBUG: Response Status Code: ${response.statusCode} ===');
      print('=== DEBUG: Response Body: ${response.body} ===');

      // Parse Response
      final responseData = jsonDecode(response.body);
      final otpResponse = RequestLoginOtpResponse.fromJson(responseData);

      print('=== DEBUG: Parsed success: ${otpResponse.success}, message: ${otpResponse.message} ===');

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Extra check: Even if success false, if message indicates OTP sent, proceed
        bool shouldProceed = otpResponse.success || otpResponse.message.toLowerCase().contains('sent') || otpResponse.message.toLowerCase().contains('otp');
        
        print('=== DEBUG: Should proceed to navigation? $shouldProceed ===');

        if (shouldProceed) {
          // Show Success Toast
          showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'OTP sent successfully!', true);

          // Store mobile for OTP verification
          String userMobile = mobileController.text.trim();
          
          print('=== DEBUG: Navigating to OTP verification with mobile: $userMobile ===');

          // Clear Text Field
          mobileController.clear();

          // Stop loading before navigation
          isLoading.value = false;

          // Small delay to ensure UI updates
          await Future.delayed(const Duration(milliseconds: 500));

          // Navigate to OTP Verification Screen immediately
          final navigated = Get.to(
            () => LoginOtpVerification(mobile: userMobile),
            transition: Transition.rightToLeft,
            duration: const Duration(milliseconds: 300),
          );

          print('=== DEBUG: Navigation result: $navigated ===');  // This will print true/false if navigation happened

        } else {
          print('=== DEBUG: Success false, not proceeding ===');
          showToast(otpResponse.message.isNotEmpty ? otpResponse.message : 'Failed to send OTP. Please try again.', false);
        }
      } else {
        print('=== DEBUG: Status code not 200/201, not proceeding ===');
        // Handle Error Response
        showToast(
          otpResponse.message.isNotEmpty
              ? otpResponse.message
              : 'Failed to send OTP. Please try again.',
          false,
        );
      }
    } catch (e) {
      print('=== DEBUG: Error during OTP request: $e ===');
      showToast('An error occurred. Please check your internet connection.', false);
    } finally {
      isLoading.value = false;
    }
  }

  // Forgot Password Handler
  void handleForgotPassword() {
    Get.to(() => Forgotpassword());
  }

  // Clear controllers (call this when needed)
  void clearControllers() {
    mobileController.clear();
  }
 
  @override
  void onClose() {
    if (!mobileController.hasListeners) {
      mobileController.dispose();
    }
    super.onClose();
  }
}

class Signin extends StatelessWidget {
  const Signin({super.key});
  
  @override
  Widget build(BuildContext context) {
    // Delete any existing controller to ensure fresh instance
    if (Get.isRegistered<SigninController>()) {
      Get.delete<SigninController>(force: true);
    }
    
    final SigninController controller = Get.put(SigninController());
   
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
                   
                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
                    SizedBox(height: height * (isLandscape ? 0.08 : 0.06)),
                   
                    // Title
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: width * (isLandscape ? 0.045 : 0.07),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                   
                    SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                   
                    Text(
                      'Sign in to continue watching',
                      style: GoogleFonts.inter(
                        color: Colors.grey[400],
                        fontSize: width * (isLandscape ? 0.025 : 0.04),
                      ),
                    ),
                   
                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
                    SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
                    
                   
                    // Mobile Field
                    _buildTextField(
                      controller: controller.mobileController,
                      label: 'Mobile Number',
                      hint: 'Enter your mobile number',
                      icon: Icons.phone_outlined,
                      keyboardType: TextInputType.phone,
                      width: width,
                      height: height,
                      isLandscape: isLandscape,
                    ),
                   
                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
                    // // Forgot Password
                    // InkWell(
                    //   onTap: () => controller.handleForgotPassword(),
                    //   child: Align(
                    //     alignment: Alignment.centerRight,
                    //     child: Text(
                    //       'Forgot Password?',
                    //       style: GoogleFonts.inter(
                    //         color: const Color(0xFF00A8E8),
                    //         fontSize: width * (isLandscape ? 0.022 : 0.035),
                    //         fontWeight: FontWeight.w500,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                   
                    // SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
                    // Sign In Button (now Send OTP)
                    Obx(() => InkWell(
                      onTap: controller.isLoading.value ? null : () => controller.requestLoginOtp(context),
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
                                  height: width * (isLandscape ? 0.03 : 0.05),
                                  child: const CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                )
                              : Text(
                                  'Send OTP',
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: width * (isLandscape ? 0.03 : 0.045),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    )),
                   
                    SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                   
                    // // Don't have account
                    // Center(
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Text(
                    //         'Don\'t have an account? ',
                    //         style: GoogleFonts.inter(
                    //           color: Colors.grey[400],
                    //           fontSize: width * (isLandscape ? 0.025 : 0.035),
                    //         ),
                    //       ),
                    //       InkWell(
                    //         onTap: () {
                    //           Get.to(Signup());
                    //         },
                    //         child: Text(
                    //           'Sign Up',
                    //           style: GoogleFonts.inter(
                    //             color: const Color(0xFF00A8E8),
                    //             fontSize: width * (isLandscape ? 0.025 : 0.035),
                    //             fontWeight: FontWeight.bold,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                   
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
 
  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required String hint,
    required IconData icon,
    TextInputType? keyboardType,
    bool isPassword = false,
    bool isPasswordVisible = false,
    VoidCallback? onPasswordToggle,
    required double width,
    required double height,
    required bool isLandscape,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: width * (isLandscape ? 0.025 : 0.04),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey[800]!,
              width: 1,
            ),
          ),
          child: TextField(
            controller: controller,
            obscureText: isPassword && !isPasswordVisible,
            keyboardType: keyboardType,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontSize: width * (isLandscape ? 0.025 : 0.04),
            ),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.inter(
                color: Colors.grey[600],
                fontSize: width * (isLandscape ? 0.025 : 0.04),
              ),
              prefixIcon: Icon(
                icon,
                color: Colors.grey[600],
                size: width * (isLandscape ? 0.03 : 0.05),
              ),
              suffixIcon: isPassword
                  ? InkWell(
                      onTap: onPasswordToggle,
                      child: Icon(
                        isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey[600],
                        size: width * (isLandscape ? 0.03 : 0.05),
                      ),
                    )
                  : null,
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: width * (isLandscape ? 0.03 : 0.04),
                vertical: height * (isLandscape ? 0.025 : 0.02),
              ),
            ),
          ),
        ),
      ],
    );
  }
}