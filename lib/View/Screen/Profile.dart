// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:ott/View/Screen/Settings.dart';
// // // // import 'package:ott/View/Screen/Yourprofile.dart';


// // // // class Profile extends StatelessWidget {
// // // //   const Profile({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     double height = MediaQuery.of(context).size.height;
// // // //     double width = MediaQuery.of(context).size.width;
    
// // // //     return OrientationBuilder(
// // // //       builder: (context, orientation) {
// // // //         return DefaultTabController(
// // // //           length: 2,
// // // //           child: Scaffold(
// // // //             backgroundColor: const Color(0xFF0A0A0A),
// // // //             body: SafeArea(
// // // //               child: Column(
// // // //                 children: [
// // // //                   // Header Section
// // // //                   _buildHeader(width, height, orientation),
                  
// // // //                   // Tab Bar
// // // //                   _buildTabBar(width, height, orientation),
                  
// // // //                   // Tab Bar View
// // // //                   Expanded(
// // // //                     child: TabBarView(
// // // //                       children: [
// // // //                         _buildWatchlistTab(width, height, orientation),
// // // //                         _buildPurchasesTab(width, height, orientation),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       },
// // // //     );
// // // //   }

// // // //   Widget _buildHeader(double width, double height, Orientation orientation) {
// // // //     return InkWell(
// // // //       onTap: (){
// // // //         Get.to(Yourprofile());
// // // //       },
// // // //       child: Container(
// // // //         padding: EdgeInsets.all(width * 0.04),
// // // //         child: Row(
// // // //           children: [
// // // //             // Profile Picture
// // // //             CircleAvatar(
// // // //               radius: orientation == Orientation.portrait 
// // // //                   ? width * 0.08 
// // // //                   : width * 0.05,
// // // //               backgroundColor: Colors.grey[800],
// // // //               child: Icon(
// // // //                 Icons.person,
// // // //                 size: orientation == Orientation.portrait 
// // // //                     ? width * 0.08 
// // // //                     : width * 0.05,
// // // //                 color: Colors.white,
// // // //               ),
// // // //             ),
            
// // // //             SizedBox(width: width * 0.04),
            
// // // //             // Profile Info
// // // //             Expanded(
// // // //               child: Column(
// // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                 children: [
// // // //                   Text(
// // // //                     'Shubham gharat',
// // // //                     style: TextStyle(
// // // //                       color: Colors.white,
// // // //                       fontSize: orientation == Orientation.portrait 
// // // //                           ? width * 0.05 
// // // //                           : width * 0.03,
// // // //                       fontWeight: FontWeight.w600,
// // // //                     ),
// // // //                   ),
// // // //                   SizedBox(height: height * 0.003),
// // // //                   Text(
// // // //                     'Switch profiles',
// // // //                     style: TextStyle(
// // // //                       color: Colors.grey[400],
// // // //                       fontSize: orientation == Orientation.portrait 
// // // //                           ? width * 0.038 
// // // //                           : width * 0.024,
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
            
// // // //             // Cast Icon
// // // //             Icon(
// // // //               Icons.cast,
// // // //               color: Colors.white,
// // // //               size: orientation == Orientation.portrait 
// // // //                   ? width * 0.065 
// // // //                   : width * 0.04,
// // // //             ),
            
// // // //             SizedBox(width: width * 0.04),
            
// // // //             // Settings Icon
// // // //             InkWell(onTap: (){
// // // //               Get.to(Settings());
// // // //             },
// // // //               child: Icon(
// // // //                 Icons.settings,
// // // //                 color: Colors.white,
// // // //                 size: orientation == Orientation.portrait 
// // // //                     ? width * 0.065 
// // // //                     : width * 0.04,
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildTabBar(double width, double height, Orientation orientation) {
// // // //     return Container(
// // // //       decoration: BoxDecoration(
// // // //         border: Border(
// // // //           bottom: BorderSide(
// // // //             color: Colors.grey[800]!,
// // // //             width: 1,
// // // //           ),
// // // //         ),
// // // //       ),
// // // //       child: TabBar(
// // // //         indicatorColor: Colors.white,
// // // //         indicatorWeight: height * 0.004,
// // // //         labelColor: Colors.white,
// // // //         unselectedLabelColor: Colors.grey[500],
// // // //         labelStyle: TextStyle(
// // // //           fontSize: orientation == Orientation.portrait 
// // // //               ? width * 0.042 
// // // //               : width * 0.026,
// // // //           fontWeight: FontWeight.w600,
// // // //         ),
// // // //         unselectedLabelStyle: TextStyle(
// // // //           fontSize: orientation == Orientation.portrait 
// // // //               ? width * 0.042 
// // // //               : width * 0.026,
// // // //           fontWeight: FontWeight.w500,
// // // //         ),
// // // //         tabs: const [
// // // //           Tab(text: 'Watchlist'),
// // // //           Tab(text: 'Purchases'),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
// // // //     return Center(
// // // //       child: Padding(
// // // //         padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// // // //         child: Column(
// // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // //           children: [
// // // //             Text(
// // // //               'Browse now, watch later',
// // // //               textAlign: TextAlign.center,
// // // //               style: TextStyle(
// // // //                 color: Colors.white,
// // // //                 fontSize: orientation == Orientation.portrait 
// // // //                     ? width * 0.062 
// // // //                     : width * 0.038,
// // // //                 fontWeight: FontWeight.bold,
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: height * 0.025),
// // // //             Text(
// // // //               'Your Watchlist is shared across all of your devices.',
// // // //               textAlign: TextAlign.center,
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[500],
// // // //                 fontSize: orientation == Orientation.portrait 
// // // //                     ? width * 0.04 
// // // //                     : width * 0.025,
// // // //                 height: 1.5,
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
// // // //     return Center(
// // // //       child: Padding(
// // // //         padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// // // //         child: Column(
// // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // //           children: [
// // // //             Icon(
// // // //               Icons.shopping_bag_outlined,
// // // //               color: Colors.grey[600],
// // // //               size: orientation == Orientation.portrait 
// // // //                   ? width * 0.15 
// // // //                   : width * 0.09,
// // // //             ),
// // // //             SizedBox(height: height * 0.03),
// // // //             Text(
// // // //               'No purchases yet',
// // // //               textAlign: TextAlign.center,
// // // //               style: TextStyle(
// // // //                 color: Colors.white,
// // // //                 fontSize: orientation == Orientation.portrait 
// // // //                     ? width * 0.05 
// // // //                     : width * 0.03,
// // // //                 fontWeight: FontWeight.w600,
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: height * 0.015),
// // // //             Text(
// // // //               'Your purchased movies and TV shows will appear here.',
// // // //               textAlign: TextAlign.center,
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[500],
// // // //                 fontSize: orientation == Orientation.portrait 
// // // //                     ? width * 0.038 
// // // //                     : width * 0.024,
// // // //                 height: 1.5,
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:ott/View/Screen/Settings.dart';
// // // import 'package:ott/View/Screen/Yourprofile.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';

// // // // Profile Response Model
// // // class ProfileResponse {
// // //   final User? user;

// // //   ProfileResponse({this.user});

// // //   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
// // //     return ProfileResponse(
// // //       user: json['user'] != null ? User.fromJson(json['user']) : null,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     final Map<String, dynamic> data = <String, dynamic>{};
// // //     data['user'] = user?.toJson();
// // //     return data;
// // //   }
// // // }

// // // // User Model
// // // class User {
// // //   final String? id;
// // //   final String? name;
// // //   final String? email;
// // //   final String? mobile;
// // //   final String? status;
// // //   final bool? emailVerified;
// // //   final String? subscriptionStatus;
// // //   final bool? hasAllAccess;
// // //   final List<dynamic>? episodeSubscriptions;
// // //   final String? accessUntil;
// // //   final String? lastLoginAt;

// // //   User({
// // //     this.id,
// // //     this.name,
// // //     this.email,
// // //     this.mobile,
// // //     this.status,
// // //     this.emailVerified,
// // //     this.subscriptionStatus,
// // //     this.hasAllAccess,
// // //     this.episodeSubscriptions,
// // //     this.accessUntil,
// // //     this.lastLoginAt,
// // //   });

// // //   factory User.fromJson(Map<String, dynamic> json) {
// // //     return User(
// // //       id: json['id'],
// // //       name: json['name'],
// // //       email: json['email'],
// // //       mobile: json['mobile'],
// // //       status: json['status'],
// // //       emailVerified: json['emailVerified'],
// // //       subscriptionStatus: json['subscriptionStatus'],
// // //       hasAllAccess: json['hasAllAccess'],
// // //       episodeSubscriptions: json['episodeSubscriptions'],
// // //       accessUntil: json['accessUntil'],
// // //       lastLoginAt: json['lastLoginAt'],
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     final Map<String, dynamic> data = <String, dynamic>{};
// // //     data['id'] = id;
// // //     data['name'] = name;
// // //     data['email'] = email;
// // //     data['mobile'] = mobile;
// // //     data['status'] = status;
// // //     data['emailVerified'] = emailVerified;
// // //     data['subscriptionStatus'] = subscriptionStatus;
// // //     data['hasAllAccess'] = hasAllAccess;
// // //     data['episodeSubscriptions'] = episodeSubscriptions;
// // //     data['accessUntil'] = accessUntil;
// // //     data['lastLoginAt'] = lastLoginAt;
// // //     return data;
// // //   }
// // // }

// // // // GetX Controller
// // // class ProfileController extends GetxController {
// // //   RxString userName = ''.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     fetchProfile();
// // //   }

// // //   Future<void> fetchProfile() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       final token = prefs.getString('auth_token');                                               
// // //       if (token == null) {
// // //         print('No token found');
// // //         return;
// // //       }

// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/auth/me'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('Profile Response Status Code: ${response.statusCode}');
// // //       print('Profile Response Body: ${response.body}');

// // //       if (response.statusCode == 200) {
// // //         final responseData = jsonDecode(response.body);
// // //         final profileResponse = ProfileResponse.fromJson(responseData);
// // //         if (profileResponse.user != null && profileResponse.user!.name != null) {
// // //           userName.value = profileResponse.user!.name!;
// // //         }
// // //       } else {
// // //         print('Failed to fetch profile');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching profile: $e');
// // //     }
// // //   }
// // // }


// // // class Profile extends StatelessWidget {
// // //   const Profile({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final ProfileController controller = Get.put(ProfileController());
// // //     double height = MediaQuery.of(context).size.height;
// // //     double width = MediaQuery.of(context).size.width;
    
// // //     return OrientationBuilder(
// // //       builder: (context, orientation) {
// // //         return DefaultTabController(
// // //           length: 2,
// // //           child: Scaffold(
// // //             backgroundColor: const Color(0xFF0A0A0A),
// // //             body: SafeArea(
// // //               child: Column(
// // //                 children: [
// // //                   // Header Section
// // //                   _buildHeader(width, height, orientation, controller),
                  
// // //                   // Tab Bar
// // //                   _buildTabBar(width, height, orientation),
                  
// // //                   // Tab Bar View
// // //                   Expanded(
// // //                     child: TabBarView(
// // //                       children: [
// // //                         _buildWatchlistTab(width, height, orientation),
// // //                         _buildPurchasesTab(width, height, orientation),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildHeader(double width, double height, Orientation orientation, ProfileController controller) {
// // //     return InkWell(
// // //       onTap: (){
// // //         Get.to(Yourprofile());
// // //       },
// // //       child: Container(
// // //         padding: EdgeInsets.all(width * 0.04),
// // //         child: Row(
// // //           children: [
// // //             // Profile Picture
// // //             CircleAvatar(
// // //               radius: orientation == Orientation.portrait 
// // //                   ? width * 0.08 
// // //                   : width * 0.05,
// // //               backgroundColor: Colors.grey[800],
// // //               child: Icon(
// // //                 Icons.person,
// // //                 size: orientation == Orientation.portrait 
// // //                     ? width * 0.08 
// // //                     : width * 0.05,
// // //                 color: Colors.white,
// // //               ),
// // //             ),
            
// // //             SizedBox(width: width * 0.04),
            
// // //             // Profile Info
// // //             Expanded(
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   Obx(() => Text(
// // //                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
// // //                     style: TextStyle(
// // //                       color: Colors.white,
// // //                       fontSize: orientation == Orientation.portrait 
// // //                           ? width * 0.05 
// // //                           : width * 0.03,
// // //                       fontWeight: FontWeight.w600,
// // //                     ),
// // //                   )),
// // //                   SizedBox(height: height * 0.003),
// // //                   Text(
// // //                     'Switch profiles',
// // //                     style: TextStyle(
// // //                       color: Colors.grey[400],
// // //                       fontSize: orientation == Orientation.portrait 
// // //                           ? width * 0.038 
// // //                           : width * 0.024,
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
            
// // //             // Cast Icon
// // //             Icon(
// // //               Icons.cast,
// // //               color: Colors.white,
// // //               size: orientation == Orientation.portrait 
// // //                   ? width * 0.065 
// // //                   : width * 0.04,
// // //             ),
            
// // //             SizedBox(width: width * 0.04),
            
// // //             // Settings Icon
// // //             InkWell(onTap: (){
// // //               Get.to(Settings());
// // //             },
// // //               child: Icon(
// // //                 Icons.settings,
// // //                 color: Colors.white,
// // //                 size: orientation == Orientation.portrait 
// // //                     ? width * 0.065 
// // //                     : width * 0.04,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildTabBar(double width, double height, Orientation orientation) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         border: Border(
// // //           bottom: BorderSide(
// // //             color: Colors.grey[800]!,
// // //             width: 1,
// // //           ),
// // //         ),
// // //       ),
// // //       child: TabBar(
// // //         indicatorColor: Colors.white,
// // //         indicatorWeight: height * 0.004,
// // //         labelColor: Colors.white,
// // //         unselectedLabelColor: Colors.grey[500],
// // //         labelStyle: TextStyle(
// // //           fontSize: orientation == Orientation.portrait 
// // //               ? width * 0.042 
// // //               : width * 0.026,
// // //           fontWeight: FontWeight.w600,
// // //         ),
// // //         unselectedLabelStyle: TextStyle(
// // //           fontSize: orientation == Orientation.portrait 
// // //               ? width * 0.042 
// // //               : width * 0.026,
// // //           fontWeight: FontWeight.w500,
// // //         ),
// // //         tabs: const [
// // //           Tab(text: 'Watchlist'),
// // //           Tab(text: 'Purchases'),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
// // //     return Center(
// // //       child: Padding(
// // //         padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Text(
// // //               'Browse now, watch later',
// // //               textAlign: TextAlign.center,
// // //               style: TextStyle(
// // //                 color: Colors.white,
// // //                 fontSize: orientation == Orientation.portrait 
// // //                     ? width * 0.062 
// // //                     : width * 0.038,
// // //                 fontWeight: FontWeight.bold,
// // //               ),
// // //             ),
// // //             SizedBox(height: height * 0.025),
// // //             Text(
// // //               'Your Watchlist is shared across all of your devices.',
// // //               textAlign: TextAlign.center,
// // //               style: TextStyle(
// // //                 color: Colors.grey[500],
// // //                 fontSize: orientation == Orientation.portrait 
// // //                     ? width * 0.04 
// // //                     : width * 0.025,
// // //                 height: 1.5,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
// // //     return Center(
// // //       child: Padding(
// // //         padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             Icon(
// // //               Icons.shopping_bag_outlined,
// // //               color: Colors.grey[600],
// // //               size: orientation == Orientation.portrait 
// // //                   ? width * 0.15 
// // //                   : width * 0.09,
// // //             ),
// // //             SizedBox(height: height * 0.03),
// // //             Text(
// // //               'No purchases yet',
// // //               textAlign: TextAlign.center,
// // //               style: TextStyle(
// // //                 color: Colors.white,
// // //                 fontSize: orientation == Orientation.portrait 
// // //                     ? width * 0.05 
// // //                     : width * 0.03,
// // //                 fontWeight: FontWeight.w600,
// // //               ),
// // //             ),
// // //             SizedBox(height: height * 0.015),
// // //             Text(
// // //               'Your purchased movies and TV shows will appear here.',
// // //               textAlign: TextAlign.center,
// // //               style: TextStyle(
// // //                 color: Colors.grey[500],
// // //                 fontSize: orientation == Orientation.portrait 
// // //                     ? width * 0.038 
// // //                     : width * 0.024,
// // //                 height: 1.5,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:ott/View/Screen/Settings.dart';
// // import 'package:ott/View/Screen/Yourprofile.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';

// // // Profile Response Model
// // class ProfileResponse {
// //   final User? user;

// //   ProfileResponse({this.user});

// //   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
// //     return ProfileResponse(
// //       user: json['user'] != null ? User.fromJson(json['user']) : null,
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['user'] = user?.toJson();
// //     return data;
// //   }
// // }

// // // User Model
// // class User {
// //   final String? id;
// //   final String? name;
// //   final String? email;
// //   final String? mobile;
// //   final String? status;
// //   final bool? emailVerified;
// //   final String? subscriptionStatus;
// //   final bool? hasAllAccess;
// //   final List<dynamic>? episodeSubscriptions;
// //   final String? accessUntil;
// //   final String? lastLoginAt;

// //   User({
// //     this.id,
// //     this.name,
// //     this.email,
// //     this.mobile,
// //     this.status,
// //     this.emailVerified,
// //     this.subscriptionStatus,
// //     this.hasAllAccess,
// //     this.episodeSubscriptions,
// //     this.accessUntil,
// //     this.lastLoginAt,
// //   });

// //   factory User.fromJson(Map<String, dynamic> json) {
// //     return User(
// //       id: json['id'],
// //       name: json['name'],
// //       email: json['email'],
// //       mobile: json['mobile'],
// //       status: json['status'],
// //       emailVerified: json['emailVerified'],
// //       subscriptionStatus: json['subscriptionStatus'],
// //       hasAllAccess: json['hasAllAccess'],
// //       episodeSubscriptions: json['episodeSubscriptions'],
// //       accessUntil: json['accessUntil'],
// //       lastLoginAt: json['lastLoginAt'],
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     final Map<String, dynamic> data = <String, dynamic>{};
// //     data['id'] = id;
// //     data['name'] = name;
// //     data['email'] = email;
// //     data['mobile'] = mobile;
// //     data['status'] = status;
// //     data['emailVerified'] = emailVerified;
// //     data['subscriptionStatus'] = subscriptionStatus;
// //     data['hasAllAccess'] = hasAllAccess;
// //     data['episodeSubscriptions'] = episodeSubscriptions;
// //     data['accessUntil'] = accessUntil;
// //     data['lastLoginAt'] = lastLoginAt;
// //     return data;
// //   }
// // }

// // // GetX Controller
// // class ProfileController extends GetxController {
// //   RxString userName = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     fetchProfile();
// //   }

// //   Future<void> fetchProfile() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       final token = prefs.getString('auth_token');                                               
// //       if (token == null) {
// //         print('No token found');
// //         return;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/auth/me'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('Profile Response Status Code: ${response.statusCode}');
// //       print('Profile Response Body: ${response.body}');

// //       if (response.statusCode == 200) {
// //         final responseData = jsonDecode(response.body);
// //         final profileResponse = ProfileResponse.fromJson(responseData);
// //         if (profileResponse.user != null && profileResponse.user!.name != null) {
// //           userName.value = profileResponse.user!.name!;
// //         }
// //       } else {
// //         print('Failed to fetch profile');
// //       }
// //     } catch (e) {
// //       print('Error fetching profile: $e');
// //     }
// //   }
// // }


// // class Profile extends StatelessWidget {
// //   const Profile({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final ProfileController controller = Get.put(ProfileController());
// //     double height = MediaQuery.of(context).size.height;
// //     double width = MediaQuery.of(context).size.width;
    
// //     return OrientationBuilder(
// //       builder: (context, orientation) {
// //         return Scaffold(
// //           backgroundColor: const Color(0xFF0A0A0A),
// //           body: SafeArea(
// //             child: Column(
// //               children: [
// //                 // Header Section
// //                 _buildHeader(width, height, orientation, controller),
                
// //                 // Tab Bar (Commented Out)
// //                 // _buildTabBar(width, height, orientation),
                
// //                 // Tab Bar View (Commented Out)
// //                 // Expanded(
// //                 //   child: TabBarView(
// //                 //     children: [
// //                 //       _buildWatchlistTab(width, height, orientation),
// //                 //       _buildPurchasesTab(width, height, orientation),
// //                 //     ],
// //                 //   ),
// //                 // ),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildHeader(double width, double height, Orientation orientation, ProfileController controller) {
// //     return InkWell(
// //       onTap: (){
// //         Get.to(Yourprofile());
// //       },
// //       child: Container(
// //         padding: EdgeInsets.all(width * 0.04),
// //         child: Row(
// //           children: [
// //             // Profile Picture
// //             CircleAvatar(
// //               radius: orientation == Orientation.portrait 
// //                   ? width * 0.08 
// //                   : width * 0.05,
// //               backgroundColor: Colors.grey[800],
// //               child: Icon(
// //                 Icons.person,
// //                 size: orientation == Orientation.portrait 
// //                     ? width * 0.08 
// //                     : width * 0.05,
// //                 color: Colors.white,
// //               ),
// //             ),
            
// //             SizedBox(width: width * 0.04),
            
// //             // Profile Info
// //             Expanded(
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Obx(() => Text(
// //                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: orientation == Orientation.portrait 
// //                           ? width * 0.05 
// //                           : width * 0.03,
// //                       fontWeight: FontWeight.w600,
// //                     ),
// //                   )),
// //                   SizedBox(height: height * 0.003),
// //                   Text(
// //                     'Switch profiles',
// //                     style: TextStyle(
// //                       color: Colors.grey[400],
// //                       fontSize: orientation == Orientation.portrait 
// //                           ? width * 0.038 
// //                           : width * 0.024,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
            
// //             // Cast Icon
// //             Icon(
// //               Icons.cast,
// //               color: Colors.white,
// //               size: orientation == Orientation.portrait 
// //                   ? width * 0.065 
// //                   : width * 0.04,
// //             ),
            
// //             SizedBox(width: width * 0.04),
            
// //             // Settings Icon
// //             InkWell(
// //               onTap: (){
// //                 Get.to(Settings());
// //               },
// //               child: Icon(
// //                 Icons.settings,
// //                 color: Colors.white,
// //                 size: orientation == Orientation.portrait 
// //                     ? width * 0.065 
// //                     : width * 0.04,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   // Tab Bar (Commented Out)
// //   // Widget _buildTabBar(double width, double height, Orientation orientation) {
// //   //   return Container(
// //   //     decoration: BoxDecoration(
// //   //       border: Border(
// //   //         bottom: BorderSide(
// //   //           color: Colors.grey[800]!,
// //   //           width: 1,
// //   //         ),
// //   //       ),
// //   //     ),
// //   //     child: TabBar(
// //   //       indicatorColor: Colors.white,
// //   //       indicatorWeight: height * 0.004,
// //   //       labelColor: Colors.white,
// //   //       unselectedLabelColor: Colors.grey[500],
// //   //       labelStyle: TextStyle(
// //   //         fontSize: orientation == Orientation.portrait 
// //   //             ? width * 0.042 
// //   //             : width * 0.026,
// //   //         fontWeight: FontWeight.w600,
// //   //       ),
// //   //       unselectedLabelStyle: TextStyle(
// //   //         fontSize: orientation == Orientation.portrait 
// //   //             ? width * 0.042 
// //   //             : width * 0.026,
// //   //         fontWeight: FontWeight.w500,
// //   //       ),
// //   //       tabs: const [
// //   //         Tab(text: 'Watchlist'),
// //   //         Tab(text: 'Purchases'),
// //   //       ],
// //   //     ),
// //   //   );
// //   // }

// //   // Watchlist Tab (Commented Out)
// //   // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
// //   //   return Center(
// //   //     child: Padding(
// //   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// //   //       child: Column(
// //   //         mainAxisAlignment: MainAxisAlignment.center,
// //   //         children: [
// //   //           Text(
// //   //             'Browse now, watch later',
// //   //             textAlign: TextAlign.center,
// //   //             style: TextStyle(
// //   //               color: Colors.white,
// //   //               fontSize: orientation == Orientation.portrait 
// //   //                   ? width * 0.062 
// //   //                   : width * 0.038,
// //   //               fontWeight: FontWeight.bold,
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: height * 0.025),
// //   //           Text(
// //   //             'Your Watchlist is shared across all of your devices.',
// //   //             textAlign: TextAlign.center,
// //   //             style: TextStyle(
// //   //               color: Colors.grey[500],
// //   //               fontSize: orientation == Orientation.portrait 
// //   //                   ? width * 0.04 
// //   //                   : width * 0.025,
// //   //               height: 1.5,
// //   //             ),
// //   //           ),
// //   //         ],
// //   //       ),
// //   //     ),
// //   //   );
// //   // }

// //   // Purchases Tab (Commented Out)
// //   // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
// //   //   return Center(
// //   //     child: Padding(
// //   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
// //   //       child: Column(
// //   //         mainAxisAlignment: MainAxisAlignment.center,
// //   //         children: [
// //   //           Icon(
// //   //             Icons.shopping_bag_outlined,
// //   //             color: Colors.grey[600],
// //   //             size: orientation == Orientation.portrait 
// //   //                 ? width * 0.15 
// //   //                 : width * 0.09,
// //   //           ),
// //   //           SizedBox(height: height * 0.03),
// //   //           Text(
// //   //             'No purchases yet',
// //   //             textAlign: TextAlign.center,
// //   //             style: TextStyle(
// //   //               color: Colors.white,
// //   //               fontSize: orientation == Orientation.portrait 
// //   //                   ? width * 0.05 
// //   //                   : width * 0.03,
// //   //               fontWeight: FontWeight.w600,
// //   //             ),
// //   //           ),
// //   //           SizedBox(height: height * 0.015),
// //   //           Text(
// //   //             'Your purchased movies and TV shows will appear here.',
// //   //             textAlign: TextAlign.center,
// //   //             style: TextStyle(
// //   //               color: Colors.grey[500],
// //   //               fontSize: orientation == Orientation.portrait 
// //   //                   ? width * 0.038 
// //   //                   : width * 0.024,
// //   //               height: 1.5,
// //   //             ),
// //   //           ),
// //   //         ],
// //   //       ),
// //   //     ),
// //   //   );
// //   // }
// // }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Settings.dart';
// import 'package:ott/View/Screen/Yourprofile.dart';
// import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
// import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
// import 'package:ott/View/Screen/Subscribtion.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// // Profile Response Model
// class ProfileResponse {
//   final User? user;

//   ProfileResponse({this.user});

//   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
//     return ProfileResponse(
//       user: json['user'] != null ? User.fromJson(json['user']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['user'] = user?.toJson();
//     return data;
//   }
// }

// // User Model
// class User {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? status;
//   final bool? emailVerified;
//   final String? subscriptionStatus;
//   final bool? hasAllAccess;
//   final List<dynamic>? episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;

//   User({
//     this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.status,
//     this.emailVerified,
//     this.subscriptionStatus,
//     this.hasAllAccess,
//     this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       mobile: json['mobile'],
//       status: json['status'],
//       emailVerified: json['emailVerified'],
//       subscriptionStatus: json['subscriptionStatus'],
//       hasAllAccess: json['hasAllAccess'],
//       episodeSubscriptions: json['episodeSubscriptions'],
//       accessUntil: json['accessUntil'],
//       lastLoginAt: json['lastLoginAt'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['mobile'] = mobile;
//     data['status'] = status;
//     data['emailVerified'] = emailVerified;
//     data['subscriptionStatus'] = subscriptionStatus;
//     data['hasAllAccess'] = hasAllAccess;
//     data['episodeSubscriptions'] = episodeSubscriptions;
//     data['accessUntil'] = accessUntil;
//     data['lastLoginAt'] = lastLoginAt;
//     return data;
//   }
// }

// // GetX Controller
// class ProfileController extends GetxController {
//   RxString userName = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');                                               
//       if (token == null) {
//         print('No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Profile Response Status Code: ${response.statusCode}');
//       print('Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final profileResponse = ProfileResponse.fromJson(responseData);
//         if (profileResponse.user != null && profileResponse.user!.name != null) {
//           userName.value = profileResponse.user!.name!;
//         }
//       } else {
//         print('Failed to fetch profile');
//       }
//     } catch (e) {
//       print('Error fetching profile: $e');
//     }
//   }
// }


// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ProfileController controller = Get.put(ProfileController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header Section
//                 _buildHeader(width, height, orientation, controller),
                
//                 // Settings Options List
//                 Expanded(
//                   child: ListView(
//                     padding: EdgeInsets.zero,
//                     children: [
//                       _buildSettingsItem(
//                         title: 'My Account',
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                         onTap: () {
//                           Get.to(() => Myaccount());
//                         },
//                       ),
//                       _buildDivider(width),
//                       _buildSettingsItem(
//                         title: 'Prime and subscriptions',
//                         subtitle: 'Manage your subscriptions',
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                         onTap: () {
//                           Get.to(() => Subscription());
//                         },
//                       ),
//                       _buildDivider(width),
//                       _buildSettingsItem(
//                         title: 'Languages',
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                         onTap: () {},
//                       ),
//                       _buildDivider(width),
//                       _buildSettingsItem(
//                         title: 'Help & Feedback',
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                         onTap: () {},
//                       ),
//                       _buildDivider(width),
//                       _buildSettingsItem(
//                         title: 'About & Legal',
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                         onTap: () {},
//                       ),
//                       _buildDivider(width),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildHeader(double width, double height, Orientation orientation, ProfileController controller) {
//     return InkWell(
//       onTap: (){
//         Get.to(() => Yourprofile());
//       },
//       child: Container(
//         padding: EdgeInsets.all(width * 0.04),
//         child: Row(
//           children: [
//             // Profile Picture
//             CircleAvatar(
//               radius: orientation == Orientation.portrait 
//                   ? width * 0.08 
//                   : width * 0.05,
//               backgroundColor: Colors.grey[800],
//               child: Icon(
//                 Icons.person,
//                 size: orientation == Orientation.portrait 
//                     ? width * 0.08 
//                     : width * 0.05,
//                 color: Colors.white,
//               ),
//             ),
            
//             SizedBox(width: width * 0.04),
            
//             // Profile Info
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Obx(() => Text(
//                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: orientation == Orientation.portrait 
//                           ? width * 0.05 
//                           : width * 0.03,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   )),
//                   SizedBox(height: height * 0.003),
//                   Text(
//                     'Switch profiles',
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: orientation == Orientation.portrait 
//                           ? width * 0.038 
//                           : width * 0.024,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
            
//             // Cast Icon
//             Icon(
//               Icons.cast,
//               color: Colors.white,
//               size: orientation == Orientation.portrait 
//                   ? width * 0.065 
//                   : width * 0.04,
//             ),
            
//             SizedBox(width: width * 0.04),
            
//             // Settings Icon
//             InkWell(
//               onTap: (){
//                 Get.to(() => Settings());
//               },
//               child: Icon(
//                 Icons.settings,
//                 color: Colors.white,
//                 size: orientation == Orientation.portrait 
//                     ? width * 0.065 
//                     : width * 0.04,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSettingsItem({
//     required String title,
//     String? subtitle,
//     required double width,
//     required double height,
//     required Orientation orientation,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: orientation == Orientation.portrait 
//               ? height * 0.02 
//               : height * 0.025,
//         ),
//         child: Row(
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: orientation == Orientation.portrait 
//                           ? width * 0.045 
//                           : width * 0.028,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   if (subtitle != null) ...[
//                     SizedBox(height: height * 0.005),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: orientation == Orientation.portrait 
//                             ? width * 0.037 
//                             : width * 0.023,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//             Icon(
//               Icons.chevron_right,
//               color: Colors.grey[600],
//               size: orientation == Orientation.portrait 
//                   ? width * 0.06 
//                   : width * 0.037,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDivider(double width) {
//     return Divider(
//       color: Colors.grey[900],
//       height: 1,
//       thickness: 1,
//       indent: width * 0.04,
//       endIndent: 0,
//     );
//   }

//   // Tab Bar (Commented Out)
//   // Widget _buildTabBar(double width, double height, Orientation orientation) {
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //       border: Border(
//   //         bottom: BorderSide(
//   //           color: Colors.grey[800]!,
//   //           width: 1,
//   //         ),
//   //       ),
//   //     ),
//   //     child: TabBar(
//   //       indicatorColor: Colors.white,
//   //       indicatorWeight: height * 0.004,
//   //       labelColor: Colors.white,
//   //       unselectedLabelColor: Colors.grey[500],
//   //       labelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w600,
//   //       ),
//   //       unselectedLabelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w500,
//   //       ),
//   //       tabs: const [
//   //         Tab(text: 'Watchlist'),
//   //         Tab(text: 'Purchases'),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Watchlist Tab (Commented Out)
//   // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Text(
//   //             'Browse now, watch later',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.062 
//   //                   : width * 0.038,
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.025),
//   //           Text(
//   //             'Your Watchlist is shared across all of your devices.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.04 
//   //                   : width * 0.025,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // Purchases Tab (Commented Out)
//   // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Icon(
//   //             Icons.shopping_bag_outlined,
//   //             color: Colors.grey[600],
//   //             size: orientation == Orientation.portrait 
//   //                 ? width * 0.15 
//   //                 : width * 0.09,
//   //           ),
//   //           SizedBox(height: height * 0.03),
//   //           Text(
//   //             'No purchases yet',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.05 
//   //                   : width * 0.03,
//   //               fontWeight: FontWeight.w600,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.015),
//   //           Text(
//   //             'Your purchased movies and TV shows will appear here.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.038 
//   //                   : width * 0.024,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Settings.dart';
// import 'package:ott/View/Screen/Yourprofile.dart';
// import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
// import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
// import 'package:ott/View/Screen/Subscribtion.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// // Profile Response Model
// class ProfileResponse {
//   final User? user;

//   ProfileResponse({this.user});

//   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
//     return ProfileResponse(
//       user: json['user'] != null ? User.fromJson(json['user']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['user'] = user?.toJson();
//     return data;
//   }
// }

// // User Model
// class User {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? status;
//   final bool? emailVerified;
//   final String? subscriptionStatus;
//   final bool? hasAllAccess;
//   final List<dynamic>? episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;

//   User({
//     this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.status,
//     this.emailVerified,
//     this.subscriptionStatus,
//     this.hasAllAccess,
//     this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       mobile: json['mobile'],
//       status: json['status'],
//       emailVerified: json['emailVerified'],
//       subscriptionStatus: json['subscriptionStatus'],
//       hasAllAccess: json['hasAllAccess'],
//       episodeSubscriptions: json['episodeSubscriptions'],
//       accessUntil: json['accessUntil'],
//       lastLoginAt: json['lastLoginAt'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['mobile'] = mobile;
//     data['status'] = status;
//     data['emailVerified'] = emailVerified;
//     data['subscriptionStatus'] = subscriptionStatus;
//     data['hasAllAccess'] = hasAllAccess;
//     data['episodeSubscriptions'] = episodeSubscriptions;
//     data['accessUntil'] = accessUntil;
//     data['lastLoginAt'] = lastLoginAt;
//     return data;
//   }
// }

// // GetX Controller
// class ProfileController extends GetxController {
//   RxString userName = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');                                               
//       if (token == null) {
//         print('No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Profile Response Status Code: ${response.statusCode}');
//       print('Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final profileResponse = ProfileResponse.fromJson(responseData);
//         if (profileResponse.user != null && profileResponse.user!.name != null) {
//           userName.value = profileResponse.user!.name!;
//         }
//       } else {
//         print('Failed to fetch profile');
//       }
//     } catch (e) {
//       print('Error fetching profile: $e');
//     }
//   }
// }


// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ProfileController controller = Get.put(ProfileController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         bool isLandscape = orientation == Orientation.landscape;
        
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header Section
//                 _buildHeader(width, height, isLandscape, controller),
                
//                 // Divider
//                 Container(
//                   height: 1,
//                   color: Colors.grey[900],
//                   margin: EdgeInsets.symmetric(vertical: height * 0.01),
//                 ),
                
//                 // Settings Options List
//                 Expanded(
//                   child: ListView(
//                     padding: EdgeInsets.zero,
//                     physics: const BouncingScrollPhysics(),
//                     children: [
//                       SizedBox(height: height * 0.01),
                      
//                       _buildSettingsItem(
//                         title: 'My Account',
//                         icon: Icons.person_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Myaccount());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'Prime and subscriptions',
//                         subtitle: 'Manage your subscriptions',
//                         icon: Icons.workspace_premium_outlined,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Subscription());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'Languages',
//                         icon: Icons.language_outlined,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {},
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'Help & Feedback',
//                         icon: Icons.help_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {},
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'About & Legal',
//                         icon: Icons.info_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {},
//                       ),
                      
//                       SizedBox(height: height * 0.02),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, ProfileController controller) {
//     return Container(
//       padding: EdgeInsets.all(width * 0.04),
//       child: Row(
//         children: [
//           // Profile Picture with gradient border
//           InkWell(
//             onTap: () {
//               Get.to(() => Yourprofile());
//             },
//             child: Container(
//               padding: EdgeInsets.all(3),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8),
//                     const Color(0xFF0066CC),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Container(
//                 padding: EdgeInsets.all(2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: const Color(0xFF0A0A0A),
//                 ),
//                 child: CircleAvatar(
//                   radius: isLandscape ? width * 0.05 : width * 0.08,
//                   backgroundColor: Colors.grey[800],
//                   child: Icon(
//                     Icons.person,
//                     size: isLandscape ? width * 0.04 : width * 0.07,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
          
//           SizedBox(width: width * 0.04),
          
//           // Profile Info
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 Get.to(() => Yourprofile());
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Obx(() => Text(
//                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.032 : width * 0.055,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 0.5,
//                     ),
//                   )),
//                   SizedBox(height: height * 0.005),
//                   Row(
//                     children: [
//                       Text(
//                         'View profile',
//                         style: TextStyle(
//                           color: const Color(0xFF00A8E8),
//                           fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.01),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         color: const Color(0xFF00A8E8),
//                         size: isLandscape ? width * 0.02 : width * 0.03,
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
          
//           // Cast Icon (Commented Out)
//           // Icon(
//           //   Icons.cast,
//           //   color: Colors.white,
//           //   size: isLandscape ? width * 0.04 : width * 0.065,
//           // ),
//           // SizedBox(width: width * 0.04),
          
//           // Settings Icon (Commented Out)
//           // InkWell(
//           //   onTap: (){
//           //     Get.to(() => Settings());
//           //   },
//           //   child: Icon(
//           //     Icons.settings,
//           //     color: Colors.white,
//           //     size: isLandscape ? width * 0.04 : width * 0.065,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSettingsItem({
//     required String title,
//     String? subtitle,
//     required IconData icon,
//     required double width,
//     required double height,
//     required bool isLandscape,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       splashColor: const Color(0xFF00A8E8).withOpacity(0.1),
//       highlightColor: const Color(0xFF00A8E8).withOpacity(0.05),
//       child: Container(
//         margin: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: height * 0.008,
//         ),
//         padding: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: isLandscape ? height * 0.025 : height * 0.02,
//         ),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1A1A1A),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.grey[900]!,
//             width: 1,
//           ),
//         ),
//         child: Row(
//           children: [
//             // Icon with gradient background
//             Container(
//               padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.025),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8).withOpacity(0.2),
//                     const Color(0xFF0066CC).withOpacity(0.2),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(
//                 icon,
//                 color: const Color(0xFF00A8E8),
//                 size: isLandscape ? width * 0.03 : width * 0.055,
//               ),
//             ),
            
//             SizedBox(width: width * 0.04),
            
//             // Text content
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
//                       fontWeight: FontWeight.w600,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                   if (subtitle != null) ...[
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                         letterSpacing: 0.2,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
            
//             // Chevron icon
//             Icon(
//               Icons.chevron_right,
//               color: Colors.grey[600],
//               size: isLandscape ? width * 0.04 : width * 0.06,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Tab Bar (Commented Out)
//   // Widget _buildTabBar(double width, double height, Orientation orientation) {
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //       border: Border(
//   //         bottom: BorderSide(
//   //           color: Colors.grey[800]!,
//   //           width: 1,
//   //         ),
//   //       ),
//   //     ),
//   //     child: TabBar(
//   //       indicatorColor: Colors.white,
//   //       indicatorWeight: height * 0.004,
//   //       labelColor: Colors.white,
//   //       unselectedLabelColor: Colors.grey[500],
//   //       labelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w600,
//   //       ),
//   //       unselectedLabelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w500,
//   //       ),
//   //       tabs: const [
//   //         Tab(text: 'Watchlist'),
//   //         Tab(text: 'Purchases'),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Watchlist Tab (Commented Out)
//   // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Text(
//   //             'Browse now, watch later',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.062 
//   //                   : width * 0.038,
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.025),
//   //           Text(
//   //             'Your Watchlist is shared across all of your devices.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.04 
//   //                   : width * 0.025,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // Purchases Tab (Commented Out)
//   // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Icon(
//   //             Icons.shopping_bag_outlined,
//   //             color: Colors.grey[600],
//   //             size: orientation == Orientation.portrait 
//   //                 ? width * 0.15 
//   //                 : width * 0.09,
//   //           ),
//   //           SizedBox(height: height * 0.03),
//   //           Text(
//   //             'No purchases yet',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.05 
//   //                   : width * 0.03,
//   //               fontWeight: FontWeight.w600,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.015),
//   //           Text(
//   //             'Your purchased movies and TV shows will appear here.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.038 
//   //                   : width * 0.024,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Profilepages/AboutandLegal.dart';
// import 'package:ott/View/Screen/Profilepages/Helpandfeedback.dart';
// import 'package:ott/View/Screen/Settings.dart';
// import 'package:ott/View/Screen/Yourprofile.dart';
// import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
// import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
// import 'package:ott/View/Screen/Subscribtion.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// // Profile Response Model
// class ProfileResponse {
//   final User? user;

//   ProfileResponse({this.user});

//   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
//     return ProfileResponse(
//       user: json['user'] != null ? User.fromJson(json['user']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['user'] = user?.toJson();
//     return data;
//   }
// }

// // User Model
// class User {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? status;
//   final bool? emailVerified;
//   final String? subscriptionStatus;
//   final bool? hasAllAccess;
//   final List<dynamic>? episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;

//   User({
//     this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.status,
//     this.emailVerified,
//     this.subscriptionStatus,
//     this.hasAllAccess,
//     this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       mobile: json['mobile'],
//       status: json['status'],
//       emailVerified: json['emailVerified'],
//       subscriptionStatus: json['subscriptionStatus'],
//       hasAllAccess: json['hasAllAccess'],
//       episodeSubscriptions: json['episodeSubscriptions'],
//       accessUntil: json['accessUntil'],
//       lastLoginAt: json['lastLoginAt'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['mobile'] = mobile;
//     data['status'] = status;
//     data['emailVerified'] = emailVerified;
//     data['subscriptionStatus'] = subscriptionStatus;
//     data['hasAllAccess'] = hasAllAccess;
//     data['episodeSubscriptions'] = episodeSubscriptions;
//     data['accessUntil'] = accessUntil;
//     data['lastLoginAt'] = lastLoginAt;
//     return data;
//   }
// }

// // GetX Controller
// class ProfileController extends GetxController {
//   RxString userName = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');                                               
//       if (token == null) {
//         print('No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Profile Response Status Code: ${response.statusCode}');
//       print('Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final profileResponse = ProfileResponse.fromJson(responseData);
//         if (profileResponse.user != null && profileResponse.user!.name != null) {
//           userName.value = profileResponse.user!.name!;
//         }
//       } else {
//         print('Failed to fetch profile');
//       }
//     } catch (e) {
//       print('Error fetching profile: $e');
//     }
//   }

//   // Get first letter of username
//   String getFirstLetter() {
//     if (userName.value.isEmpty) return 'U';
//     return userName.value[0].toUpperCase();
//   }
// }


// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ProfileController controller = Get.put(ProfileController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         bool isLandscape = orientation == Orientation.landscape;
        
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header Section
//                 _buildHeader(width, height, isLandscape, controller),
                
//                 // Divider
//                 Container(
//                   height: 1,
//                   color: Colors.grey[900],
//                   margin: EdgeInsets.symmetric(vertical: height * 0.01),
//                 ),
                
//                 // Settings Options List
//                 Expanded(
//                   child: ListView(
//                     padding: EdgeInsets.zero,
//                     physics: const BouncingScrollPhysics(),
//                     children: [
//                       SizedBox(height: height * 0.01),
                      
//                       _buildSettingsItem(
//                         title: 'My Account',
//                         icon: Icons.person_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Myaccount());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'Subscriptions',
//                         subtitle: 'Manage your subscriptions',
//                         icon: Icons.workspace_premium_outlined,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Subscription());
//                         },
//                       ),
                      
//                       // _buildSettingsItem(
//                       //   title: 'Languages',
//                       //   icon: Icons.language_outlined,
//                       //   width: width,
//                       //   height: height,
//                       //   isLandscape: isLandscape,
//                       //   onTap: () {},
//                       // ),
                      
//                       _buildSettingsItem(
//                         title: 'Help & Feedback',
//                         icon: Icons.help_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(Helpandfeedback());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'About & Legal',
//                         icon: Icons.info_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(Aboutandlegal());
//                         },
//                       ),
                      
//                       SizedBox(height: height * 0.02),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, ProfileController controller) {
//     return Container(
//       padding: EdgeInsets.all(width * 0.04),
//       child: Row(
//         children: [
//           // Profile Picture with gradient border and first letter
//           InkWell(
//             onTap: () {
//               // Get.to(() => Yourprofile());
//             },
//             child: Container(
//               padding: EdgeInsets.all(3),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8),
//                     const Color(0xFF0066CC),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Container(
//                 padding: EdgeInsets.all(2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: const Color(0xFF0A0A0A),
//                 ),
//                 child: CircleAvatar(
//                   radius: isLandscape ? width * 0.05 : width * 0.08,
//                   backgroundColor: Colors.grey[800],
//                   child: Obx(() => Text(
//                     controller.getFirstLetter(),
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.04 : width * 0.065,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )),
//                 ),
//               ),
//             ),
//           ),
          
//           SizedBox(width: width * 0.04),
          
//           // Profile Info
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 // Get.to(() => Yourprofile());
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Obx(() => Text(
//                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.032 : width * 0.055,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 0.5,
//                     ),
//                   )),
//                   // View profile text (Commented Out)
//                   // SizedBox(height: height * 0.005),
//                   // Row(
//                   //   children: [
//                   //     Text(
//                   //       'View profile',
//                   //       style: TextStyle(
//                   //         color: const Color(0xFF00A8E8),
//                   //         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                   //         fontWeight: FontWeight.w500,
//                   //       ),
//                   //     ),
//                   //     SizedBox(width: width * 0.01),
//                   //     Icon(
//                   //       Icons.arrow_forward_ios,
//                   //       color: const Color(0xFF00A8E8),
//                   //       size: isLandscape ? width * 0.02 : width * 0.03,
//                   //     ),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//           ),
          
//           // Cast Icon (Commented Out)
//           // Icon(
//           //   Icons.cast,
//           //   color: Colors.white,
//           //   size: isLandscape ? width * 0.04 : width * 0.065,
//           // ),
//           // SizedBox(width: width * 0.04),
          
//           // Settings Icon (Commented Out)
//           // InkWell(
//           //   onTap: (){
//           //     Get.to(() => Settings());
//           //   },
//           //   child: Icon(
//           //     Icons.settings,
//           //     color: Colors.white,
//           //     size: isLandscape ? width * 0.04 : width * 0.065,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSettingsItem({
//     required String title,
//     String? subtitle,
//     required IconData icon,
//     required double width,
//     required double height,
//     required bool isLandscape,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       splashColor: const Color(0xFF00A8E8).withOpacity(0.1),
//       highlightColor: const Color(0xFF00A8E8).withOpacity(0.05),
//       child: Container(
//         margin: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: height * 0.008,
//         ),
//         padding: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: isLandscape ? height * 0.025 : height * 0.02,
//         ),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1A1A1A),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.grey[900]!,
//             width: 1,
//           ),
//         ),
//         child: Row(
//           children: [
//             // Icon with gradient background
//             Container(
//               padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.025),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8).withOpacity(0.2),
//                     const Color(0xFF0066CC).withOpacity(0.2),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(
//                 icon,
//                 color: const Color(0xFF00A8E8),
//                 size: isLandscape ? width * 0.03 : width * 0.055,
//               ),
//             ),
            
//             SizedBox(width: width * 0.04),
            
//             // Text content
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
//                       fontWeight: FontWeight.w600,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                   if (subtitle != null) ...[
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                         letterSpacing: 0.2,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
            
//             // Chevron icon
//             Icon(
//               Icons.chevron_right,
//               color: Colors.grey[600],
//               size: isLandscape ? width * 0.04 : width * 0.06,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Tab Bar (Commented Out)
//   // Widget _buildTabBar(double width, double height, Orientation orientation) {
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //       border: Border(
//   //         bottom: BorderSide(
//   //           color: Colors.grey[800]!,
//   //           width: 1,
//   //         ),
//   //       ),
//   //     ),
//   //     child: TabBar(
//   //       indicatorColor: Colors.white,
//   //       indicatorWeight: height * 0.004,
//   //       labelColor: Colors.white,
//   //       unselectedLabelColor: Colors.grey[500],
//   //       labelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w600,
//   //       ),
//   //       unselectedLabelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w500,
//   //       ),
//   //       tabs: const [
//   //         Tab(text: 'Watchlist'),
//   //         Tab(text: 'Purchases'),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Watchlist Tab (Commented Out)
//   // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Text(
//   //             'Browse now, watch later',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.062 
//   //                   : width * 0.038,
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.025),
//   //           Text(
//   //             'Your Watchlist is shared across all of your devices.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.04 
//   //                   : width * 0.025,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // Purchases Tab (Commented Out)
//   // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Icon(
//   //             Icons.shopping_bag_outlined,
//   //             color: Colors.grey[600],
//   //             size: orientation == Orientation.portrait 
//   //                 ? width * 0.15 
//   //                 : width * 0.09,
//   //           ),
//   //           SizedBox(height: height * 0.03),
//   //           Text(
//   //             'No purchases yet',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.05 
//   //                   : width * 0.03,
//   //               fontWeight: FontWeight.w600,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.015),
//   //           Text(
//   //             'Your purchased movies and TV shows will appear here.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.038 
//   //                   : width * 0.024,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Profilepages/AboutandLegal.dart';
// import 'package:ott/View/Screen/Profilepages/Helpandfeedback.dart';
// import 'package:ott/View/Screen/Settings.dart';
// import 'package:ott/View/Screen/Yourprofile.dart';
// import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
// import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
// import 'package:ott/View/Screen/Subscribtion.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// // Profile Response Model
// class ProfileResponse {
//   final User? user;

//   ProfileResponse({this.user});

//   factory ProfileResponse.fromJson(Map<String, dynamic> json) {
//     return ProfileResponse(
//       user: json['user'] != null ? User.fromJson(json['user']) : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['user'] = user?.toJson();
//     return data;
//   }
// }

// // User Model
// class User {
//   final String? id;
//   final String? name;
//   final String? email;
//   final String? mobile;
//   final String? status;
//   final bool? emailVerified;
//   final String? subscriptionStatus;
//   final bool? hasAllAccess;
//   final List<dynamic>? episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;
//   final String? profilePhoto;

//   User({
//     this.id,
//     this.name,
//     this.email,
//     this.mobile,
//     this.status,
//     this.emailVerified,
//     this.subscriptionStatus,
//     this.hasAllAccess,
//     this.episodeSubscriptions,
//     this.accessUntil,
//     this.lastLoginAt,
//     this.profilePhoto,
//   });

//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       name: json['name'],
//       email: json['email'],
//       mobile: json['mobile'],
//       status: json['status'],
//       emailVerified: json['emailVerified'],
//       subscriptionStatus: json['subscriptionStatus'],
//       hasAllAccess: json['hasAllAccess'],
//       episodeSubscriptions: json['episodeSubscriptions'],
//       accessUntil: json['accessUntil'],
//       lastLoginAt: json['lastLoginAt'],
//       profilePhoto: json['profilePhoto'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['email'] = email;
//     data['mobile'] = mobile;
//     data['status'] = status;
//     data['emailVerified'] = emailVerified;
//     data['subscriptionStatus'] = subscriptionStatus;
//     data['hasAllAccess'] = hasAllAccess;
//     data['episodeSubscriptions'] = episodeSubscriptions;
//     data['accessUntil'] = accessUntil;
//     data['lastLoginAt'] = lastLoginAt;
//     data['profilePhoto'] = profilePhoto;
//     return data;
//   }
// }

// // GetX Controller
// class ProfileController extends GetxController {
//   RxString userName = ''.obs;
//   RxString profilePhoto = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   final String baseDomain = 'https://spottt.codifyinstitute.org';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');                                               
//       if (token == null) {
//         print('No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Profile Response Status Code: ${response.statusCode}');
//       print('Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final responseData = jsonDecode(response.body);
//         final profileResponse = ProfileResponse.fromJson(responseData);
//         if (profileResponse.user != null) {
//           userName.value = profileResponse.user!.name ?? '';
//           String photoUrl = '';
//           if (profileResponse.user!.profilePhoto != null && profileResponse.user!.profilePhoto!.isNotEmpty) {
//             photoUrl = '$baseDomain${profileResponse.user!.profilePhoto}';
//           }
//           profilePhoto.value = photoUrl;
//         }
//       } else {
//         print('Failed to fetch profile');
//       }
//     } catch (e) {
//       print('Error fetching profile: $e');
//     }
//   }

//   // Get first letter of username
//   String getFirstLetter() {
//     if (userName.value.isEmpty) return 'U';
//     return userName.value[0].toUpperCase();
//   }
// }


// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final ProfileController controller = Get.put(ProfileController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         bool isLandscape = orientation == Orientation.landscape;
        
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header Section
//                 _buildHeader(width, height, isLandscape, controller),
                
//                 // Divider
//                 Container(
//                   height: 1,
//                   color: Colors.grey[900],
//                   margin: EdgeInsets.symmetric(vertical: height * 0.01),
//                 ),
                
//                 // Settings Options List
//                 Expanded(
//                   child: ListView(
//                     padding: EdgeInsets.zero,
//                     physics: const BouncingScrollPhysics(),
//                     children: [
//                       SizedBox(height: height * 0.01),
                      
//                       _buildSettingsItem(
//                         title: 'My Account',
//                         icon: Icons.person_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Myaccount());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'Subscriptions',
//                         subtitle: 'Manage your subscriptions',
//                         icon: Icons.workspace_premium_outlined,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(() => Subscription());
//                         },
//                       ),
                      
//                       // _buildSettingsItem(
//                       //   title: 'Languages',
//                       //   icon: Icons.language_outlined,
//                       //   width: width,
//                       //   height: height,
//                       //   isLandscape: isLandscape,
//                       //   onTap: () {},
//                       // ),
                      
//                       _buildSettingsItem(
//                         title: 'Help & Feedback',
//                         icon: Icons.help_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(Helpandfeedback());
//                         },
//                       ),
                      
//                       _buildSettingsItem(
//                         title: 'About & Legal',
//                         icon: Icons.info_outline,
//                         width: width,
//                         height: height,
//                         isLandscape: isLandscape,
//                         onTap: () {
//                           Get.to(Aboutandlegal());
//                         },
//                       ),
                      
//                       SizedBox(height: height * 0.02),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, ProfileController controller) {
//     return Container(
//       padding: EdgeInsets.all(width * 0.04),
//       child: Row(
//         children: [
//           // Profile Picture with gradient border and first letter
//           InkWell(
//             onTap: () {
//               // Get.to(() => Yourprofile());
//             },
//             child: Container(
//               padding: EdgeInsets.all(3),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8),
//                     const Color(0xFF0066CC),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//               ),
//               child: Container(
//                 padding: EdgeInsets.all(2),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: const Color(0xFF0A0A0A),
//                 ),
//                 child: Obx(() => CircleAvatar(
//                   radius: isLandscape ? width * 0.05 : width * 0.08,
//                   backgroundColor: Colors.grey[800],
//                   backgroundImage: controller.profilePhoto.value.isNotEmpty ? NetworkImage(controller.profilePhoto.value) : null,
//                   child: controller.profilePhoto.value.isEmpty ? Text(
//                     controller.getFirstLetter(),
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.04 : width * 0.065,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ) : null,
//                 )),
//               ),
//             ),
//           ),
          
//           SizedBox(width: width * 0.04),
          
//           // Profile Info
//           Expanded(
//             child: InkWell(
//               onTap: () {
//                 // Get.to(() => Yourprofile());
//               },
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Obx(() => Text(
//                     controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.032 : width * 0.055,
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 0.5,
//                     ),
//                   )),
//                   // View profile text (Commented Out)
//                   // SizedBox(height: height * 0.005),
//                   // Row(
//                   //   children: [
//                   //     Text(
//                   //       'View profile',
//                   //       style: TextStyle(
//                   //         color: const Color(0xFF00A8E8),
//                   //         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                   //         fontWeight: FontWeight.w500,
//                   //       ),
//                   //     ),
//                   //     SizedBox(width: width * 0.01),
//                   //     Icon(
//                   //       Icons.arrow_forward_ios,
//                   //       color: const Color(0xFF00A8E8),
//                   //       size: isLandscape ? width * 0.02 : width * 0.03,
//                   //     ),
//                   //   ],
//                   // ),
//                 ],
//               ),
//             ),
//           ),
          
//           // Cast Icon (Commented Out)
//           // Icon(
//           //   Icons.cast,
//           //   color: Colors.white,
//           //   size: isLandscape ? width * 0.04 : width * 0.065,
//           // ),
//           // SizedBox(width: width * 0.04),
          
//           // Settings Icon (Commented Out)
//           // InkWell(
//           //   onTap: (){
//           //     Get.to(() => Settings());
//           //   },
//           //   child: Icon(
//           //     Icons.settings,
//           //     color: Colors.white,
//           //     size: isLandscape ? width * 0.04 : width * 0.065,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSettingsItem({
//     required String title,
//     String? subtitle,
//     required IconData icon,
//     required double width,
//     required double height,
//     required bool isLandscape,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       splashColor: const Color(0xFF00A8E8).withOpacity(0.1),
//       highlightColor: const Color(0xFF00A8E8).withOpacity(0.05),
//       child: Container(
//         margin: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: height * 0.008,
//         ),
//         padding: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: isLandscape ? height * 0.025 : height * 0.02,
//         ),
//         decoration: BoxDecoration(
//           color: const Color(0xFF1A1A1A),
//           borderRadius: BorderRadius.circular(12),
//           border: Border.all(
//             color: Colors.grey[900]!,
//             width: 1,
//           ),
//         ),
//         child: Row(
//           children: [
//             // Icon with gradient background
//             Container(
//               padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.025),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     const Color(0xFF00A8E8).withOpacity(0.2),
//                     const Color(0xFF0066CC).withOpacity(0.2),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Icon(
//                 icon,
//                 color: const Color(0xFF00A8E8),
//                 size: isLandscape ? width * 0.03 : width * 0.055,
//               ),
//             ),
            
//             SizedBox(width: width * 0.04),
            
//             // Text content
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
//                       fontWeight: FontWeight.w600,
//                       letterSpacing: 0.3,
//                     ),
//                   ),
//                   if (subtitle != null) ...[
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       subtitle,
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                         letterSpacing: 0.2,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
            
//             // Chevron icon
//             Icon(
//               Icons.chevron_right,
//               color: Colors.grey[600],
//               size: isLandscape ? width * 0.04 : width * 0.06,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Tab Bar (Commented Out)
//   // Widget _buildTabBar(double width, double height, Orientation orientation) {
//   //   return Container(
//   //     decoration: BoxDecoration(
//   //       border: Border(
//   //         bottom: BorderSide(
//   //           color: Colors.grey[800]!,
//   //           width: 1,
//   //         ),
//   //       ),
//   //     ),
//   //     child: TabBar(
//   //       indicatorColor: Colors.white,
//   //       indicatorWeight: height * 0.004,
//   //       labelColor: Colors.white,
//   //       unselectedLabelColor: Colors.grey[500],
//   //       labelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w600,
//   //       ),
//   //       unselectedLabelStyle: TextStyle(
//   //         fontSize: orientation == Orientation.portrait 
//   //             ? width * 0.042 
//   //             : width * 0.026,
//   //         fontWeight: FontWeight.w500,
//   //       ),
//   //       tabs: const [
//   //         Tab(text: 'Watchlist'),
//   //         Tab(text: 'Purchases'),
//   //       ],
//   //     ),
//   //   );
//   // }

//   // Watchlist Tab (Commented Out)
//   // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Text(
//   //             'Browse now, watch later',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.062 
//   //                   : width * 0.038,
//   //               fontWeight: FontWeight.bold,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.025),
//   //           Text(
//   //             'Your Watchlist is shared across all of your devices.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.04 
//   //                   : width * 0.025,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   // Purchases Tab (Commented Out)
//   // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
//   //   return Center(
//   //     child: Padding(
//   //       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Icon(
//   //             Icons.shopping_bag_outlined,
//   //             color: Colors.grey[600],
//   //             size: orientation == Orientation.portrait 
//   //                 ? width * 0.15 
//   //                 : width * 0.09,
//   //           ),
//   //           SizedBox(height: height * 0.03),
//   //           Text(
//   //             'No purchases yet',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.white,
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.05 
//   //                   : width * 0.03,
//   //               fontWeight: FontWeight.w600,
//   //             ),
//   //           ),
//   //           SizedBox(height: height * 0.015),
//   //           Text(
//   //             'Your purchased movies and TV shows will appear here.',
//   //             textAlign: TextAlign.center,
//   //             style: TextStyle(
//   //               color: Colors.grey[500],
//   //               fontSize: orientation == Orientation.portrait 
//   //                   ? width * 0.038 
//   //                   : width * 0.024,
//   //               height: 1.5,
//   //             ),
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott/View/Screen/Profilepages/AboutandLegal.dart';
import 'package:ott/View/Screen/Profilepages/Helpandfeedback.dart';
import 'package:ott/View/Screen/Settings.dart';
import 'package:ott/View/Screen/Yourprofile.dart';
import 'package:ott/View/Screen/Profilepages/Myaccount.dart';
import 'package:ott/View/Screen/Profilepages/Streamanddownload.dart';
import 'package:ott/View/Screen/Subscribtion.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
// Profile Response Model
class ProfileResponse {
  final User? user;
  ProfileResponse({this.user});
  factory ProfileResponse.fromJson(Map<String, dynamic> json) {
    return ProfileResponse(
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user'] = user?.toJson();
    return data;
  }
}
// User Model
class User {
  final String? id;
  final String? name;
  final String? email;
  final String? mobile;
  final String? status;
  final bool? emailVerified;
  final String? subscriptionStatus;
  final bool? hasAllAccess;
  final List<dynamic>? episodeSubscriptions;
  final String? accessUntil;
  final String? lastLoginAt;
  final String? profilePhoto;
  User({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.status,
    this.emailVerified,
    this.subscriptionStatus,
    this.hasAllAccess,
    this.episodeSubscriptions,
    this.accessUntil,
    this.lastLoginAt,
    this.profilePhoto,
  });
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      status: json['status'],
      emailVerified: json['emailVerified'],
      subscriptionStatus: json['subscriptionStatus'],
      hasAllAccess: json['hasAllAccess'],
      episodeSubscriptions: json['episodeSubscriptions'],
      accessUntil: json['accessUntil'],
      lastLoginAt: json['lastLoginAt'],
      profilePhoto: json['profilePhoto'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['status'] = status;
    data['emailVerified'] = emailVerified;
    data['subscriptionStatus'] = subscriptionStatus;
    data['hasAllAccess'] = hasAllAccess;
    data['episodeSubscriptions'] = episodeSubscriptions;
    data['accessUntil'] = accessUntil;
    data['lastLoginAt'] = lastLoginAt;
    data['profilePhoto'] = profilePhoto;
    return data;
  }
}
// GetX Controller
class ProfileController extends GetxController {
  RxString userName = ''.obs;
  RxString profilePhoto = ''.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  final String baseDomain = 'https://spottt.codifyinstitute.org';
  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }
  Future<void> fetchProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('No token found');
        return;
      }
      final response = await http.get(
        Uri.parse('$baseUrl/auth/me'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );
      print('Profile Response Status Code: ${response.statusCode}');
      print('Profile Response Body: ${response.body}');
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final profileResponse = ProfileResponse.fromJson(responseData);
        if (profileResponse.user != null) {
          userName.value = profileResponse.user!.name ?? '';
          String photoUrl = '';
          if (profileResponse.user!.profilePhoto != null && profileResponse.user!.profilePhoto!.isNotEmpty) {
            photoUrl = '$baseDomain${profileResponse.user!.profilePhoto}';
          }
          profilePhoto.value = photoUrl;
        }
      } else {
        print('Failed to fetch profile');
      }
    } catch (e) {
      print('Error fetching profile: $e');
    }
  }
  // Get first letter of username
  String getFirstLetter() {
    if (userName.value.isEmpty) return 'U';
    return userName.value[0].toUpperCase();
  }
}
class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    final ProfileController controller = Get.put(ProfileController());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
   
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLandscape = orientation == Orientation.landscape;
       
        return Scaffold(
          backgroundColor: const Color(0xFF0A0A0A),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                _buildHeader(width, height, isLandscape, controller),
               
                // Divider
                Container(
                  height: 1,
                  color: Colors.grey[900],
                  margin: EdgeInsets.symmetric(vertical: height * 0.01),
                ),
               
                // Settings Options List
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SizedBox(height: height * 0.01),
                     
                      _buildSettingsItem(
                        title: 'My Account',
                        icon: Icons.person_outline,
                        width: width,
                        height: height,
                        isLandscape: isLandscape,
                        onTap: () {
                          Get.to(() => Myaccount());
                        },
                      ),
                     
                      _buildSettingsItem(
                        title: 'Subscriptions',
                        subtitle: 'Manage your subscriptions',
                        icon: Icons.workspace_premium_outlined,
                        width: width,
                        height: height,
                        isLandscape: isLandscape,
                        onTap: () {
                          Get.to(() => Subscription());
                        },
                      ),
                     
                      // _buildSettingsItem(
                      // title: 'Languages',
                      // icon: Icons.language_outlined,
                      // width: width,
                      // height: height,
                      // isLandscape: isLandscape,
                      // onTap: () {},
                      // ),
                     
                      _buildSettingsItem(
                        title: 'Help & Feedback',
                        icon: Icons.help_outline,
                        width: width,
                        height: height,
                        isLandscape: isLandscape,
                        onTap: () {
                          Get.to(Helpandfeedback());
                        },
                      ),
                     
                      _buildSettingsItem(
                        title: 'About & Legal',
                        icon: Icons.info_outline,
                        width: width,
                        height: height,
                        isLandscape: isLandscape,
                        onTap: () {
                          Get.to(Aboutandlegal());
                        },
                      ),
                     
                      SizedBox(height: height * 0.02),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget _buildHeader(double width, double height, bool isLandscape, ProfileController controller) {
    return Container(
      padding: EdgeInsets.all(width * 0.04),
      child: Row(
        children: [
          // Profile Picture with gradient border and first letter
          InkWell(
            onTap: () {
              Get.to(() => Myaccount());
            },
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF00A8E8),
                    const Color(0xFF0066CC),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF0A0A0A),
                ),
                child: Obx(() => CircleAvatar(
                  radius: isLandscape ? width * 0.05 : width * 0.08,
                  backgroundColor: Colors.grey[800],
                  backgroundImage: controller.profilePhoto.value.isNotEmpty ? NetworkImage(controller.profilePhoto.value) : null,
                  child: controller.profilePhoto.value.isEmpty ? Text(
                    controller.getFirstLetter(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLandscape ? width * 0.04 : width * 0.065,
                      fontWeight: FontWeight.bold,
                    ),
                  ) : null,
                )),
              ),
            ),
          ),
         
          SizedBox(width: width * 0.04),
         
          // Profile Info
          Expanded(
            child: InkWell(
              onTap: () {
                // Get.to(() => Yourprofile());
                Get.to(() => Myaccount());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() => Text(
                    controller.userName.value.isEmpty ? 'Loading...' : controller.userName.value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLandscape ? width * 0.032 : width * 0.055,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  )),
                  // View profile text (Commented Out)
                  // SizedBox(height: height * 0.005),
                  // Row(
                  // children: [
                  // Text(
                  // 'View profile',
                  // style: TextStyle(
                  // color: const Color(0xFF00A8E8),
                  // fontSize: isLandscape ? width * 0.022 : width * 0.035,
                  // fontWeight: FontWeight.w500,
                  // ),
                  // ),
                  // SizedBox(width: width * 0.01),
                  // Icon(
                  // Icons.arrow_forward_ios,
                  // color: const Color(0xFF00A8E8),
                  // size: isLandscape ? width * 0.02 : width * 0.03,
                  // ),
                  // ],
                  // ),
                ],
              ),
            ),
          ),
         
          // Cast Icon (Commented Out)
          // Icon(
          // Icons.cast,
          // color: Colors.white,
          // size: isLandscape ? width * 0.04 : width * 0.065,
          // ),
          // SizedBox(width: width * 0.04),
         
          // Settings Icon (Commented Out)
          // InkWell(
          // onTap: (){
          // Get.to(() => Settings());
          // },
          // child: Icon(
          // Icons.settings,
          // color: Colors.white,
          // size: isLandscape ? width * 0.04 : width * 0.065,
          // ),
          // ),
        ],
      ),
    );
  }
  Widget _buildSettingsItem({
    required String title,
    String? subtitle,
    required IconData icon,
    required double width,
    required double height,
    required bool isLandscape,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: const Color(0xFF00A8E8).withOpacity(0.1),
      highlightColor: const Color(0xFF00A8E8).withOpacity(0.05),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.008,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: isLandscape ? height * 0.025 : height * 0.02,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey[900]!,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            // Icon with gradient background
            Container(
              padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.025),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF00A8E8).withOpacity(0.2),
                    const Color(0xFF0066CC).withOpacity(0.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: const Color(0xFF00A8E8),
                size: isLandscape ? width * 0.03 : width * 0.055,
              ),
            ),
           
            SizedBox(width: width * 0.04),
           
            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLandscape ? width * 0.028 : width * 0.045,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.3,
                    ),
                  ),
                  if (subtitle != null) ...[
                    SizedBox(height: height * 0.004),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: isLandscape ? width * 0.022 : width * 0.035,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ],
              ),
            ),
           
            // Chevron icon
            Icon(
              Icons.chevron_right,
              color: Colors.grey[600],
              size: isLandscape ? width * 0.04 : width * 0.06,
            ),
          ],
        ),
      ),
    );
  }
  // Tab Bar (Commented Out)
  // Widget _buildTabBar(double width, double height, Orientation orientation) {
  // return Container(
  // decoration: BoxDecoration(
  // border: Border(
  // bottom: BorderSide(
  // color: Colors.grey[800]!,
  // width: 1,
  // ),
  // ),
  // ),
  // child: TabBar(
  // indicatorColor: Colors.white,
  // indicatorWeight: height * 0.004,
  // labelColor: Colors.white,
  // unselectedLabelColor: Colors.grey[500],
  // labelStyle: TextStyle(
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.042
  // : width * 0.026,
  // fontWeight: FontWeight.w600,
  // ),
  // unselectedLabelStyle: TextStyle(
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.042
  // : width * 0.026,
  // fontWeight: FontWeight.w500,
  // ),
  // tabs: const [
  // Tab(text: 'Watchlist'),
  // Tab(text: 'Purchases'),
  // ],
  // ),
  // );
  // }
  // Watchlist Tab (Commented Out)
  // Widget _buildWatchlistTab(double width, double height, Orientation orientation) {
  // return Center(
  // child: Padding(
  // padding: EdgeInsets.symmetric(horizontal: width * 0.1),
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.center,
  // children: [
  // Text(
  // 'Browse now, watch later',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.white,
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.062
  // : width * 0.038,
  // fontWeight: FontWeight.bold,
  // ),
  // ),
  // SizedBox(height: height * 0.025),
  // Text(
  // 'Your Watchlist is shared across all of your devices.',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.grey[500],
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.04
  // : width * 0.025,
  // height: 1.5,
  // ),
  // ),
  // ],
  // ),
  // ),
  // );
  // }
  // Purchases Tab (Commented Out)
  // Widget _buildPurchasesTab(double width, double height, Orientation orientation) {
  // return Center(
  // child: Padding(
  // padding: EdgeInsets.symmetric(horizontal: width * 0.1),
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.center,
  // children: [
  // Icon(
  // Icons.shopping_bag_outlined,
  // color: Colors.grey[600],
  // size: orientation == Orientation.portrait
  // ? width * 0.15
  // : width * 0.09,
  // ),
  // SizedBox(height: height * 0.03),
  // Text(
  // 'No purchases yet',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.white,
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.05
  // : width * 0.03,
  // fontWeight: FontWeight.w600,
  // ),
  // ),
  // SizedBox(height: height * 0.015),
  // Text(
  // 'Your purchased movies and TV shows will appear here.',
  // textAlign: TextAlign.center,
  // style: TextStyle(
  // color: Colors.grey[500],
  // fontSize: orientation == Orientation.portrait
  // ? width * 0.038
  // : width * 0.024,
  // height: 1.5,
  // ),
  // ),
  // ],
  // ),
  // ),
  // );
  // }
}