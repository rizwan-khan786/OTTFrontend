import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';

// Response Models
class ForgotPasswordResponse {
  final bool success;
  final String message;

  ForgotPasswordResponse({
    required this.success,
    required this.message,
  });

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}

class VerifyOtpResponse {
  final bool success;
  final String message;

  VerifyOtpResponse({
    required this.success,
    required this.message,
  });

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) {
    return VerifyOtpResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}

class ResetPasswordResponse {
  final bool success;
  final String message;

  ResetPasswordResponse({
    required this.success,
    required this.message,
  });

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) {
    return ResetPasswordResponse(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
    );
  }
}

// GetX Controller
class ForgotPasswordController extends GetxController {
  final emailController = TextEditingController();
  final otpController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isPasswordVisible = false.obs;
  RxBool isConfirmPasswordVisible = false.obs;
  RxBool isLoading = false.obs;
  RxInt currentStep = 1.obs; // 1: Email, 2: OTP, 3: Reset Password

  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void toggleConfirmPasswordVisibility() {
    isConfirmPasswordVisible.value = !isConfirmPasswordVisible.value;
  }

  // Show Toast Message
  void showToast(String message, {bool isError = false}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: isError ? Colors.red : Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Validate Email
  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  // Step 1: Request OTP
  Future<void> requestOTP() async {
    if (emailController.text.trim().isEmpty) {
      showToast('Please enter your email', isError: true);
      return;
    }

    if (!isValidEmail(emailController.text.trim())) {
      showToast('Please enter a valid email address', isError: true);
      return;
    }

    isLoading.value = true;

    try {
      print('Requesting OTP for: ${emailController.text.trim()}');

      final response = await http.post(
        Uri.parse('$baseUrl/auth/forgot-password'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text.trim(),
        }),
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      final responseData = jsonDecode(response.body);
      final forgotPasswordResponse = ForgotPasswordResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        showToast(forgotPasswordResponse.message);
        currentStep.value = 2; // Move to OTP verification step
      } else {
        showToast(
          forgotPasswordResponse.message.isNotEmpty
              ? forgotPasswordResponse.message
              : 'Failed to send OTP. Please try again.',
          isError: true,
        );
      }
    } catch (e) {
      print('Error requesting OTP: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  // Step 2: Verify OTP
  Future<void> verifyOTP() async {
    if (otpController.text.trim().isEmpty) {
      showToast('Please enter the OTP', isError: true);
      return;
    }

    if (otpController.text.trim().length != 6) {
      showToast('Please enter a valid 6-digit OTP', isError: true);
      return;
    }

    isLoading.value = true;

    try {
      print('Verifying OTP...');

      final response = await http.post(
        Uri.parse('$baseUrl/auth/verify-reset-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text.trim(),
          'otp': otpController.text.trim(),
        }),
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      final responseData = jsonDecode(response.body);
      final verifyOtpResponse = VerifyOtpResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        showToast(verifyOtpResponse.message);
        currentStep.value = 3; // Move to reset password step
      } else {
        showToast(
          verifyOtpResponse.message.isNotEmpty
              ? verifyOtpResponse.message
              : 'Invalid OTP. Please try again.',
          isError: true,
        );
      }
    } catch (e) {
      print('Error verifying OTP: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  // Step 3: Reset Password
  Future<void> resetPassword(BuildContext context) async {
    if (newPasswordController.text.trim().isEmpty) {
      showToast('Please enter your new password', isError: true);
      return;
    }

    if (newPasswordController.text.trim().length < 6) {
      showToast('Password must be at least 6 characters', isError: true);
      return;
    }

    if (confirmPasswordController.text.trim().isEmpty) {
      showToast('Please confirm your password', isError: true);
      return;
    }

    if (newPasswordController.text.trim() != confirmPasswordController.text.trim()) {
      showToast('Passwords do not match', isError: true);
      return;
    }

    isLoading.value = true;

    try {
      print('Resetting password...');

      final response = await http.post(
        Uri.parse('$baseUrl/auth/reset-password-with-otp'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': emailController.text.trim(),
          'otp': otpController.text.trim(),
          'newPassword': newPasswordController.text.trim(),
        }),
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      final responseData = jsonDecode(response.body);
      final resetPasswordResponse = ResetPasswordResponse.fromJson(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        showToast(resetPasswordResponse.message);
        
        // Clear all fields
        emailController.clear();
        otpController.clear();
        newPasswordController.clear();
        confirmPasswordController.clear();
        currentStep.value = 1;

        // Navigate back to login
        Get.back();
      } else {
        showToast(
          resetPasswordResponse.message.isNotEmpty
              ? resetPasswordResponse.message
              : 'Failed to reset password. Please try again.',
          isError: true,
        );
      }
    } catch (e) {
      print('Error resetting password: $e');
      showToast('An error occurred. Please check your internet connection.',
          isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  // Resend OTP
  Future<void> resendOTP() async {
    await requestOTP();
  }

  @override
  void onClose() {
    emailController.dispose();
    otpController.dispose();
    newPasswordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final ForgotPasswordController controller = Get.put(ForgotPasswordController());
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: OrientationBuilder(
        builder: (context, orientation) {
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
                      'Forgot Password',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: width * (isLandscape ? 0.045 : 0.07),
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),

                    Obx(() {
                      String subtitle = '';
                      if (controller.currentStep.value == 1) {
                        subtitle = 'Enter your email to receive OTP';
                      } else if (controller.currentStep.value == 2) {
                        subtitle = 'Enter the OTP sent to your email';
                      } else {
                        subtitle = 'Enter your new password';
                      }
                      return Text(
                        subtitle,
                        style: GoogleFonts.inter(
                          color: Colors.grey[400],
                          fontSize: width * (isLandscape ? 0.025 : 0.04),
                        ),
                      );
                    }),

                    SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

                    // Step Indicator
                    Obx(() => Row(
                          children: [
                            _buildStepIndicator(1, controller.currentStep.value, width),
                            _buildStepLine(controller.currentStep.value >= 2, width),
                            _buildStepIndicator(2, controller.currentStep.value, width),
                            _buildStepLine(controller.currentStep.value >= 3, width),
                            _buildStepIndicator(3, controller.currentStep.value, width),
                          ],
                        )),

                    SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

                    // Content based on current step
                    Obx(() {
                      if (controller.currentStep.value == 1) {
                        return _buildEmailStep(
                            controller, width, height, isLandscape, context);
                      } else if (controller.currentStep.value == 2) {
                        return _buildOTPStep(
                            controller, width, height, isLandscape, context);
                      } else {
                        return _buildResetPasswordStep(
                            controller, width, height, isLandscape, context);
                      }
                    }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Step 1: Email Input
  Widget _buildEmailStep(
    ForgotPasswordController controller,
    double width,
    double height,
    bool isLandscape,
    BuildContext context,
  ) {
    return Column(
      children: [
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
        Obx(() => _buildActionButton(
              text: 'Send OTP',
              onTap: controller.isLoading.value ? null : () => controller.requestOTP(),
              isLoading: controller.isLoading.value,
              width: width,
              height: height,
              isLandscape: isLandscape,
            )),
      ],
    );
  }

  // Step 2: OTP Input
  Widget _buildOTPStep(
    ForgotPasswordController controller,
    double width,
    double height,
    bool isLandscape,
    BuildContext context,
  ) {
    return Column(
      children: [
        _buildTextField(
          controller: controller.otpController,
          label: 'OTP',
          hint: 'Enter 6-digit OTP',
          icon: Icons.lock_outline,
          keyboardType: TextInputType.number,
          width: width,
          height: height,
          isLandscape: isLandscape,
          maxLength: 6,
        ),
        SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => controller.currentStep.value = 1,
              child: Text(
                'Change Email',
                style: GoogleFonts.inter(
                  color: Colors.grey[400],
                  fontSize: width * (isLandscape ? 0.025 : 0.035),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Obx(() => InkWell(
                  onTap: controller.isLoading.value
                      ? null
                      : () => controller.resendOTP(),
                  child: Text(
                    'Resend OTP',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF00A8E8),
                      fontSize: width * (isLandscape ? 0.025 : 0.035),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          ],
        ),
        SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
        Obx(() => _buildActionButton(
              text: 'Verify OTP',
              onTap: controller.isLoading.value ? null : () => controller.verifyOTP(),
              isLoading: controller.isLoading.value,
              width: width,
              height: height,
              isLandscape: isLandscape,
            )),
      ],
    );
  }

  // Step 3: Reset Password
  Widget _buildResetPasswordStep(
    ForgotPasswordController controller,
    double width,
    double height,
    bool isLandscape,
    BuildContext context,
  ) {
    return Column(
      children: [
        Obx(() => _buildTextField(
              controller: controller.newPasswordController,
              label: 'New Password',
              hint: 'Enter new password',
              icon: Icons.lock_outline,
              isPassword: true,
              isPasswordVisible: controller.isPasswordVisible.value,
              onPasswordToggle: () => controller.togglePasswordVisibility(),
              width: width,
              height: height,
              isLandscape: isLandscape,
            )),
        SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
        Obx(() => _buildTextField(
              controller: controller.confirmPasswordController,
              label: 'Confirm Password',
              hint: 'Re-enter new password',
              icon: Icons.lock_outline,
              isPassword: true,
              isPasswordVisible: controller.isConfirmPasswordVisible.value,
              onPasswordToggle: () => controller.toggleConfirmPasswordVisibility(),
              width: width,
              height: height,
              isLandscape: isLandscape,
            )),
        SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
        Obx(() => _buildActionButton(
              text: 'Reset Password',
              onTap: controller.isLoading.value
                  ? null
                  : () => controller.resetPassword(context),
              isLoading: controller.isLoading.value,
              width: width,
              height: height,
              isLandscape: isLandscape,
            )),
      ],
    );
  }

  // Step Indicator
  Widget _buildStepIndicator(int step, int currentStep, double width) {
    bool isActive = step <= currentStep;
    return Container(
      width: width * 0.1,
      height: width * 0.1,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? const Color(0xFF00A8E8) : const Color(0xFF1A1A1A),
        border: Border.all(
          color: isActive ? const Color(0xFF00A8E8) : Colors.grey[800]!,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          step.toString(),
          style: GoogleFonts.inter(
            color: isActive ? Colors.white : Colors.grey[600],
            fontSize: width * 0.04,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildStepLine(bool isActive, double width) {
    return Expanded(
      child: Container(
        height: 2,
        color: isActive ? const Color(0xFF00A8E8) : Colors.grey[800],
        margin: EdgeInsets.symmetric(horizontal: width * 0.02),
      ),
    );
  }

  // Text Field Builder
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
    int? maxLength,
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
            maxLength: maxLength,
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
              counterText: '',
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

  // Action Button
  Widget _buildActionButton({
    required String text,
    required VoidCallback? onTap,
    required bool isLoading,
    required double width,
    required double height,
    required bool isLandscape,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: height * (isLandscape ? 0.025 : 0.02),
        ),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF00A8E8),
              Color(0xFF0077B6),
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: width * (isLandscape ? 0.03 : 0.05),
                  height: width * (isLandscape ? 0.03 : 0.05),
                  child: const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
              : Text(
                  text,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: width * (isLandscape ? 0.03 : 0.045),
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}