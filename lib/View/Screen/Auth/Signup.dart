// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:get/get.dart';

// // // // // // GetX Controller
// // // // // class SignupController extends GetxController {
// // // // //   final nameController = TextEditingController();
// // // // //   final mobileController = TextEditingController();
// // // // //   final emailController = TextEditingController();
// // // // //   final passwordController = TextEditingController();
  
// // // // //   RxBool isPasswordVisible = false.obs;
// // // // //   RxBool isLoading = false.obs;
  
// // // // //   void togglePasswordVisibility() {
// // // // //     isPasswordVisible.value = !isPasswordVisible.value;
// // // // //   }
  
// // // // //   void signup() {
// // // // //     // Validation
// // // // //     if (nameController.text.isEmpty) {
// // // // //       Get.snackbar(
// // // // //         'Error',
// // // // //         'Please enter your name',
// // // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // // //         colorText: Colors.white,
// // // // //       );
// // // // //       return;
// // // // //     }
    
// // // // //     if (mobileController.text.isEmpty) {
// // // // //       Get.snackbar(
// // // // //         'Error',
// // // // //         'Please enter your mobile number',
// // // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // // //         colorText: Colors.white,
// // // // //       );
// // // // //       return;
// // // // //     }
    
// // // // //     if (emailController.text.isEmpty) {
// // // // //       Get.snackbar(
// // // // //         'Error',
// // // // //         'Please enter your email',
// // // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // // //         colorText: Colors.white,
// // // // //       );
// // // // //       return;
// // // // //     }
    
// // // // //     if (passwordController.text.isEmpty) {
// // // // //       Get.snackbar(
// // // // //         'Error',
// // // // //         'Please enter your password',
// // // // //         backgroundColor: Colors.red.withOpacity(0.8),
// // // // //         colorText: Colors.white,
// // // // //       );
// // // // //       return;
// // // // //     }
    
// // // // //     // API integration will be done here later
// // // // //     isLoading.value = true;
    
// // // // //     // Simulate API call
// // // // //     Future.delayed(const Duration(seconds: 2), () {
// // // // //       isLoading.value = false;
// // // // //       Get.snackbar(
// // // // //         'Success',
// // // // //         'Account created successfully!',
// // // // //         backgroundColor: Colors.green.withOpacity(0.8),
// // // // //         colorText: Colors.white,
// // // // //       );
// // // // //     });
// // // // //   }
  
// // // // //   @override
// // // // //   void onClose() {
// // // // //     nameController.dispose();
// // // // //     mobileController.dispose();
// // // // //     emailController.dispose();
// // // // //     passwordController.dispose();
// // // // //     super.onClose();
// // // // //   }
// // // // // }

// // // // // class Signup extends StatelessWidget {
// // // // //   const Signup({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final SignupController controller = Get.put(SignupController());
    
// // // // //     return Scaffold(
// // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // //       body: OrientationBuilder(
// // // // //         builder: (context, orientation) {
// // // // //           double height = MediaQuery.of(context).size.height;
// // // // //           double width = MediaQuery.of(context).size.width;
// // // // //           bool isLandscape = orientation == Orientation.landscape;
          
// // // // //           return SafeArea(
// // // // //             child: SingleChildScrollView(
// // // // //               child: Padding(
// // // // //                 padding: EdgeInsets.symmetric(
// // // // //                   horizontal: width * (isLandscape ? 0.1 : 0.06),
// // // // //                   vertical: height * (isLandscape ? 0.05 : 0.03),
// // // // //                 ),
// // // // //                 child: Column(
// // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                   children: [
// // // // //                     // Back Button
// // // // //                     InkWell(
// // // // //                       onTap: () => Get.back(),
// // // // //                       child: Icon(
// // // // //                         Icons.arrow_back,
// // // // //                         color: Colors.white,
// // // // //                         size: width * (isLandscape ? 0.04 : 0.06),
// // // // //                       ),
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // // //                     // Prime Logo
// // // // //                     // Center(
// // // // //                     //   child: Image.asset(
// // // // //                     //     'assets/prime_logo.png',
// // // // //                     //     width: width * (isLandscape ? 0.2 : 0.35),
// // // // //                     //     height: height * (isLandscape ? 0.08 : 0.06),
// // // // //                     //     errorBuilder: (context, error, stackTrace) {
// // // // //                     //       return Text(
// // // // //                     //         'prime video',
// // // // //                     //         style: TextStyle(
// // // // //                     //           color: Colors.white,
// // // // //                     //           fontSize: width * (isLandscape ? 0.04 : 0.06),
// // // // //                     //           fontWeight: FontWeight.bold,
// // // // //                     //         ),
// // // // //                     //       );
// // // // //                     //     },
// // // // //                     //   ),
// // // // //                     // ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // // //                     // Title
// // // // //                     Text(
// // // // //                       'Create Account',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.white,
// // // // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                       ),
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                    
// // // // //                     Text(
// // // // //                       'Sign up to get started',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.grey[400],
// // // // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // // //                       ),
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // // //                     // Name Field
// // // // //                     _buildTextField(
// // // // //                       controller: controller.nameController,
// // // // //                       label: 'Full Name',
// // // // //                       hint: 'Enter your full name',
// // // // //                       icon: Icons.person_outline,
// // // // //                       width: width,
// // // // //                       height: height,
// // // // //                       isLandscape: isLandscape,
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
// // // // //                     // Mobile Field
// // // // //                     _buildTextField(
// // // // //                       controller: controller.mobileController,
// // // // //                       label: 'Mobile Number',
// // // // //                       hint: 'Enter your mobile number',
// // // // //                       icon: Icons.phone_outlined,
// // // // //                       keyboardType: TextInputType.phone,
// // // // //                       width: width,
// // // // //                       height: height,
// // // // //                       isLandscape: isLandscape,
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
// // // // //                     // Email Field
// // // // //                     _buildTextField(
// // // // //                       controller: controller.emailController,
// // // // //                       label: 'Email',
// // // // //                       hint: 'Enter your email',
// // // // //                       icon: Icons.email_outlined,
// // // // //                       keyboardType: TextInputType.emailAddress,
// // // // //                       width: width,
// // // // //                       height: height,
// // // // //                       isLandscape: isLandscape,
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
// // // // //                     // Password Field
// // // // //                     Obx(() => _buildTextField(
// // // // //                       controller: controller.passwordController,
// // // // //                       label: 'Password',
// // // // //                       hint: 'Enter your password',
// // // // //                       icon: Icons.lock_outline,
// // // // //                       isPassword: true,
// // // // //                       isPasswordVisible: controller.isPasswordVisible.value,
// // // // //                       onPasswordToggle: () => controller.togglePasswordVisibility(),
// // // // //                       width: width,
// // // // //                       height: height,
// // // // //                       isLandscape: isLandscape,
// // // // //                     )),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // // //                     // Sign Up Button
// // // // //                     Obx(() => InkWell(
// // // // //                       onTap: controller.isLoading.value ? null : () => controller.signup(),
// // // // //                       child: Container(
// // // // //                         width: double.infinity,
// // // // //                         padding: EdgeInsets.symmetric(
// // // // //                           vertical: height * (isLandscape ? 0.025 : 0.02),
// // // // //                         ),
// // // // //                         decoration: BoxDecoration(
// // // // //                           gradient: LinearGradient(
// // // // //                             colors: [
// // // // //                               const Color(0xFF00A8E8),
// // // // //                               const Color(0xFF0077B6),
// // // // //                             ],
// // // // //                           ),
// // // // //                           borderRadius: BorderRadius.circular(8),
// // // // //                         ),
// // // // //                         child: Center(
// // // // //                           child: controller.isLoading.value
// // // // //                               ? SizedBox(
// // // // //                                   width: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   height: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   child: const CircularProgressIndicator(
// // // // //                                     color: Colors.white,
// // // // //                                     strokeWidth: 2,
// // // // //                                   ),
// // // // //                                 )
// // // // //                               : Text(
// // // // //                                   'Sign Up',
// // // // //                                   style: TextStyle(
// // // // //                                     color: Colors.white,
// // // // //                                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // // //                                     fontWeight: FontWeight.bold,
// // // // //                                   ),
// // // // //                                 ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     )),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                    
// // // // //                     // Divider
// // // // //                     Row(
// // // // //                       children: [
// // // // //                         Expanded(
// // // // //                           child: Divider(
// // // // //                             color: Colors.grey[700],
// // // // //                             thickness: 1,
// // // // //                           ),
// // // // //                         ),
// // // // //                         Padding(
// // // // //                           padding: EdgeInsets.symmetric(horizontal: width * 0.03),
// // // // //                           child: Text(
// // // // //                             'OR',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.grey[500],
// // // // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                         Expanded(
// // // // //                           child: Divider(
// // // // //                             color: Colors.grey[700],
// // // // //                             thickness: 1,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
                    
// // // // //                     // Social Sign Up Buttons
// // // // //                     _buildSocialButton(
// // // // //                       'Continue with Google',
// // // // //                       Icons.g_mobiledata,
// // // // //                       width,
// // // // //                       height,
// // // // //                       isLandscape,
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.025 : 0.02)),
                    
// // // // //                     _buildSocialButton(
// // // // //                       'Continue with Apple',
// // // // //                       Icons.apple,
// // // // //                       width,
// // // // //                       height,
// // // // //                       isLandscape,
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // // //                     // Already have account
// // // // //                     Center(
// // // // //                       child: Row(
// // // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // // //                         children: [
// // // // //                           Text(
// // // // //                             'Already have an account? ',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.grey[400],
// // // // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // //                             ),
// // // // //                           ),
// // // // //                           InkWell(
// // // // //                             onTap: () => Get.back(),
// // // // //                             child: Text(
// // // // //                               'Sign In',
// // // // //                               style: TextStyle(
// // // // //                                 color: const Color(0xFF00A8E8),
// // // // //                                 fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
                    
// // // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
                    
// // // // //                     // Terms and Privacy
// // // // //                     Center(
// // // // //                       child: Padding(
// // // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.05),
// // // // //                         child: Text(
// // // // //                           'By signing up, you agree to our Terms of Service and Privacy Policy',
// // // // //                           textAlign: TextAlign.center,
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.grey[600],
// // // // //                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }
  
// // // // //   Widget _buildTextField({
// // // // //     required TextEditingController controller,
// // // // //     required String label,
// // // // //     required String hint,
// // // // //     required IconData icon,
// // // // //     TextInputType? keyboardType,
// // // // //     bool isPassword = false,
// // // // //     bool isPasswordVisible = false,
// // // // //     VoidCallback? onPasswordToggle,
// // // // //     required double width,
// // // // //     required double height,
// // // // //     required bool isLandscape,
// // // // //   }) {
// // // // //     return Column(
// // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // //       children: [
// // // // //         Text(
// // // // //           label,
// // // // //           style: TextStyle(
// // // // //             color: Colors.white,
// // // // //             fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // // //             fontWeight: FontWeight.w500,
// // // // //           ),
// // // // //         ),
// // // // //         SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // //         Container(
// // // // //           decoration: BoxDecoration(
// // // // //             color: const Color(0xFF1A1A1A),
// // // // //             borderRadius: BorderRadius.circular(8),
// // // // //             border: Border.all(
// // // // //               color: Colors.grey[800]!,
// // // // //               width: 1,
// // // // //             ),
// // // // //           ),
// // // // //           child: TextField(
// // // // //             controller: controller,
// // // // //             obscureText: isPassword && !isPasswordVisible,
// // // // //             keyboardType: keyboardType,
// // // // //             style: TextStyle(
// // // // //               color: Colors.white,
// // // // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // // //             ),
// // // // //             decoration: InputDecoration(
// // // // //               hintText: hint,
// // // // //               hintStyle: TextStyle(
// // // // //                 color: Colors.grey[600],
// // // // //                 fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // // //               ),
// // // // //               prefixIcon: Icon(
// // // // //                 icon,
// // // // //                 color: Colors.grey[600],
// // // // //                 size: width * (isLandscape ? 0.03 : 0.05),
// // // // //               ),
// // // // //               suffixIcon: isPassword
// // // // //                   ? InkWell(
// // // // //                       onTap: onPasswordToggle,
// // // // //                       child: Icon(
// // // // //                         isPasswordVisible ? Icons.visibility : Icons.visibility_off,
// // // // //                         color: Colors.grey[600],
// // // // //                         size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                       ),
// // // // //                     )
// // // // //                   : null,
// // // // //               border: InputBorder.none,
// // // // //               contentPadding: EdgeInsets.symmetric(
// // // // //                 horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // //                 vertical: height * (isLandscape ? 0.025 : 0.02),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ],
// // // // //     );
// // // // //   }
  
// // // // //   Widget _buildSocialButton(
// // // // //     String text,
// // // // //     IconData icon,
// // // // //     double width,
// // // // //     double height,
// // // // //     bool isLandscape,
// // // // //   ) {
// // // // //     return Container(
// // // // //       width: double.infinity,
// // // // //       padding: EdgeInsets.symmetric(
// // // // //         vertical: height * (isLandscape ? 0.025 : 0.02),
// // // // //       ),
// // // // //       decoration: BoxDecoration(
// // // // //         color: const Color(0xFF1A1A1A),
// // // // //         borderRadius: BorderRadius.circular(8),
// // // // //         border: Border.all(
// // // // //           color: Colors.grey[800]!,
// // // // //           width: 1,
// // // // //         ),
// // // // //       ),
// // // // //       child: Row(
// // // // //         mainAxisAlignment: MainAxisAlignment.center,
// // // // //         children: [
// // // // //           Icon(
// // // // //             icon,
// // // // //             color: Colors.white,
// // // // //             size: width * (isLandscape ? 0.04 : 0.06),
// // // // //           ),
// // // // //           SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // //           Text(
// // // // //             text,
// // // // //             style: TextStyle(
// // // // //               color: Colors.white,
// // // // //               fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // // //               fontWeight: FontWeight.w500,
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }


// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:google_fonts/google_fonts.dart';

// // // // // GetX Controller
// // // // class SignupController extends GetxController {
// // // //   final nameController = TextEditingController();
// // // //   final mobileController = TextEditingController();
// // // //   final emailController = TextEditingController();
// // // //   final passwordController = TextEditingController();
  
// // // //   RxBool isPasswordVisible = false.obs;
// // // //   RxBool isLoading = false.obs;
  
// // // //   void togglePasswordVisibility() {
// // // //     isPasswordVisible.value = !isPasswordVisible.value;
// // // //   }
  
// // // //   void signup() {
// // // //     // Validation
// // // //     if (nameController.text.isEmpty) {
// // // //       Get.snackbar(
// // // //         'Error',
// // // //         'Please enter your name',
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
// // // //           'Please enter your name',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //       return;
// // // //     }
    
// // // //     if (mobileController.text.isEmpty) {
// // // //       Get.snackbar(
// // // //         'Error',
// // // //         'Please enter your mobile number',
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
// // // //           'Please enter your mobile number',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //       return;
// // // //     }
    
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
// // // //         'Account created successfully!',
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
// // // //           'Account created successfully!',
// // // //           style: GoogleFonts.inter(color: Colors.white),
// // // //         ),
// // // //       );
// // // //     });
// // // //   }
  
// // // //   @override
// // // //   void onClose() {
// // // //     nameController.dispose();
// // // //     mobileController.dispose();
// // // //     emailController.dispose();
// // // //     passwordController.dispose();
// // // //     super.onClose();
// // // //   }
// // // // }

// // // // class Signup extends StatelessWidget {
// // // //   const Signup({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final SignupController controller = Get.put(SignupController());
    
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
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
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
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.06 : 0.05)),
                    
// // // //                     // Title
// // // //                     Text(
// // // //                       'Create Account',
// // // //                       style: GoogleFonts.inter(
// // // //                         color: Colors.white,
// // // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
                    
// // // //                     Text(
// // // //                       'Sign up to get started',
// // // //                       style: GoogleFonts.inter(
// // // //                         color: Colors.grey[400],
// // // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // // //                       ),
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // //                     // Name Field
// // // //                     _buildTextField(
// // // //                       controller: controller.nameController,
// // // //                       label: 'Full Name',
// // // //                       hint: 'Enter your full name',
// // // //                       icon: Icons.person_outline,
// // // //                       width: width,
// // // //                       height: height,
// // // //                       isLandscape: isLandscape,
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
// // // //                     // Mobile Field
// // // //                     _buildTextField(
// // // //                       controller: controller.mobileController,
// // // //                       label: 'Mobile Number',
// // // //                       hint: 'Enter your mobile number',
// // // //                       icon: Icons.phone_outlined,
// // // //                       keyboardType: TextInputType.phone,
// // // //                       width: width,
// // // //                       height: height,
// // // //                       isLandscape: isLandscape,
// // // //                     ),
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
                    
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
                    
// // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // //                     // Sign Up Button
// // // //                     Obx(() => InkWell(
// // // //                       onTap: controller.isLoading.value ? null : () => controller.signup(),
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
// // // //                                   'Sign Up',
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
                    
// // // //                     // // Social Sign Up Buttons
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
                    
// // // //                     // SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                    
// // // //                     // Already have account
// // // //                     Center(
// // // //                       child: Row(
// // // //                         mainAxisAlignment: MainAxisAlignment.center,
// // // //                         children: [
// // // //                           Text(
// // // //                             'Already have an account? ',
// // // //                             style: GoogleFonts.inter(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // //                             ),
// // // //                           ),
// // // //                           InkWell(
// // // //                             onTap: () => Get.back(),
// // // //                             child: Text(
// // // //                               'Sign In',
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
                    
// // // //                     // Terms and Privacy
// // // //                     Center(
// // // //                       child: Padding(
// // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.05),
// // // //                         child: Text(
// // // //                           'By signing up, you agree to our Terms of Service and Privacy Policy',
// // // //                           textAlign: TextAlign.center,
// // // //                           style: GoogleFonts.inter(
// // // //                             color: Colors.grey[600],
// // // //                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ),
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
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Signup Response Model
// // // class SignupResponse {
// // //   final bool success;
// // //   final String message;
// // //   final String? token;
// // //   final UserData? user;

// // //   SignupResponse({
// // //     required this.success,
// // //     required this.message,
// // //     this.token,
// // //     this.user,
// // //   });

// // //   factory SignupResponse.fromJson(Map<String, dynamic> json) {
// // //     return SignupResponse(
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

// // // // Signup Request Model
// // // class SignupRequest {
// // //   final String name;
// // //   final String mobile;
// // //   final String email;
// // //   final String password;

// // //   SignupRequest({
// // //     required this.name,
// // //     required this.mobile,
// // //     required this.email,
// // //     required this.password,
// // //   });

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       'name': name,
// // //       'mobile': mobile,
// // //       'email': email,
// // //       'password': password,
// // //     };
// // //   }
// // // }

// // // // GetX Controller
// // // class SignupController extends GetxController {
// // //   final nameController = TextEditingController();
// // //   final mobileController = TextEditingController();
// // //   final emailController = TextEditingController();
// // //   final passwordController = TextEditingController();

// // //   RxBool isPasswordVisible = false.obs;
// // //   RxBool isLoading = false.obs;

// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   void togglePasswordVisibility() {
// // //     isPasswordVisible.value = !isPasswordVisible.value;
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

// // //   // Get Token from SharedPreferences
// // //   Future<String?> getToken() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       return prefs.getString('auth_token');
// // //     } catch (e) {
// // //       print('Error getting token: $e');
// // //       return null;
// // //     }
// // //   }

// // //   // Clear All Data (for logout)
// // //   Future<void> clearAllData() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.clear();
// // //       print('All data cleared');
// // //     } catch (e) {
// // //       print('Error clearing data: $e');
// // //     }
// // //   }

// // //   // Show Toast Message
// // //   void showToast(String message, {bool isError = false}) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_LONG,
// // //       gravity: ToastGravity.BOTTOM,
// // //       timeInSecForIosWeb: 2,
// // //       backgroundColor: isError ? Colors.red : Colors.green,
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Validate Email
// // //   bool isValidEmail(String email) {
// // //     return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
// // //   }

// // //   // Validate Mobile
// // //   bool isValidMobile(String mobile) {
// // //     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
// // //   }

// // //   // Signup API Call
// // //   Future<void> signup() async {
// // //     // Validation
// // //     if (nameController.text.trim().isEmpty) {
// // //       showToast('Please enter your name', isError: true);
// // //       return;
// // //     }

// // //     if (mobileController.text.trim().isEmpty) {
// // //       showToast('Please enter your mobile number', isError: true);
// // //       return;
// // //     }

// // //     if (!isValidMobile(mobileController.text.trim())) {
// // //       showToast('Please enter a valid 10-digit mobile number', isError: true);
// // //       return;
// // //     }

// // //     if (emailController.text.trim().isEmpty) {
// // //       showToast('Please enter your email', isError: true);
// // //       return;
// // //     }

// // //     if (!isValidEmail(emailController.text.trim())) {
// // //       showToast('Please enter a valid email address', isError: true);
// // //       return;
// // //     }

// // //     if (passwordController.text.trim().isEmpty) {
// // //       showToast('Please enter your password', isError: true);
// // //       return;
// // //     }

// // //     if (passwordController.text.trim().length < 6) {
// // //       showToast('Password must be at least 6 characters', isError: true);
// // //       return;
// // //     }

// // //     // Start Loading
// // //     isLoading.value = true;

// // //     try {
// // //       // Create Request Body
// // //       final signupRequest = SignupRequest(
// // //         name: nameController.text.trim(),
// // //         mobile: mobileController.text.trim(),
// // //         email: emailController.text.trim(),
// // //         password: passwordController.text.trim(),
// // //       );

// // //       // API Call
// // //       final response = await http.post(
// // //         Uri.parse('$baseUrl/auth/signup'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //         },
// // //         body: jsonEncode(signupRequest.toJson()),
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       // Parse Response
// // //       final responseData = jsonDecode(response.body);
// // //       final signupResponse = SignupResponse.fromJson(responseData);

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         if (signupResponse.success) {
// // //           // Save Token
// // //           if (signupResponse.token != null) {
// // //             await saveToken(signupResponse.token!);
// // //           }

// // //           // Save User Data
// // //           if (signupResponse.user != null) {
// // //             await saveUserData(signupResponse.user!);
// // //           }

// // //           // Show Success Toast
// // //           showToast(signupResponse.message);

// // //           // Clear Text Fields
// // //           nameController.clear();
// // //           mobileController.clear();
// // //           emailController.clear();
// // //           passwordController.clear();

// // //           // Navigate to Sign In Screen
// // //           Future.delayed(const Duration(milliseconds: 500), () {
// // //             Get.back(); // Navigate back to Sign In
// // //           });
// // //         } else {
// // //           showToast(signupResponse.message, isError: true);
// // //         }
// // //       } else {
// // //         // Handle Error Response
// // //         showToast(signupResponse.message.isNotEmpty 
// // //             ? signupResponse.message 
// // //             : 'Signup failed. Please try again.', 
// // //             isError: true);
// // //       }
// // //     } catch (e) {
// // //       print('Error during signup: $e');
// // //       showToast('An error occurred. Please check your internet connection.', isError: true);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   @override
// // //   void onClose() {
// // //     nameController.dispose();
// // //     mobileController.dispose();
// // //     emailController.dispose();
// // //     passwordController.dispose();
// // //     super.onClose();
// // //   }
// // // }

// // // class Signup extends StatelessWidget {
// // //   const Signup({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SignupController controller = Get.put(SignupController());

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

// // //                     // Title
// // //                     Text(
// // //                       'Create Account',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.white,
// // //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

// // //                     Text(
// // //                       'Sign up to get started',
// // //                       style: GoogleFonts.inter(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// // //                     // Name Field
// // //                     _buildTextField(
// // //                       controller: controller.nameController,
// // //                       label: 'Full Name',
// // //                       hint: 'Enter your full name',
// // //                       icon: Icons.person_outline,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),

// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

// // //                     // Mobile Field
// // //                     _buildTextField(
// // //                       controller: controller.mobileController,
// // //                       label: 'Mobile Number',
// // //                       hint: 'Enter your mobile number',
// // //                       icon: Icons.phone_outlined,
// // //                       keyboardType: TextInputType.phone,
// // //                       width: width,
// // //                       height: height,
// // //                       isLandscape: isLandscape,
// // //                     ),

// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

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
// // //                           controller: controller.passwordController,
// // //                           label: 'Password',
// // //                           hint: 'Enter your password',
// // //                           icon: Icons.lock_outline,
// // //                           isPassword: true,
// // //                           isPasswordVisible:
// // //                               controller.isPasswordVisible.value,
// // //                           onPasswordToggle: () =>
// // //                               controller.togglePasswordVisibility(),
// // //                           width: width,
// // //                           height: height,
// // //                           isLandscape: isLandscape,
// // //                         )),

// // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// // //                     // Sign Up Button
// // //                     Obx(() => InkWell(
// // //                           onTap: controller.isLoading.value
// // //                               ? null
// // //                               : () => controller.signup(),
// // //                           child: Container(
// // //                             width: double.infinity,
// // //                             padding: EdgeInsets.symmetric(
// // //                               vertical: height * (isLandscape ? 0.025 : 0.02),
// // //                             ),
// // //                             decoration: BoxDecoration(
// // //                               gradient: LinearGradient(
// // //                                 colors: [
// // //                                   const Color(0xFF00A8E8),
// // //                                   const Color(0xFF0077B6),
// // //                                 ],
// // //                               ),
// // //                               borderRadius: BorderRadius.circular(8),
// // //                             ),
// // //                             child: Center(
// // //                               child: controller.isLoading.value
// // //                                   ? SizedBox(
// // //                                       width: width *
// // //                                           (isLandscape ? 0.03 : 0.05),
// // //                                       height: width *
// // //                                           (isLandscape ? 0.03 : 0.05),
// // //                                       child:
// // //                                           const CircularProgressIndicator(
// // //                                         color: Colors.white,
// // //                                         strokeWidth: 2,
// // //                                       ),
// // //                                     )
// // //                                   : Text(
// // //                                       'Sign Up',
// // //                                       style: GoogleFonts.inter(
// // //                                         color: Colors.white,
// // //                                         fontSize: width *
// // //                                             (isLandscape ? 0.03 : 0.045),
// // //                                         fontWeight: FontWeight.bold,
// // //                                       ),
// // //                                     ),
// // //                             ),
// // //                           ),
// // //                         )),

// // //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

// // //                     // Already have account
// // //                     Center(
// // //                       child: Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         children: [
// // //                           Text(
// // //                             'Already have an account? ',
// // //                             style: GoogleFonts.inter(
// // //                               color: Colors.grey[400],
// // //                               fontSize:
// // //                                   width * (isLandscape ? 0.025 : 0.035),
// // //                             ),
// // //                           ),
// // //                           InkWell(
// // //                             onTap: () => Get.back(),
// // //                             child: Text(
// // //                               'Sign In',
// // //                               style: GoogleFonts.inter(
// // //                                 color: const Color(0xFF00A8E8),
// // //                                 fontSize:
// // //                                     width * (isLandscape ? 0.025 : 0.035),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),

// // //                     // Terms and Privacy
// // //                     Center(
// // //                       child: Padding(
// // //                         padding:
// // //                             EdgeInsets.symmetric(horizontal: width * 0.05),
// // //                         child: Text(
// // //                           'By signing up, you agree to our Terms of Service and Privacy Policy',
// // //                           textAlign: TextAlign.center,
// // //                           style: GoogleFonts.inter(
// // //                             color: Colors.grey[600],
// // //                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
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
// // //                         isPasswordVisible
// // //                             ? Icons.visibility
// // //                             : Icons.visibility_off,
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
// // import 'package:ott/View/Screen/Auth/Otpverification.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Signup Response Model
// // class SignupResponse {
// //   final bool success;
// //   final String message;
// //   final String? token;
// //   final UserData? user;

// //   SignupResponse({
// //     required this.success,
// //     required this.message,
// //     this.token,
// //     this.user,
// //   });

// //   factory SignupResponse.fromJson(Map<String, dynamic> json) {
// //     return SignupResponse(
// //       success: json['success'] ?? false,
// //       message: json['message'] ?? '',
// //       token: json['token'],
// //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'success': success,
// //       'message': message,
// //       'token': token,
// //       'user': user?.toJson(),
// //     };
// //   }
// // }

// // // User Data Model
// // class UserData {
// //   final String? id;
// //   final String? name;
// //   final String? email;
// //   final String? mobile;
// //   final String? createdAt;

// //   UserData({
// //     this.id,
// //     this.name,
// //     this.email,
// //     this.mobile,
// //     this.createdAt,
// //   });

// //   factory UserData.fromJson(Map<String, dynamic> json) {
// //     return UserData(
// //       id: json['id']?.toString(),
// //       name: json['name']?.toString(),
// //       email: json['email']?.toString(),
// //       mobile: json['mobile']?.toString(),
// //       createdAt: json['createdAt']?.toString(),
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'id': id,
// //       'name': name,
// //       'email': email,
// //       'mobile': mobile,
// //       'createdAt': createdAt,
// //     };
// //   }
// // }

// // // Signup Request Model
// // class SignupRequest {
// //   final String name;
// //   final String mobile;
// //   final String email;
// //   final String password;

// //   SignupRequest({
// //     required this.name,
// //     required this.mobile,
// //     required this.email,
// //     required this.password,
// //   });

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'name': name,
// //       'mobile': mobile,
// //       'email': email,
// //       'password': password,
// //     };
// //   }
// // }

// // // GetX Controller
// // class SignupController extends GetxController {
// //   final nameController = TextEditingController();
// //   final mobileController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final passwordController = TextEditingController();

// //   RxBool isPasswordVisible = false.obs;
// //   RxBool isLoading = false.obs;

// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   void togglePasswordVisibility() {
// //     isPasswordVisible.value = !isPasswordVisible.value;
// //   }

// //   // Save Token to SharedPreferences
// //   Future<void> saveToken(String token) async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.setString('auth_token', token);
// //       print('Token saved successfully: $token');
// //     } catch (e) {
// //       print('Error saving token: $e');
// //     }
// //   }

// //   // Save User Data to SharedPreferences
// //   Future<void> saveUserData(UserData user) async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.setString('user_id', user.id ?? '');
// //       await prefs.setString('user_name', user.name ?? '');
// //       await prefs.setString('user_email', user.email ?? '');
// //       await prefs.setString('user_mobile', user.mobile ?? '');
// //       print('User data saved successfully');
// //     } catch (e) {
// //       print('Error saving user data: $e');
// //     }
// //   }

// //   // Get Token from SharedPreferences
// //   Future<String?> getToken() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       return prefs.getString('auth_token');
// //     } catch (e) {
// //       print('Error getting token: $e');
// //       return null;
// //     }
// //   }

// //   // Clear All Data (for logout)
// //   Future<void> clearAllData() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.clear();
// //       print('All data cleared');
// //     } catch (e) {
// //       print('Error clearing data: $e');
// //     }
// //   }

// //   // Show Toast Message
// //   void showToast(String message, {bool isError = false}) {
// //     Fluttertoast.showToast(
// //       msg: message,
// //       toastLength: Toast.LENGTH_LONG,
// //       gravity: ToastGravity.BOTTOM,
// //       timeInSecForIosWeb: 2,
// //       backgroundColor: isError ? Colors.red : Colors.green,
// //       textColor: Colors.white,
// //       fontSize: 16.0,
// //     );
// //   }

// //   // Validate Email
// //   bool isValidEmail(String email) {
// //     return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
// //   }

// //   // Validate Mobile
// //   bool isValidMobile(String mobile) {
// //     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
// //   }

// //   // Signup API Call
// //   Future<void> signup() async {
// //     // Validation
// //     if (nameController.text.trim().isEmpty) {
// //       showToast('Please enter your name', isError: true);
// //       return;
// //     }

// //     if (mobileController.text.trim().isEmpty) {
// //       showToast('Please enter your mobile number', isError: true);
// //       return;
// //     }

// //     if (!isValidMobile(mobileController.text.trim())) {
// //       showToast('Please enter a valid 10-digit mobile number', isError: true);
// //       return;
// //     }

// //     if (emailController.text.trim().isEmpty) {
// //       showToast('Please enter your email', isError: true);
// //       return;
// //     }

// //     if (!isValidEmail(emailController.text.trim())) {
// //       showToast('Please enter a valid email address', isError: true);
// //       return;
// //     }

// //     if (passwordController.text.trim().isEmpty) {
// //       showToast('Please enter your password', isError: true);
// //       return;
// //     }

// //     if (passwordController.text.trim().length < 6) {
// //       showToast('Password must be at least 6 characters', isError: true);
// //       return;
// //     }

// //     // Start Loading
// //     isLoading.value = true;

// //     try {
// //       // Create Request Body
// //       final signupRequest = SignupRequest(
// //         name: nameController.text.trim(),
// //         mobile: mobileController.text.trim(),
// //         email: emailController.text.trim(),
// //         password: passwordController.text.trim(),
// //       );

// //       // API Call
// //       final response = await http.post(
// //         Uri.parse('$baseUrl/auth/signup'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //         },
// //         body: jsonEncode(signupRequest.toJson()),
// //       );

// //       print('Response Status Code: ${response.statusCode}');
// //       print('Response Body: ${response.body}');

// //       // Parse Response
// //       final responseData = jsonDecode(response.body);
// //       final signupResponse = SignupResponse.fromJson(responseData);

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         if (signupResponse.success) {
// //           // Show Success Toast
// //           showToast(signupResponse.message);

// //           // Store email for OTP verification
// //           String userEmail = emailController.text.trim();

// //           // Clear Text Fields
// //           nameController.clear();
// //           mobileController.clear();
// //           emailController.clear();
// //           passwordController.clear();

// //           // Navigate to OTP Verification Screen
// //           Future.delayed(const Duration(milliseconds: 500), () {
// //             Get.to(() => Otpverification(email: userEmail));
// //           });
// //         } else {
// //           showToast(signupResponse.message, isError: true);
// //         }
// //       } else {
// //         // Handle Error Response
// //         showToast(
// //             signupResponse.message.isNotEmpty
// //                 ? signupResponse.message
// //                 : 'Signup failed. Please try again.',
// //             isError: true);
// //       }
// //     } catch (e) {
// //       print('Error during signup: $e');
// //       showToast('An error occurred. Please check your internet connection.',
// //           isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   @override
// //   void onClose() {
// //     nameController.dispose();
// //     mobileController.dispose();
// //     emailController.dispose();
// //     passwordController.dispose();
// //     super.onClose();
// //   }
// // }

// // class Signup extends StatelessWidget {
// //   const Signup({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SignupController controller = Get.put(SignupController());

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

// //                     // Title
// //                     Text(
// //                       'Create Account',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.white,
// //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

// //                     Text(
// //                       'Sign up to get started',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.grey[400],
// //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// //                     // Name Field
// //                     _buildTextField(
// //                       controller: controller.nameController,
// //                       label: 'Full Name',
// //                       hint: 'Enter your full name',
// //                       icon: Icons.person_outline,
// //                       width: width,
// //                       height: height,
// //                       isLandscape: isLandscape,
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

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

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

// //                     // Email Field
// //                     _buildTextField(
// //                       controller: controller.emailController,
// //                       label: 'Email',
// //                       hint: 'Enter your email',
// //                       icon: Icons.email_outlined,
// //                       keyboardType: TextInputType.emailAddress,
// //                       width: width,
// //                       height: height,
// //                       isLandscape: isLandscape,
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

// //                     // Password Field
// //                     Obx(() => _buildTextField(
// //                           controller: controller.passwordController,
// //                           label: 'Password',
// //                           hint: 'Enter your password',
// //                           icon: Icons.lock_outline,
// //                           isPassword: true,
// //                           isPasswordVisible:
// //                               controller.isPasswordVisible.value,
// //                           onPasswordToggle: () =>
// //                               controller.togglePasswordVisibility(),
// //                           width: width,
// //                           height: height,
// //                           isLandscape: isLandscape,
// //                         )),

// //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// //                     // Sign Up Button
// //                     Obx(() => InkWell(
// //                           onTap: controller.isLoading.value
// //                               ? null
// //                               : () => controller.signup(),
// //                           child: Container(
// //                             width: double.infinity,
// //                             padding: EdgeInsets.symmetric(
// //                               vertical: height * (isLandscape ? 0.025 : 0.02),
// //                             ),
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 colors: [
// //                                   const Color(0xFF00A8E8),
// //                                   const Color(0xFF0077B6),
// //                                 ],
// //                               ),
// //                               borderRadius: BorderRadius.circular(8),
// //                             ),
// //                             child: Center(
// //                               child: controller.isLoading.value
// //                                   ? SizedBox(
// //                                       width: width *
// //                                           (isLandscape ? 0.03 : 0.05),
// //                                       height: width *
// //                                           (isLandscape ? 0.03 : 0.05),
// //                                       child:
// //                                           const CircularProgressIndicator(
// //                                         color: Colors.white,
// //                                         strokeWidth: 2,
// //                                       ),
// //                                     )
// //                                   : Text(
// //                                       'Sign Up',
// //                                       style: GoogleFonts.inter(
// //                                         color: Colors.white,
// //                                         fontSize: width *
// //                                             (isLandscape ? 0.03 : 0.045),
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                             ),
// //                           ),
// //                         )),

// //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

// //                     // Already have account
// //                     Center(
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             'Already have an account? ',
// //                             style: GoogleFonts.inter(
// //                               color: Colors.grey[400],
// //                               fontSize:
// //                                   width * (isLandscape ? 0.025 : 0.035),
// //                             ),
// //                           ),
// //                           InkWell(
// //                             onTap: () => Get.back(),
// //                             child: Text(
// //                               'Sign In',
// //                               style: GoogleFonts.inter(
// //                                 color: const Color(0xFF00A8E8),
// //                                 fontSize:
// //                                     width * (isLandscape ? 0.025 : 0.035),
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),

// //                     // Terms and Privacy
// //                     Center(
// //                       child: Padding(
// //                         padding:
// //                             EdgeInsets.symmetric(horizontal: width * 0.05),
// //                         child: Text(
// //                           'By signing up, you agree to our Terms of Service and Privacy Policy',
// //                           textAlign: TextAlign.center,
// //                           style: GoogleFonts.inter(
// //                             color: Colors.grey[600],
// //                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
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
// //                         isPasswordVisible
// //                             ? Icons.visibility
// //                             : Icons.visibility_off,
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



// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Auth/Otpverification.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Signup Response Model
// // class SignupResponse {
// //   final bool success;
// //   final String message;
// //   final String? token;
// //   final UserData? user;

// //   SignupResponse({
// //     required this.success,
// //     required this.message,
// //     this.token,
// //     this.user,
// //   });

// //   factory SignupResponse.fromJson(Map<String, dynamic> json) {
// //     return SignupResponse(
// //       success: json['success'] ?? false,
// //       message: json['message'] ?? '',
// //       token: json['token'],
// //       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'success': success,
// //       'message': message,
// //       'token': token,
// //       'user': user?.toJson(),
// //     };
// //   }
// // }

// // // User Data Model
// // class UserData {
// //   final String? id;
// //   final String? name;
// //   final String? email;
// //   final String? mobile;
// //   final String? createdAt;

// //   UserData({
// //     this.id,
// //     this.name,
// //     this.email,
// //     this.mobile,
// //     this.createdAt,
// //   });

// //   factory UserData.fromJson(Map<String, dynamic> json) {
// //     return UserData(
// //       id: json['id']?.toString(),
// //       name: json['name']?.toString(),
// //       email: json['email']?.toString(),
// //       mobile: json['mobile']?.toString(),
// //       createdAt: json['createdAt']?.toString(),
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'id': id,
// //       'name': name,
// //       'email': email,
// //       'mobile': mobile,
// //       'createdAt': createdAt,
// //     };
// //   }
// // }

// // // Signup Request Model
// // class SignupRequest {
// //   final String name;
// //   final String mobile;
// //   final String email;
// //   final String password;

// //   SignupRequest({
// //     required this.name,
// //     required this.mobile,
// //     required this.email,
// //     required this.password,
// //   });

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'name': name,
// //       'mobile': mobile,
// //       'email': email,
// //       'password': password,
// //     };
// //   }
// // }

// // // GetX Controller
// // class SignupController extends GetxController {
// //   final nameController = TextEditingController();
// //   final mobileController = TextEditingController();
// //   final emailController = TextEditingController();
// //   final passwordController = TextEditingController();

// //   RxBool isPasswordVisible = false.obs;
// //   RxBool isLoading = false.obs;

// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   void togglePasswordVisibility() {
// //     isPasswordVisible.value = !isPasswordVisible.value;
// //   }

// //   // Save Token to SharedPreferences
// //   Future<void> saveToken(String token) async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.setString('auth_token', token);
// //       print('Token saved successfully: $token');
// //     } catch (e) {
// //       print('Error saving token: $e');
// //     }
// //   }

// //   // Save User Data to SharedPreferences
// //   Future<void> saveUserData(UserData user) async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.setString('user_id', user.id ?? '');
// //       await prefs.setString('user_name', user.name ?? '');
// //       await prefs.setString('user_email', user.email ?? '');
// //       await prefs.setString('user_mobile', user.mobile ?? '');
// //       print('User data saved successfully');
// //     } catch (e) {
// //       print('Error saving user data: $e');
// //     }
// //   }

// //   // Get Token from SharedPreferences
// //   Future<String?> getToken() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       return prefs.getString('auth_token');
// //     } catch (e) {
// //       print('Error getting token: $e');
// //       return null;
// //     }
// //   }

// //   // Clear All Data (for logout)
// //   Future<void> clearAllData() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.clear();
// //       print('All data cleared');
// //     } catch (e) {
// //       print('Error clearing data: $e');
// //     }
// //   }

// //   // Show Toast Message
// //   void showToast(String message, {bool isError = false}) {
// //     Fluttertoast.showToast(
// //       msg: message,
// //       toastLength: Toast.LENGTH_LONG,
// //       gravity: ToastGravity.BOTTOM,
// //       timeInSecForIosWeb: 2,
// //       backgroundColor: isError ? Colors.red : Color(0xFF00A8E8),
// //       textColor: Colors.white,
// //       fontSize: 16.0,
// //     );
// //   }

// //   // Validate Email
// //   bool isValidEmail(String email) {
// //     return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
// //   }

// //   // Validate Mobile
// //   bool isValidMobile(String mobile) {
// //     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
// //   }

// //   // Signup API Call
// //   Future<void> signup(BuildContext context) async {
// //     // Validation
// //     if (nameController.text.trim().isEmpty) {
// //       showToast('Please enter your name', isError: true);
// //       return;
// //     }

// //     if (mobileController.text.trim().isEmpty) {
// //       showToast('Please enter your mobile number', isError: true);
// //       return;
// //     }

// //     if (!isValidMobile(mobileController.text.trim())) {
// //       showToast('Please enter a valid 10-digit mobile number', isError: true);
// //       return;
// //     }

// //     if (emailController.text.trim().isEmpty) {
// //       showToast('Please enter your email', isError: true);
// //       return;
// //     }

// //     if (!isValidEmail(emailController.text.trim())) {
// //       showToast('Please enter a valid email address', isError: true);
// //       return;
// //     }

// //     if (passwordController.text.trim().isEmpty) {
// //       showToast('Please enter your password', isError: true);
// //       return;
// //     }

// //     if (passwordController.text.trim().length < 6) {
// //       showToast('Password must be at least 6 characters', isError: true);
// //       return;
// //     }

// //     // Start Loading
// //     isLoading.value = true;

// //     try {
// //       // Create Request Body
// //       final signupRequest = SignupRequest(
// //         name: nameController.text.trim(),
// //         mobile: mobileController.text.trim(),
// //         email: emailController.text.trim(),
// //         password: passwordController.text.trim(),
// //       );

// //       print('Sending signup request...');
// //       print('Email: ${emailController.text.trim()}');

// //       // API Call
// //       final response = await http.post(
// //         Uri.parse('$baseUrl/auth/signup'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //         },
// //         body: jsonEncode(signupRequest.toJson()),
// //       );

// //       print('Response Status Code: ${response.statusCode}');
// //       print('Response Body: ${response.body}');

// //       // Parse Response
// //       final responseData = jsonDecode(response.body);
// //       final signupResponse = SignupResponse.fromJson(responseData);

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         // Show Success Toast
// //         showToast(signupResponse.message);

// //         // Store email for OTP verification
// //         String userEmail = emailController.text.trim();
        
// //         print('Navigating to OTP page with email: $userEmail');

// //         // Clear Text Fields
// //         nameController.clear();
// //         mobileController.clear();
// //         emailController.clear();
// //         passwordController.clear();

// //         // Stop loading before navigation
// //         isLoading.value = false;

// //         // Navigate to OTP Verification Screen immediately
// //         Get.to(
// //           () => Otpverification(email: userEmail),
// //           transition: Transition.rightToLeft,
// //           duration: const Duration(milliseconds: 300),
// //         );
// //       } else {
// //         // Handle Error Response
// //         showToast(
// //             signupResponse.message.isNotEmpty
// //                 ? signupResponse.message
// //                 : 'Signup failed. Please try again.',
// //             isError: true);
// //       }
// //     } catch (e) {
// //       print('Error during signup: $e');
// //       showToast('An error occurred. Please check your internet connection.',
// //           isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   @override
// //   void onClose() {
// //     nameController.dispose();
// //     mobileController.dispose();
// //     emailController.dispose();
// //     passwordController.dispose();
// //     super.onClose();
// //   }
// // }

// // class Signup extends StatelessWidget {
// //   const Signup({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SignupController controller = Get.put(SignupController());

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

// //                     // Title
// //                     Text(
// //                       'Create Account',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.white,
// //                         fontSize: width * (isLandscape ? 0.045 : 0.07),
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

// //                     Text(
// //                       'Sign up to get started',
// //                       style: GoogleFonts.inter(
// //                         color: Colors.grey[400],
// //                         fontSize: width * (isLandscape ? 0.025 : 0.04),
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// //                     // Name Field
// //                     _buildTextField(
// //                       controller: controller.nameController,
// //                       label: 'Full Name',
// //                       hint: 'Enter your full name',
// //                       icon: Icons.person_outline,
// //                       width: width,
// //                       height: height,
// //                       isLandscape: isLandscape,
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

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

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

// //                     // Email Field
// //                     _buildTextField(
// //                       controller: controller.emailController,
// //                       label: 'Email',
// //                       hint: 'Enter your email',
// //                       icon: Icons.email_outlined,
// //                       keyboardType: TextInputType.emailAddress,
// //                       width: width,
// //                       height: height,
// //                       isLandscape: isLandscape,
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

// //                     // Password Field
// //                     Obx(() => _buildTextField(
// //                           controller: controller.passwordController,
// //                           label: 'Password',
// //                           hint: 'Enter your password',
// //                           icon: Icons.lock_outline,
// //                           isPassword: true,
// //                           isPasswordVisible:
// //                               controller.isPasswordVisible.value,
// //                           onPasswordToggle: () =>
// //                               controller.togglePasswordVisibility(),
// //                           width: width,
// //                           height: height,
// //                           isLandscape: isLandscape,
// //                         )),

// //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// //                     // Sign Up Button
// //                     Obx(() => InkWell(
// //                           onTap: controller.isLoading.value
// //                               ? null
// //                               : () => controller.signup(context),
// //                           child: Container(
// //                             width: double.infinity,
// //                             padding: EdgeInsets.symmetric(
// //                               vertical: height * (isLandscape ? 0.025 : 0.02),
// //                             ),
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 colors: [
// //                                   const Color(0xFF00A8E8),
// //                                   const Color(0xFF0077B6),
// //                                 ],
// //                               ),
// //                               borderRadius: BorderRadius.circular(8),
// //                             ),
// //                             child: Center(
// //                               child: controller.isLoading.value
// //                                   ? SizedBox(
// //                                       width: width *
// //                                           (isLandscape ? 0.03 : 0.05),
// //                                       height: width *
// //                                           (isLandscape ? 0.03 : 0.05),
// //                                       child:
// //                                           const CircularProgressIndicator(
// //                                         color: Colors.white,
// //                                         strokeWidth: 2,
// //                                       ),
// //                                     )
// //                                   : Text(
// //                                       'Sign Up',
// //                                       style: GoogleFonts.inter(
// //                                         color: Colors.white,
// //                                         fontSize: width *
// //                                             (isLandscape ? 0.03 : 0.045),
// //                                         fontWeight: FontWeight.bold,
// //                                       ),
// //                                     ),
// //                             ),
// //                           ),
// //                         )),

// //                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

// //                     // Already have account
// //                     Center(
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           Text(
// //                             'Already have an account? ',
// //                             style: GoogleFonts.inter(
// //                               color: Colors.grey[400],
// //                               fontSize:
// //                                   width * (isLandscape ? 0.025 : 0.035),
// //                             ),
// //                           ),
// //                           InkWell(
// //                             onTap: () => Get.back(),
// //                             child: Text(
// //                               'Sign In',
// //                               style: GoogleFonts.inter(
// //                                 color: const Color(0xFF00A8E8),
// //                                 fontSize:
// //                                     width * (isLandscape ? 0.025 : 0.035),
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),

// //                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),

// //                     // Terms and Privacy
// //                     Center(
// //                       child: Padding(
// //                         padding:
// //                             EdgeInsets.symmetric(horizontal: width * 0.05),
// //                         child: Text(
// //                           'By signing up, you agree to our Terms of Service and Privacy Policy',
// //                           textAlign: TextAlign.center,
// //                           style: GoogleFonts.inter(
// //                             color: Colors.grey[600],
// //                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
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
// //                         isPasswordVisible
// //                             ? Icons.visibility
// //                             : Icons.visibility_off,
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
// import 'package:ott/View/Screen/Auth/Otpverification.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Signup Response Model
// class SignupResponse {
//   final bool success;
//   final String message;
//   final String? token;
//   final UserData? user;

//   SignupResponse({
//     required this.success,
//     required this.message,
//     this.token,
//     this.user,
//   });

//   factory SignupResponse.fromJson(Map<String, dynamic> json) {
//     return SignupResponse(
//       success: json['success'] ?? false,
//       message: json['message'] ?? '',
//       token: json['token'],
//       user: json['user'] != null ? UserData.fromJson(json['user']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'success': success,
//       'message': message,
//       'token': token,
//       'user': user?.toJson(),
//     };
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

// // Signup Request Model
// class SignupRequest {
//   final String name;
//   final String mobile;
//   final String email;
//   final String password;

//   SignupRequest({
//     required this.name,
//     required this.mobile,
//     required this.email,
//     required this.password,
//   });

//   Map<String, dynamic> toJson() {
//     return {
//       'name': name,
//       'mobile': mobile,
//       'email': email,
//       'password': password,
//     };
//   }
// }

// // GetX Controller
// class SignupController extends GetxController {
//   final nameController = TextEditingController();
//   final mobileController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();

//   RxBool isPasswordVisible = false.obs;
//   RxBool isLoading = false.obs;

//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   void togglePasswordVisibility() {
//     isPasswordVisible.value = !isPasswordVisible.value;
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

//   // Get Token from SharedPreferences
//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   // Clear All Data (for logout)
//   Future<void> clearAllData() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.clear();
//       print('All data cleared');
//     } catch (e) {
//       print('Error clearing data: $e');
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

//   // Validate Email
//   bool isValidEmail(String email) {
//     return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
//   }

//   // Validate Mobile
//   bool isValidMobile(String mobile) {
//     return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
//   }

//   // Signup API Call
//   Future<void> signup(BuildContext context) async {
//     // Validation
//     if (nameController.text.trim().isEmpty) {
//       showToast('Please enter your name', isError: true);
//       return;
//     }

//     if (mobileController.text.trim().isEmpty) {
//       showToast('Please enter your mobile number', isError: true);
//       return;
//     }

//     if (!isValidMobile(mobileController.text.trim())) {
//       showToast('Please enter a valid 10-digit mobile number', isError: true);
//       return;
//     }

//     if (emailController.text.trim().isEmpty) {
//       showToast('Please enter your email', isError: true);
//       return;
//     }

//     if (!isValidEmail(emailController.text.trim())) {
//       showToast('Please enter a valid email address', isError: true);
//       return;
//     }

//     if (passwordController.text.trim().isEmpty) {
//       showToast('Please enter your password', isError: true);
//       return;
//     }

//     if (passwordController.text.trim().length < 6) {
//       showToast('Password must be at least 6 characters', isError: true);
//       return;
//     }

//     // Start Loading
//     isLoading.value = true;

//     try {
//       // Create Request Body
//       final signupRequest = SignupRequest(
//         name: nameController.text.trim(),
//         mobile: mobileController.text.trim(),
//         email: emailController.text.trim(),
//         password: passwordController.text.trim(),
//       );

//       print('Sending signup request...');
//       print('Email: ${emailController.text.trim()}');

//       // API Call
//       final response = await http.post(
//         Uri.parse('$baseUrl/auth/signup'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(signupRequest.toJson()),
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       // Parse Response
//       final responseData = jsonDecode(response.body);
//       final signupResponse = SignupResponse.fromJson(responseData);

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         // Show Success Toast
//         showToast(signupResponse.message);

//         // Store mobile for OTP verification
//         String userMobile = mobileController.text.trim();
        
//         print('Navigating to OTP page with mobile: $userMobile');

//         // Clear Text Fields
//         nameController.clear();
//         mobileController.clear();
//         emailController.clear();
//         passwordController.clear();

//         // Stop loading before navigation
//         isLoading.value = false;

//         // Navigate to OTP Verification Screen immediately
//         Get.to(
//           () => Otpverification(mobile: userMobile),
//           transition: Transition.rightToLeft,
//           duration: const Duration(milliseconds: 300),
//         );
//       } else {
//         // Handle Error Response
//         showToast(
//             signupResponse.message.isNotEmpty
//                 ? signupResponse.message
//                 : 'Signup failed. Please try again.',
//             isError: true);
//       }
//     } catch (e) {
//       print('Error during signup: $e');
//       showToast('An error occurred. Please check your internet connection.',
//           isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   @override
//   void onClose() {
//     nameController.dispose();
//     mobileController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }

// class Signup extends StatelessWidget {
//   const Signup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final SignupController controller = Get.put(SignupController());

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

//                     // Title
//                     Text(
//                       'Create Account',
//                       style: GoogleFonts.inter(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.045 : 0.07),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

//                     Text(
//                       'Sign up to get started',
//                       style: GoogleFonts.inter(
//                         color: Colors.grey[400],
//                         fontSize: width * (isLandscape ? 0.025 : 0.04),
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

//                     // Name Field
//                     _buildTextField(
//                       controller: controller.nameController,
//                       label: 'Full Name',
//                       hint: 'Enter your full name',
//                       icon: Icons.person_outline,
//                       width: width,
//                       height: height,
//                       isLandscape: isLandscape,
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

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

//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

//                     // Email Field
//                     _buildTextField(
//                       controller: controller.emailController,
//                       label: 'Email',
//                       hint: 'Enter your email',
//                       icon: Icons.email_outlined,
//                       keyboardType: TextInputType.emailAddress,
//                       width: width,
//                       height: height,
//                       isLandscape: isLandscape,
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

//                     // Password Field
//                     // Obx(() => _buildTextField(
//                     //       controller: controller.passwordController,
//                     //       label: 'Password',
//                     //       hint: 'Enter your password',
//                     //       icon: Icons.lock_outline,
//                     //       isPassword: true,
//                     //       isPasswordVisible:
//                     //           controller.isPasswordVisible.value,
//                     //       onPasswordToggle: () =>
//                     //           controller.togglePasswordVisibility(),
//                     //       width: width,
//                     //       height: height,
//                     //       isLandscape: isLandscape,
//                     //     )),

//                     // SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

//                     // Sign Up Button
//                     Obx(() => InkWell(
//                           onTap: controller.isLoading.value
//                               ? null
//                               : () => controller.signup(context),
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
//                                       width: width *
//                                           (isLandscape ? 0.03 : 0.05),
//                                       height: width *
//                                           (isLandscape ? 0.03 : 0.05),
//                                       child:
//                                           const CircularProgressIndicator(
//                                         color: Colors.white,
//                                         strokeWidth: 2,
//                                       ),
//                                     )
//                                   : Text(
//                                       'Sign Up',
//                                       style: GoogleFonts.inter(
//                                         color: Colors.white,
//                                         fontSize: width *
//                                             (isLandscape ? 0.03 : 0.045),
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                             ),
//                           ),
//                         )),

//                     SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

//                     // Already have account
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             'Already have an account? ',
//                             style: GoogleFonts.inter(
//                               color: Colors.grey[400],
//                               fontSize:
//                                   width * (isLandscape ? 0.025 : 0.035),
//                             ),
//                           ),
//                           InkWell(
//                             onTap: () => Get.back(),
//                             child: Text(
//                               'Sign In',
//                               style: GoogleFonts.inter(
//                                 color: const Color(0xFF00A8E8),
//                                 fontSize:
//                                     width * (isLandscape ? 0.025 : 0.035),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),

//                     SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),

//                     // Terms and Privacy
//                     Center(
//                       child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: width * 0.05),
//                         child: Text(
//                           'By signing up, you agree to our Terms of Service and Privacy Policy',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.inter(
//                             color: Colors.grey[600],
//                             fontSize: width * (isLandscape ? 0.02 : 0.03),
//                           ),
//                         ),
//                       ),
//                     ),
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
//                         isPasswordVisible
//                             ? Icons.visibility
//                             : Icons.visibility_off,
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
import 'package:ott/View/Screen/Auth/Otpverification.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Signup Response Model
class SignupResponse {
  final bool success;
  final String message;
  final String? token;
  final UserData? user;

  SignupResponse({
    required this.success,
    required this.message,
    this.token,
    this.user,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) {
    return SignupResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      token: json['token'],
      user: json['user'] != null ? UserData.fromJson(json['user']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'message': message,
      'token': token,
      'user': user?.toJson(),
    };
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

// Signup Request Model
class SignupRequest {
  final String name;
  final String mobile;
  final String email;

  SignupRequest({
    required this.name,
    required this.mobile,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'mobile': mobile,
      'email': email,
    };
  }
}

// GetX Controller
class SignupController extends GetxController {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();

  RxBool isLoading = false.obs;

  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

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

  // Get Token from SharedPreferences
  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('auth_token');
    } catch (e) {
      print('Error getting token: $e');
      return null;
    }
  }

  // Clear All Data (for logout)
  Future<void> clearAllData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      print('All data cleared');
    } catch (e) {
      print('Error clearing data: $e');
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

  // Validate Email
  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  // Validate Mobile
  bool isValidMobile(String mobile) {
    return RegExp(r'^[0-9]{10}$').hasMatch(mobile);
  }

  // Signup API Call
  Future<void> signup(BuildContext context) async {
    // Validation
    if (nameController.text.trim().isEmpty) {
      showToast('Please enter your name', isError: true);
      return;
    }

    if (mobileController.text.trim().isEmpty) {
      showToast('Please enter your mobile number', isError: true);
      return;
    }

    if (!isValidMobile(mobileController.text.trim())) {
      showToast('Please enter a valid 10-digit mobile number', isError: true);
      return;
    }

    if (emailController.text.trim().isEmpty) {
      showToast('Please enter your email', isError: true);
      return;
    }

    if (!isValidEmail(emailController.text.trim())) {
      showToast('Please enter a valid email address', isError: true);
      return;
    }

    // Start Loading
    isLoading.value = true;

    try {
      // Create Request Body
      final signupRequest = SignupRequest(
        name: nameController.text.trim(),
        mobile: mobileController.text.trim(),
        email: emailController.text.trim(),
      );

      print('Sending signup request...');
      print('Email: ${emailController.text.trim()}');

      // API Call
      final response = await http.post(
        Uri.parse('$baseUrl/auth/signup'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(signupRequest.toJson()),
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      // Parse Response
      final responseData = jsonDecode(response.body);
      final signupResponse = SignupResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Show Success Toast
        showToast(signupResponse.message);

        // Store mobile for OTP verification
        String userMobile = mobileController.text.trim();
        
        print('Navigating to OTP page with mobile: $userMobile');

        // Clear Text Fields
        nameController.clear();
        mobileController.clear();
        emailController.clear();

        // Stop loading before navigation
        isLoading.value = false;

        // Navigate to OTP Verification Screen immediately
        Get.to(
          () => Otpverification(mobile: userMobile),
          transition: Transition.rightToLeft,
          duration: const Duration(milliseconds: 300),
        );
      } else {
        // Handle Error Response
        showToast(
            signupResponse.message.isNotEmpty
                ? signupResponse.message
                : 'Signup failed. Please try again.',
            isError: true);
      }
    } catch (e) {
      print('Error during signup: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    mobileController.dispose();
    emailController.dispose();
    super.onClose();
  }
}

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.put(SignupController());

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

                    // Title
                    Text(
                      'Create Account',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: width * (isLandscape ? 0.045 : 0.07),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

                    Text(
                      'Sign up to get started',
                      style: GoogleFonts.inter(
                        color: Colors.grey[400],
                        fontSize: width * (isLandscape ? 0.025 : 0.04),
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

                    // Name Field
                    _buildTextField(
                      controller: controller.nameController,
                      label: 'Full Name',
                      hint: 'Enter your full name',
                      icon: Icons.person_outline,
                      width: width,
                      height: height,
                      isLandscape: isLandscape,
                    ),

                    SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

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

                    SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),

                    // Email Field
                    _buildTextField(
                      controller: controller.emailController,
                      label: 'Email',
                      hint: 'Enter your email',
                      icon: Icons.email_outlined,
                      keyboardType: TextInputType.emailAddress,
                      width: width,
                      height: height,
                      isLandscape: isLandscape,
                    ),

                    SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

                    // Sign Up Button
                    Obx(() => InkWell(
                          onTap: controller.isLoading.value
                              ? null
                              : () => controller.signup(context),
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
                                      width: width *
                                          (isLandscape ? 0.03 : 0.05),
                                      height: width *
                                          (isLandscape ? 0.03 : 0.05),
                                      child:
                                          const CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : Text(
                                      'Sign Up',
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                        fontSize: width *
                                            (isLandscape ? 0.03 : 0.045),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        )),

                    SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),

                    // Already have account
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: GoogleFonts.inter(
                              color: Colors.grey[400],
                              fontSize:
                                  width * (isLandscape ? 0.025 : 0.035),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.back(),
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.inter(
                                color: const Color(0xFF00A8E8),
                                fontSize:
                                    width * (isLandscape ? 0.025 : 0.035),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),

                    // Terms and Privacy
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Text(
                          'By signing up, you agree to our Terms of Service and Privacy Policy',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.grey[600],
                            fontSize: width * (isLandscape ? 0.02 : 0.03),
                          ),
                        ),
                      ),
                    ),
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