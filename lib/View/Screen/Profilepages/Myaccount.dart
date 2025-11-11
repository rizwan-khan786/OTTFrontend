// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter/widgets.dart';

// // // // // // class Myaccount extends StatelessWidget {
// // // // // //   const Myaccount({super.key});

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //   double height = MediaQuery.of(context).size.height;
// // // // // //   double width = MediaQuery.of(context).size.width;
// // // // // //     return Scaffold();
// // // // // //   }
// // // // // // }


// // // // // import 'package:flutter/material.dart';

// // // // // class Myaccount extends StatelessWidget {
// // // // //   const Myaccount({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return OrientationBuilder(
// // // // //       builder: (context, orientation) {
// // // // //         double height = MediaQuery.of(context).size.height;
// // // // //         double width = MediaQuery.of(context).size.width;
        
// // // // //         return Scaffold(
// // // // //           backgroundColor: Colors.black,
// // // // //           body: SafeArea(
// // // // //             child: Column(
// // // // //               children: [
// // // // //                 // Header Section
// // // // //                 Padding(
// // // // //                   padding: EdgeInsets.symmetric(
// // // // //                     horizontal: width * 0.06,
// // // // //                     vertical: height * 0.02,
// // // // //                   ),
// // // // //                   child: Align(
// // // // //                     alignment: Alignment.centerLeft,
// // // // //                     child: Text(
// // // // //                       'My Account',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.white,
// // // // //                         fontSize: orientation == Orientation.portrait 
// // // // //                             ? width * 0.075 
// // // // //                             : height * 0.06,
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
                
// // // // //                 SizedBox(height: height * 0.03),
                
// // // // //                 // Delete account option
// // // // //                 Container(
// // // // //                   width: width,
// // // // //                   decoration: BoxDecoration(
// // // // //                     border: Border(
// // // // //                       bottom: BorderSide(
// // // // //                         color: Colors.grey.shade900,
// // // // //                         width: 1,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                   child: Padding(
// // // // //                     padding: EdgeInsets.symmetric(
// // // // //                       horizontal: width * 0.06,
// // // // //                       vertical: height * 0.02,
// // // // //                     ),
// // // // //                     child: Text(
// // // // //                       'Delete account',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.white,
// // // // //                         fontSize: orientation == Orientation.portrait 
// // // // //                             ? width * 0.045 
// // // // //                             : height * 0.04,
// // // // //                         fontWeight: FontWeight.w400,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
                
// // // // //                 // Sign out option
// // // // //                 Container(
// // // // //                   width: width,
// // // // //                   decoration: BoxDecoration(
// // // // //                     border: Border(
// // // // //                       bottom: BorderSide(
// // // // //                         color: Colors.grey.shade900,
// // // // //                         width: 1,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                   child: Padding(
// // // // //                     padding: EdgeInsets.symmetric(
// // // // //                       horizontal: width * 0.06,
// // // // //                       vertical: height * 0.02,
// // // // //                     ),
// // // // //                     child: Text(
// // // // //                       'Sign out',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.white,
// // // // //                         fontSize: orientation == Orientation.portrait 
// // // // //                             ? width * 0.045 
// // // // //                             : height * 0.04,
// // // // //                         fontWeight: FontWeight.w400,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
                
// // // // //                 const Spacer(),
                
// // // // //                 // Bottom Navigation Bar
// // // // //                 Container(
// // // // //                   width: width,
// // // // //                   decoration: BoxDecoration(
// // // // //                     color: Colors.black,
// // // // //                     border: Border(
// // // // //                       top: BorderSide(
// // // // //                         color: Colors.grey.shade900,
// // // // //                         width: 1,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                   child: Padding(
// // // // //                     padding: EdgeInsets.symmetric(
// // // // //                       vertical: height * 0.015,
// // // // //                     ),
// // // // //                     child: Row(
// // // // //                       mainAxisAlignment: MainAxisAlignment.spaceAround,
// // // // //                       children: [
// // // // //                         _buildNavItem(
// // // // //                           icon: Icons.home,
// // // // //                           label: 'Home',
// // // // //                           width: width,
// // // // //                           height: height,
// // // // //                           orientation: orientation,
// // // // //                         ),
// // // // //                         _buildNavItem(
// // // // //                           icon: Icons.check_circle_outline,
// // // // //                           label: 'Prime',
// // // // //                           width: width,
// // // // //                           height: height,
// // // // //                           orientation: orientation,
// // // // //                         ),
// // // // //                         _buildNavItem(
// // // // //                           icon: Icons.grid_view,
// // // // //                           label: 'Subscriptions',
// // // // //                           width: width,
// // // // //                           height: height,
// // // // //                           orientation: orientation,
// // // // //                         ),
// // // // //                         _buildNavItem(
// // // // //                           icon: Icons.download_outlined,
// // // // //                           label: 'Downloads',
// // // // //                           width: width,
// // // // //                           height: height,
// // // // //                           orientation: orientation,
// // // // //                         ),
// // // // //                         _buildNavItem(
// // // // //                           icon: Icons.search,
// // // // //                           label: 'Search',
// // // // //                           width: width,
// // // // //                           height: height,
// // // // //                           orientation: orientation,
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //     );
// // // // //   }
  
// // // // //   Widget _buildNavItem({
// // // // //     required IconData icon,
// // // // //     required String label,
// // // // //     required double width,
// // // // //     required double height,
// // // // //     required Orientation orientation,
// // // // //   }) {
// // // // //     return Column(
// // // // //       mainAxisSize: MainAxisSize.min,
// // // // //       children: [
// // // // //         Icon(
// // // // //           icon,
// // // // //           color: Colors.grey.shade400,
// // // // //           size: orientation == Orientation.portrait 
// // // // //               ? width * 0.065 
// // // // //               : height * 0.055,
// // // // //         ),
// // // // //         SizedBox(height: height * 0.005),
// // // // //         Text(
// // // // //           label,
// // // // //           style: TextStyle(
// // // // //             color: Colors.grey.shade400,
// // // // //             fontSize: orientation == Orientation.portrait 
// // // // //                 ? width * 0.03 
// // // // //                 : height * 0.025,
// // // // //           ),
// // // // //         ),
// // // // //       ],
// // // // //     );
// // // // //   }
// // // // // }


// // // // import 'package:flutter/material.dart';

// // // // class Myaccount extends StatelessWidget {
// // // //   const Myaccount({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return OrientationBuilder(
// // // //       builder: (context, orientation) {
// // // //         double height = MediaQuery.of(context).size.height;
// // // //         double width = MediaQuery.of(context).size.width;
        
// // // //         return Scaffold(
// // // //           backgroundColor: Colors.black,
// // // //           body: SafeArea(
// // // //             child: Column(
// // // //               children: [
// // // //                 // Header Section
// // // //                 Padding(
// // // //                   padding: EdgeInsets.symmetric(
// // // //                     horizontal: width * 0.06,
// // // //                     vertical: height * 0.02,
// // // //                   ),
// // // //                   child: Align(
// // // //                     alignment: Alignment.centerLeft,
// // // //                     child: Text(
// // // //                       'My Account',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: orientation == Orientation.portrait 
// // // //                             ? width * 0.075 
// // // //                             : height * 0.06,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 SizedBox(height: height * 0.03),
                
// // // //                 // Delete account option
// // // //                 Container(
// // // //                   width: width,
// // // //                   decoration: BoxDecoration(
// // // //                     border: Border(
// // // //                       bottom: BorderSide(
// // // //                         color: Colors.grey.shade900,
// // // //                         width: 1,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                   child: Padding(
// // // //                     padding: EdgeInsets.symmetric(
// // // //                       horizontal: width * 0.06,
// // // //                       vertical: height * 0.02,
// // // //                     ),
// // // //                     child: Text(
// // // //                       'Delete account',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: orientation == Orientation.portrait 
// // // //                             ? width * 0.045 
// // // //                             : height * 0.04,
// // // //                         fontWeight: FontWeight.w400,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Sign out option
// // // //                 Container(
// // // //                   width: width,
// // // //                   decoration: BoxDecoration(
// // // //                     border: Border(
// // // //                       bottom: BorderSide(
// // // //                         color: Colors.grey.shade900,
// // // //                         width: 1,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                   child: Padding(
// // // //                     padding: EdgeInsets.symmetric(
// // // //                       horizontal: width * 0.06,
// // // //                       vertical: height * 0.02,
// // // //                     ),
// // // //                     child: Text(
// // // //                       'Sign out',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: orientation == Orientation.portrait 
// // // //                             ? width * 0.045 
// // // //                             : height * 0.04,
// // // //                         fontWeight: FontWeight.w400,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         );
// // // //       },
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:intl/intl.dart'; // Add this for date formatting, install if needed: flutter pub add intl

// // // class MyAccountController extends GetxController {
// // //   RxString userName = ''.obs;
// // //   RxString userEmail = ''.obs;
// // //   RxString userMobile = ''.obs;
// // //   RxString subscriptionTitle = ''.obs;
// // //   RxString episodeName = ''.obs;
// // //   RxString accessUntil = ''.obs;
// // //   RxBool isLoading = false.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     fetchProfile();
// // //   }

// // //   Future<void> fetchProfile() async {
// // //     try {
// // //       isLoading.value = true;
// // //       final prefs = await SharedPreferences.getInstance();
// // //       final token = prefs.getString('auth_token');
// // //       if (token == null) {
// // //         print('No token found');
// // //         isLoading.value = false;
// // //         return;
// // //       }
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/auth/me'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );
// // //       print('MyAccount Response Status Code: ${response.statusCode}');
// // //       print('MyAccount Response Body: ${response.body}');
// // //       if (response.statusCode == 200) {
// // //         final responseData = jsonDecode(response.body);
// // //         if (responseData['user'] != null) {
// // //           var user = responseData['user'];
// // //           userName.value = user['name'] ?? '';
// // //           userEmail.value = user['email'] ?? '';
// // //           userMobile.value = user['mobile'] ?? '';
// // //           var subs = user['episodeSubscriptions'];
// // //           if (subs != null && subs.isNotEmpty) {
// // //             var sub = subs[0];
// // //             subscriptionTitle.value = sub['title'] ?? '';
// // //             episodeName.value = sub['episodeName'] ?? '';
// // //           }
// // //           accessUntil.value = user['accessUntil'] != null
// // //               ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user['accessUntil']))
// // //               : '';
// // //         }
// // //       } else {
// // //         print('Failed to fetch profile');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching profile: $e');
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   void deleteAccount() {
// // //     Get.snackbar(
// // //       'Delete Account',
// // //       'Delete account functionality (Implement actual deletion)',
// // //       snackPosition: SnackPosition.BOTTOM,
// // //       backgroundColor: Colors.red[800],
// // //       colorText: Colors.white,
// // //       duration: const Duration(seconds: 2),
// // //     );
// // //   }

// // //   void signOut() {
// // //     Get.snackbar(
// // //       'Sign Out',
// // //       'Signing out... (Implement navigation to login)',
// // //       snackPosition: SnackPosition.BOTTOM,
// // //       backgroundColor: Colors.orange[800],
// // //       colorText: Colors.white,
// // //       duration: const Duration(seconds: 2),
// // //     );
// // //     // TODO: Implement actual sign out logic, e.g., clear token and Get.offAllNamed('/login');
// // //   }
// // // }

// // // class Myaccount extends StatelessWidget {
// // //   const Myaccount({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final MyAccountController controller = Get.put(MyAccountController());
// // //     return OrientationBuilder(
// // //       builder: (context, orientation) {
// // //         double height = MediaQuery.of(context).size.height;
// // //         double width = MediaQuery.of(context).size.width;
// // //         return Scaffold(
// // //           backgroundColor: Colors.black,
// // //           body: SafeArea(
// // //             child: Obx(() => controller.isLoading.value
// // //                 ? Center(
// // //                     child: CircularProgressIndicator(
// // //                       color: Colors.white,
// // //                     ),
// // //                   )
// // //                 : SingleChildScrollView(
// // //                     child: Padding(
// // //                       padding: EdgeInsets.symmetric(
// // //                         horizontal: width * 0.06,
// // //                         vertical: height * 0.02,
// // //                       ),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           // Header Section
// // //                           Text(
// // //                             'My Account',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: orientation == Orientation.portrait
// // //                                   ? width * 0.075
// // //                                   : height * 0.06,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.05),

// // //                           // User Info Card
// // //                           Container(
// // //                             width: width,
// // //                             padding: EdgeInsets.all(width * 0.04),
// // //                             decoration: BoxDecoration(
// // //                               color: Colors.grey[900],
// // //                               borderRadius: BorderRadius.circular(width * 0.02),
// // //                               border: Border.all(
// // //                                 color: Colors.grey[800]!,
// // //                                 width: 1,
// // //                               ),
// // //                             ),
// // //                             child: Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.person,
// // //                                   label: 'Name',
// // //                                   value: controller.userName.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.email,
// // //                                   label: 'Email',
// // //                                   value: controller.userEmail.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.phone,
// // //                                   label: 'Mobile',
// // //                                   value: controller.userMobile.value,
// // //                                   width: width,
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.04),

// // //                           // Subscription Info Card
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.all(width * 0.04),
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.grey[900],
// // //                                 borderRadius: BorderRadius.circular(width * 0.02),
// // //                                 border: Border.all(
// // //                                   color: Colors.grey[800]!,
// // //                                   width: 1,
// // //                                 ),
// // //                               ),
// // //                               child: Column(
// // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                                 children: [
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.subscriptions,
// // //                                         color: Colors.blue[400],
// // //                                         size: width * 0.06,
// // //                                       ),
// // //                                       SizedBox(width: width * 0.02),
// // //                                       Expanded(
// // //                                         child: Text(
// // //                                           'Subscription Details',
// // //                                           style: TextStyle(
// // //                                             color: Colors.white,
// // //                                             fontSize: width * 0.045,
// // //                                             fontWeight: FontWeight.w600,
// // //                                           ),
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.description,
// // //                                     label: 'Plan',
// // //                                     value: controller.subscriptionTitle.value,
// // //                                     width: width,
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.movie,
// // //                                     label: 'Episode',
// // //                                     value: controller.episodeName.value,
// // //                                     width: width,
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.access_time,
// // //                                     label: 'Access Until',
// // //                                     value: controller.accessUntil.value,
// // //                                     width: width,
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             SizedBox(height: height * 0.04),

// // //                           // Delete Account Option
// // //                           GestureDetector(
// // //                             onTap: controller.deleteAccount,
// // //                             child: Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.symmetric(
// // //                                 vertical: height * 0.02,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 border: Border(
// // //                                   bottom: BorderSide(
// // //                                     color: Colors.grey.shade900,
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               child: Row(
// // //                                 children: [
// // //                                   Icon(
// // //                                     Icons.delete_forever,
// // //                                     color: Colors.red[400],
// // //                                     size: width * 0.06,
// // //                                   ),
// // //                                   SizedBox(width: width * 0.04),
// // //                                   Text(
// // //                                     'Delete account',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: orientation == Orientation.portrait
// // //                                           ? width * 0.045
// // //                                           : height * 0.04,
// // //                                       fontWeight: FontWeight.w400,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ),

// // //                           SizedBox(height: height * 0.03),

// // //                           // Sign Out Option
// // //                           GestureDetector(
// // //                             onTap: controller.signOut,
// // //                             child: Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.symmetric(
// // //                                 vertical: height * 0.02,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 border: Border(
// // //                                   bottom: BorderSide(
// // //                                     color: Colors.grey.shade900,
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               child: Row(
// // //                                 children: [
// // //                                   Icon(
// // //                                     Icons.logout,
// // //                                     color: Colors.orange[400],
// // //                                     size: width * 0.06,
// // //                                   ),
// // //                                   SizedBox(width: width * 0.04),
// // //                                   Text(
// // //                                     'Sign out',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: orientation == Orientation.portrait
// // //                                           ? width * 0.045
// // //                                           : height * 0.04,
// // //                                       fontWeight: FontWeight.w400,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   )),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildInfoRow({
// // //     required IconData icon,
// // //     required String label,
// // //     required String value,
// // //     required double width,
// // //   }) {
// // //     return Row(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Icon(
// // //           icon,
// // //           color: Colors.grey[400],
// // //           size: width * 0.05,
// // //         ),
// // //         SizedBox(width: width * 0.03),
// // //         Expanded(
// // //           child: RichText(
// // //             text: TextSpan(
// // //               style: TextStyle(
// // //                 color: Colors.grey[400],
// // //                 fontSize: width * 0.038,
// // //               ),
// // //               children: [
// // //                 TextSpan(text: '$label: '),
// // //                 TextSpan(
// // //                   text: value,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontWeight: FontWeight.w500,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:intl/intl.dart'; // Add this for date formatting, install if needed: flutter pub add intl
// // // import 'package:ott/View/Screen/Auth/signin.dart';

// // // class MyAccountController extends GetxController {
// // //   RxString userName = ''.obs;
// // //   RxString userEmail = ''.obs;
// // //   RxString userMobile = ''.obs;
// // //   RxString subscriptionTitle = ''.obs;
// // //   RxString episodeName = ''.obs;
// // //   RxString accessUntil = ''.obs;
// // //   RxBool isLoading = false.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     fetchProfile();
// // //   }

// // //   Future<void> fetchProfile() async {
// // //     try {
// // //       isLoading.value = true;
// // //       final prefs = await SharedPreferences.getInstance();
// // //       final token = prefs.getString('auth_token');
// // //       if (token == null) {
// // //         print('No token found');
// // //         isLoading.value = false;
// // //         return;
// // //       }
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/auth/me'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );
// // //       print('MyAccount Response Status Code: ${response.statusCode}');
// // //       print('MyAccount Response Body: ${response.body}');
// // //       if (response.statusCode == 200) {
// // //         final responseData = jsonDecode(response.body);
// // //         if (responseData['user'] != null) {
// // //           var user = responseData['user'];
// // //           userName.value = user['name'] ?? '';
// // //           userEmail.value = user['email'] ?? '';
// // //           userMobile.value = user['mobile'] ?? '';
// // //           var subs = user['episodeSubscriptions'];
// // //           if (subs != null && subs.isNotEmpty) {
// // //             var sub = subs[0];
// // //             subscriptionTitle.value = sub['title'] ?? '';
// // //             episodeName.value = sub['episodeName'] ?? '';
// // //           }
// // //           accessUntil.value = user['accessUntil'] != null
// // //               ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user['accessUntil']))
// // //               : '';
// // //         }
// // //       } else {
// // //         print('Failed to fetch profile');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching profile: $e');
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   void deleteAccount() {
// // //     Get.snackbar(
// // //       'Delete Account',
// // //       'Delete account functionality (Implement actual deletion)',
// // //       snackPosition: SnackPosition.BOTTOM,
// // //       backgroundColor: Colors.red[800],
// // //       colorText: Colors.white,
// // //       duration: const Duration(seconds: 2),
// // //     );
// // //   }

// // //   Future<void> signOut() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.remove('auth_token');
// // //       await prefs.remove('user_id');
// // //       await prefs.remove('user_name');
// // //       await prefs.remove('user_email');
// // //       await prefs.remove('user_mobile');
// // //       Get.snackbar(
// // //         'Sign Out',
// // //         'Signed out successfully',
// // //         snackPosition: SnackPosition.BOTTOM,
// // //         backgroundColor: Colors.green[800],
// // //         colorText: Colors.white,
// // //         duration: const Duration(seconds: 2),
// // //       );
// // //       Get.offAll(() => const Signin());
// // //     } catch (e) {
// // //       print('Error signing out: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'Error signing out. Please try again.',
// // //         snackPosition: SnackPosition.BOTTOM,
// // //         backgroundColor: Colors.red[800],
// // //         colorText: Colors.white,
// // //         duration: const Duration(seconds: 2),
// // //       );
// // //     }
// // //   }
// // // }

// // // class Myaccount extends StatelessWidget {
// // //   const Myaccount({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final MyAccountController controller = Get.put(MyAccountController());
// // //     return OrientationBuilder(
// // //       builder: (context, orientation) {
// // //         double height = MediaQuery.of(context).size.height;
// // //         double width = MediaQuery.of(context).size.width;
// // //         return Scaffold(
// // //           backgroundColor: Colors.black,
// // //           body: SafeArea(
// // //             child: Obx(() => controller.isLoading.value
// // //                 ? Center(
// // //                     child: CircularProgressIndicator(
// // //                       color: Colors.white,
// // //                     ),
// // //                   )
// // //                 : SingleChildScrollView(
// // //                     child: Padding(
// // //                       padding: EdgeInsets.symmetric(
// // //                         horizontal: width * 0.06,
// // //                         vertical: height * 0.02,
// // //                       ),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           // Header Section
// // //                           Text(
// // //                             'My Account',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: orientation == Orientation.portrait
// // //                                   ? width * 0.075
// // //                                   : height * 0.06,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.05),

// // //                           // User Info Card
// // //                           Container(
// // //                             width: width,
// // //                             padding: EdgeInsets.all(width * 0.04),
// // //                             decoration: BoxDecoration(
// // //                               color: Colors.grey[900],
// // //                               borderRadius: BorderRadius.circular(width * 0.02),
// // //                               border: Border.all(
// // //                                 color: Colors.grey[800]!,
// // //                                 width: 1,
// // //                               ),
// // //                             ),
// // //                             child: Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.person,
// // //                                   label: 'Name',
// // //                                   value: controller.userName.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.email,
// // //                                   label: 'Email',
// // //                                   value: controller.userEmail.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.phone,
// // //                                   label: 'Mobile',
// // //                                   value: controller.userMobile.value,
// // //                                   width: width,
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.04),

// // //                           // Subscription Info Card
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.all(width * 0.04),
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.grey[900],
// // //                                 borderRadius: BorderRadius.circular(width * 0.02),
// // //                                 border: Border.all(
// // //                                   color: Colors.grey[800]!,
// // //                                   width: 1,
// // //                                 ),
// // //                               ),
// // //                               child: Column(
// // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                                 children: [
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.subscriptions,
// // //                                         color: Colors.blue[400],
// // //                                         size: width * 0.06,
// // //                                       ),
// // //                                       SizedBox(width: width * 0.02),
// // //                                       Expanded(
// // //                                         child: Text(
// // //                                           'Subscription Details',
// // //                                           style: TextStyle(
// // //                                             color: Colors.white,
// // //                                             fontSize: width * 0.045,
// // //                                             fontWeight: FontWeight.w600,
// // //                                           ),
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.description,
// // //                                     label: 'Plan',
// // //                                     value: controller.subscriptionTitle.value,
// // //                                     width: width,
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.movie,
// // //                                     label: 'Episode',
// // //                                     value: controller.episodeName.value,
// // //                                     width: width,
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.access_time,
// // //                                     label: 'Access Until',
// // //                                     value: controller.accessUntil.value,
// // //                                     width: width,
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             SizedBox(height: height * 0.04),

// // //                           // Delete Account Option
// // //                           GestureDetector(
// // //                             onTap: controller.deleteAccount,
// // //                             child: Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.symmetric(
// // //                                 vertical: height * 0.02,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 border: Border(
// // //                                   bottom: BorderSide(
// // //                                     color: Colors.grey.shade900,
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               child: Row(
// // //                                 children: [
// // //                                   Icon(
// // //                                     Icons.delete_forever,
// // //                                     color: Colors.red[400],
// // //                                     size: width * 0.06,
// // //                                   ),
// // //                                   SizedBox(width: width * 0.04),
// // //                                   Text(
// // //                                     'Delete account',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: orientation == Orientation.portrait
// // //                                           ? width * 0.045
// // //                                           : height * 0.04,
// // //                                       fontWeight: FontWeight.w400,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ),

// // //                           SizedBox(height: height * 0.03),

// // //                           // Sign Out Option
// // //                           GestureDetector(
// // //                             onTap: controller.signOut,
// // //                             child: Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.symmetric(
// // //                                 vertical: height * 0.02,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 border: Border(
// // //                                   bottom: BorderSide(
// // //                                     color: Colors.grey.shade900,
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               child: Row(
// // //                                 children: [
// // //                                   Icon(
// // //                                     Icons.logout,
// // //                                     color: Colors.orange[400],
// // //                                     size: width * 0.06,
// // //                                   ),
// // //                                   SizedBox(width: width * 0.04),
// // //                                   Text(
// // //                                     'Sign out',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: orientation == Orientation.portrait
// // //                                           ? width * 0.045
// // //                                           : height * 0.04,
// // //                                       fontWeight: FontWeight.w400,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   )),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildInfoRow({
// // //     required IconData icon,
// // //     required String label,
// // //     required String value,
// // //     required double width,
// // //   }) {
// // //     return Row(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Icon(
// // //           icon,
// // //           color: Colors.grey[400],
// // //           size: width * 0.05,
// // //         ),
// // //         SizedBox(width: width * 0.03),
// // //         Expanded(
// // //           child: RichText(
// // //             text: TextSpan(
// // //               style: TextStyle(
// // //                 color: Colors.grey[400],
// // //                 fontSize: width * 0.038,
// // //               ),
// // //               children: [
// // //                 TextSpan(text: '$label: '),
// // //                 TextSpan(
// // //                   text: value,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontWeight: FontWeight.w500,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }



// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:intl/intl.dart'; // Add this for date formatting, install if needed: flutter pub add intl
// // // import 'package:ott/View/Screen/Auth/signin.dart';

// // // class MyAccountController extends GetxController {
// // //   RxString userName = ''.obs;
// // //   RxString userEmail = ''.obs;
// // //   RxString userMobile = ''.obs;
// // //   RxString subscriptionTitle = ''.obs;
// // //   RxString episodeName = ''.obs;
// // //   RxString accessUntil = ''.obs;
// // //   RxBool isLoading = false.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     fetchProfile();
// // //   }

// // //   Future<void> fetchProfile() async {
// // //     try {
// // //       isLoading.value = true;
// // //       final prefs = await SharedPreferences.getInstance();
// // //       final token = prefs.getString('auth_token');
// // //       if (token == null) {
// // //         print('No token found');
// // //         isLoading.value = false;
// // //         return;
// // //       }
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/auth/me'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );
// // //       print('MyAccount Response Status Code: ${response.statusCode}');
// // //       print('MyAccount Response Body: ${response.body}');
// // //       if (response.statusCode == 200) {
// // //         final responseData = jsonDecode(response.body);
// // //         if (responseData['user'] != null) {
// // //           var user = responseData['user'];
// // //           // Store user_id in SharedPreferences
// // //           await prefs.setString('user_id', user['id'] ?? '');
// // //           userName.value = user['name'] ?? '';
// // //           userEmail.value = user['email'] ?? '';
// // //           userMobile.value = user['mobile'] ?? '';
// // //           var subs = user['episodeSubscriptions'];
// // //           if (subs != null && subs.isNotEmpty) {
// // //             var sub = subs[0];
// // //             subscriptionTitle.value = sub['title'] ?? '';
// // //             episodeName.value = sub['episodeName'] ?? '';
// // //           }
// // //           accessUntil.value = user['accessUntil'] != null
// // //               ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user['accessUntil']))
// // //               : '';
// // //         }
// // //       } else {
// // //         print('Failed to fetch profile');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching profile: $e');
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   void deleteAccount() {
// // //     Get.snackbar(
// // //       'Delete Account',
// // //       'Delete account functionality (Implement actual deletion)',
// // //       snackPosition: SnackPosition.BOTTOM,
// // //       backgroundColor: Colors.red[800],
// // //       colorText: Colors.white,
// // //       duration: const Duration(seconds: 2),
// // //     );
// // //   }

// // //   Future<void> signOut() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       await prefs.remove('auth_token');
// // //       await prefs.remove('user_id');
// // //       await prefs.remove('user_name');
// // //       await prefs.remove('user_email');
// // //       await prefs.remove('user_mobile');
// // //       Get.snackbar(
// // //         'Sign Out',
// // //         'Signed out successfully',
// // //         snackPosition: SnackPosition.BOTTOM,
// // //         backgroundColor: Colors.green[800],
// // //         colorText: Colors.white,
// // //         duration: const Duration(seconds: 2),
// // //       );
// // //       Get.offAll(() => const Signin());
// // //     } catch (e) {
// // //       print('Error signing out: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'Error signing out. Please try again.',
// // //         snackPosition: SnackPosition.BOTTOM,
// // //         backgroundColor: Colors.red[800],
// // //         colorText: Colors.white,
// // //         duration: const Duration(seconds: 2),
// // //       );
// // //     }
// // //   }
// // // }

// // // class Myaccount extends StatelessWidget {
// // //   const Myaccount({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final MyAccountController controller = Get.put(MyAccountController());
// // //     return OrientationBuilder(
// // //       builder: (context, orientation) {
// // //         double height = MediaQuery.of(context).size.height;
// // //         double width = MediaQuery.of(context).size.width;
// // //         return Scaffold(
// // //           backgroundColor: Colors.black,
// // //           body: SafeArea(
// // //             child: Obx(() => controller.isLoading.value
// // //                 ? Center(
// // //                     child: CircularProgressIndicator(
// // //                       color: Colors.white,
// // //                     ),
// // //                   )
// // //                 : SingleChildScrollView(
// // //                     child: Padding(
// // //                       padding: EdgeInsets.symmetric(
// // //                         horizontal: width * 0.06,
// // //                         vertical: height * 0.02,
// // //                       ),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           // Header Section
// // //                           Text(
// // //                             'My Account',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: orientation == Orientation.portrait
// // //                                   ? width * 0.075
// // //                                   : height * 0.06,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.05),

// // //                           // User Info Card
// // //                           Container(
// // //                             width: width,
// // //                             padding: EdgeInsets.all(width * 0.04),
// // //                             decoration: BoxDecoration(
// // //                               color: Colors.grey[900],
// // //                               borderRadius: BorderRadius.circular(width * 0.02),
// // //                               border: Border.all(
// // //                                 color: Colors.grey[800]!,
// // //                                 width: 1,
// // //                               ),
// // //                             ),
// // //                             child: Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.person,
// // //                                   label: 'Name',
// // //                                   value: controller.userName.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.email,
// // //                                   label: 'Email',
// // //                                   value: controller.userEmail.value,
// // //                                   width: width,
// // //                                 ),
// // //                                 SizedBox(height: height * 0.015),
// // //                                 _buildInfoRow(
// // //                                   icon: Icons.phone,
// // //                                   label: 'Mobile',
// // //                                   value: controller.userMobile.value,
// // //                                   width: width,
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.04),

// // //                           // Subscription Info Card
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.all(width * 0.04),
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.grey[900],
// // //                                 borderRadius: BorderRadius.circular(width * 0.02),
// // //                                 border: Border.all(
// // //                                   color: Colors.grey[800]!,
// // //                                   width: 1,
// // //                                 ),
// // //                               ),
// // //                               child: Column(
// // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                                 children: [
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.subscriptions,
// // //                                         color: Colors.blue[400],
// // //                                         size: width * 0.06,
// // //                                       ),
// // //                                       SizedBox(width: width * 0.02),
// // //                                       Expanded(
// // //                                         child: Text(
// // //                                           'Subscription Details',
// // //                                           style: TextStyle(
// // //                                             color: Colors.white,
// // //                                             fontSize: width * 0.045,
// // //                                             fontWeight: FontWeight.w600,
// // //                                           ),
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.description,
// // //                                     label: 'Plan',
// // //                                     value: controller.subscriptionTitle.value,
// // //                                     width: width,
// // //                                   ),
// // //                                   SizedBox(height: height * 0.015),
// // //                                   // _buildInfoRow(
// // //                                   //   icon: Icons.movie,
// // //                                   //   label: 'Episode',
// // //                                   //   value: controller.episodeName.value,
// // //                                   //   width: width,
// // //                                   // ),
// // //                                   // SizedBox(height: height * 0.015),
// // //                                   _buildInfoRow(
// // //                                     icon: Icons.access_time,
// // //                                     label: 'Access Until',
// // //                                     value: controller.accessUntil.value,
// // //                                     width: width,
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           if (controller.subscriptionTitle.value.isNotEmpty)
// // //                             SizedBox(height: height * 0.04),

// // //                           // // Delete Account Option
// // //                           // GestureDetector(
// // //                           //   onTap: controller.deleteAccount,
// // //                           //   child: Container(
// // //                           //     width: width,
// // //                           //     padding: EdgeInsets.symmetric(
// // //                           //       vertical: height * 0.02,
// // //                           //     ),
// // //                           //     decoration: BoxDecoration(
// // //                           //       border: Border(
// // //                           //         bottom: BorderSide(
// // //                           //           color: Colors.grey.shade900,
// // //                           //           width: 1,
// // //                           //         ),
// // //                           //       ),
// // //                           //     ),
// // //                           //     child: Row(
// // //                           //       children: [
// // //                           //         Icon(
// // //                           //           Icons.delete_forever,
// // //                           //           color: Colors.red[400],
// // //                           //           size: width * 0.06,
// // //                           //         ),
// // //                           //         SizedBox(width: width * 0.04),
// // //                           //         Text(
// // //                           //           'Delete account',
// // //                           //           style: TextStyle(
// // //                           //             color: Colors.white,
// // //                           //             fontSize: orientation == Orientation.portrait
// // //                           //                 ? width * 0.045
// // //                           //                 : height * 0.04,
// // //                           //             fontWeight: FontWeight.w400,
// // //                           //           ),
// // //                           //         ),
// // //                           //       ],
// // //                           //     ),
// // //                           //   ),
// // //                           // ),

// // //                           SizedBox(height: height * 0.03),

// // //                           // Sign Out Option
// // //                           GestureDetector(
// // //                             onTap: controller.signOut,
// // //                             child: Container(
// // //                               width: width,
// // //                               padding: EdgeInsets.symmetric(
// // //                                 vertical: height * 0.02,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 border: Border(
// // //                                   bottom: BorderSide(
// // //                                     color: Colors.grey.shade900,
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                               child: Row(
// // //                                 children: [
// // //                                   Icon(
// // //                                     Icons.logout,
// // //                                     color: Colors.orange[400],
// // //                                     size: width * 0.06,
// // //                                   ),
// // //                                   SizedBox(width: width * 0.04),
// // //                                   Text(
// // //                                     'Sign out',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: orientation == Orientation.portrait
// // //                                           ? width * 0.045
// // //                                           : height * 0.04,
// // //                                       fontWeight: FontWeight.w400,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   )),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildInfoRow({
// // //     required IconData icon,
// // //     required String label,
// // //     required String value,
// // //     required double width,
// // //   }) {
// // //     return Row(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Icon(
// // //           icon,
// // //           color: Colors.grey[400],
// // //           size: width * 0.05,
// // //         ),
// // //         SizedBox(width: width * 0.03),
// // //         Expanded(
// // //           child: RichText(
// // //             text: TextSpan(
// // //               style: TextStyle(
// // //                 color: Colors.grey[400],
// // //                 fontSize: width * 0.038,
// // //               ),
// // //               children: [
// // //                 TextSpan(text: '$label: '),
// // //                 TextSpan(
// // //                   text: value,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontWeight: FontWeight.w500,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }




// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:intl/intl.dart';
// // import 'package:ott/View/Screen/Auth/signin.dart';

// // class MyAccountController extends GetxController {
// //   RxString userName = ''.obs;
// //   RxString userEmail = ''.obs;
// //   RxString userMobile = ''.obs;
// //   RxString subscriptionTitle = ''.obs;
// //   RxString episodeName = ''.obs;
// //   RxString accessUntil = ''.obs;
// //   RxBool isLoading = false.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     fetchProfile();
// //   }

// //   Future<void> fetchProfile() async {
// //     try {
// //       isLoading.value = true;
// //       final prefs = await SharedPreferences.getInstance();
// //       final token = prefs.getString('auth_token');
// //       if (token == null) {
// //         print('No token found');
// //         isLoading.value = false;
// //         return;
// //       }
// //       final response = await http.get(
// //         Uri.parse('$baseUrl/auth/me'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );
// //       print('MyAccount Response Status Code: ${response.statusCode}');
// //       print('MyAccount Response Body: ${response.body}');
// //       if (response.statusCode == 200) {
// //         final responseData = jsonDecode(response.body);
// //         if (responseData['user'] != null) {
// //           var user = responseData['user'];
// //           await prefs.setString('user_id', user['id'] ?? '');
// //           userName.value = user['name'] ?? '';
// //           userEmail.value = user['email'] ?? '';
// //           userMobile.value = user['mobile'] ?? '';
// //           var subs = user['episodeSubscriptions'];
// //           if (subs != null && subs.isNotEmpty) {
// //             var sub = subs[0];
// //             subscriptionTitle.value = sub['title'] ?? '';
// //             episodeName.value = sub['episodeName'] ?? '';
// //           }
// //           accessUntil.value = user['accessUntil'] != null
// //               ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user['accessUntil']))
// //               : '';
// //         }
// //       } else {
// //         print('Failed to fetch profile');
// //       }
// //     } catch (e) {
// //       print('Error fetching profile: $e');
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   Future<void> signOut() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.remove('auth_token');
// //       await prefs.remove('user_id');
// //       await prefs.remove('user_name');
// //       await prefs.remove('user_email');
// //       await prefs.remove('user_mobile');
// //       Get.snackbar(
// //         'Sign Out',
// //         'Signed out successfully',
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.green[800],
// //         colorText: Colors.white,
// //         duration: const Duration(seconds: 2),
// //       );
// //       Get.offAll(() => const Signin());
// //     } catch (e) {
// //       print('Error signing out: $e');
// //       Get.snackbar(
// //         'Error',
// //         'Error signing out. Please try again.',
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.red[800],
// //         colorText: Colors.white,
// //         duration: const Duration(seconds: 2),
// //       );
// //     }
// //   }
// // }

// // class Myaccount extends StatelessWidget {
// //   const Myaccount({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final MyAccountController controller = Get.put(MyAccountController());
// //     return OrientationBuilder(
// //       builder: (context, orientation) {
// //         double height = MediaQuery.of(context).size.height;
// //         double width = MediaQuery.of(context).size.width;
// //         return Scaffold(
// //           backgroundColor: Colors.black,
// //           body: SafeArea(
// //             child: Obx(() => controller.isLoading.value
// //                 ? Center(
// //                     child: CircularProgressIndicator(
// //                       color: Colors.white,
// //                     ),
// //                   )
// //                 : SingleChildScrollView(
// //                     child: Padding(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: width * 0.05,
// //                         vertical: height * 0.03,
// //                       ),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'My Account',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: orientation == Orientation.portrait
// //                                   ? width * 0.08
// //                                   : height * 0.065,
// //                               fontWeight: FontWeight.bold,
// //                               letterSpacing: 0.5,
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.01),
// //                           Text(
// //                             'Manage your profile and preferences',
// //                             style: TextStyle(
// //                               color: Colors.grey[500],
// //                               fontSize: width * 0.035,
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.04),

// //                           Container(
// //                             width: width,
// //                             padding: EdgeInsets.all(width * 0.045),
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 begin: Alignment.topLeft,
// //                                 end: Alignment.bottomRight,
// //                                 colors: [
// //                                   Colors.grey[900]!,
// //                                   Colors.grey[850]!,
// //                                 ],
// //                               ),
// //                               borderRadius: BorderRadius.circular(width * 0.04),
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   blurRadius: 10,
// //                                   offset: Offset(0, 4),
// //                                 ),
// //                               ],
// //                             ),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Row(
// //                                   children: [
// //                                     Container(
// //                                       padding: EdgeInsets.all(width * 0.025),
// //                                       decoration: BoxDecoration(
// //                                         color: Colors.blue[600],
// //                                         borderRadius: BorderRadius.circular(width * 0.02),
// //                                       ),
// //                                       child: Icon(
// //                                         Icons.person,
// //                                         color: Colors.white,
// //                                         size: width * 0.06,
// //                                       ),
// //                                     ),
// //                                     SizedBox(width: width * 0.03),
// //                                     Text(
// //                                       'Personal Information',
// //                                       style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: width * 0.045,
// //                                         fontWeight: FontWeight.w600,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 SizedBox(height: height * 0.025),
// //                                 Divider(color: Colors.grey[800], thickness: 1),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.account_circle,
// //                                   label: 'Name',
// //                                   value: controller.userName.value,
// //                                   width: width,
// //                                 ),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.email_outlined,
// //                                   label: 'Email',
// //                                   value: controller.userEmail.value,
// //                                   width: width,
// //                                 ),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.phone_android,
// //                                   label: 'Mobile',
// //                                   value: controller.userMobile.value,
// //                                   width: width,
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.03),

// //                           if (controller.subscriptionTitle.value.isNotEmpty)
// //                             Container(
// //                               width: width,
// //                               padding: EdgeInsets.all(width * 0.045),
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                   colors: [
// //                                     Colors.grey[900]!,
// //                                     Colors.grey[850]!,
// //                                   ],
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(width * 0.04),
// //                                 boxShadow: [
// //                                   BoxShadow(
// //                                     color: Colors.black.withOpacity(0.3),
// //                                     blurRadius: 10,
// //                                     offset: Offset(0, 4),
// //                                   ),
// //                                 ],
// //                               ),
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Row(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.all(width * 0.025),
// //                                         decoration: BoxDecoration(
// //                                           color: Colors.purple[600],
// //                                           borderRadius: BorderRadius.circular(width * 0.02),
// //                                         ),
// //                                         child: Icon(
// //                                           Icons.card_membership,
// //                                           color: Colors.white,
// //                                           size: width * 0.06,
// //                                         ),
// //                                       ),
// //                                       SizedBox(width: width * 0.03),
// //                                       Text(
// //                                         'Subscription Details',
// //                                         style: TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: width * 0.045,
// //                                           fontWeight: FontWeight.w600,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                   SizedBox(height: height * 0.025),
// //                                   Divider(color: Colors.grey[800], thickness: 1),
// //                                   SizedBox(height: height * 0.02),
// //                                   _buildInfoRow(
// //                                     icon: Icons.workspace_premium,
// //                                     label: 'Plan',
// //                                     value: controller.subscriptionTitle.value,
// //                                     width: width,
// //                                   ),
// //                                   SizedBox(height: height * 0.02),
// //                                   _buildInfoRow(
// //                                     icon: Icons.calendar_today,
// //                                     label: 'Access Until',
// //                                     value: controller.accessUntil.value,
// //                                     width: width,
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           if (controller.subscriptionTitle.value.isNotEmpty)
// //                             SizedBox(height: height * 0.03),

// //                           GestureDetector(
// //                             onTap: controller.signOut,
// //                             child: Container(
// //                               width: width,
// //                               padding: EdgeInsets.symmetric(
// //                                 vertical: height * 0.02,
// //                                 horizontal: width * 0.04,
// //                               ),
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                   colors: [
// //                                     Colors.red[700]!,
// //                                     Colors.red[900]!,
// //                                   ],
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(width * 0.03),
// //                                 boxShadow: [
// //                                   BoxShadow(
// //                                     color: Colors.red.withOpacity(0.3),
// //                                     blurRadius: 8,
// //                                     offset: Offset(0, 4),
// //                                   ),
// //                                 ],
// //                               ),
// //                               child: Row(
// //                                 mainAxisAlignment: MainAxisAlignment.center,
// //                                 children: [
// //                                   Icon(
// //                                     Icons.logout,
// //                                     color: Colors.white,
// //                                     size: width * 0.055,
// //                                   ),
// //                                   SizedBox(width: width * 0.03),
// //                                   Text(
// //                                     'Sign Out',
// //                                     style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: orientation == Orientation.portrait
// //                                           ? width * 0.045
// //                                           : height * 0.04,
// //                                       fontWeight: FontWeight.w600,
// //                                       letterSpacing: 0.5,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   )),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildInfoRow({
// //     required IconData icon,
// //     required String label,
// //     required String value,
// //     required double width,
// //   }) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         vertical: width * 0.025,
// //         horizontal: width * 0.03,
// //       ),
// //       decoration: BoxDecoration(
// //         color: Colors.black.withOpacity(0.2),
// //         borderRadius: BorderRadius.circular(width * 0.02),
// //       ),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Icon(
// //             icon,
// //             color: Colors.blue[400],
// //             size: width * 0.05,
// //           ),
// //           SizedBox(width: width * 0.03),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   label,
// //                   style: TextStyle(
// //                     color: Colors.grey[500],
// //                     fontSize: width * 0.032,
// //                     fontWeight: FontWeight.w500,
// //                   ),
// //                 ),
// //                 SizedBox(height: 2),
// //                 Text(
// //                   value,
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: width * 0.04,
// //                     fontWeight: FontWeight.w500,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }




// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:intl/intl.dart';
// // import 'package:ott/View/Screen/Auth/signin.dart';

// // // Data Models with Null Safety
// // class UserResponse {
// //   final User user;

// //   UserResponse({required this.user});

// //   factory UserResponse.fromJson(Map<String, dynamic> json) {
// //     return UserResponse(
// //       user: User.fromJson(json['user'] ?? {}),
// //     );
// //   }
// // }

// // class User {
// //   final String id;
// //   final String name;
// //   final String email;
// //   final String mobile;
// //   final String status;
// //   final bool emailVerified;
// //   final String subscriptionStatus;
// //   final bool hasAllAccess;
// //   final List<EpisodeSubscription> episodeSubscriptions;
// //   final String accessUntil;
// //   final String lastLoginAt;

// //   User({
// //     required this.id,
// //     required this.name,
// //     required this.email,
// //     required this.mobile,
// //     required this.status,
// //     required this.emailVerified,
// //     required this.subscriptionStatus,
// //     required this.hasAllAccess,
// //     required this.episodeSubscriptions,
// //     required this.accessUntil,
// //     required this.lastLoginAt,
// //   });

// //   factory User.fromJson(Map<String, dynamic> json) {
// //     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
// //     List<EpisodeSubscription> subs = subsJson
// //         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
// //         .toList();

// //     return User(
// //       id: json['id']?.toString() ?? '',
// //       name: json['name']?.toString() ?? '',
// //       email: json['email']?.toString() ?? '',
// //       mobile: json['mobile']?.toString() ?? '',
// //       status: json['status']?.toString() ?? '',
// //       emailVerified: json['emailVerified'] as bool? ?? false,
// //       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
// //       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
// //       episodeSubscriptions: subs,
// //       accessUntil: json['accessUntil']?.toString() ?? '',
// //       lastLoginAt: json['lastLoginAt']?.toString() ?? '',
// //     );
// //   }
// // }

// // class EpisodeSubscription {
// //   final String episodeId;
// //   final String planCode;
// //   final String title;
// //   final String endAt;
// //   final String episodeName;

// //   EpisodeSubscription({
// //     required this.episodeId,
// //     required this.planCode,
// //     required this.title,
// //     required this.endAt,
// //     required this.episodeName,
// //   });

// //   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
// //     return EpisodeSubscription(
// //       episodeId: json['episodeId']?.toString() ?? '',
// //       planCode: json['planCode']?.toString() ?? '',
// //       title: json['title']?.toString() ?? '',
// //       endAt: json['endAt']?.toString() ?? '',
// //       episodeName: json['episodeName']?.toString() ?? '',
// //     );
// //   }
// // }

// // class MyAccountController extends GetxController {
// //   RxString userName = ''.obs;
// //   RxString userEmail = ''.obs;
// //   RxString userMobile = ''.obs;
// //   RxList<EpisodeSubscription> episodeSubscriptions = <EpisodeSubscription>[].obs;
// //   RxString accessUntil = ''.obs;
// //   RxBool isLoading = false.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     fetchProfile();
// //   }

// //   Future<void> fetchProfile() async {
// //     try {
// //       isLoading.value = true;
// //       final prefs = await SharedPreferences.getInstance();
// //       final token = prefs.getString('auth_token');
// //       if (token == null) {
// //         print('No token found');
// //         isLoading.value = false;
// //         return;
// //       }
// //       final response = await http.get(
// //         Uri.parse('$baseUrl/auth/me'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );
// //       print('MyAccount Response Status Code: ${response.statusCode}');
// //       print('MyAccount Response Body: ${response.body}');
// //       if (response.statusCode == 200) {
// //         final responseData = jsonDecode(response.body);
// //         var userResponse = UserResponse.fromJson(responseData);
// //         var user = userResponse.user;
// //         await prefs.setString('user_id', user.id);
// //         userName.value = user.name;
// //         userEmail.value = user.email;
// //         userMobile.value = user.mobile;
// //         episodeSubscriptions.value = user.episodeSubscriptions;
// //         accessUntil.value = user.accessUntil.isNotEmpty
// //             ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user.accessUntil))
// //             : '';
// //       } else {
// //         print('Failed to fetch profile');
// //       }
// //     } catch (e) {
// //       print('Error fetching profile: $e');
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   Future<void> signOut() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       await prefs.remove('auth_token');
// //       await prefs.remove('user_id');
// //       await prefs.remove('user_name');
// //       await prefs.remove('user_email');
// //       await prefs.remove('user_mobile');
// //       Get.snackbar(
// //         'Sign Out',
// //         'Signed out successfully',
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.green[800],
// //         colorText: Colors.white,
// //         duration: const Duration(seconds: 2),
// //       );
// //       Get.offAll(() => const Signin());
// //     } catch (e) {
// //       print('Error signing out: $e');
// //       Get.snackbar(
// //         'Error',
// //         'Error signing out. Please try again.',
// //         snackPosition: SnackPosition.BOTTOM,
// //         backgroundColor: Colors.red[800],
// //         colorText: Colors.white,
// //         duration: const Duration(seconds: 2),
// //       );
// //     }
// //   }
// // }

// // class Myaccount extends StatelessWidget {
// //   const Myaccount({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final MyAccountController controller = Get.put(MyAccountController());
// //     return OrientationBuilder(
// //       builder: (context, orientation) {
// //         double height = MediaQuery.of(context).size.height;
// //         double width = MediaQuery.of(context).size.width;
// //         return Scaffold(
// //           backgroundColor: Colors.black,
// //           body: SafeArea(
// //             child: Obx(() => controller.isLoading.value
// //                 ? Center(
// //                     child: CircularProgressIndicator(
// //                       color: Colors.white,
// //                     ),
// //                   )
// //                 : SingleChildScrollView(
// //                     child: Padding(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: width * 0.05,
// //                         vertical: height * 0.03,
// //                       ),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'My Account',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: orientation == Orientation.portrait
// //                                   ? width * 0.08
// //                                   : height * 0.065,
// //                               fontWeight: FontWeight.bold,
// //                               letterSpacing: 0.5,
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.01),
// //                           Text(
// //                             'Manage your profile and preferences',
// //                             style: TextStyle(
// //                               color: Colors.grey[500],
// //                               fontSize: width * 0.035,
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.04),
// //                           Container(
// //                             width: width,
// //                             padding: EdgeInsets.all(width * 0.045),
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 begin: Alignment.topLeft,
// //                                 end: Alignment.bottomRight,
// //                                 colors: [
// //                                   Colors.grey[900]!,
// //                                   Colors.grey[850]!,
// //                                 ],
// //                               ),
// //                               borderRadius: BorderRadius.circular(width * 0.04),
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black.withOpacity(0.3),
// //                                   blurRadius: 10,
// //                                   offset: Offset(0, 4),
// //                                 ),
// //                               ],
// //                             ),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 Row(
// //                                   children: [
// //                                     Container(
// //                                       padding: EdgeInsets.all(width * 0.025),
// //                                       decoration: BoxDecoration(
// //                                         color: Colors.blue[600],
// //                                         borderRadius: BorderRadius.circular(width * 0.02),
// //                                       ),
// //                                       child: Icon(
// //                                         Icons.person,
// //                                         color: Colors.white,
// //                                         size: width * 0.06,
// //                                       ),
// //                                     ),
// //                                     SizedBox(width: width * 0.03),
// //                                     Text(
// //                                       'Personal Information',
// //                                       style: TextStyle(
// //                                         color: Colors.white,
// //                                         fontSize: width * 0.045,
// //                                         fontWeight: FontWeight.w600,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 SizedBox(height: height * 0.025),
// //                                 Divider(color: Colors.grey[800], thickness: 1),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.account_circle,
// //                                   label: 'Name',
// //                                   value: controller.userName.value,
// //                                   width: width,
// //                                 ),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.email_outlined,
// //                                   label: 'Email',
// //                                   value: controller.userEmail.value,
// //                                   width: width,
// //                                 ),
// //                                 SizedBox(height: height * 0.02),
// //                                 _buildInfoRow(
// //                                   icon: Icons.phone_android,
// //                                   label: 'Mobile',
// //                                   value: controller.userMobile.value,
// //                                   width: width,
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.03),
// //                           if (controller.episodeSubscriptions.isNotEmpty)
// //                             Container(
// //                               width: width,
// //                               padding: EdgeInsets.all(width * 0.045),
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                   colors: [
// //                                     Colors.grey[900]!,
// //                                     Colors.grey[850]!,
// //                                   ],
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(width * 0.04),
// //                                 boxShadow: [
// //                                   BoxShadow(
// //                                     color: Colors.black.withOpacity(0.3),
// //                                     blurRadius: 10,
// //                                     offset: Offset(0, 4),
// //                                   ),
// //                                 ],
// //                               ),
// //                               child: Column(
// //                                 crossAxisAlignment: CrossAxisAlignment.start,
// //                                 children: [
// //                                   Row(
// //                                     children: [
// //                                       Container(
// //                                         padding: EdgeInsets.all(width * 0.025),
// //                                         decoration: BoxDecoration(
// //                                           color: Colors.purple[600],
// //                                           borderRadius: BorderRadius.circular(width * 0.02),
// //                                         ),
// //                                         child: Icon(
// //                                           Icons.card_membership,
// //                                           color: Colors.white,
// //                                           size: width * 0.06,
// //                                         ),
// //                                       ),
// //                                       SizedBox(width: width * 0.03),
// //                                       Text(
// //                                         'Subscription Details',
// //                                         style: TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: width * 0.045,
// //                                           fontWeight: FontWeight.w600,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                   SizedBox(height: height * 0.025),
// //                                   Divider(color: Colors.grey[800], thickness: 1),
// //                                   SizedBox(height: height * 0.02),
// //                                   _buildInfoRow(
// //                                     icon: Icons.access_time,
// //                                     label: 'Access Until',
// //                                     value: controller.accessUntil.value,
// //                                     width: width,
// //                                   ),
// //                                   SizedBox(height: height * 0.02),
// //                                   Text(
// //                                     'Active Plans',
// //                                     style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: width * 0.045,
// //                                       fontWeight: FontWeight.w600,
// //                                     ),
// //                                   ),
// //                                   SizedBox(height: height * 0.015),
// //                                   ...controller.episodeSubscriptions.map((sub) => Padding(
// //                                     padding: EdgeInsets.only(bottom: height * 0.015),
// //                                     child: Container(
// //                                       padding: EdgeInsets.all(width * 0.03),
// //                                       decoration: BoxDecoration(
// //                                         color: Colors.black.withOpacity(0.2),
// //                                         borderRadius: BorderRadius.circular(width * 0.02),
// //                                       ),
// //                                       child: Column(
// //                                         crossAxisAlignment: CrossAxisAlignment.start,
// //                                         children: [
// //                                           _buildInfoRow(
// //                                             icon: Icons.movie,
// //                                             label: 'Episode',
// //                                             value: sub.episodeName,
// //                                             width: width,
// //                                           ),
// //                                           SizedBox(height: height * 0.01),
// //                                           _buildInfoRow(
// //                                             icon: Icons.description,
// //                                             label: 'Plan',
// //                                             value: sub.title,
// //                                             width: width,
// //                                           ),
// //                                           SizedBox(height: height * 0.01),
// //                                           _buildInfoRow(
// //                                             icon: Icons.date_range,
// //                                             label: 'Ends At',
// //                                             value: DateFormat('MMM dd, yyyy').format(DateTime.parse(sub.endAt)),
// //                                             width: width,
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   )).toList(),
// //                                 ],
// //                               ),
// //                             ),
// //                           if (controller.episodeSubscriptions.isNotEmpty)
// //                             SizedBox(height: height * 0.03),
// //                           GestureDetector(
// //                             onTap: controller.signOut,
// //                             child: Container(
// //                               width: width,
// //                               padding: EdgeInsets.symmetric(
// //                                 vertical: height * 0.02,
// //                                 horizontal: width * 0.04,
// //                               ),
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                   colors: [
// //                                     Colors.red[700]!,
// //                                     Colors.red[900]!,
// //                                   ],
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(width * 0.03),
// //                                 boxShadow: [
// //                                   BoxShadow(
// //                                     color: Colors.red.withOpacity(0.3),
// //                                     blurRadius: 8,
// //                                     offset: Offset(0, 4),
// //                                   ),
// //                                 ],
// //                               ),
// //                               child: Row(
// //                                 mainAxisAlignment: MainAxisAlignment.center,
// //                                 children: [
// //                                   Icon(
// //                                     Icons.logout,
// //                                     color: Colors.white,
// //                                     size: width * 0.055,
// //                                   ),
// //                                   SizedBox(width: width * 0.03),
// //                                   Text(
// //                                     'Sign Out',
// //                                     style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: orientation == Orientation.portrait
// //                                           ? width * 0.045
// //                                           : height * 0.04,
// //                                       fontWeight: FontWeight.w600,
// //                                       letterSpacing: 0.5,
// //                                     ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   )),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildInfoRow({
// //     required IconData icon,
// //     required String label,
// //     required String value,
// //     required double width,
// //   }) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         vertical: width * 0.025,
// //         horizontal: width * 0.03,
// //       ),
// //       decoration: BoxDecoration(
// //         color: Colors.black.withOpacity(0.2),
// //         borderRadius: BorderRadius.circular(width * 0.02),
// //       ),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Icon(
// //             icon,
// //             color: Colors.blue[400],
// //             size: width * 0.05,
// //           ),
// //           SizedBox(width: width * 0.03),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   label,
// //                   style: TextStyle(
// //                     color: Colors.grey[500],
// //                     fontSize: width * 0.032,
// //                     fontWeight: FontWeight.w500,
// //                   ),
// //                 ),
// //                 SizedBox(height: 2),
// //                 Text(
// //                   value,
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: width * 0.04,
// //                     fontWeight: FontWeight.w500,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String accessUntil;
//   final String lastLoginAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     required this.accessUntil,
//     required this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString() ?? '',
//       lastLoginAt: json['lastLoginAt']?.toString() ?? '',
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     required this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString() ?? '',
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId'],
//       episodeName: json['episodeName'],
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt'],
//       endAt: json['endAt'],
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null) return false;
//     try {
//       return DateTime.parse(endAt!).isAfter(DateTime.now());
//     } catch (e) {
//       return false;
//     }
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         accessUntil.value = user.accessUntil.isNotEmpty
//             ? DateFormat('MMM dd, yyyy').format(DateTime.parse(user.accessUntil))
//             : '';
//       } else {
//         print('Failed to fetch profile');
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
//       Get.snackbar(
//         'Sign Out',
//         'Signed out successfully',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//       Get.offAll(() => const Signin());
//     } catch (e) {
//       print('Error signing out: $e');
//       Get.snackbar(
//         'Error',
//         'Error signing out. Please try again.',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.red[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//     }
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? Center(
//                     child: CircularProgressIndicator(
//                       color: Colors.white,
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(width * 0.025),
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue[600],
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Colors.white,
//                                         size: width * 0.06,
//                                       ),
//                                     ),
//                                     SizedBox(width: width * 0.03),
//                                     Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: width * 0.045,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           if (controller.mySubscriptions.where((s) => s.isActive).isNotEmpty)
//                             Container(
//                               width: width,
//                               padding: EdgeInsets.all(width * 0.045),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.grey[900]!,
//                                     Colors.grey[850]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.04),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.3),
//                                     blurRadius: 10,
//                                     offset: Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.all(width * 0.025),
//                                         decoration: BoxDecoration(
//                                           color: Colors.purple[600],
//                                           borderRadius: BorderRadius.circular(width * 0.02),
//                                         ),
//                                         child: Icon(
//                                           Icons.card_membership,
//                                           color: Colors.white,
//                                           size: width * 0.06,
//                                         ),
//                                       ),
//                                       SizedBox(width: width * 0.03),
//                                       Text(
//                                         'Subscription Details',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: width * 0.045,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: height * 0.025),
//                                   Divider(color: Colors.grey[800], thickness: 1),
//                                   SizedBox(height: height * 0.02),
//                                   _buildInfoRow(
//                                     icon: Icons.access_time,
//                                     label: 'Access Until',
//                                     value: controller.accessUntil.value,
//                                     width: width,
//                                   ),
//                                   SizedBox(height: height * 0.02),
//                                   Text(
//                                     'Active Plans',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: width * 0.045,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   SizedBox(height: height * 0.015),
//                                   ...controller.mySubscriptions.where((sub) => sub.isActive).map((sub) => Padding(
//                                     padding: EdgeInsets.only(bottom: height * 0.015),
//                                     child: Container(
//                                       padding: EdgeInsets.all(width * 0.03),
//                                       decoration: BoxDecoration(
//                                         color: Colors.black.withOpacity(0.2),
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           _buildInfoRow(
//                                             icon: Icons.movie,
//                                             label: 'Episode',
//                                             value: sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                             width: width,
//                                           ),
//                                           SizedBox(height: height * 0.01),
//                                           _buildInfoRow(
//                                             icon: Icons.description,
//                                             label: 'Plan',
//                                             value: sub.plan.title,
//                                             width: width,
//                                           ),
//                                           SizedBox(height: height * 0.01),
//                                           _buildInfoRow(
//                                             icon: Icons.date_range,
//                                             label: 'Ends At',
//                                             value: DateFormat('MMM dd, yyyy').format(DateTime.parse(sub.endAt!)),
//                                             width: width,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   )).toList(),
//                                 ],
//                               ),
//                             ),
//                           if (controller.mySubscriptions.where((s) => s.isActive).isNotEmpty)
//                             SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: Colors.blue[400],
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String accessUntil;
//   final String lastLoginAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     required this.accessUntil,
//     required this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString() ?? '',
//       lastLoginAt: json['lastLoginAt']?.toString() ?? '',
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     required this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString() ?? '',
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId'],
//       episodeName: json['episodeName'],
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt'],
//       endAt: json['endAt'],
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//       } else {
//         print('Failed to fetch profile');
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
//       Get.snackbar(
//         'Sign Out',
//         'Signed out successfully',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//       Get.offAll(() => const Signin());
//     } catch (e) {
//       print('Error signing out: $e');
//       Get.snackbar(
//         'Error',
//         'Error signing out. Please try again.',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.red[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//     }
//   }
// }

// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Colors.blue,
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.blue),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expire on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? Center(
//                     child: CircularProgressIndicator(
//                       color: Colors.white,
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(width * 0.025),
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue[600],
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Colors.white,
//                                         size: width * 0.06,
//                                       ),
//                                     ),
//                                     SizedBox(width: width * 0.03),
//                                     Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: width * 0.045,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           if (controller.mySubscriptions.where((s) => s.isActive).isNotEmpty)
//                             Container(
//                               width: width,
//                               padding: EdgeInsets.all(width * 0.045),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.grey[900]!,
//                                     Colors.grey[850]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.04),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.3),
//                                     blurRadius: 10,
//                                     offset: Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.all(width * 0.025),
//                                         decoration: BoxDecoration(
//                                           color: Colors.purple[600],
//                                           borderRadius: BorderRadius.circular(width * 0.02),
//                                         ),
//                                         child: Icon(
//                                           Icons.card_membership,
//                                           color: Colors.white,
//                                           size: width * 0.06,
//                                         ),
//                                       ),
//                                       SizedBox(width: width * 0.03),
//                                       Text(
//                                         'Subscription Details',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: width * 0.045,
//                                           fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: height * 0.025),
//                                   Divider(color: Colors.grey[800], thickness: 1),
//                                   SizedBox(height: height * 0.02),
//                                   _buildInfoRow(
//                                     icon: Icons.access_time,
//                                     label: 'Access Until',
//                                     value: controller.accessUntil.value,
//                                     width: width,
//                                   ),
//                                   SizedBox(height: height * 0.02),
//                                   Text(
//                                     'Active Plans',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: width * 0.045,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   SizedBox(height: height * 0.015),
//                                   ...controller.mySubscriptions.where((sub) => sub.isActive).map((sub) => Padding(
//                                     padding: EdgeInsets.only(bottom: height * 0.015),
//                                     child: Container(
//                                       padding: EdgeInsets.all(width * 0.03),
//                                       decoration: BoxDecoration(
//                                         color: Colors.black.withOpacity(0.2),
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           _buildInfoRow(
//                                             icon: Icons.movie,
//                                             label: 'Episode',
//                                             value: sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                             width: width,
//                                           ),
//                                           SizedBox(height: height * 0.01),
//                                           _buildInfoRow(
//                                             icon: Icons.description,
//                                             label: 'Plan',
//                                             value: sub.plan.title,
//                                             width: width,
//                                           ),
//                                           SizedBox(height: height * 0.01),
//                                           _buildInfoRow(
//                                             icon: Icons.date_range,
//                                             label: 'Ends At',
//                                             value: safeDateFormat(sub.endAt),
//                                             width: width,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   )).toList(),
//                                   SizedBox(height: height * 0.02),
//                                   GestureDetector(
//                                     onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                                     child: Container(
//                                       width: width,
//                                       padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue[600],
//                                         borderRadius: BorderRadius.circular(8),
//                                       ),
//                                       child: const Center(
//                                         child: Text(
//                                           'View All Subscriptions',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           if (controller.mySubscriptions.where((s) => s.isActive).isNotEmpty)
//                             SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: Colors.blue[400],
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String accessUntil;
//   final String lastLoginAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     required this.accessUntil,
//     required this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString() ?? '',
//       lastLoginAt: json['lastLoginAt']?.toString() ?? '',
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     required this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString() ?? '',
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId'],
//       episodeName: json['episodeName'],
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt'],
//       endAt: json['endAt'],
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//       } else {
//         print('Failed to fetch profile');
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
//       Get.snackbar(
//         'Sign Out',
//         'Signed out successfully',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//       Get.offAll(() => const Signin());
//     } catch (e) {
//       print('Error signing out: $e');
//       Get.snackbar(
//         'Error',
//         'Error signing out. Please try again.',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.red[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//     }
//   }
// }

// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Colors.blue,
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.blue),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expire on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? Center(
//                     child: CircularProgressIndicator(
//                       color: Colors.white,
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(width * 0.025),
//                                       decoration: BoxDecoration(
//                                         color: Colors.blue[600],
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Colors.white,
//                                         size: width * 0.06,
//                                       ),
//                                     ),
//                                     SizedBox(width: width * 0.03),
//                                     Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: width * 0.045,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.blue[600],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: Colors.blue[400],
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// } 



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String accessUntil;
//   final String lastLoginAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     required this.accessUntil,
//     required this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString() ?? '',
//       lastLoginAt: json['lastLoginAt']?.toString() ?? '',
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     required this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString() ?? '',
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId'],
//       episodeName: json['episodeName'],
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt'],
//       endAt: json['endAt'],
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
      
//       // Show success toast
//       showToast('Signed out successfully! See you again soon.', true);
      
//       // Navigate after short delay
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }

// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(width * 0.025),
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00A8E8),
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Colors.white,
//                                         size: width * 0.06,
//                                       ),
//                                     ),
//                                     SizedBox(width: width * 0.03),
//                                     Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: width * 0.045,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
      
//       // Show success toast
//       showToast('Signed out successfully! See you again soon.', true);
      
//       // Navigate after short delay
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }

// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(width * 0.025),
//                                       decoration: BoxDecoration(
//                                         color: const Color(0xFF00A8E8),
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                       child: Icon(
//                                         Icons.person,
//                                         color: Colors.white,
//                                         size: width * 0.06,
//                                       ),
//                                     ),
//                                     SizedBox(width: width * 0.03),
//                                     Text(
//                                       'Personal Information',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: width * 0.045,
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;

//   UserResponse({required this.user});

//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();

//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   // Update Profile Function
//   Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
      
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }

//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );

//       request.headers['Authorization'] = 'Bearer $token';

//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }

//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }

//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);

//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile(); // Refresh profile data
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
      
//       showToast('Signed out successfully! See you again soon.', true);
      
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }

// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentPhoto;

//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentPhoto,
//   });

//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }

// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }

//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
      
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: Colors.grey[900],
//         title: const Text(
//           'Choose Image Source',
//           style: TextStyle(color: Colors.white),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.camera_alt, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Camera',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.camera);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.photo_library, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Gallery',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.gallery);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     final width = MediaQuery.of(context).size.width;

//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Edit Profile',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
              
//               // Profile Photo Section
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     width: 120,
//                     height: 120,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xFF00A8E8),
//                         width: 3,
//                       ),
//                     ),
//                     child: ClipOval(
//                       child: selectedImage != null
//                           ? Image.file(
//                               selectedImage!,
//                               fit: BoxFit.cover,
//                             )
//                           : widget.currentPhoto.isNotEmpty
//                               ? Image.network(
//                                   widget.currentPhoto,
//                                   fit: BoxFit.cover,
//                                   errorBuilder: (context, error, stackTrace) {
//                                     return Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.person,
//                                         size: 60,
//                                         color: Colors.white,
//                                       ),
//                                     );
//                                   },
//                                 )
//                               : Container(
//                                   color: Colors.grey[800],
//                                   child: const Icon(
//                                     Icons.person,
//                                     size: 60,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: GestureDetector(
//                       onTap: showImageSourceDialog,
//                       child: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF00A8E8),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 24),
              
//               // Name Field
//               TextField(
//                 controller: nameController,
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   labelStyle: const TextStyle(color: Colors.grey),
//                   prefixIcon: const Icon(Icons.person, color: Color(0xFF00A8E8)),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.grey[700]!),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Color(0xFF00A8E8)),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
              
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // Cancel Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey[800],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         // Save Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
                              
//                               if (newName.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }

//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                              
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                          
//                           // Profile Photo Section
//                           Center(
//                             child: Container(
//                               width: 120,
//                               height: 120,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(0xFF00A8E8),
//                                   width: 3,
//                                 ),
//                               ),
//                               child: ClipOval(
//                                 child: controller.profilePhoto.value.isNotEmpty
//                                     ? Image.network(
//                                         controller.profilePhoto.value,
//                                         fit: BoxFit.cover,
//                                         errorBuilder: (context, error, stackTrace) {
//                                           return Container(
//                                             color: Colors.grey[800],
//                                             child: const Icon(
//                                               Icons.person,
//                                               size: 60,
//                                               color: Colors.white,
//                                             ),
//                                           );
//                                         },
//                                       )
//                                     : Container(
//                                         color: Colors.grey[800],
//                                         child: const Icon(
//                                           Icons.person,
//                                           size: 60,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                          
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             color: const Color(0xFF00A8E8),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.person,
//                                             color: Colors.white,
//                                             size: width * 0.06,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Information',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     // Edit Icon Button
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.02),
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                           borderRadius: BorderRadius.circular(8),
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: const Color(0xFF00A8E8),
//                                           size: width * 0.05,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import '../Profile.dart'; // Import Profile.dart to access ProfileController for syncing
// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }
// // Data Models with Null Safety
// class UserResponse {
//   final User user;
//   UserResponse({required this.user});
//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }
// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;
//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });
//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }
// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;
//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });
//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }
// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;
//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });
//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }
// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;
//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });
//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }
//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }
// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;
//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });
//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }
// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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
//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//         // Sync with ProfileController if it exists
//         try {
//           final profileCtrl = Get.find<ProfileController>();
//           profileCtrl.userName.value = userName.value;
//           profileCtrl.profilePhoto.value = profilePhoto.value;
//         } catch (e) {
//           print('ProfileController not found for sync: $e');
//         }
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }
//   // Update Profile Function
//   Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
     
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }
//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );
//       request.headers['Authorization'] = 'Bearer $token';
//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }
//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }
//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);
//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile(); // Refresh profile data and sync with ProfileController
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }
//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
     
//       showToast('Signed out successfully! See you again soon.', true);
     
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }
// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentPhoto;
//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentPhoto,
//   });
//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }
// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//   }
//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
     
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }
//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: Colors.grey[900],
//         title: const Text(
//           'Choose Image Source',
//           style: TextStyle(color: Colors.white),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.camera_alt, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Camera',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.camera);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.photo_library, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Gallery',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.gallery);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     final width = MediaQuery.of(context).size.width;
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Edit Profile',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Profile Photo Section
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     width: 120,
//                     height: 120,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xFF00A8E8),
//                         width: 3,
//                       ),
//                     ),
//                     child: ClipOval(
//                       child: selectedImage != null
//                           ? Image.file(
//                               selectedImage!,
//                               fit: BoxFit.cover,
//                             )
//                           : widget.currentPhoto.isNotEmpty
//                               ? Image.network(
//                                   widget.currentPhoto,
//                                   fit: BoxFit.cover,
//                                   errorBuilder: (context, error, stackTrace) {
//                                     return Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.person,
//                                         size: 60,
//                                         color: Colors.white,
//                                       ),
//                                     );
//                                   },
//                                 )
//                               : Container(
//                                   color: Colors.grey[800],
//                                   child: const Icon(
//                                     Icons.person,
//                                     size: 60,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: GestureDetector(
//                       onTap: showImageSourceDialog,
//                       child: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF00A8E8),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 24),
             
//               // Name Field
//               TextField(
//                 controller: nameController,
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   labelStyle: const TextStyle(color: Colors.grey),
//                   prefixIcon: const Icon(Icons.person, color: Color(0xFF00A8E8)),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.grey[700]!),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Color(0xFF00A8E8)),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // Cancel Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey[800],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         // Save Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
                             
//                               if (newName.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }
//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                             
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Profile Photo Section
//                           Center(
//                             child: Container(
//                               width: 120,
//                               height: 120,
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(
//                                   color: const Color(0xFF00A8E8),
//                                   width: 3,
//                                 ),
//                               ),
//                               child: ClipOval(
//                                 child: controller.profilePhoto.value.isNotEmpty
//                                     ? Image.network(
//                                         controller.profilePhoto.value,
//                                         fit: BoxFit.cover,
//                                         errorBuilder: (context, error, stackTrace) {
//                                           return Container(
//                                             color: Colors.grey[800],
//                                             child: const Icon(
//                                               Icons.person,
//                                               size: 60,
//                                               color: Colors.white,
//                                             ),
//                                           );
//                                         },
//                                       )
//                                     : Container(
//                                         color: Colors.grey[800],
//                                         child: const Icon(
//                                           Icons.person,
//                                           size: 60,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             color: const Color(0xFF00A8E8),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.person,
//                                             color: Colors.white,
//                                             size: width * 0.06,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Information',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     // Edit Icon Button
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.02),
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                           borderRadius: BorderRadius.circular(8),
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: const Color(0xFF00A8E8),
//                                           size: width * 0.05,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }
//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// // }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import '../Profile.dart'; // Import Profile.dart to access ProfileController for syncing
// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }
// // Data Models with Null Safety
// class UserResponse {
//   final User user;
//   UserResponse({required this.user});
//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }
// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;
//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });
//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }
// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;
//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });
//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }
// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;
//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });
//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }
// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;
//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });
//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }
//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }
// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;
//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });
//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }
// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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
//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//         // Sync with ProfileController if it exists
//         try {
//           final profileCtrl = Get.find<ProfileController>();
//           profileCtrl.userName.value = userName.value;
//           profileCtrl.profilePhoto.value = profilePhoto.value;
//         } catch (e) {
//           print('ProfileController not found for sync: $e');
//         }
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }
//   // Update Profile Function
//   Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
     
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }
//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );
//       request.headers['Authorization'] = 'Bearer $token';
//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }
//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }
//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);
//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile(); // Refresh profile data and sync with ProfileController
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }
//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
     
//       showToast('Signed out successfully! See you again soon.', true);
     
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }
// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentPhoto;
//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentPhoto,
//   });
//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }
// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//   }
//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
     
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }
//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: Colors.grey[900],
//         title: const Text(
//           'Choose Image Source',
//           style: TextStyle(color: Colors.white),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.camera_alt, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Camera',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.camera);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.photo_library, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Gallery',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.gallery);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     final width = MediaQuery.of(context).size.width;
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Edit Profile',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Profile Photo Section
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   Container(
//                     width: 120,
//                     height: 120,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: const Color(0xFF00A8E8),
//                         width: 3,
//                       ),
//                     ),
//                     child: ClipOval(
//                       child: selectedImage != null
//                           ? Image.file(
//                               selectedImage!,
//                               fit: BoxFit.cover,
//                             )
//                           : widget.currentPhoto.isNotEmpty
//                               ? Image.network(
//                                   widget.currentPhoto,
//                                   fit: BoxFit.cover,
//                                   errorBuilder: (context, error, stackTrace) {
//                                     return Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.person,
//                                         size: 60,
//                                         color: Colors.white,
//                                       ),
//                                     );
//                                   },
//                                 )
//                               : Container(
//                                   color: Colors.grey[800],
//                                   child: const Icon(
//                                     Icons.person,
//                                     size: 60,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: GestureDetector(
//                       onTap: showImageSourceDialog,
//                       child: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF00A8E8),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 24),
             
//               // Name Field
//               TextField(
//                 controller: nameController,
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   labelStyle: const TextStyle(color: Colors.grey),
//                   prefixIcon: const Icon(Icons.person, color: Color(0xFF00A8E8)),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.grey[700]!),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Color(0xFF00A8E8)),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // Cancel Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey[800],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         // Save Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
                             
//                               if (newName.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }
//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                             
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Profile Photo Section
//                           Center(
//                             child: GestureDetector(
//                               onTap: controller.profilePhoto.value.isNotEmpty
//                                   ? () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return Dialog(
//                                             backgroundColor: Colors.transparent,
//                                             insetPadding: EdgeInsets.zero,
//                                             child: Stack(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context).size.width,
//                                                   height: MediaQuery.of(context).size.height,
//                                                   decoration: const BoxDecoration(
//                                                     color: Colors.black,
//                                                   ),
//                                                   child: Image.network(
//                                                     controller.profilePhoto.value,
//                                                     fit: BoxFit.contain,
//                                                     width: double.infinity,
//                                                     height: double.infinity,
//                                                     errorBuilder: (context, error, stackTrace) {
//                                                       Navigator.of(context).pop();
//                                                       return const SizedBox.shrink();
//                                                     },
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   top: 40,
//                                                   right: 20,
//                                                   child: GestureDetector(
//                                                     onTap: () => Navigator.of(context).pop(),
//                                                     child: Container(
//                                                       padding: const EdgeInsets.all(8),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.black54,
//                                                         shape: BoxShape.circle,
//                                                       ),
//                                                       child: const Icon(
//                                                         Icons.close,
//                                                         color: Colors.white,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                   : null,
//                               child: Container(
//                                 width: 120,
//                                 height: 120,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8),
//                                     width: 3,
//                                   ),
//                                 ),
//                                 child: ClipOval(
//                                   child: controller.profilePhoto.value.isNotEmpty
//                                       ? Image.network(
//                                           controller.profilePhoto.value,
//                                           fit: BoxFit.cover,
//                                           errorBuilder: (context, error, stackTrace) {
//                                             return Container(
//                                               color: Colors.grey[800],
//                                               child: const Icon(
//                                                 Icons.person,
//                                                 size: 60,
//                                                 color: Colors.white,
//                                               ),
//                                             );
//                                           },
//                                         )
//                                       : Container(
//                                           color: Colors.grey[800],
//                                           child: const Icon(
//                                             Icons.person,
//                                             size: 60,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             color: const Color(0xFF00A8E8),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.person,
//                                             color: Colors.white,
//                                             size: width * 0.06,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Information',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     // Edit Icon Button
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.02),
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                           borderRadius: BorderRadius.circular(8),
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: const Color(0xFF00A8E8),
//                                           size: width * 0.05,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }
//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import '../Profile.dart'; // Import Profile.dart to access ProfileController for syncing
// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }
// // Data Models with Null Safety
// class UserResponse {
//   final User user;
//   UserResponse({required this.user});
//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }
// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;
//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });
//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }
// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;
//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });
//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }
// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;
//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });
//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }
// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;
//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });
//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }
//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }
// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;
//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });
//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }
// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';
//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
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
//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//         // Sync with ProfileController if it exists
//         try {
//           final profileCtrl = Get.find<ProfileController>();
//           profileCtrl.userName.value = userName.value;
//           profileCtrl.profilePhoto.value = profilePhoto.value;
//         } catch (e) {
//           print('ProfileController not found for sync: $e');
//         }
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }
//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }
//   // Update Profile Function
//   Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
     
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }
//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );
//       request.headers['Authorization'] = 'Bearer $token';
//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }
//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }
//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);
//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile(); // Refresh profile data and sync with ProfileController
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }
//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
     
//       showToast('Signed out successfully! See you again soon.', true);
     
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }
// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentPhoto;
//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentPhoto,
//   });
//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }
// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();
//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//   }
//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }
//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
     
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }
//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: Colors.grey[900],
//         title: const Text(
//           'Choose Image Source',
//           style: TextStyle(color: Colors.white),
//         ),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.camera_alt, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Camera',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.camera);
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.photo_library, color: Color(0xFF00A8E8)),
//               title: const Text(
//                 'Gallery',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//                 pickImage(ImageSource.gallery);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     final width = MediaQuery.of(context).size.width;
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.grey[900],
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Edit Profile',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Profile Photo Section
//               GestureDetector(
//                 onTap: showImageSourceDialog,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Container(
//                       width: 120,
//                       height: 120,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(
//                           color: const Color(0xFF00A8E8),
//                           width: 3,
//                         ),
//                       ),
//                       child: ClipOval(
//                         child: selectedImage != null
//                             ? Image.file(
//                                 selectedImage!,
//                                 fit: BoxFit.cover,
//                               )
//                             : widget.currentPhoto.isNotEmpty
//                                 ? Image.network(
//                                     widget.currentPhoto,
//                                     fit: BoxFit.cover,
//                                     errorBuilder: (context, error, stackTrace) {
//                                       return Container(
//                                         color: Colors.grey[800],
//                                         child: const Icon(
//                                           Icons.person,
//                                           size: 60,
//                                           color: Colors.white,
//                                         ),
//                                       );
//                                     },
//                                   )
//                                 : Container(
//                                     color: Colors.grey[800],
//                                     child: const Icon(
//                                       Icons.person,
//                                       size: 60,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 0,
//                       right: 0,
//                       child: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: const BoxDecoration(
//                           color: Color(0xFF00A8E8),
//                           shape: BoxShape.circle,
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 20,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Name Field
//               TextField(
//                 controller: nameController,
//                 style: const TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                   labelText: 'Name',
//                   labelStyle: const TextStyle(color: Colors.grey),
//                   prefixIcon: const Icon(Icons.person, color: Color(0xFF00A8E8)),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: BorderSide(color: Colors.grey[700]!),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                     borderSide: const BorderSide(color: Color(0xFF00A8E8)),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
             
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // Cancel Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 color: Colors.grey[800],
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         // Save Button
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
                             
//                               if (newName.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }
//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                             
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 14),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscription Details',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               color: Colors.black,
//               child: const TabBar(
//                 indicatorColor: Color(0xFF00A8E8),
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 tabs: [
//                   Tab(text: 'My Subscriptions'),
//                   Tab(text: 'Subscription History'),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // My Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No active subscriptions',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Ends: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Color(0xFF00A8E8)),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? const Center(
//                           child: Text(
//                             'No subscription history',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )
//                       : ListView.builder(
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return Padding(
//                               padding: const EdgeInsets.all(16.0),
//                               child: Container(
//                                 padding: const EdgeInsets.all(16.0),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey[900],
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       sub.plan.title,
//                                       style: const TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       sub.plan.scope == 'all' ? 'All Episodes' : (sub.episodeName ?? 'N/A'),
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Amount: ₹${sub.amount}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Start: ${safeDateFormat(sub.startAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                       'Expired on: ${safeDateFormat(sub.endAt)}',
//                                       style: const TextStyle(color: Colors.red),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});
//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'My Account',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: orientation == Orientation.portrait
//                                   ? width * 0.08
//                                   : height * 0.065,
//                               fontWeight: FontWeight.bold,
//                               letterSpacing: 0.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Manage your profile and preferences',
//                             style: TextStyle(
//                               color: Colors.grey[500],
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Profile Photo Section
//                           Center(
//                             child: GestureDetector(
//                               onTap: controller.profilePhoto.value.isNotEmpty
//                                   ? () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return Dialog(
//                                             backgroundColor: Colors.transparent,
//                                             insetPadding: EdgeInsets.zero,
//                                             child: Stack(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context).size.width,
//                                                   height: MediaQuery.of(context).size.height,
//                                                   decoration: const BoxDecoration(
//                                                     color: Colors.black,
//                                                   ),
//                                                   child: Image.network(
//                                                     controller.profilePhoto.value,
//                                                     fit: BoxFit.contain,
//                                                     width: double.infinity,
//                                                     height: double.infinity,
//                                                     errorBuilder: (context, error, stackTrace) {
//                                                       Navigator.of(context).pop();
//                                                       return const SizedBox.shrink();
//                                                     },
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   top: 40,
//                                                   right: 20,
//                                                   child: GestureDetector(
//                                                     onTap: () => Navigator.of(context).pop(),
//                                                     child: Container(
//                                                       padding: const EdgeInsets.all(8),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.black54,
//                                                         shape: BoxShape.circle,
//                                                       ),
//                                                       child: const Icon(
//                                                         Icons.close,
//                                                         color: Colors.white,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                   : null,
//                               child: Container(
//                                 width: 120,
//                                 height: 120,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                     color: const Color(0xFF00A8E8),
//                                     width: 3,
//                                   ),
//                                 ),
//                                 child: ClipOval(
//                                   child: controller.profilePhoto.value.isNotEmpty
//                                       ? Image.network(
//                                           controller.profilePhoto.value,
//                                           fit: BoxFit.cover,
//                                           errorBuilder: (context, error, stackTrace) {
//                                             return Container(
//                                               color: Colors.grey[800],
//                                               child: const Icon(
//                                                 Icons.person,
//                                                 size: 60,
//                                                 color: Colors.white,
//                                               ),
//                                             );
//                                           },
//                                         )
//                                       : Container(
//                                           color: Colors.grey[800],
//                                           child: const Icon(
//                                             Icons.person,
//                                             size: 60,
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   Colors.grey[900]!,
//                                   Colors.grey[850]!,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(width * 0.04),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 10,
//                                   offset: const Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             color: const Color(0xFF00A8E8),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.person,
//                                             color: Colors.white,
//                                             size: width * 0.06,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Information',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     // Edit Icon Button
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.02),
//                                         decoration: BoxDecoration(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                           borderRadius: BorderRadius.circular(8),
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: const Color(0xFF00A8E8),
//                                           size: width * 0.05,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle,
//                                   label: 'Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android,
//                                   label: 'Mobile',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF00A8E8),
//                                     Color(0xFF0077B6),
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'View Subscription Details',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                   colors: [
//                                     Colors.red[700]!,
//                                     Colors.red[900]!,
//                                   ],
//                                 ),
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.red.withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout,
//                                     color: Colors.white,
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }
//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         vertical: width * 0.025,
//         horizontal: width * 0.03,
//       ),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.2),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Icon(
//             icon,
//             color: const Color(0xFF00A8E8),
//             size: width * 0.05,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.032,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.04,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import '../Profile.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;
//   UserResponse({required this.user});
//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

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

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//         try {
//           final profileCtrl = Get.find<ProfileController>();
//           profileCtrl.userName.value = userName.value;
//           profileCtrl.profilePhoto.value = profilePhoto.value;
//         } catch (e) {
//           print('ProfileController not found for sync: $e');
//         }
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
     
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }
//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );
//       request.headers['Authorization'] = 'Bearer $token';
//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }
//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }
//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);
//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile();
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
     
//       showToast('Signed out successfully! See you again soon.', true);
     
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }

// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentPhoto;
//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentPhoto,
//   });
//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }

// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     super.dispose();
//   }

//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
     
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => Dialog(
//         backgroundColor: Colors.transparent,
//         child: Container(
//           padding: const EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 const Color(0xFF1a1a1a),
//                 const Color(0xFF0d0d0d),
//               ],
//             ),
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(
//               color: const Color(0xFF00A8E8).withOpacity(0.3),
//               width: 1,
//             ),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Choose Image Source',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               _buildSourceOption(
//                 icon: Icons.camera_alt_rounded,
//                 title: 'Camera',
//                 subtitle: 'Take a new photo',
//                 onTap: () {
//                   Navigator.pop(context);
//                   pickImage(ImageSource.camera);
//                 },
//               ),
//               const SizedBox(height: 12),
//               _buildSourceOption(
//                 icon: Icons.photo_library_rounded,
//                 title: 'Gallery',
//                 subtitle: 'Choose from gallery',
//                 onTap: () {
//                   Navigator.pop(context);
//                   pickImage(ImageSource.gallery);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSourceOption({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(12),
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.05),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.white.withOpacity(0.1),
//             width: 1,
//           ),
//         ),
//         child: Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(icon, color: Colors.white, size: 24),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 2),
//                   Text(
//                     subtitle,
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Icon(
//               Icons.arrow_forward_ios,
//               color: Colors.grey[600],
//               size: 16,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(24),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               const Color(0xFF1a1a1a),
//               const Color(0xFF0d0d0d),
//             ],
//           ),
//           borderRadius: BorderRadius.circular(24),
//           border: Border.all(
//             color: const Color(0xFF00A8E8).withOpacity(0.3),
//             width: 1,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Edit Profile',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(Icons.close, color: Colors.white),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 32),
             
//               // Profile Photo Section
//               GestureDetector(
//                 onTap: showImageSourceDialog,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         gradient: const LinearGradient(
//                           colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0xFF00A8E8).withOpacity(0.3),
//                             blurRadius: 20,
//                             spreadRadius: 2,
//                           ),
//                         ],
//                       ),
//                       padding: const EdgeInsets.all(4),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFF1a1a1a),
//                         ),
//                         child: ClipOval(
//                           child: selectedImage != null
//                               ? Image.file(selectedImage!, fit: BoxFit.cover)
//                               : widget.currentPhoto.isNotEmpty
//                                   ? Image.network(
//                                       widget.currentPhoto,
//                                       fit: BoxFit.cover,
//                                       errorBuilder: (context, error, stackTrace) {
//                                         return Container(
//                                           color: Colors.grey[800],
//                                           child: const Icon(
//                                             Icons.person,
//                                             size: 60,
//                                             color: Colors.white,
//                                           ),
//                                         );
//                                       },
//                                     )
//                                   : Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.person,
//                                         size: 60,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 5,
//                       right: 5,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                           ),
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0xFF00A8E8).withOpacity(0.5),
//                               blurRadius: 8,
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 32),
             
//               // Name Field
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.05),
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(
//                     color: Colors.white.withOpacity(0.1),
//                     width: 1,
//                   ),
//                 ),
//                 child: TextField(
//                   controller: nameController,
//                   style: const TextStyle(color: Colors.white, fontSize: 16),
//                   decoration: InputDecoration(
//                     labelText: 'Full Name',
//                     labelStyle: TextStyle(color: Colors.grey[400]),
//                     prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF00A8E8)),
//                     border: InputBorder.none,
//                     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
             
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       children: [
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 16),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.05),
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(
//                                   color: Colors.white.withOpacity(0.1),
//                                   width: 1,
//                                 ),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
                             
//                               if (newName.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }
//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                             
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 16),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                 ),
//                                 borderRadius: BorderRadius.circular(12),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save Changes',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();
    
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscriptions',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1a1a1a),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: TabBar(
//                 indicator: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 indicatorPadding: const EdgeInsets.all(4),
//                 dividerColor: Colors.transparent,
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 labelStyle: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 15,
//                 ),
//                 unselectedLabelStyle: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 15,
//                 ),
//                 padding: const EdgeInsets.all(4),
//                 tabs: const [
//                   Tab(
//                     text: 'Active',
//                     height: 42,
//                   ),
//                   Tab(
//                     text: 'History',
//                     height: 42,
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Active Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? _buildEmptyState('No Active Subscriptions', Icons.subscriptions_outlined)
//                       : ListView.builder(
//                           padding: const EdgeInsets.all(16),
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return _buildSubscriptionCard(sub, true);
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? _buildEmptyState('No Subscription History', Icons.history)
//                       : ListView.builder(
//                           padding: const EdgeInsets.all(16),
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return _buildSubscriptionCard(sub, false);
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildEmptyState(String message, IconData icon) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: Colors.grey[900],
//               shape: BoxShape.circle,
//             ),
//             child: Icon(icon, size: 48, color: Colors.grey[700]),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             message,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSubscriptionCard(MySubscription sub, bool isActive) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: isActive
//               ? [const Color(0xFF1a1a1a), const Color(0xFF0d0d0d)]
//               : [Colors.grey[900]!, Colors.grey[900]!],
//         ),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(
//           color: isActive
//               ? const Color(0xFF00A8E8).withOpacity(0.3)
//               : Colors.grey[800]!,
//           width: 1,
//         ),
//         boxShadow: isActive
//             ? [
//                 BoxShadow(
//                   color: const Color(0xFF00A8E8).withOpacity(0.1),
//                   blurRadius: 12,
//                   offset: const Offset(0, 4),
//                 ),
//               ]
//             : [],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Text(
//                   sub.plan.title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   gradient: isActive
//                       ? const LinearGradient(
//                           colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                         )
//                       : LinearGradient(
//                           colors: [Colors.red[700]!, Colors.red[900]!],
//                         ),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text(
//                   isActive ? 'Active' : 'Expired',
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: Colors.black.withOpacity(0.3),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Row(
//               children: [
//                 Icon(
//                   sub.plan.scope == 'all' ? Icons.all_inclusive : Icons.movie_outlined,
//                   color: const Color(0xFF00A8E8),
//                   size: 20,
//                 ),
//                 const SizedBox(width: 8),
//                 Expanded(
//                   child: Text(
//                     sub.plan.scope == 'all' ? 'All Episodes Access' : (sub.episodeName ?? 'N/A'),
//                     style: TextStyle(
//                       color: Colors.grey[300],
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 child: _buildInfoChip(
//                   icon: Icons.currency_rupee,
//                   label: 'Amount',
//                   value: '₹${sub.amount}',
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: _buildInfoChip(
//                   icon: Icons.calendar_today,
//                   label: 'Duration',
//                   value: '${sub.plan.durationDays} days',
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Divider(color: Colors.grey[800], thickness: 1),
//           const SizedBox(height: 12),
//           _buildDateRow(
//             icon: Icons.play_circle_outline,
//             label: 'Start Date',
//             value: safeDateFormat(sub.startAt),
//             color: const Color(0xFF00A8E8),
//           ),
//           const SizedBox(height: 8),
//           _buildDateRow(
//             icon: Icons.event_busy,
//             label: isActive ? 'Expires On' : 'Expired On',
//             value: safeDateFormat(sub.endAt),
//             color: isActive ? const Color(0xFF00A8E8) : Colors.red,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoChip({
//     required IconData icon,
//     required String label,
//     required String value,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.3),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: const Color(0xFF00A8E8), size: 16),
//               const SizedBox(width: 6),
//               Text(
//                 label,
//                 style: TextStyle(
//                   color: Colors.grey[500],
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDateRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required Color color,
//   }) {
//     return Row(
//       children: [
//         Icon(icon, color: color, size: 18),
//         const SizedBox(width: 8),
//         Text(
//           '$label: ',
//           style: TextStyle(
//             color: Colors.grey[400],
//             fontSize: 14,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             color: color,
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Header Section
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'My Account',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.08
//                                           : height * 0.065,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                   SizedBox(height: height * 0.005),
//                                   Text(
//                                     'Manage your profile',
//                                     style: TextStyle(
//                                       color: Colors.grey[500],
//                                       fontSize: width * 0.035,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(12),
//                                 decoration: BoxDecoration(
//                                   gradient: const LinearGradient(
//                                     colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                       blurRadius: 8,
//                                       offset: const Offset(0, 4),
//                                     ),
//                                   ],
//                                 ),
//                                 child: const Icon(
//                                   Icons.person_outline,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Profile Photo Section with Enhanced Design
//                           Center(
//                             child: GestureDetector(
//                               onTap: controller.profilePhoto.value.isNotEmpty
//                                   ? () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return Dialog(
//                                             backgroundColor: Colors.transparent,
//                                             insetPadding: EdgeInsets.zero,
//                                             child: Stack(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context).size.width,
//                                                   height: MediaQuery.of(context).size.height,
//                                                   decoration: const BoxDecoration(
//                                                     color: Colors.black,
//                                                   ),
//                                                   child: Image.network(
//                                                     controller.profilePhoto.value,
//                                                     fit: BoxFit.contain,
//                                                     width: double.infinity,
//                                                     height: double.infinity,
//                                                     errorBuilder: (context, error, stackTrace) {
//                                                       Navigator.of(context).pop();
//                                                       return const SizedBox.shrink();
//                                                     },
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   top: 40,
//                                                   right: 20,
//                                                   child: GestureDetector(
//                                                     onTap: () => Navigator.of(context).pop(),
//                                                     child: Container(
//                                                       padding: const EdgeInsets.all(12),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.black87,
//                                                         shape: BoxShape.circle,
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: Colors.black.withOpacity(0.5),
//                                                             blurRadius: 8,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: const Icon(
//                                                         Icons.close,
//                                                         color: Colors.white,
//                                                         size: 24,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                   : null,
//                               child: Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   Container(
//                                     width: 140,
//                                     height: 140,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       gradient: const LinearGradient(
//                                         colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                       ),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                           blurRadius: 20,
//                                           spreadRadius: 2,
//                                         ),
//                                       ],
//                                     ),
//                                     padding: const EdgeInsets.all(4),
//                                     child: Container(
//                                       decoration: const BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         color: Color(0xFF1a1a1a),
//                                       ),
//                                       child: ClipOval(
//                                         child: controller.profilePhoto.value.isNotEmpty
//                                             ? Image.network(
//                                                 controller.profilePhoto.value,
//                                                 fit: BoxFit.cover,
//                                                 errorBuilder: (context, error, stackTrace) {
//                                                   return Container(
//                                                     color: Colors.grey[800],
//                                                     child: const Icon(
//                                                       Icons.person,
//                                                       size: 60,
//                                                       color: Colors.white,
//                                                     ),
//                                                   );
//                                                 },
//                                               )
//                                             : Container(
//                                                 color: Colors.grey[800],
//                                                 child: const Icon(
//                                                   Icons.person,
//                                                   size: 60,
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
                          
//                           // User Name Display
//                           Center(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   controller.userName.value,
//                                   style: const TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Personal Information Card
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   const Color(0xFF1a1a1a),
//                                   const Color(0xFF0d0d0d),
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                 width: 1,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 12,
//                                   offset: const Offset(0, 6),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             gradient: const LinearGradient(
//                                               colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                             ),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.info_outline,
//                                             color: Colors.white,
//                                             size: width * 0.055,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Info',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.025),
//                                         decoration: BoxDecoration(
//                                           gradient: const LinearGradient(
//                                             colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                           ),
//                                           borderRadius: BorderRadius.circular(10),
//                                           boxShadow: [
//                                             BoxShadow(
//                                               color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                               blurRadius: 8,
//                                               offset: const Offset(0, 4),
//                                             ),
//                                           ],
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: Colors.white,
//                                           size: width * 0.045,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle_outlined,
//                                   label: 'Full Name',
//                                   value: controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.015),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email Address',
//                                   value: controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.015),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android_outlined,
//                                   label: 'Mobile Number',
//                                   value: controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.025),
                          
//                           // View Subscription Button
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                 ),
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     blurRadius: 12,
//                                     offset: const Offset(0, 6),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(
//                                     Icons.card_membership,
//                                     color: Colors.white,
//                                     size: 22,
//                                   ),
//                                   const SizedBox(width: 12),
//                                   const Text(
//                                     'View Subscriptions',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.025),
                          
//                           // Sign Out Button
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.05),
//                                 borderRadius: BorderRadius.circular(16),
//                                 border: Border.all(
//                                   color: Colors.red.withOpacity(0.3),
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout_rounded,
//                                     color: Colors.red[400],
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.red[400],
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.02),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.all(width * 0.035),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.3),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Colors.white.withOpacity(0.05),
//           width: 1,
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: const Color(0xFF00A8E8).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(
//               icon,
//               color: const Color(0xFF00A8E8),
//               size: width * 0.05,
//             ),
//           ),
//           SizedBox(width: width * 0.035),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.03,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.038,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'package:ott/View/Screen/Auth/signin.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import '../Profile.dart';

// // Safe date formatting function
// String safeDateFormat(String? dateStr) {
//   if (dateStr == null || dateStr.isEmpty) return 'N/A';
//   try {
//     return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
//   } catch (e) {
//     return 'Invalid Date';
//   }
// }

// // Data Models with Null Safety
// class UserResponse {
//   final User user;
//   UserResponse({required this.user});
//   factory UserResponse.fromJson(Map<String, dynamic> json) {
//     return UserResponse(
//       user: User.fromJson(json['user'] ?? {}),
//     );
//   }
// }

// class User {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<EpisodeSubscription> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;

//   User({
//     required this.id,
//     required this.name,
//     required this.email,
//     required this.mobile,
//     required this.status,
//     required this.emailVerified,
//     required this.subscriptionStatus,
//     required this.hasAllAccess,
//     required this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
//     List<EpisodeSubscription> subs = subsJson
//         .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return User(
//       id: json['id']?.toString() ?? '',
//       name: json['name']?.toString() ?? '',
//       email: json['email']?.toString() ?? '',
//       mobile: json['mobile']?.toString() ?? '',
//       status: json['status']?.toString() ?? '',
//       emailVerified: json['emailVerified'] as bool? ?? false,
//       subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
//       hasAllAccess: json['hasAllAccess'] as bool? ?? false,
//       episodeSubscriptions: subs,
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//       profilePhoto: json['profilePhoto']?.toString(),
//     );
//   }
// }

// class EpisodeSubscription {
//   final String episodeId;
//   final String planCode;
//   final String title;
//   final String? endAt;
//   final String episodeName;

//   EpisodeSubscription({
//     required this.episodeId,
//     required this.planCode,
//     required this.title,
//     this.endAt,
//     required this.episodeName,
//   });

//   factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
//     return EpisodeSubscription(
//       episodeId: json['episodeId']?.toString() ?? '',
//       planCode: json['planCode']?.toString() ?? '',
//       title: json['title']?.toString() ?? '',
//       endAt: json['endAt']?.toString(),
//       episodeName: json['episodeName']?.toString() ?? '',
//     );
//   }
// }

// // Subscription Plan Model
// class SubscriptionPlan {
//   final String id;
//   final String code;
//   final bool active;
//   final int durationDays;
//   final int price;
//   final String scope;
//   final String title;

//   SubscriptionPlan({
//     required this.id,
//     required this.code,
//     required this.active,
//     required this.durationDays,
//     required this.price,
//     required this.scope,
//     required this.title,
//   });

//   factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
//     return SubscriptionPlan(
//       id: json['_id'] ?? '',
//       code: json['code'] ?? '',
//       active: json['active'] ?? false,
//       durationDays: json['durationDays'] ?? 0,
//       price: json['price'] ?? 0,
//       scope: json['scope'] ?? '',
//       title: json['title'] ?? '',
//     );
//   }
// }

// // MySubscription Model
// class MySubscription {
//   final String id;
//   final String user;
//   final SubscriptionPlan plan;
//   final String status;
//   final String? episodeId;
//   final String? episodeName;
//   final String orderId;
//   final int amount;
//   final List<SubscriptionHistory> history;
//   final String createdAt;
//   final String updatedAt;
//   final int v;
//   final String? startAt;
//   final String? endAt;

//   MySubscription({
//     required this.id,
//     required this.user,
//     required this.plan,
//     required this.status,
//     this.episodeId,
//     this.episodeName,
//     required this.orderId,
//     required this.amount,
//     required this.history,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.v,
//     this.startAt,
//     this.endAt,
//   });

//   factory MySubscription.fromJson(Map<String, dynamic> json) {
//     return MySubscription(
//       id: json['_id'] ?? '',
//       user: json['user'] ?? '',
//       plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
//       status: json['status'] ?? '',
//       episodeId: json['episodeId']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       orderId: json['orderId'] ?? '',
//       amount: json['amount'] ?? 0,
//       history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       v: json['__v'] ?? 0,
//       startAt: json['startAt']?.toString(),
//       endAt: json['endAt']?.toString(),
//     );
//   }

//   bool get isActive {
//     if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
//     final date = DateTime.tryParse(endAt!);
//     return date != null && date.isAfter(DateTime.now());
//   }
// }

// // Subscription History Model
// class SubscriptionHistory {
//   final String id;
//   final String at;
//   final String status;
//   final String note;

//   SubscriptionHistory({
//     required this.id,
//     required this.at,
//     required this.status,
//     required this.note,
//   });

//   factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
//     return SubscriptionHistory(
//       id: json['_id'] ?? '',
//       at: json['at'] ?? '',
//       status: json['status'] ?? '',
//       note: json['note'] ?? '',
//     );
//   }
// }

// class MyAccountController extends GetxController {
//   RxString userName = ''.obs;
//   RxString userEmail = ''.obs;
//   RxString userMobile = ''.obs;
//   RxString profilePhoto = ''.obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxString accessUntil = ''.obs;
//   RxBool isLoading = false.obs;
//   RxBool isUpdating = false.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

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

//   Future<void> fetchProfile() async {
//     try {
//       isLoading.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('No token found');
//         showToast('Session expired. Please login again.', false);
//         isLoading.value = false;
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('MyAccount Response Status Code: ${response.statusCode}');
//       print('MyAccount Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         var userResponse = UserResponse.fromJson(responseData);
//         var user = userResponse.user;
//         await prefs.setString('user_id', user.id);
//         userName.value = user.name;
//         userEmail.value = user.email.isEmpty ? 'N/A' : user.email;
//         userMobile.value = user.mobile;
//         String photoUrl = '';
//         if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
//           photoUrl = '$baseDomain${user.profilePhoto}';
//         }
//         profilePhoto.value = photoUrl;
//         accessUntil.value = safeDateFormat(user.accessUntil);
//         try {
//           final profileCtrl = Get.find<ProfileController>();
//           profileCtrl.userName.value = userName.value;
//           profileCtrl.profilePhoto.value = profilePhoto.value;
//         } catch (e) {
//           print('ProfileController not found for sync: $e');
//         }
//       } else {
//         print('Failed to fetch profile');
//         showToast('Failed to load profile data', false);
//       }
//       await fetchMySubscriptions();
//     } catch (e) {
//       print('Error fetching profile: $e');
//       showToast('Error loading profile. Please check your connection.', false);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> fetchMySubscriptions() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for my subscriptions');
//         return;
//       }
//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/mine'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );
//       print('✅ My Subscriptions Response Status: ${response.statusCode}');
//       print('📦 My Subscriptions Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
//         print('✅ Fetched ${mySubscriptions.length} subscriptions');
//       } else {
//         print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching my subscriptions: $e');
//     }
//   }

//   Future<void> updateProfile({String? name, String? email, File? profilePhotoFile}) async {
//     try {
//       isUpdating.value = true;
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
     
//       if (token == null) {
//         showToast('Session expired. Please login again.', false);
//         return;
//       }
//       var request = http.MultipartRequest(
//         'PUT',
//         Uri.parse('$baseUrl/auth/update-profile'),
//       );
//       request.headers['Authorization'] = 'Bearer $token';
//       if (name != null && name.isNotEmpty) {
//         request.fields['name'] = name;
//       }
//       if (email != null && email.isNotEmpty) {
//         request.fields['email'] = email;
//       }
//       if (profilePhotoFile != null) {
//         request.files.add(
//           await http.MultipartFile.fromPath(
//             'profilePhoto',
//             profilePhotoFile.path,
//           ),
//         );
//       }
//       print('🔄 Updating profile...');
//       final streamedResponse = await request.send();
//       final response = await http.Response.fromStream(streamedResponse);
//       print('✅ Update Profile Response Status: ${response.statusCode}');
//       print('📦 Update Profile Response Body: ${response.body}');
//       if (response.statusCode == 200) {
//         showToast('Profile updated successfully!', true);
//         await fetchProfile();
//       } else {
//         final errorData = jsonDecode(response.body);
//         showToast(errorData['message'] ?? 'Failed to update profile', false);
//       }
//     } catch (e) {
//       print('❌ Error updating profile: $e');
//       showToast('Error updating profile. Please try again.', false);
//     } finally {
//       isUpdating.value = false;
//     }
//   }

//   Future<void> signOut() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       await prefs.remove('auth_token');
//       await prefs.remove('user_id');
//       await prefs.remove('user_name');
//       await prefs.remove('user_email');
//       await prefs.remove('user_mobile');
     
//       showToast('Signed out successfully! See you again soon.', true);
     
//       Future.delayed(const Duration(milliseconds: 500), () {
//         Get.offAll(() => const Signin());
//       });
//     } catch (e) {
//       print('Error signing out: $e');
//       showToast('Error signing out. Please try again.', false);
//     }
//   }
// }

// // Edit Profile Dialog
// class EditProfileDialog extends StatefulWidget {
//   final String currentName;
//   final String currentEmail;
//   final String currentPhoto;
//   const EditProfileDialog({
//     super.key,
//     required this.currentName,
//     required this.currentEmail,
//     required this.currentPhoto,
//   });
//   @override
//   State<EditProfileDialog> createState() => _EditProfileDialogState();
// }

// class _EditProfileDialogState extends State<EditProfileDialog> {
//   late TextEditingController nameController;
//   late TextEditingController emailController;
//   File? selectedImage;
//   final ImagePicker _picker = ImagePicker();

//   @override
//   void initState() {
//     super.initState();
//     nameController = TextEditingController(text: widget.currentName);
//     emailController = TextEditingController(text: widget.currentEmail == 'N/A' ? '' : widget.currentEmail);
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     super.dispose();
//   }

//   Future<void> pickImage(ImageSource source) async {
//     try {
//       final XFile? image = await _picker.pickImage(
//         source: source,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );
     
//       if (image != null) {
//         setState(() {
//           selectedImage = File(image.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       Get.snackbar(
//         'Error',
//         'Failed to pick image',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   void showImageSourceDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => Dialog(
//         backgroundColor: Colors.transparent,
//         child: Container(
//           padding: const EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 const Color(0xFF1a1a1a),
//                 const Color(0xFF0d0d0d),
//               ],
//             ),
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(
//               color: const Color(0xFF00A8E8).withOpacity(0.3),
//               width: 1,
//             ),
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Choose Image Source',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 24),
//               _buildSourceOption(
//                 icon: Icons.camera_alt_rounded,
//                 title: 'Camera',
//                 subtitle: 'Take a new photo',
//                 onTap: () {
//                   Navigator.pop(context);
//                   pickImage(ImageSource.camera);
//                 },
//               ),
//               const SizedBox(height: 12),
//               _buildSourceOption(
//                 icon: Icons.photo_library_rounded,
//                 title: 'Gallery',
//                 subtitle: 'Choose from gallery',
//                 onTap: () {
//                   Navigator.pop(context);
//                   pickImage(ImageSource.gallery);
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSourceOption({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       borderRadius: BorderRadius.circular(12),
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.05),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.white.withOpacity(0.1),
//             width: 1,
//           ),
//         ),
//         child: Row(
//           children: [
//             Container(
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(icon, color: Colors.white, size: 24),
//             ),
//             const SizedBox(width: 16),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 2),
//                   Text(
//                     subtitle,
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: 12,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Icon(
//               Icons.arrow_forward_ios,
//               color: Colors.grey[600],
//               size: 16,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.find<MyAccountController>();
//     return Dialog(
//       backgroundColor: Colors.transparent,
//       child: Container(
//         padding: const EdgeInsets.all(24),
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               const Color(0xFF1a1a1a),
//               const Color(0xFF0d0d0d),
//             ],
//           ),
//           borderRadius: BorderRadius.circular(24),
//           border: Border.all(
//             color: const Color(0xFF00A8E8).withOpacity(0.3),
//             width: 1,
//           ),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Edit Profile',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(Icons.close, color: Colors.white),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 32),
             
//               // Profile Photo Section
//               GestureDetector(
//                 onTap: showImageSourceDialog,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     Container(
//                       width: 130,
//                       height: 130,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         gradient: const LinearGradient(
//                           colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                         ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: const Color(0xFF00A8E8).withOpacity(0.3),
//                             blurRadius: 20,
//                             spreadRadius: 2,
//                           ),
//                         ],
//                       ),
//                       padding: const EdgeInsets.all(4),
//                       child: Container(
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xFF1a1a1a),
//                         ),
//                         child: ClipOval(
//                           child: selectedImage != null
//                               ? Image.file(selectedImage!, fit: BoxFit.cover)
//                               : widget.currentPhoto.isNotEmpty
//                                   ? Image.network(
//                                       widget.currentPhoto,
//                                       fit: BoxFit.cover,
//                                       errorBuilder: (context, error, stackTrace) {
//                                         return Container(
//                                           color: Colors.grey[800],
//                                           child: const Icon(
//                                             Icons.person,
//                                             size: 60,
//                                             color: Colors.white,
//                                           ),
//                                         );
//                                       },
//                                     )
//                                   : Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.person,
//                                         size: 60,
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 5,
//                       right: 5,
//                       child: Container(
//                         padding: const EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           gradient: const LinearGradient(
//                             colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                           ),
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(
//                               color: const Color(0xFF00A8E8).withOpacity(0.5),
//                               blurRadius: 8,
//                             ),
//                           ],
//                         ),
//                         child: const Icon(
//                           Icons.camera_alt,
//                           color: Colors.white,
//                           size: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 32),
             
//               // Name Field
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.05),
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(
//                     color: Colors.white.withOpacity(0.1),
//                     width: 1,
//                   ),
//                 ),
//                 child: TextField(
//                   controller: nameController,
//                   style: const TextStyle(color: Colors.white, fontSize: 16),
//                   decoration: InputDecoration(
//                     labelText: 'Full Name',
//                     labelStyle: TextStyle(color: Colors.grey[400]),
//                     prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF00A8E8)),
//                     border: InputBorder.none,
//                     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 16),
             
//               // Email Field
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.05),
//                   borderRadius: BorderRadius.circular(12),
//                   border: Border.all(
//                     color: Colors.white.withOpacity(0.1),
//                     width: 1,
//                   ),
//                 ),
//                 child: TextField(
//                   controller: emailController,
//                   keyboardType: TextInputType.emailAddress,
//                   style: const TextStyle(color: Colors.white, fontSize: 16),
//                   decoration: InputDecoration(
//                     labelText: 'Email Address',
//                     labelStyle: TextStyle(color: Colors.grey[400]),
//                     prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF00A8E8)),
//                     border: InputBorder.none,
//                     contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 32),
             
//               // Action Buttons
//               Obx(() => controller.isUpdating.value
//                   ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
//                   : Row(
//                       children: [
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () => Navigator.pop(context),
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 16),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.05),
//                                 borderRadius: BorderRadius.circular(12),
//                                 border: Border.all(
//                                   color: Colors.white.withOpacity(0.1),
//                                   width: 1,
//                                 ),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Cancel',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         Expanded(
//                           child: GestureDetector(
//                             onTap: () async {
//                               final newName = nameController.text.trim();
//                               final newEmail = emailController.text.trim();
                             
//                               if (newName.isEmpty && newEmail.isEmpty && selectedImage == null) {
//                                 Get.snackbar(
//                                   'Error',
//                                   'Please enter a name, email, or select a photo',
//                                   backgroundColor: Colors.red,
//                                   colorText: Colors.white,
//                                 );
//                                 return;
//                               }
//                               await controller.updateProfile(
//                                 name: newName.isNotEmpty ? newName : null,
//                                 email: newEmail.isNotEmpty ? newEmail : null,
//                                 profilePhotoFile: selectedImage,
//                               );
                             
//                               Navigator.pop(context);
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.symmetric(vertical: 16),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                 ),
//                                 borderRadius: BorderRadius.circular(12),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     blurRadius: 8,
//                                     offset: const Offset(0, 4),
//                                   ),
//                                 ],
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   'Save Changes',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class SubscriptionDetailsPage extends StatelessWidget {
//   const SubscriptionDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.find<MyAccountController>();
//     final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
//     final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();
    
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Subscriptions',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: DefaultTabController(
//         length: 2,
//         child: Column(
//           children: [
//             Container(
//               margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1a1a1a),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: TabBar(
//                 indicator: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                   ),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 indicatorPadding: const EdgeInsets.all(4),
//                 dividerColor: Colors.transparent,
//                 labelColor: Colors.white,
//                 unselectedLabelColor: Colors.grey,
//                 labelStyle: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 15,
//                 ),
//                 unselectedLabelStyle: const TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 15,
//                 ),
//                 padding: const EdgeInsets.all(4),
//                 tabs: const [
//                   Tab(
//                     text: 'Active',
//                     height: 42,
//                   ),
//                   Tab(
//                     text: 'History',
//                     height: 42,
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Active Subscriptions Tab
//                   activeSubs.isEmpty
//                       ? _buildEmptyState('No Active Subscriptions', Icons.subscriptions_outlined)
//                       : ListView.builder(
//                           padding: const EdgeInsets.all(16),
//                           itemCount: activeSubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = activeSubs[index];
//                             return _buildSubscriptionCard(sub, true);
//                           },
//                         ),
//                   // Subscription History Tab
//                   historySubs.isEmpty
//                       ? _buildEmptyState('No Subscription History', Icons.history)
//                       : ListView.builder(
//                           padding: const EdgeInsets.all(16),
//                           itemCount: historySubs.length,
//                           itemBuilder: (context, index) {
//                             final sub = historySubs[index];
//                             return _buildSubscriptionCard(sub, false);
//                           },
//                         ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildEmptyState(String message, IconData icon) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(24),
//             decoration: BoxDecoration(
//               color: Colors.grey[900],
//               shape: BoxShape.circle,
//             ),
//             child: Icon(icon, size: 48, color: Colors.grey[700]),
//           ),
//           const SizedBox(height: 16),
//           Text(
//             message,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSubscriptionCard(MySubscription sub, bool isActive) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: isActive
//               ? [const Color(0xFF1a1a1a), const Color(0xFF0d0d0d)]
//               : [Colors.grey[900]!, Colors.grey[900]!],
//         ),
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(
//           color: isActive
//               ? const Color(0xFF00A8E8).withOpacity(0.3)
//               : Colors.grey[800]!,
//           width: 1,
//         ),
//         boxShadow: isActive
//             ? [
//                 BoxShadow(
//                   color: const Color(0xFF00A8E8).withOpacity(0.1),
//                   blurRadius: 12,
//                   offset: const Offset(0, 4),
//                 ),
//               ]
//             : [],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 child: Text(
//                   sub.plan.title,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   gradient: isActive
//                       ? const LinearGradient(
//                           colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                         )
//                       : LinearGradient(
//                           colors: [Colors.red[700]!, Colors.red[900]!],
//                         ),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Text(
//                   isActive ? 'Active' : 'Expired',
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           Container(
//             padding: const EdgeInsets.all(12),
//             decoration: BoxDecoration(
//               color: Colors.black.withOpacity(0.3),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Row(
//               children: [
//                 Icon(
//                   sub.plan.scope == 'all' ? Icons.all_inclusive : Icons.movie_outlined,
//                   color: const Color(0xFF00A8E8),
//                   size: 20,
//                 ),
//                 const SizedBox(width: 8),
//                 Expanded(
//                   child: Text(
//                     sub.plan.scope == 'all' ? 'All Episodes Access' : (sub.episodeName ?? 'N/A'),
//                     style: TextStyle(
//                       color: Colors.grey[300],
//                       fontSize: 14,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
//           Row(
//             children: [
//               Expanded(
//                 child: _buildInfoChip(
//                   icon: Icons.currency_rupee,
//                   label: 'Amount',
//                   value: '₹${sub.amount}',
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: _buildInfoChip(
//                   icon: Icons.calendar_today,
//                   label: 'Duration',
//                   value: '${sub.plan.durationDays} days',
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Divider(color: Colors.grey[800], thickness: 1),
//           const SizedBox(height: 12),
//           _buildDateRow(
//             icon: Icons.play_circle_outline,
//             label: 'Start Date',
//             value: safeDateFormat(sub.startAt),
//             color: const Color(0xFF00A8E8),
//           ),
//           const SizedBox(height: 8),
//           _buildDateRow(
//             icon: Icons.event_busy,
//             label: isActive ? 'Expires On' : 'Expired On',
//             value: safeDateFormat(sub.endAt),
//             color: isActive ? const Color(0xFF00A8E8) : Colors.red,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoChip({
//     required IconData icon,
//     required String label,
//     required String value,
//   }) {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.3),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, color: const Color(0xFF00A8E8), size: 16),
//               const SizedBox(width: 6),
//               Text(
//                 label,
//                 style: TextStyle(
//                   color: Colors.grey[500],
//                   fontSize: 12,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildDateRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required Color color,
//   }) {
//     return Row(
//       children: [
//         Icon(icon, color: color, size: 18),
//         const SizedBox(width: 8),
//         Text(
//           '$label: ',
//           style: TextStyle(
//             color: Colors.grey[400],
//             fontSize: 14,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             color: color,
//             fontSize: 14,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Myaccount extends StatelessWidget {
//   const Myaccount({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final MyAccountController controller = Get.put(MyAccountController());
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
//         return Scaffold(
//           backgroundColor: Colors.black,
//           body: SafeArea(
//             child: Obx(() => controller.isLoading.value
//                 ? const Center(
//                     child: CircularProgressIndicator(
//                       color: Color(0xFF00A8E8),
//                     ),
//                   )
//                 : SingleChildScrollView(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.05,
//                         vertical: height * 0.03,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // Header Section
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'My Account',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.08
//                                           : height * 0.065,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                   SizedBox(height: height * 0.005),
//                                   Text(
//                                     'Manage your profile',
//                                     style: TextStyle(
//                                       color: Colors.grey[500],
//                                       fontSize: width * 0.035,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 padding: const EdgeInsets.all(12),
//                                 decoration: BoxDecoration(
//                                   gradient: const LinearGradient(
//                                     colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                   ),
//                                   borderRadius: BorderRadius.circular(12),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                       blurRadius: 8,
//                                       offset: const Offset(0, 4),
//                                     ),
//                                   ],
//                                 ),
//                                 child: const Icon(
//                                   Icons.person_outline,
//                                   color: Colors.white,
//                                   size: 24,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Profile Photo Section with Enhanced Design
//                           Center(
//                             child: GestureDetector(
//                               onTap: controller.profilePhoto.value.isNotEmpty
//                                   ? () {
//                                       showDialog(
//                                         context: context,
//                                         builder: (BuildContext context) {
//                                           return Dialog(
//                                             backgroundColor: Colors.transparent,
//                                             insetPadding: EdgeInsets.zero,
//                                             child: Stack(
//                                               children: [
//                                                 Container(
//                                                   width: MediaQuery.of(context).size.width,
//                                                   height: MediaQuery.of(context).size.height,
//                                                   decoration: const BoxDecoration(
//                                                     color: Colors.black,
//                                                   ),
//                                                   child: Image.network(
//                                                     controller.profilePhoto.value,
//                                                     fit: BoxFit.contain,
//                                                     width: double.infinity,
//                                                     height: double.infinity,
//                                                     errorBuilder: (context, error, stackTrace) {
//                                                       Navigator.of(context).pop();
//                                                       return const SizedBox.shrink();
//                                                     },
//                                                   ),
//                                                 ),
//                                                 Positioned(
//                                                   top: 40,
//                                                   right: 20,
//                                                   child: GestureDetector(
//                                                     onTap: () => Navigator.of(context).pop(),
//                                                     child: Container(
//                                                       padding: const EdgeInsets.all(12),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.black87,
//                                                         shape: BoxShape.circle,
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: Colors.black.withOpacity(0.5),
//                                                             blurRadius: 8,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: const Icon(
//                                                         Icons.close,
//                                                         color: Colors.white,
//                                                         size: 24,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                   : null,
//                               child: Stack(
//                                 alignment: Alignment.center,
//                                 children: [
//                                   Container(
//                                     width: 140,
//                                     height: 140,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       gradient: const LinearGradient(
//                                         colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                       ),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                           blurRadius: 20,
//                                           spreadRadius: 2,
//                                         ),
//                                       ],
//                                     ),
//                                     padding: const EdgeInsets.all(4),
//                                     child: Container(
//                                       decoration: const BoxDecoration(
//                                         shape: BoxShape.circle,
//                                         color: Color(0xFF1a1a1a),
//                                       ),
//                                       child: ClipOval(
//                                         child: controller.profilePhoto.value.isNotEmpty
//                                             ? Image.network(
//                                                 controller.profilePhoto.value,
//                                                 fit: BoxFit.cover,
//                                                 errorBuilder: (context, error, stackTrace) {
//                                                   return Container(
//                                                     color: Colors.grey[800],
//                                                     child: const Icon(
//                                                       Icons.person,
//                                                       size: 60,
//                                                       color: Colors.white,
//                                                     ),
//                                                   );
//                                                 },
//                                               )
//                                             : Container(
//                                                 color: Colors.grey[800],
//                                                 child: const Icon(
//                                                   Icons.person,
//                                                   size: 60,
//                                                   color: Colors.white,
//                                                 ),
//                                               ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
                          
//                           // User Name Display
//                           Center(
//                             child: Column(
//                               children: [
//                                 Text(
//                                   controller.userName.value,
//                                   style: const TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 24,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.04),
                         
//                           // Personal Information Card
//                           Container(
//                             width: width,
//                             padding: EdgeInsets.all(width * 0.045),
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topLeft,
//                                 end: Alignment.bottomRight,
//                                 colors: [
//                                   const Color(0xFF1a1a1a),
//                                   const Color(0xFF0d0d0d),
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                 width: 1,
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   blurRadius: 12,
//                                   offset: const Offset(0, 6),
//                                 ),
//                               ],
//                             ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Row(
//                                       children: [
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.025),
//                                           decoration: BoxDecoration(
//                                             gradient: const LinearGradient(
//                                               colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                             ),
//                                             borderRadius: BorderRadius.circular(width * 0.02),
//                                           ),
//                                           child: Icon(
//                                             Icons.info_outline,
//                                             color: Colors.white,
//                                             size: width * 0.055,
//                                           ),
//                                         ),
//                                         SizedBox(width: width * 0.03),
//                                         Text(
//                                           'Personal Info',
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: width * 0.045,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         showDialog(
//                                           context: context,
//                                           builder: (context) => EditProfileDialog(
//                                             currentName: controller.userName.value,
//                                             currentEmail: controller.userEmail.value == 'N/A' ? '' : controller.userEmail.value,
//                                             currentPhoto: controller.profilePhoto.value,
//                                           ),
//                                         );
//                                       },
//                                       child: Container(
//                                         padding: EdgeInsets.all(width * 0.025),
//                                         decoration: BoxDecoration(
//                                           gradient: const LinearGradient(
//                                             colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                           ),
//                                           borderRadius: BorderRadius.circular(10),
//                                           boxShadow: [
//                                             BoxShadow(
//                                               color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                               blurRadius: 8,
//                                               offset: const Offset(0, 4),
//                                             ),
//                                           ],
//                                         ),
//                                         child: Icon(
//                                           Icons.edit,
//                                           color: Colors.white,
//                                           size: width * 0.045,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: height * 0.025),
//                                 Divider(color: Colors.grey[800], thickness: 1),
//                                 SizedBox(height: height * 0.02),
//                                 _buildInfoRow(
//                                   icon: Icons.account_circle_outlined,
//                                   label: 'Full Name',
//                                   value: controller.userName.value.isEmpty ? 'N/A' : controller.userName.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.015),
//                                 _buildInfoRow(
//                                   icon: Icons.email_outlined,
//                                   label: 'Email Address',
//                                   value: controller.userEmail.value.isEmpty ? 'N/A' : controller.userEmail.value,
//                                   width: width,
//                                 ),
//                                 SizedBox(height: height * 0.015),
//                                 _buildInfoRow(
//                                   icon: Icons.phone_android_outlined,
//                                   label: 'Mobile Number',
//                                   value: controller.userMobile.value.isEmpty ? 'N/A' : controller.userMobile.value,
//                                   width: width,
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(height: height * 0.025),
                          
//                           // View Subscription Button
//                           GestureDetector(
//                             onTap: () => Get.to(() => const SubscriptionDetailsPage()),
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                               decoration: BoxDecoration(
//                                 gradient: const LinearGradient(
//                                   colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
//                                 ),
//                                 borderRadius: BorderRadius.circular(16),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(0xFF00A8E8).withOpacity(0.3),
//                                     blurRadius: 12,
//                                     offset: const Offset(0, 6),
//                                   ),
//                                 ],
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   const Icon(
//                                     Icons.card_membership,
//                                     color: Colors.white,
//                                     size: 22,
//                                   ),
//                                   const SizedBox(width: 12),
//                                   const Text(
//                                     'View Subscriptions',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.025),
                          
//                           // Sign Out Button
//                           GestureDetector(
//                             onTap: controller.signOut,
//                             child: Container(
//                               width: width,
//                               padding: EdgeInsets.symmetric(
//                                 vertical: height * 0.02,
//                                 horizontal: width * 0.04,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.05),
//                                 borderRadius: BorderRadius.circular(16),
//                                 border: Border.all(
//                                   color: Colors.red.withOpacity(0.3),
//                                   width: 1,
//                                 ),
//                               ),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.logout_rounded,
//                                     color: Colors.red[400],
//                                     size: width * 0.055,
//                                   ),
//                                   SizedBox(width: width * 0.03),
//                                   Text(
//                                     'Sign Out',
//                                     style: TextStyle(
//                                       color: Colors.red[400],
//                                       fontSize: orientation == Orientation.portrait
//                                           ? width * 0.045
//                                           : height * 0.04,
//                                       fontWeight: FontWeight.w600,
//                                       letterSpacing: 0.5,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: height * 0.02),
//                         ],
//                       ),
//                     ),
//                   )),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//     required double width,
//   }) {
//     return Container(
//       padding: EdgeInsets.all(width * 0.035),
//       decoration: BoxDecoration(
//         color: Colors.black.withOpacity(0.3),
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(
//           color: Colors.white.withOpacity(0.05),
//           width: 1,
//         ),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: const Color(0xFF00A8E8).withOpacity(0.1),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Icon(
//               icon,
//               color: const Color(0xFF00A8E8),
//               size: width * 0.05,
//             ),
//           ),
//           SizedBox(width: width * 0.035),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   label,
//                   style: TextStyle(
//                     color: Colors.grey[500],
//                     fontSize: width * 0.03,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   value,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: width * 0.038,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'package:ott/View/Screen/Auth/signin.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../Profile.dart';

// Safe date formatting function
String safeDateFormat(String? dateStr) {
  if (dateStr == null || dateStr.isEmpty) return 'N/A';
  try {
    return DateFormat('MMM dd, yyyy').format(DateTime.parse(dateStr));
  } catch (e) {
    return 'Invalid Date';
  }
}

// Data Models with Null Safety
class UserResponse {
  final User user;
  UserResponse({required this.user});
  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      user: User.fromJson(json['user'] ?? {}),
    );
  }
}

class User {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String status;
  final bool emailVerified;
  final String subscriptionStatus;
  final bool hasAllAccess;
  final List<EpisodeSubscription> episodeSubscriptions;
  final String? accessUntil;
  final String? lastLoginAt;
  final String? profilePhoto;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.status,
    required this.emailVerified,
    required this.subscriptionStatus,
    required this.hasAllAccess,
    required this.episodeSubscriptions,
    this.accessUntil,
    this.lastLoginAt,
    this.profilePhoto,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    var subsJson = json['episodeSubscriptions'] as List<dynamic>? ?? [];
    List<EpisodeSubscription> subs = subsJson
        .map((e) => EpisodeSubscription.fromJson(e as Map<String, dynamic>))
        .toList();
    return User(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      email: json['email']?.toString() ?? '',
      mobile: json['mobile']?.toString() ?? '',
      status: json['status']?.toString() ?? '',
      emailVerified: json['emailVerified'] as bool? ?? false,
      subscriptionStatus: json['subscriptionStatus']?.toString() ?? '',
      hasAllAccess: json['hasAllAccess'] as bool? ?? false,
      episodeSubscriptions: subs,
      accessUntil: json['accessUntil']?.toString(),
      lastLoginAt: json['lastLoginAt']?.toString(),
      profilePhoto: json['profilePhoto']?.toString(),
    );
  }
}

class EpisodeSubscription {
  final String episodeId;
  final String planCode;
  final String title;
  final String? endAt;
  final String episodeName;

  EpisodeSubscription({
    required this.episodeId,
    required this.planCode,
    required this.title,
    this.endAt,
    required this.episodeName,
  });

  factory EpisodeSubscription.fromJson(Map<String, dynamic> json) {
    return EpisodeSubscription(
      episodeId: json['episodeId']?.toString() ?? '',
      planCode: json['planCode']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      endAt: json['endAt']?.toString(),
      episodeName: json['episodeName']?.toString() ?? '',
    );
  }
}

// Subscription Plan Model
class SubscriptionPlan {
  final String id;
  final String code;
  final bool active;
  final int durationDays;
  final int price;
  final String scope;
  final String title;

  SubscriptionPlan({
    required this.id,
    required this.code,
    required this.active,
    required this.durationDays,
    required this.price,
    required this.scope,
    required this.title,
  });

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlan(
      id: json['_id'] ?? '',
      code: json['code'] ?? '',
      active: json['active'] ?? false,
      durationDays: json['durationDays'] ?? 0,
      price: json['price'] ?? 0,
      scope: json['scope'] ?? '',
      title: json['title'] ?? '',
    );
  }
}

// MySubscription Model
class MySubscription {
  final String id;
  final String user;
  final SubscriptionPlan plan;
  final String status;
  final String? episodeId;
  final String? episodeName;
  final String orderId;
  final int amount;
  final List<SubscriptionHistory> history;
  final String createdAt;
  final String updatedAt;
  final int v;
  final String? startAt;
  final String? endAt;

  MySubscription({
    required this.id,
    required this.user,
    required this.plan,
    required this.status,
    this.episodeId,
    this.episodeName,
    required this.orderId,
    required this.amount,
    required this.history,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.startAt,
    this.endAt,
  });

  factory MySubscription.fromJson(Map<String, dynamic> json) {
    return MySubscription(
      id: json['_id'] ?? '',
      user: json['user'] ?? '',
      plan: SubscriptionPlan.fromJson(json['plan'] ?? {}),
      status: json['status'] ?? '',
      episodeId: json['episodeId']?.toString(),
      episodeName: json['episodeName']?.toString(),
      orderId: json['orderId'] ?? '',
      amount: json['amount'] ?? 0,
      history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      v: json['__v'] ?? 0,
      startAt: json['startAt']?.toString(),
      endAt: json['endAt']?.toString(),
    );
  }

  bool get isActive {
    if (status != 'active' || endAt == null || endAt!.isEmpty) return false;
    final date = DateTime.tryParse(endAt!);
    return date != null && date.isAfter(DateTime.now());
  }
}

// Subscription History Model
class SubscriptionHistory {
  final String id;
  final String at;
  final String status;
  final String note;

  SubscriptionHistory({
    required this.id,
    required this.at,
    required this.status,
    required this.note,
  });

  factory SubscriptionHistory.fromJson(Map<String, dynamic> json) {
    return SubscriptionHistory(
      id: json['_id'] ?? '',
      at: json['at'] ?? '',
      status: json['status'] ?? '',
      note: json['note'] ?? '',
    );
  }
}

class MyAccountController extends GetxController {
  RxString userName = ''.obs;
  RxString userEmail = ''.obs;
  RxString userMobile = ''.obs;
  RxString profilePhoto = ''.obs;
  RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
  RxString accessUntil = ''.obs;
  RxBool isLoading = false.obs;
  RxBool isUpdating = false.obs;

  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  final String baseDomain = 'https://spottt.codifyinstitute.org';

  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }

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

  Future<void> fetchProfile() async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('No token found');
        showToast('Session expired. Please login again.', false);
        isLoading.value = false;
        return;
      }
      final response = await http.get(
        Uri.parse('$baseUrl/auth/me'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print('MyAccount Response Status Code: ${response.statusCode}');
      print('MyAccount Response Body: ${response.body}');
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        var userResponse = UserResponse.fromJson(responseData);
        var user = userResponse.user;
        await prefs.setString('user_id', user.id);
        userName.value = user.name;
        userEmail.value = user.email.isEmpty ? 'N/A' : user.email;
        userMobile.value = user.mobile;
        String photoUrl = '';
        if (user.profilePhoto != null && user.profilePhoto!.isNotEmpty) {
          photoUrl = '$baseDomain${user.profilePhoto}';
        }
        profilePhoto.value = photoUrl;
        accessUntil.value = safeDateFormat(user.accessUntil);
        try {
          final profileCtrl = Get.find<ProfileController>();
          profileCtrl.userName.value = userName.value;
          profileCtrl.profilePhoto.value = profilePhoto.value;
        } catch (e) {
          print('ProfileController not found for sync: $e');
        }
      } else {
        print('Failed to fetch profile');
        showToast('Failed to load profile data', false);
      }
      await fetchMySubscriptions();
    } catch (e) {
      print('Error fetching profile: $e');
      showToast('Error loading profile. Please check your connection.', false);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> fetchMySubscriptions() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('❌ No token found for my subscriptions');
        return;
      }
      final response = await http.get(
        Uri.parse('$baseUrl/subscriptions/mine'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print('✅ My Subscriptions Response Status: ${response.statusCode}');
      print('📦 My Subscriptions Response Body: ${response.body}');
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        mySubscriptions.value = data.map((json) => MySubscription.fromJson(json)).toList();
        print('✅ Fetched ${mySubscriptions.length} subscriptions');
      } else {
        print('❌ Failed to fetch my subscriptions: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Error fetching my subscriptions: $e');
    }
  }

  Future<void> updateProfile({String? name, File? profilePhotoFile}) async {
    try {
      isUpdating.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');

      if (token == null) {
        showToast('Session expired. Please login again.', false);
        return;
      }
      var request = http.MultipartRequest(
        'PUT',
        Uri.parse('$baseUrl/auth/update-profile'),
      );
      request.headers['Authorization'] = 'Bearer $token';
      if (name != null && name.isNotEmpty) {
        request.fields['name'] = name;
      }
      if (profilePhotoFile != null) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'profilePhoto',
            profilePhotoFile.path,
          ),
        );
      }
      print('🔄 Updating profile...');
      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);
      print('✅ Update Profile Response Status: ${response.statusCode}');
      print('📦 Update Profile Response Body: ${response.body}');
      if (response.statusCode == 200) {
        showToast('Profile updated successfully!', true);
        await fetchProfile();
      } else {
        final errorData = jsonDecode(response.body);
        showToast(errorData['message'] ?? 'Failed to update profile', false);
      }
    } catch (e) {
      print('❌ Error updating profile: $e');
      showToast('Error updating profile. Please try again.', false);
    } finally {
      isUpdating.value = false;
    }
  }

  Future<void> signOut() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('auth_token');
      await prefs.remove('user_id');
      await prefs.remove('user_name');
      await prefs.remove('user_email');
      await prefs.remove('user_mobile');

      showToast('Signed out successfully! See you again soon.', true);

      Future.delayed(const Duration(milliseconds: 500), () {
        Get.offAll(() => const Signin());
      });
    } catch (e) {
      print('Error signing out: $e');
      showToast('Error signing out. Please try again.', false);
    }
  }
}

// Edit Profile Dialog
class EditProfileDialog extends StatefulWidget {
  final String currentName;
  final String currentPhoto;
  const EditProfileDialog({
    super.key,
    required this.currentName,
    required this.currentPhoto,
  });

  @override
  State<EditProfileDialog> createState() => _EditProfileDialogState();
}

class _EditProfileDialogState extends State<EditProfileDialog> {
  late TextEditingController nameController;
  File? selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.currentName);
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  Future<void> pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (image != null) {
        setState(() {
          selectedImage = File(image.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
      Get.snackbar(
        'Error',
        'Failed to pick image',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void showImageSourceDialog() {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFF1a1a1a),
                const Color(0xFF0d0d0d),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF00A8E8).withOpacity(0.3),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Choose Image Source',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              _buildSourceOption(
                icon: Icons.camera_alt_rounded,
                title: 'Camera',
                subtitle: 'Take a new photo',
                onTap: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.camera);
                },
              ),
              const SizedBox(height: 12),
              _buildSourceOption(
                icon: Icons.photo_library_rounded,
                title: 'Gallery',
                subtitle: 'Choose from gallery',
                onTap: () {
                  Navigator.pop(context);
                  pickImage(ImageSource.gallery);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSourceOption({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey[600],
              size: 16,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MyAccountController>();
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF1a1a1a),
              const Color(0xFF0d0d0d),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: const Color(0xFF00A8E8).withOpacity(0.3),
            width: 1,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Profile Photo Section
              GestureDetector(
                onTap: showImageSourceDialog,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF00A8E8).withOpacity(0.3),
                            blurRadius: 20,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF1a1a1a),
                        ),
                        child: ClipOval(
                          child: selectedImage != null
                              ? Image.file(selectedImage!, fit: BoxFit.cover)
                              : widget.currentPhoto.isNotEmpty
                                  ? Image.network(
                                      widget.currentPhoto,
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) {
                                        return Container(
                                          color: Colors.grey[800],
                                          child: const Icon(
                                            Icons.person,
                                            size: 60,
                                            color: Colors.white,
                                          ),
                                        );
                                      },
                                    )
                                  : Container(
                                      color: Colors.grey[800],
                                      child: const Icon(
                                        Icons.person,
                                        size: 60,
                                        color: Colors.white,
                                      ),
                                    ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF00A8E8).withOpacity(0.5),
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),

              // Name Field
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                    width: 1,
                  ),
                ),
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.grey[400]),
                    prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF00A8E8)),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Action Buttons
              Obx(() => controller.isUpdating.value
                  ? const CircularProgressIndicator(color: Color(0xFF00A8E8))
                  : Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: GestureDetector(
                            onTap: () async {
                              final newName = nameController.text.trim();

                              if (newName.isEmpty && selectedImage == null) {
                                Get.snackbar(
                                  'Error',
                                  'Please enter a name or select a photo',
                                  backgroundColor: Colors.red,
                                  colorText: Colors.white,
                                );
                                return;
                              }
                              await controller.updateProfile(
                                name: newName.isNotEmpty ? newName : null,
                                profilePhotoFile: selectedImage,
                              );

                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                ),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF00A8E8).withOpacity(0.3),
                                    blurRadius: 8,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text(
                                  'Save Changes',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
            ],
          ),
        ),
      ),
    );
  }
}

class SubscriptionDetailsPage extends StatelessWidget {
  const SubscriptionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyAccountController controller = Get.find<MyAccountController>();
    final List<MySubscription> activeSubs = controller.mySubscriptions.where((s) => s.isActive).toList();
    final List<MySubscription> historySubs = controller.mySubscriptions.where((s) => !s.isActive).toList();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Subscriptions',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF1a1a1a),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: const EdgeInsets.all(4),
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
                padding: const EdgeInsets.all(4),
                tabs: const [
                  Tab(
                    text: 'Active',
                    height: 42,
                  ),
                  Tab(
                    text: 'History',
                    height: 42,
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Active Subscriptions Tab
                  activeSubs.isEmpty
                      ? _buildEmptyState('No Active Subscriptions', Icons.subscriptions_outlined)
                      : ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: activeSubs.length,
                          itemBuilder: (context, index) {
                            final sub = activeSubs[index];
                            return _buildSubscriptionCard(sub, true);
                          },
                        ),
                  // Subscription History Tab
                  historySubs.isEmpty
                      ? _buildEmptyState('No Subscription History', Icons.history)
                      : ListView.builder(
                          padding: const EdgeInsets.all(16),
                          itemCount: historySubs.length,
                          itemBuilder: (context, index) {
                            final sub = historySubs[index];
                            return _buildSubscriptionCard(sub, false);
                          },
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(String message, IconData icon) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey[900],
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 48, color: Colors.grey[700]),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionCard(MySubscription sub, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isActive
              ? [const Color(0xFF1a1a1a), const Color(0xFF0d0d0d)]
              : [Colors.grey[900]!, Colors.grey[900]!],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isActive
              ? const Color(0xFF00A8E8).withOpacity(0.3)
              : Colors.grey[800]!,
          width: 1,
        ),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: const Color(0xFF00A8E8).withOpacity(0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ]
            : [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  sub.plan.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  gradient: isActive
                      ? const LinearGradient(
                          colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                        )
                      : LinearGradient(
                          colors: [Colors.red[700]!, Colors.red[900]!],
                        ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  isActive ? 'Active' : 'Expired',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  sub.plan.scope == 'all' ? Icons.all_inclusive : Icons.movie_outlined,
                  color: const Color(0xFF00A8E8),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    sub.plan.scope == 'all' ? 'All Episodes Access' : (sub.episodeName ?? 'N/A'),
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildInfoChip(
                  icon: Icons.currency_rupee,
                  label: 'Amount',
                  value: '₹${sub.amount}',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildInfoChip(
                  icon: Icons.calendar_today,
                  label: 'Duration',
                  value: '${sub.plan.durationDays} days',
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Divider(color: Colors.grey[800], thickness: 1),
          const SizedBox(height: 12),
          _buildDateRow(
            icon: Icons.play_circle_outline,
            label: 'Start Date',
            value: safeDateFormat(sub.startAt),
            color: const Color(0xFF00A8E8),
          ),
          const SizedBox(height: 8),
          _buildDateRow(
            icon: Icons.event_busy,
            label: isActive ? 'Expires On' : 'Expired On',
            value: safeDateFormat(sub.endAt),
            color: isActive ? const Color(0xFF00A8E8) : Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xFF00A8E8), size: 16),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateRow({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      children: [
        Icon(icon, color: color, size: 18),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class Myaccount extends StatelessWidget {
  const Myaccount({super.key});

  @override
  Widget build(BuildContext context) {
    final MyAccountController controller = Get.put(MyAccountController());
    return OrientationBuilder(
      builder: (context, orientation) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Obx(() => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFF00A8E8),
                    ),
                  )
                : SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header Section
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'My Account',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: orientation == Orientation.portrait
                                          ? width * 0.08
                                          : height * 0.065,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  SizedBox(height: height * 0.005),
                                  Text(
                                    'Manage your profile',
                                    style: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: width * 0.035,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xFF00A8E8).withOpacity(0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.person_outline,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.04),

                          // Profile Photo Section with Enhanced Design
                          Center(
                            child: GestureDetector(
                              onTap: controller.profilePhoto.value.isNotEmpty
                                  ? () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            backgroundColor: Colors.transparent,
                                            insetPadding: EdgeInsets.zero,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context).size.width,
                                                  height: MediaQuery.of(context).size.height,
                                                  decoration: const BoxDecoration(
                                                    color: Colors.black,
                                                  ),
                                                  child: Image.network(
                                                    controller.profilePhoto.value,
                                                    fit: BoxFit.contain,
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    errorBuilder: (context, error, stackTrace) {
                                                      Navigator.of(context).pop();
                                                      return const SizedBox.shrink();
                                                    },
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 40,
                                                  right: 20,
                                                  child: GestureDetector(
                                                    onTap: () => Navigator.of(context).pop(),
                                                    child: Container(
                                                      padding: const EdgeInsets.all(12),
                                                      decoration: BoxDecoration(
                                                        color: Colors.black87,
                                                        shape: BoxShape.circle,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black.withOpacity(0.5),
                                                            blurRadius: 8,
                                                          ),
                                                        ],
                                                      ),
                                                      child: const Icon(
                                                        Icons.close,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    }
                                  : null,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 140,
                                    height: 140,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: const LinearGradient(
                                        colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0xFF00A8E8).withOpacity(0.3),
                                          blurRadius: 20,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF1a1a1a),
                                      ),
                                      child: ClipOval(
                                        child: controller.profilePhoto.value.isNotEmpty
                                            ? Image.network(
                                                controller.profilePhoto.value,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error, stackTrace) {
                                                  return Container(
                                                    color: Colors.grey[800],
                                                    child: const Icon(
                                                      Icons.person,
                                                      size: 60,
                                                      color: Colors.white,
                                                    ),
                                                  );
                                                },
                                              )
                                            : Container(
                                                color: Colors.grey[800],
                                                child: const Icon(
                                                  Icons.person,
                                                  size: 60,
                                                  color: Colors.white,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.03),

                          // User Name Display
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  controller.userName.value,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.04),

                          // Personal Information Card
                          Container(
                            width: width,
                            padding: EdgeInsets.all(width * 0.045),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color(0xFF1a1a1a),
                                  const Color(0xFF0d0d0d),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: const Color(0xFF00A8E8).withOpacity(0.3),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 12,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(width * 0.025),
                                          decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                              colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                            ),
                                            borderRadius: BorderRadius.circular(width * 0.02),
                                          ),
                                          child: Icon(
                                            Icons.info_outline,
                                            color: Colors.white,
                                            size: width * 0.055,
                                          ),
                                        ),
                                        SizedBox(width: width * 0.03),
                                        Text(
                                          'Personal Info',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: width * 0.045,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => EditProfileDialog(
                                            currentName: controller.userName.value,
                                            currentPhoto: controller.profilePhoto.value,
                                          ),
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(width * 0.025),
                                        decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0xFF00A8E8).withOpacity(0.3),
                                              blurRadius: 8,
                                              offset: const Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: width * 0.045,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height * 0.025),
                                Divider(color: Colors.grey[800], thickness: 1),
                                SizedBox(height: height * 0.02),
                                _buildInfoRow(
                                  icon: Icons.account_circle_outlined,
                                  label: 'Full Name',
                                  value: controller.userName.value.isEmpty ? 'N/A' : controller.userName.value,
                                  width: width,
                                ),
                                // SizedBox(height: height * 0.015),
                                // _buildInfoRow(
                                //   icon: Icons.email_outlined,
                                //   label: 'Email Address',
                                //   value: controller.userEmail.value.isEmpty ? 'N/A' : controller.userEmail.value,
                                //   width: width,
                                // ),
                                SizedBox(height: height * 0.015),
                                _buildInfoRow(
                                  icon: Icons.phone_android_outlined,
                                  label: 'Mobile Number',
                                  value: controller.userMobile.value.isEmpty ? 'N/A' : controller.userMobile.value,
                                  width: width,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: height * 0.025),

                          // View Subscription Button
                          GestureDetector(
                            onTap: () => Get.to(() => const SubscriptionDetailsPage()),
                            child: Container(
                              width: width,
                              padding: EdgeInsets.symmetric(vertical: height * 0.02),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Color(0xFF00A8E8), Color(0xFF0077B6)],
                                ),
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF00A8E8).withOpacity(0.3),
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.card_membership,
                                    color: Colors.white,
                                    size: 22,
                                  ),
                                  const SizedBox(width: 12),
                                  const Text(
                                    'View Subscriptions',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.025),

                          // Sign Out Button
                          GestureDetector(
                            onTap: controller.signOut,
                            child: Container(
                              width: width,
                              padding: EdgeInsets.symmetric(
                                vertical: height * 0.02,
                                horizontal: width * 0.04,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Colors.red.withOpacity(0.3),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout_rounded,
                                    color: Colors.red[400],
                                    size: width * 0.055,
                                  ),
                                  SizedBox(width: width * 0.03),
                                  Text(
                                    'Sign Out',
                                    style: TextStyle(
                                      color: Colors.red[400],
                                      fontSize: orientation == Orientation.portrait
                                          ? width * 0.045
                                          : height * 0.04,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                        ],
                      ),
                    ),
                  )),
          ),
        );
      },
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
    required double width,
  }) {
    return Container(
      padding: EdgeInsets.all(width * 0.035),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withOpacity(0.05),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFF00A8E8).withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF00A8E8),
              size: width * 0.05,
            ),
          ),
          SizedBox(width: width * 0.035),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: width * 0.03,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: width * 0.038,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}