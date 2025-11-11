
// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:intl/intl.dart';

// // // class NotificationModel {
// // //   final String id;
// // //   final String headline;
// // //   final String message;
// // //   final String? url;
// // //   final String status;
// // //   final List<String> viewedBy;
// // //   final List<String> readBy;
// // //   final String createdAt;
// // //   final String updatedAt;
// // //   final bool viewed;
// // //   final bool read;

// // //   NotificationModel({
// // //     required this.id,
// // //     required this.headline,
// // //     required this.message,
// // //     this.url,
// // //     required this.status,
// // //     required this.viewedBy,
// // //     required this.readBy,
// // //     required this.createdAt,
// // //     required this.updatedAt,
// // //     required this.viewed,
// // //     required this.read,
// // //   });

// // //   factory NotificationModel.fromJson(Map<String, dynamic> json) {
// // //     return NotificationModel(
// // //       id: json['_id'] ?? '',
// // //       headline: json['headline'] ?? '',
// // //       message: json['message'] ?? '',
// // //       url: json['url'],
// // //       status: json['status'] ?? '',
// // //       viewedBy: List<String>.from(json['viewedBy'] ?? []),
// // //       readBy: List<String>.from(json['readBy'] ?? []),
// // //       createdAt: json['createdAt'] ?? '',
// // //       updatedAt: json['updatedAt'] ?? '',
// // //       viewed: json['viewed'] ?? false,
// // //       read: json['read'] ?? false,
// // //     );
// // //   }

// // //   Map<String, dynamic> toJson() {
// // //     return {
// // //       '_id': id,
// // //       'headline': headline,
// // //       'message': message,
// // //       'url': url,
// // //       'status': status,
// // //       'viewedBy': viewedBy,
// // //       'readBy': readBy,
// // //       'createdAt': createdAt,
// // //       'updatedAt': updatedAt,
// // //       'viewed': viewed,
// // //       'read': read,
// // //     };
// // //   }

// // //   NotificationModel copyWith({
// // //     String? id,
// // //     String? headline,
// // //     String? message,
// // //     String? url,
// // //     String? status,
// // //     List<String>? viewedBy,
// // //     List<String>? readBy,
// // //     String? createdAt,
// // //     String? updatedAt,
// // //     bool? viewed,
// // //     bool? read,
// // //   }) {
// // //     return NotificationModel(
// // //       id: id ?? this.id,
// // //       headline: headline ?? this.headline,
// // //       message: message ?? this.message,
// // //       url: url ?? this.url,
// // //       status: status ?? this.status,
// // //       viewedBy: viewedBy ?? this.viewedBy,
// // //       readBy: readBy ?? this.readBy,
// // //       createdAt: createdAt ?? this.createdAt,
// // //       updatedAt: updatedAt ?? this.updatedAt,
// // //       viewed: viewed ?? this.viewed,
// // //       read: read ?? this.read,
// // //     );
// // //   }
// // // }

// // // class NotificationController extends GetxController {
// // //   RxList<NotificationModel> notifications = <NotificationModel>[].obs;
// // //   RxBool isLoading = false.obs;
// // //   RxString currentUserId = ''.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     _getCurrentUserId();
// // //     fetchNotifications();
// // //   }

// // //   Future<void> _getCurrentUserId() async {
// // //     try {
// // //       String? uid = await getUserId();
// // //       if (uid != null && uid.isNotEmpty) {
// // //         currentUserId.value = uid;
// // //         print('✅ Current User ID from prefs: $uid');
// // //         return;
// // //       }

// // //       // If not in prefs, fetch from API
// // //       print('ℹ️ User ID not in prefs, fetching from API...');
// // //       uid = await _fetchUserIdFromApi();
// // //       if (uid != null && uid.isNotEmpty) {
// // //         final prefs = await SharedPreferences.getInstance();
// // //         await prefs.setString('user_id', uid);
// // //         currentUserId.value = uid;
// // //         print('✅ Current User ID from API: $uid');
// // //       } else {
// // //         print('❌ User ID not found even from API');
// // //       }
// // //     } catch (e) {
// // //       print('❌ Error getting user ID: $e');
// // //     }
// // //   }

// // //   Future<String?> _fetchUserIdFromApi() async {
// // //     try {
// // //       String? token = await getToken();
// // //       if (token == null) {
// // //         print('❌ Cannot fetch user ID: No token');
// // //         return null;
// // //       }

// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/auth/me'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('📊 Fetch User ID Response Status: ${response.statusCode}');
// // //       print('📊 Fetch User ID Response Body: ${response.body}');

// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> responseData = jsonDecode(response.body);
// // //         final String? userId = responseData['user']?['id'];
// // //         return userId;
// // //       } else {
// // //         print('❌ Failed to fetch user ID: ${response.statusCode}');
// // //         return null;
// // //       }
// // //     } catch (e) {
// // //       print('❌ Error fetching user ID from API: $e');
// // //       return null;
// // //     }
// // //   }

// // //   Future<String?> getToken() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       String? token = prefs.getString('auth_token');
// // //       if (token != null) {
// // //         print('✅ Token retrieved: ${token.substring(0, 20)}...');
// // //       } else {
// // //         print('❌ No token found in SharedPreferences');
// // //       }
// // //       return token;
// // //     } catch (e) {
// // //       print('❌ Error getting token: $e');
// // //       return null;
// // //     }
// // //   }

// // //   Future<String?> getUserId() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       String? userId = prefs.getString('user_id');
// // //       if (userId != null) {
// // //         print('✅ User ID retrieved: $userId');
// // //       } else {
// // //         print('❌ No user_id found in SharedPreferences');
// // //       }
// // //       return userId;
// // //     } catch (e) {
// // //       print('❌ Error getting user ID: $e');
// // //       return null;
// // //     }
// // //   }

// // //   Future<void> fetchNotifications() async {
// // //     isLoading.value = true;
// // //     try {
// // //       String? token = await getToken();
// // //       if (token == null) {
// // //         print('❌ Cannot fetch notifications: No token');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Authentication token not found',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //         return;
// // //       }

// // //       print('📡 Fetching notifications from: $baseUrl/notifications');
      
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/notifications'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('📊 Notifications Response Status: ${response.statusCode}');
// // //       print('📊 Notifications Response Body: ${response.body}');

// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> responseData = jsonDecode(response.body);
// // //         final List<dynamic> data = responseData['notifications'] ?? [];
// // //         notifications.value = data
// // //             .map<NotificationModel>((json) => NotificationModel.fromJson(json))
// // //             .toList();
// // //         print('✅ Loaded ${notifications.length} notifications');
// // //       } else {
// // //         print('❌ Failed to load notifications: ${response.statusCode}');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Failed to load notifications (${response.statusCode})',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //       }
// // //     } catch (e) {
// // //       print('❌ Error fetching notifications: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'Network error: $e',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         snackPosition: SnackPosition.TOP,
// // //       );
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   Future<void> markAsView(String notificationId) async {
// // //     if (currentUserId.value.isEmpty) {
// // //       print('❌ Cannot mark as viewed: User ID is empty');
// // //       Get.snackbar(
// // //         'Error',
// // //         'User ID not found',
// // //         backgroundColor: Colors.orange.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         snackPosition: SnackPosition.TOP,
// // //       );
// // //       return;
// // //     }

// // //     try {
// // //       String? token = await getToken();
// // //       if (token == null) {
// // //         print('❌ Cannot mark as viewed: No token');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Authentication token not found',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //         return;
// // //       }

// // //       print('👁️ Marking notification as viewed: $notificationId');
// // //       print('👁️ Current User ID: ${currentUserId.value}');

// // //       // Optimistically update UI
// // //       int index = notifications.indexWhere((n) => n.id == notificationId);
// // //       if (index != -1) {
// // //         if (!notifications[index].viewedBy.contains(currentUserId.value)) {
// // //           notifications[index] = notifications[index].copyWith(
// // //             viewedBy: [...notifications[index].viewedBy, currentUserId.value],
// // //             viewed: true,
// // //           );
// // //           notifications.refresh();
// // //           print('✅ UI updated optimistically');
// // //         } else {
// // //           print('ℹ️ Already marked as viewed');
// // //         }
// // //       }

// // //       final url = '$baseUrl/notifications/$notificationId/view';
// // //       print('📡 POST Request URL: $url');

// // //       final response = await http.post(
// // //         Uri.parse(url),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('📊 Mark as View Response Status: ${response.statusCode}');
// // //       print('📊 Mark as View Response Body: ${response.body}');

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         print('✅ Successfully marked as viewed');
// // //         Get.snackbar(
// // //           'Success',
// // //           'Marked as viewed',
// // //           backgroundColor: Colors.blue.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //           duration: Duration(seconds: 2),
// // //           icon: Icon(Icons.visibility, color: Colors.white),
// // //         );
// // //         // Refresh to get updated data from server
// // //         await fetchNotifications();
// // //       } else {
// // //         print('❌ Failed to mark as viewed: ${response.statusCode}');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Failed to mark as viewed (${response.statusCode})',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //         // Revert optimistic update
// // //         await fetchNotifications();
// // //       }
// // //     } catch (e) {
// // //       print('❌ Error marking as viewed: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'Network error: $e',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         snackPosition: SnackPosition.TOP,
// // //       );
// // //       // Revert optimistic update
// // //       await fetchNotifications();
// // //     }
// // //   }

// // //   Future<void> markAsRead(String notificationId) async {
// // //     if (currentUserId.value.isEmpty) {
// // //       print('❌ Cannot mark as read: User ID is empty');
// // //       Get.snackbar(
// // //         'Error',
// // //         'User ID not found',
// // //         backgroundColor: Colors.orange.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         snackPosition: SnackPosition.TOP,
// // //       );
// // //       return;
// // //     }

// // //     try {
// // //       String? token = await getToken();
// // //       if (token == null) {
// // //         print('❌ Cannot mark as read: No token');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Authentication token not found',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //         return;
// // //       }

// // //       print('📖 Marking notification as read: $notificationId');
// // //       print('📖 Current User ID: ${currentUserId.value}');

// // //       // Optimistically update UI
// // //       int index = notifications.indexWhere((n) => n.id == notificationId);
// // //       if (index != -1) {
// // //         if (!notifications[index].readBy.contains(currentUserId.value)) {
// // //           // When marking as read, also mark as viewed
// // //           List<String> updatedViewedBy = notifications[index].viewedBy;
// // //           if (!updatedViewedBy.contains(currentUserId.value)) {
// // //             updatedViewedBy = [...updatedViewedBy, currentUserId.value];
// // //           }

// // //           notifications[index] = notifications[index].copyWith(
// // //             viewedBy: updatedViewedBy,
// // //             readBy: [...notifications[index].readBy, currentUserId.value],
// // //             viewed: true,
// // //             read: true,
// // //           );
// // //           notifications.refresh();
// // //           print('✅ UI updated optimistically');
// // //         } else {
// // //           print('ℹ️ Already marked as read');
// // //         }
// // //       }

// // //       final url = '$baseUrl/notifications/$notificationId/read';
// // //       print('📡 POST Request URL: $url');

// // //       final response = await http.post(
// // //         Uri.parse(url),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('📊 Mark as Read Response Status: ${response.statusCode}');
// // //       print('📊 Mark as Read Response Body: ${response.body}');

// // //       if (response.statusCode == 200 || response.statusCode == 201) {
// // //         print('✅ Successfully marked as read');
// // //         Get.snackbar(
// // //           'Success',
// // //           'Marked as read',
// // //           backgroundColor: Colors.green.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //           duration: Duration(seconds: 2),
// // //           icon: Icon(Icons.check_circle, color: Colors.white),
// // //         );
// // //         // Refresh to get updated data from server
// // //         await fetchNotifications();
// // //       } else {
// // //         print('❌ Failed to mark as read: ${response.statusCode}');
// // //         Get.snackbar(
// // //           'Error',
// // //           'Failed to mark as read (${response.statusCode})',
// // //           backgroundColor: Colors.red.withOpacity(0.8),
// // //           colorText: Colors.white,
// // //           snackPosition: SnackPosition.TOP,
// // //         );
// // //         // Revert optimistic update
// // //         await fetchNotifications();
// // //       }
// // //     } catch (e) {
// // //       print('❌ Error marking as read: $e');
// // //       Get.snackbar(
// // //         'Error',
// // //         'Network error: $e',
// // //         backgroundColor: Colors.red.withOpacity(0.8),
// // //         colorText: Colors.white,
// // //         snackPosition: SnackPosition.TOP,
// // //       );
// // //       // Revert optimistic update
// // //       await fetchNotifications();
// // //     }
// // //   }

// // //   bool isViewed(NotificationModel notification) {
// // //     bool viewed = currentUserId.value.isNotEmpty && 
// // //                   notification.viewedBy.contains(currentUserId.value);
// // //     return viewed;
// // //   }

// // //   bool isRead(NotificationModel notification) {
// // //     bool read = currentUserId.value.isNotEmpty && 
// // //                 notification.readBy.contains(currentUserId.value);
// // //     return read;
// // //   }

// // //   int getUnreadCount() {
// // //     return notifications.where((n) => !isRead(n)).length;
// // //   }
// // // }

// // // class NotificationScreen extends StatelessWidget {
// // //   const NotificationScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final NotificationController controller = Get.put(NotificationController());
// // //     double height = MediaQuery.of(context).size.height;
// // //     double width = MediaQuery.of(context).size.width;

// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: Container(
// // //         decoration: BoxDecoration(
// // //           gradient: LinearGradient(
// // //             begin: Alignment.topLeft,
// // //             end: Alignment.bottomRight,
// // //             colors: [
// // //               Color(0xFF0A0A0A),
// // //               Color(0xFF1A1A2E),
// // //               Color(0xFF0A0A0A),
// // //             ],
// // //           ),
// // //         ),
// // //         child: SafeArea(
// // //           child: Obx(() {
// // //             if (controller.isLoading.value && controller.notifications.isEmpty) {
// // //               return Center(
// // //                 child: Column(
// // //                   mainAxisAlignment: MainAxisAlignment.center,
// // //                   children: [
// // //                     CircularProgressIndicator(
// // //                       color: Colors.blue,
// // //                       strokeWidth: 3,
// // //                     ),
// // //                     SizedBox(height: height * 0.02),
// // //                     Text(
// // //                       'Loading notifications...',
// // //                       style: TextStyle(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * 0.04,
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               );
// // //             }

// // //             return Column(
// // //               crossAxisAlignment: CrossAxisAlignment.start,
// // //               children: [
// // //                 // Header with gradient
// // //                 Container(
// // //                   padding: EdgeInsets.symmetric(
// // //                     horizontal: width * 0.04,
// // //                     vertical: height * 0.02,
// // //                   ),
// // //                   decoration: BoxDecoration(
// // //                     gradient: LinearGradient(
// // //                       begin: Alignment.topLeft,
// // //                       end: Alignment.bottomRight,
// // //                       colors: [
// // //                         Colors.blue.withOpacity(0.1),
// // //                         Colors.purple.withOpacity(0.05),
// // //                       ],
// // //                     ),
// // //                     borderRadius: BorderRadius.only(
// // //                       bottomLeft: Radius.circular(24),
// // //                       bottomRight: Radius.circular(24),
// // //                     ),
// // //                   ),
// // //                   child: Column(
// // //                     children: [
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                         children: [
// // //                           GestureDetector(
// // //                             onTap: () => Get.back(),
// // //                             child: Container(
// // //                               padding: EdgeInsets.all(width * 0.02),
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white.withOpacity(0.1),
// // //                                 borderRadius: BorderRadius.circular(12),
// // //                               ),
// // //                               child: Icon(
// // //                                 Icons.arrow_back_ios_new,
// // //                                 color: Colors.white,
// // //                                 size: width * 0.05,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           Column(
// // //                             children: [
// // //                               Text(
// // //                                 'Notifications',
// // //                                 style: TextStyle(
// // //                                   color: Colors.white,
// // //                                   fontSize: width * 0.06,
// // //                                   fontWeight: FontWeight.bold,
// // //                                 ),
// // //                               ),
// // //                               if (controller.getUnreadCount() > 0)
// // //                                 Container(
// // //                                   margin: EdgeInsets.only(top: 4),
// // //                                   padding: EdgeInsets.symmetric(
// // //                                     horizontal: 12,
// // //                                     vertical: 4,
// // //                                   ),
// // //                                   decoration: BoxDecoration(
// // //                                     color: Colors.red,
// // //                                     borderRadius: BorderRadius.circular(12),
// // //                                   ),
// // //                                   child: Text(
// // //                                     '${controller.getUnreadCount()} new',
// // //                                     style: TextStyle(
// // //                                       color: Colors.white,
// // //                                       fontSize: width * 0.03,
// // //                                       fontWeight: FontWeight.bold,
// // //                                     ),
// // //                                   ),
// // //                                 ),
// // //                             ],
// // //                           ),
// // //                           GestureDetector(
// // //                             onTap: () {
// // //                               controller.fetchNotifications();
// // //                             },
// // //                             child: Container(
// // //                               padding: EdgeInsets.all(width * 0.02),
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white.withOpacity(0.1),
// // //                                 borderRadius: BorderRadius.circular(12),
// // //                               ),
// // //                               child: Icon(
// // //                                 Icons.refresh,
// // //                                 color: Colors.white,
// // //                                 size: width * 0.05,
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 SizedBox(height: height * 0.02),
// // //                 Expanded(
// // //                   child: controller.notifications.isEmpty
// // //                       ? Center(
// // //                           child: Column(
// // //                             mainAxisAlignment: MainAxisAlignment.center,
// // //                             children: [
// // //                               Icon(
// // //                                 Icons.notifications_off_outlined,
// // //                                 size: width * 0.2,
// // //                                 color: Colors.grey[700],
// // //                               ),
// // //                               SizedBox(height: height * 0.02),
// // //                               Text(
// // //                                 'No notifications yet',
// // //                                 style: TextStyle(
// // //                                   color: Colors.grey[400],
// // //                                   fontSize: width * 0.045,
// // //                                   fontWeight: FontWeight.w500,
// // //                                 ),
// // //                               ),
// // //                               SizedBox(height: height * 0.01),
// // //                               Text(
// // //                                 'We\'ll notify you when something arrives',
// // //                                 style: TextStyle(
// // //                                   color: Colors.grey[600],
// // //                                   fontSize: width * 0.035,
// // //                                 ),
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         )
// // //                       : RefreshIndicator(
// // //                           onRefresh: controller.fetchNotifications,
// // //                           color: Colors.blue,
// // //                           backgroundColor: Color(0xFF1A1A2E),
// // //                           child: ListView.builder(
// // //                             padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // //                             itemCount: controller.notifications.length,
// // //                             itemBuilder: (context, index) {
// // //                               final notification = controller.notifications[index];
// // //                               final timeAgo = _formatTimeAgo(notification.createdAt);
// // //                               final isViewed = controller.isViewed(notification);
// // //                               final isRead = controller.isRead(notification);

// // //                               return Container(
// // //                                 margin: EdgeInsets.only(bottom: height * 0.015),
// // //                                 decoration: BoxDecoration(
// // //                                   gradient: LinearGradient(
// // //                                     begin: Alignment.topLeft,
// // //                                     end: Alignment.bottomRight,
// // //                                     colors: isRead
// // //                                         ? [
// // //                                             Colors.grey[900]!.withOpacity(0.5),
// // //                                             Colors.grey[850]!.withOpacity(0.5),
// // //                                           ]
// // //                                         : [
// // //                                             Colors.blue.withOpacity(0.15),
// // //                                             Colors.purple.withOpacity(0.1),
// // //                                           ],
// // //                                   ),
// // //                                   borderRadius: BorderRadius.circular(16),
// // //                                   border: Border.all(
// // //                                     color: isRead
// // //                                         ? Colors.grey[800]!
// // //                                         : Colors.blue.withOpacity(0.3),
// // //                                     width: 1,
// // //                                   ),
// // //                                 ),
// // //                                 child: ClipRRect(
// // //                                   borderRadius: BorderRadius.circular(16),
// // //                                   child: Stack(
// // //                                     children: [
// // //                                       Padding(
// // //                                         padding: EdgeInsets.all(width * 0.04),
// // //                                         child: Column(
// // //                                           children: [
// // //                                             Row(
// // //                                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                                               children: [
// // //                                                 // Icon with status indicator
// // //                                                 Stack(
// // //                                                   children: [
// // //                                                     Container(
// // //                                                       width: width * 0.14,
// // //                                                       height: width * 0.14,
// // //                                                       decoration: BoxDecoration(
// // //                                                         gradient: LinearGradient(
// // //                                                           begin: Alignment.topLeft,
// // //                                                           end: Alignment.bottomRight,
// // //                                                           colors: isRead
// // //                                                               ? [Colors.grey[700]!, Colors.grey[800]!]
// // //                                                               : [Colors.blue, Colors.purple],
// // //                                                         ),
// // //                                                         shape: BoxShape.circle,
// // //                                                         boxShadow: [
// // //                                                           BoxShadow(
// // //                                                             color: isRead
// // //                                                                 ? Colors.transparent
// // //                                                                 : Colors.blue.withOpacity(0.3),
// // //                                                             blurRadius: 12,
// // //                                                             spreadRadius: 2,
// // //                                                           ),
// // //                                                         ],
// // //                                                       ),
// // //                                                       child: Icon(
// // //                                                         isRead
// // //                                                             ? Icons.notifications
// // //                                                             : Icons.notifications_active,
// // //                                                         color: Colors.white,
// // //                                                         size: width * 0.07,
// // //                                                       ),
// // //                                                     ),
// // //                                                     if (!isRead)
// // //                                                       Positioned(
// // //                                                         top: 0,
// // //                                                         right: 0,
// // //                                                         child: Container(
// // //                                                           width: width * 0.03,
// // //                                                           height: width * 0.03,
// // //                                                           decoration: BoxDecoration(
// // //                                                             color: Colors.red,
// // //                                                             shape: BoxShape.circle,
// // //                                                             border: Border.all(
// // //                                                               color: Color(0xFF0A0A0A),
// // //                                                               width: 2,
// // //                                                             ),
// // //                                                           ),
// // //                                                         ),
// // //                                                       ),
// // //                                                   ],
// // //                                                 ),
// // //                                                 SizedBox(width: width * 0.04),
// // //                                                 Expanded(
// // //                                                   child: Column(
// // //                                                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                                                     children: [
// // //                                                       Row(
// // //                                                         children: [
// // //                                                           Expanded(
// // //                                                             child: Text(
// // //                                                               notification.headline,
// // //                                                               style: TextStyle(
// // //                                                                 color: Colors.white,
// // //                                                                 fontSize: width * 0.045,
// // //                                                                 fontWeight: FontWeight.bold,
// // //                                                               ),
// // //                                                             ),
// // //                                                           ),
// // //                                                           // Status badges
// // //                                                           if (isRead)
// // //                                                             Container(
// // //                                                               padding: EdgeInsets.symmetric(
// // //                                                                 horizontal: 8,
// // //                                                                 vertical: 4,
// // //                                                               ),
// // //                                                               decoration: BoxDecoration(
// // //                                                                 color: Colors.green.withOpacity(0.2),
// // //                                                                 borderRadius: BorderRadius.circular(8),
// // //                                                                 border: Border.all(
// // //                                                                   color: Colors.green.withOpacity(0.5),
// // //                                                                 ),
// // //                                                               ),
// // //                                                               child: Row(
// // //                                                                 mainAxisSize: MainAxisSize.min,
// // //                                                                 children: [
// // //                                                                   Icon(
// // //                                                                     Icons.check_circle,
// // //                                                                     size: width * 0.03,
// // //                                                                     color: Colors.green,
// // //                                                                   ),
// // //                                                                   SizedBox(width: 4),
// // //                                                                   Text(
// // //                                                                     'Read',
// // //                                                                     style: TextStyle(
// // //                                                                       color: Colors.green,
// // //                                                                       fontSize: width * 0.028,
// // //                                                                       fontWeight: FontWeight.bold,
// // //                                                                     ),
// // //                                                                   ),
// // //                                                                 ],
// // //                                                               ),
// // //                                                             )
// // //                                                           else if (isViewed)
// // //                                                             Container(
// // //                                                               padding: EdgeInsets.symmetric(
// // //                                                                 horizontal: 8,
// // //                                                                 vertical: 4,
// // //                                                               ),
// // //                                                               decoration: BoxDecoration(
// // //                                                                 color: Colors.blue.withOpacity(0.2),
// // //                                                                 borderRadius: BorderRadius.circular(8),
// // //                                                                 border: Border.all(
// // //                                                                   color: Colors.blue.withOpacity(0.5),
// // //                                                                 ),
// // //                                                               ),
// // //                                                               child: Row(
// // //                                                                 mainAxisSize: MainAxisSize.min,
// // //                                                                 children: [
// // //                                                                   Icon(
// // //                                                                     Icons.visibility,
// // //                                                                     size: width * 0.03,
// // //                                                                     color: Colors.blue,
// // //                                                                   ),
// // //                                                                   SizedBox(width: 4),
// // //                                                                   Text(
// // //                                                                     'Viewed',
// // //                                                                     style: TextStyle(
// // //                                                                       color: Colors.blue,
// // //                                                                       fontSize: width * 0.028,
// // //                                                                       fontWeight: FontWeight.bold,
// // //                                                                     ),
// // //                                                                   ),
// // //                                                                 ],
// // //                                                               ),
// // //                                                             ),
// // //                                                         ],
// // //                                                       ),
// // //                                                       SizedBox(height: height * 0.008),
// // //                                                       Text(
// // //                                                         notification.message,
// // //                                                         style: TextStyle(
// // //                                                           color: Colors.grey[300],
// // //                                                           fontSize: width * 0.038,
// // //                                                           height: 1.4,
// // //                                                         ),
// // //                                                         maxLines: 3,
// // //                                                         overflow: TextOverflow.ellipsis,
// // //                                                       ),
// // //                                                       SizedBox(height: height * 0.008),
// // //                                                       Row(
// // //                                                         children: [
// // //                                                           Icon(
// // //                                                             Icons.access_time,
// // //                                                             size: width * 0.035,
// // //                                                             color: Colors.grey[500],
// // //                                                           ),
// // //                                                           SizedBox(width: 4),
// // //                                                           Text(
// // //                                                             timeAgo,
// // //                                                             style: TextStyle(
// // //                                                               color: Colors.grey[500],
// // //                                                               fontSize: width * 0.032,
// // //                                                             ),
// // //                                                           ),
// // //                                                         ],
// // //                                                       ),
// // //                                                     ],
// // //                                                   ),
// // //                                                 ),
// // //                                               ],
// // //                                             ),
// // //                                             SizedBox(height: height * 0.015),
// // //                                             // Action buttons
// // //                                             Row(
// // //                                               mainAxisAlignment: MainAxisAlignment.end,
// // //                                               children: [
// // //                                                 if (!isViewed)
// // //                                                   Expanded(
// // //                                                     child: ElevatedButton.icon(
// // //                                                       onPressed: () => controller.markAsView(notification.id),
// // //                                                       icon: Icon(Icons.visibility, size: width * 0.04),
// // //                                                       label: Text('Mark Viewed'),
// // //                                                       style: ElevatedButton.styleFrom(
// // //                                                         backgroundColor: Colors.blue,
// // //                                                         foregroundColor: Colors.white,
// // //                                                         padding: EdgeInsets.symmetric(
// // //                                                           vertical: height * 0.012,
// // //                                                         ),
// // //                                                         shape: RoundedRectangleBorder(
// // //                                                           borderRadius: BorderRadius.circular(10),
// // //                                                         ),
// // //                                                         elevation: 0,
// // //                                                       ),
// // //                                                     ),
// // //                                                   ),
// // //                                                 if (!isViewed && !isRead) SizedBox(width: width * 0.02),
// // //                                                 if (!isRead)
// // //                                                   Expanded(
// // //                                                     child: ElevatedButton.icon(
// // //                                                       onPressed: () => controller.markAsRead(notification.id),
// // //                                                       icon: Icon(Icons.check_circle, size: width * 0.04),
// // //                                                       label: Text('Mark Read'),
// // //                                                       style: ElevatedButton.styleFrom(
// // //                                                         backgroundColor: Colors.green,
// // //                                                         foregroundColor: Colors.white,
// // //                                                         padding: EdgeInsets.symmetric(
// // //                                                           vertical: height * 0.012,
// // //                                                         ),
// // //                                                         shape: RoundedRectangleBorder(
// // //                                                           borderRadius: BorderRadius.circular(10),
// // //                                                         ),
// // //                                                         elevation: 0,
// // //                                                       ),
// // //                                                     ),
// // //                                                   ),
// // //                                                 if (isRead)
// // //                                                   Expanded(
// // //                                                     child: Container(
// // //                                                       padding: EdgeInsets.symmetric(vertical: height * 0.012),
// // //                                                       decoration: BoxDecoration(
// // //                                                         color: Colors.grey[800],
// // //                                                         borderRadius: BorderRadius.circular(10),
// // //                                                       ),
// // //                                                       child: Row(
// // //                                                         mainAxisAlignment: MainAxisAlignment.center,
// // //                                                         children: [
// // //                                                           Icon(
// // //                                                             Icons.check_circle,
// // //                                                             color: Colors.green,
// // //                                                             size: width * 0.045,
// // //                                                           ),
// // //                                                           SizedBox(width: 8),
// // //                                                           Text(
// // //                                                             'All Done',
// // //                                                             style: TextStyle(
// // //                                                               color: Colors.grey[400],
// // //                                                               fontSize: width * 0.038,
// // //                                                               fontWeight: FontWeight.w500,
// // //                                                             ),
// // //                                                           ),
// // //                                                         ],
// // //                                                       ),
// // //                                                     ),
// // //                                                   ),
// // //                                               ],
// // //                                             ),
// // //                                           ],
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                 ),
// // //                               );
// // //                             },
// // //                           ),
// // //                         ),
// // //                 ),
// // //               ],
// // //             );
// // //           }),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   String _formatTimeAgo(String dateString) {
// // //     try {
// // //       final date = DateTime.parse(dateString);
// // //       final now = DateTime.now();
// // //       final difference = now.difference(date);

// // //       if (difference.inDays > 365) {
// // //         return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
// // //       } else if (difference.inDays > 30) {
// // //         return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
// // //       } else if (difference.inDays > 0) {
// // //         return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
// // //       } else if (difference.inHours > 0) {
// // //         return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
// // //       } else if (difference.inMinutes > 0) {
// // //         return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
// // //       } else {
// // //         return 'Just now';
// // //       }
// // //     } catch (e) {
// // //       return 'Unknown time';
// // //     }
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:intl/intl.dart';
// // import 'dart:async';

// // class NotificationModel {
// //   final String id;
// //   final String headline;
// //   final String message;
// //   final String? url;
// //   final String status;
// //   final List<String> viewedBy;
// //   final List<String> readBy;
// //   final String createdAt;
// //   final String updatedAt;
// //   final bool viewed;
// //   final bool read;

// //   NotificationModel({
// //     required this.id,
// //     required this.headline,
// //     required this.message,
// //     this.url,
// //     required this.status,
// //     required this.viewedBy,
// //     required this.readBy,
// //     required this.createdAt,
// //     required this.updatedAt,
// //     required this.viewed,
// //     required this.read,
// //   });

// //   factory NotificationModel.fromJson(Map<String, dynamic> json) {
// //     return NotificationModel(
// //       id: json['_id'] ?? '',
// //       headline: json['headline'] ?? '',
// //       message: json['message'] ?? '',
// //       url: json['url'],
// //       status: json['status'] ?? '',
// //       viewedBy: List<String>.from(json['viewedBy'] ?? []),
// //       readBy: List<String>.from(json['readBy'] ?? []),
// //       createdAt: json['createdAt'] ?? '',
// //       updatedAt: json['updatedAt'] ?? '',
// //       viewed: json['viewed'] ?? false,
// //       read: json['read'] ?? false,
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       '_id': id,
// //       'headline': headline,
// //       'message': message,
// //       'url': url,
// //       'status': status,
// //       'viewedBy': viewedBy,
// //       'readBy': readBy,
// //       'createdAt': createdAt,
// //       'updatedAt': updatedAt,
// //       'viewed': viewed,
// //       'read': read,
// //     };
// //   }

// //   NotificationModel copyWith({
// //     String? id,
// //     String? headline,
// //     String? message,
// //     String? url,
// //     String? status,
// //     List<String>? viewedBy,
// //     List<String>? readBy,
// //     String? createdAt,
// //     String? updatedAt,
// //     bool? viewed,
// //     bool? read,
// //   }) {
// //     return NotificationModel(
// //       id: id ?? this.id,
// //       headline: headline ?? this.headline,
// //       message: message ?? this.message,
// //       url: url ?? this.url,
// //       status: status ?? this.status,
// //       viewedBy: viewedBy ?? this.viewedBy,
// //       readBy: readBy ?? this.readBy,
// //       createdAt: createdAt ?? this.createdAt,
// //       updatedAt: updatedAt ?? this.updatedAt,
// //       viewed: viewed ?? this.viewed,
// //       read: read ?? this.read,
// //     );
// //   }
// // }

// // class NotificationController extends GetxController {
// //   RxList<NotificationModel> notifications = <NotificationModel>[].obs;
// //   RxBool isLoading = false.obs;
// //   RxString currentUserId = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
// //   Timer? _autoMarkTimer;

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     _getCurrentUserId();
// //     fetchNotifications();
// //     ever(notifications, (_) {
// //       if (currentUserId.value.isNotEmpty && notifications.any((n) => !isRead(n))) {
// //         _autoMarkTimer?.cancel();
// //         _autoMarkTimer = Timer(const Duration(seconds: 1), () {
// //           autoMarkAllUnreadAsRead();
// //         });
// //       }
// //     });
// //   }

// //   @override
// //   void onClose() {
// //     _autoMarkTimer?.cancel();
// //     super.onClose();
// //   }

// //   Future<void> autoMarkAllUnreadAsRead() async {
// //     print('🤖 Auto-marking all unread notifications as read...');
// //     List<String> unreadIds = notifications.where((n) => !isRead(n)).map((n) => n.id).toList();
// //     for (final id in unreadIds) {
// //       await markAsRead(id);
// //     }
// //     print('🤖 Auto-marking completed.');
// //   }

// //   Future<void> _getCurrentUserId() async {
// //     try {
// //       String? uid = await getUserId();
// //       if (uid != null && uid.isNotEmpty) {
// //         currentUserId.value = uid;
// //         print('✅ Current User ID from prefs: $uid');
// //         return;
// //       }

// //       // If not in prefs, fetch from API
// //       print('ℹ️ User ID not in prefs, fetching from API...');
// //       uid = await _fetchUserIdFromApi();
// //       if (uid != null && uid.isNotEmpty) {
// //         final prefs = await SharedPreferences.getInstance();
// //         await prefs.setString('user_id', uid);
// //         currentUserId.value = uid;
// //         print('✅ Current User ID from API: $uid');
// //       } else {
// //         print('❌ User ID not found even from API');
// //       }
// //     } catch (e) {
// //       print('❌ Error getting user ID: $e');
// //     }
// //   }

// //   Future<String?> _fetchUserIdFromApi() async {
// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         print('❌ Cannot fetch user ID: No token');
// //         return null;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/auth/me'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('📊 Fetch User ID Response Status: ${response.statusCode}');
// //       print('📊 Fetch User ID Response Body: ${response.body}');

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> responseData = jsonDecode(response.body);
// //         final String? userId = responseData['user']?['id'];
// //         return userId;
// //       } else {
// //         print('❌ Failed to fetch user ID: ${response.statusCode}');
// //         return null;
// //       }
// //     } catch (e) {
// //       print('❌ Error fetching user ID from API: $e');
// //       return null;
// //     }
// //   }

// //   Future<String?> getToken() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       String? token = prefs.getString('auth_token');
// //       if (token != null) {
// //         print('✅ Token retrieved: ${token.substring(0, 20)}...');
// //       } else {
// //         print('❌ No token found in SharedPreferences');
// //       }
// //       return token;
// //     } catch (e) {
// //       print('❌ Error getting token: $e');
// //       return null;
// //     }
// //   }

// //   Future<String?> getUserId() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       String? userId = prefs.getString('user_id');
// //       if (userId != null) {
// //         print('✅ User ID retrieved: $userId');
// //       } else {
// //         print('❌ No user_id found in SharedPreferences');
// //       }
// //       return userId;
// //     } catch (e) {
// //       print('❌ Error getting user ID: $e');
// //       return null;
// //     }
// //   }

// //   Future<void> fetchNotifications() async {
// //     isLoading.value = true;
// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         print('❌ Cannot fetch notifications: No token');
// //         Get.snackbar(
// //           'Error',
// //           'Authentication token not found',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //         return;
// //       }

// //       print('📡 Fetching notifications from: $baseUrl/notifications');
      
// //       final response = await http.get(
// //         Uri.parse('$baseUrl/notifications'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('📊 Notifications Response Status: ${response.statusCode}');
// //       print('📊 Notifications Response Body: ${response.body}');

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> responseData = jsonDecode(response.body);
// //         final List<dynamic> data = responseData['notifications'] ?? [];
// //         notifications.value = data
// //             .map<NotificationModel>((json) => NotificationModel.fromJson(json))
// //             .toList();
// //         print('✅ Loaded ${notifications.length} notifications');
// //       } else {
// //         print('❌ Failed to load notifications: ${response.statusCode}');
// //         Get.snackbar(
// //           'Error',
// //           'Failed to load notifications (${response.statusCode})',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //       }
// //     } catch (e) {
// //       print('❌ Error fetching notifications: $e');
// //       Get.snackbar(
// //         'Error',
// //         'Network error: $e',
// //         backgroundColor: Colors.red.withOpacity(0.8),
// //         colorText: Colors.white,
// //         snackPosition: SnackPosition.TOP,
// //       );
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   Future<void> markAsView(String notificationId) async {
// //     if (currentUserId.value.isEmpty) {
// //       print('❌ Cannot mark as viewed: User ID is empty');
// //       Get.snackbar(
// //         'Error',
// //         'User ID not found',
// //         backgroundColor: Colors.orange.withOpacity(0.8),
// //         colorText: Colors.white,
// //         snackPosition: SnackPosition.TOP,
// //       );
// //       return;
// //     }

// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         print('❌ Cannot mark as viewed: No token');
// //         Get.snackbar(
// //           'Error',
// //           'Authentication token not found',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //         return;
// //       }

// //       print('👁️ Marking notification as viewed: $notificationId');
// //       print('👁️ Current User ID: ${currentUserId.value}');

// //       // Optimistically update UI
// //       int index = notifications.indexWhere((n) => n.id == notificationId);
// //       if (index != -1) {
// //         if (!notifications[index].viewedBy.contains(currentUserId.value)) {
// //           notifications[index] = notifications[index].copyWith(
// //             viewedBy: [...notifications[index].viewedBy, currentUserId.value],
// //             viewed: true,
// //           );
// //           notifications.refresh();
// //           print('✅ UI updated optimistically');
// //         } else {
// //           print('ℹ️ Already marked as viewed');
// //         }
// //       }

// //       final url = '$baseUrl/notifications/$notificationId/view';
// //       print('📡 POST Request URL: $url');

// //       final response = await http.post(
// //         Uri.parse(url),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('📊 Mark as View Response Status: ${response.statusCode}');
// //       print('📊 Mark as View Response Body: ${response.body}');

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         print('✅ Successfully marked as viewed');
// //         Get.snackbar(
// //           'Success',
// //           'Marked as viewed',
// //           backgroundColor: Colors.blue.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //           duration: Duration(seconds: 2),
// //           icon: Icon(Icons.visibility, color: Colors.white),
// //         );
// //         // Refresh to get updated data from server
// //         await fetchNotifications();
// //       } else {
// //         print('❌ Failed to mark as viewed: ${response.statusCode}');
// //         Get.snackbar(
// //           'Error',
// //           'Failed to mark as viewed (${response.statusCode})',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //         // Revert optimistic update
// //         await fetchNotifications();
// //       }
// //     } catch (e) {
// //       print('❌ Error marking as viewed: $e');
// //       Get.snackbar(
// //         'Error',
// //         'Network error: $e',
// //         backgroundColor: Colors.red.withOpacity(0.8),
// //         colorText: Colors.white,
// //         snackPosition: SnackPosition.TOP,
// //       );
// //       // Revert optimistic update
// //       await fetchNotifications();
// //     }
// //   }

// //   Future<void> markAsRead(String notificationId) async {
// //     if (currentUserId.value.isEmpty) {
// //       print('❌ Cannot mark as read: User ID is empty');
// //       Get.snackbar(
// //         'Error',
// //         'User ID not found',
// //         backgroundColor: Colors.orange.withOpacity(0.8),
// //         colorText: Colors.white,
// //         snackPosition: SnackPosition.TOP,
// //       );
// //       return;
// //     }

// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         print('❌ Cannot mark as read: No token');
// //         Get.snackbar(
// //           'Error',
// //           'Authentication token not found',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //         return;
// //       }

// //       print('📖 Marking notification as read: $notificationId');
// //       print('📖 Current User ID: ${currentUserId.value}');

// //       // Optimistically update UI
// //       int index = notifications.indexWhere((n) => n.id == notificationId);
// //       if (index != -1) {
// //         if (!notifications[index].readBy.contains(currentUserId.value)) {
// //           // When marking as read, also mark as viewed
// //           List<String> updatedViewedBy = notifications[index].viewedBy;
// //           if (!updatedViewedBy.contains(currentUserId.value)) {
// //             updatedViewedBy = [...updatedViewedBy, currentUserId.value];
// //           }

// //           notifications[index] = notifications[index].copyWith(
// //             viewedBy: updatedViewedBy,
// //             readBy: [...notifications[index].readBy, currentUserId.value],
// //             viewed: true,
// //             read: true,
// //           );
// //           notifications.refresh();
// //           print('✅ UI updated optimistically');
// //         } else {
// //           print('ℹ️ Already marked as read');
// //         }
// //       }

// //       final url = '$baseUrl/notifications/$notificationId/read';
// //       print('📡 POST Request URL: $url');

// //       final response = await http.post(
// //         Uri.parse(url),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('📊 Mark as Read Response Status: ${response.statusCode}');
// //       print('📊 Mark as Read Response Body: ${response.body}');

// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         print('✅ Successfully marked as read');
// //         Get.snackbar(
// //           'Success',
// //           'Marked as read',
// //           backgroundColor: Colors.green.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //           duration: Duration(seconds: 2),
// //           icon: Icon(Icons.check_circle, color: Colors.white),
// //         );
// //         // Refresh to get updated data from server
// //         await fetchNotifications();
// //       } else {
// //         print('❌ Failed to mark as read: ${response.statusCode}');
// //         Get.snackbar(
// //           'Error',
// //           'Failed to mark as read (${response.statusCode})',
// //           backgroundColor: Colors.red.withOpacity(0.8),
// //           colorText: Colors.white,
// //           snackPosition: SnackPosition.TOP,
// //         );
// //         // Revert optimistic update
// //         await fetchNotifications();
// //       }
// //     } catch (e) {
// //       print('❌ Error marking as read: $e');
// //       Get.snackbar(
// //         'Error',
// //         'Network error: $e',
// //         backgroundColor: Colors.red.withOpacity(0.8),
// //         colorText: Colors.white,
// //         snackPosition: SnackPosition.TOP,
// //       );
// //       // Revert optimistic update
// //       await fetchNotifications();
// //     }
// //   }

// //   bool isViewed(NotificationModel notification) {
// //     bool viewed = currentUserId.value.isNotEmpty && 
// //                   notification.viewedBy.contains(currentUserId.value);
// //     return viewed;
// //   }

// //   bool isRead(NotificationModel notification) {
// //     bool read = currentUserId.value.isNotEmpty && 
// //                 notification.readBy.contains(currentUserId.value);
// //     return read;
// //   }

// //   int getUnreadCount() {
// //     return notifications.where((n) => !isRead(n)).length;
// //   }
// // }

// // class NotificationScreen extends StatelessWidget {
// //   const NotificationScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final NotificationController controller = Get.put(NotificationController());
// //     double height = MediaQuery.of(context).size.height;
// //     double width = MediaQuery.of(context).size.width;

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topLeft,
// //             end: Alignment.bottomRight,
// //             colors: [
// //               Color(0xFF0A0A0A),
// //               Color(0xFF1A1A2E),
// //               Color(0xFF0A0A0A),
// //             ],
// //           ),
// //         ),
// //         child: SafeArea(
// //           child: Obx(() {
// //             if (controller.isLoading.value && controller.notifications.isEmpty) {
// //               return Center(
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     CircularProgressIndicator(
// //                       color: Colors.blue,
// //                       strokeWidth: 3,
// //                     ),
// //                     SizedBox(height: height * 0.02),
// //                     Text(
// //                       'Loading notifications...',
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.04,
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               );
// //             }

// //             return Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 // Header with gradient
// //                 Container(
// //                   padding: EdgeInsets.symmetric(
// //                     horizontal: width * 0.04,
// //                     vertical: height * 0.02,
// //                   ),
// //                   decoration: BoxDecoration(
// //                     gradient: LinearGradient(
// //                       begin: Alignment.topLeft,
// //                       end: Alignment.bottomRight,
// //                       colors: [
// //                         Colors.blue.withOpacity(0.1),
// //                         Colors.purple.withOpacity(0.05),
// //                       ],
// //                     ),
// //                     borderRadius: BorderRadius.only(
// //                       bottomLeft: Radius.circular(24),
// //                       bottomRight: Radius.circular(24),
// //                     ),
// //                   ),
// //                   child: Column(
// //                     children: [
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                         children: [
// //                           GestureDetector(
// //                             onTap: () => Get.back(),
// //                             child: Container(
// //                               padding: EdgeInsets.all(width * 0.02),
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white.withOpacity(0.1),
// //                                 borderRadius: BorderRadius.circular(12),
// //                               ),
// //                               child: Icon(
// //                                 Icons.arrow_back_ios_new,
// //                                 color: Colors.white,
// //                                 size: width * 0.05,
// //                               ),
// //                             ),
// //                           ),
// //                           Column(
// //                             children: [
// //                               Text(
// //                                 'Notifications',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: width * 0.06,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               if (controller.getUnreadCount() > 0)
// //                                 Container(
// //                                   margin: EdgeInsets.only(top: 4),
// //                                   padding: EdgeInsets.symmetric(
// //                                     horizontal: 12,
// //                                     vertical: 4,
// //                                   ),
// //                                   decoration: BoxDecoration(
// //                                     color: Colors.red,
// //                                     borderRadius: BorderRadius.circular(12),
// //                                   ),
// //                                   child: Text(
// //                                     '${controller.getUnreadCount()} new',
// //                                     style: TextStyle(
// //                                       color: Colors.white,
// //                                       fontSize: width * 0.03,
// //                                       fontWeight: FontWeight.bold,
// //                                     ),
// //                                   ),
// //                                 ),
// //                             ],
// //                           ),
// //                           GestureDetector(
// //                             onTap: () {
// //                               controller.fetchNotifications();
// //                             },
// //                             child: Container(
// //                               padding: EdgeInsets.all(width * 0.02),
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white.withOpacity(0.1),
// //                                 borderRadius: BorderRadius.circular(12),
// //                               ),
// //                               child: Icon(
// //                                 Icons.refresh,
// //                                 color: Colors.white,
// //                                 size: width * 0.05,
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 SizedBox(height: height * 0.02),
// //                 Expanded(
// //                   child: controller.notifications.isEmpty
// //                       ? Center(
// //                           child: Column(
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             children: [
// //                               Icon(
// //                                 Icons.notifications_off_outlined,
// //                                 size: width * 0.2,
// //                                 color: Colors.grey[700],
// //                               ),
// //                               SizedBox(height: height * 0.02),
// //                               Text(
// //                                 'No notifications yet',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: width * 0.045,
// //                                   fontWeight: FontWeight.w500,
// //                                 ),
// //                               ),
// //                               SizedBox(height: height * 0.01),
// //                               Text(
// //                                 'We\'ll notify you when something arrives',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[600],
// //                                   fontSize: width * 0.035,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         )
// //                       : RefreshIndicator(
// //                           onRefresh: controller.fetchNotifications,
// //                           color: Colors.blue,
// //                           backgroundColor: Color(0xFF1A1A2E),
// //                           child: ListView.builder(
// //                             padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                             itemCount: controller.notifications.length,
// //                             itemBuilder: (context, index) {
// //                               final notification = controller.notifications[index];
// //                               final timeAgo = _formatTimeAgo(notification.createdAt);
// //                               final isViewed = controller.isViewed(notification);
// //                               final isRead = controller.isRead(notification);

// //                               return Container(
// //                                 margin: EdgeInsets.only(bottom: height * 0.015),
// //                                 decoration: BoxDecoration(
// //                                   gradient: LinearGradient(
// //                                     begin: Alignment.topLeft,
// //                                     end: Alignment.bottomRight,
// //                                     colors: isRead
// //                                         ? [
// //                                             Colors.grey[900]!.withOpacity(0.5),
// //                                             Colors.grey[850]!.withOpacity(0.5),
// //                                           ]
// //                                         : [
// //                                             Colors.blue.withOpacity(0.15),
// //                                             Colors.purple.withOpacity(0.1),
// //                                           ],
// //                                   ),
// //                                   borderRadius: BorderRadius.circular(16),
// //                                   border: Border.all(
// //                                     color: isRead
// //                                         ? Colors.grey[800]!
// //                                         : Colors.blue.withOpacity(0.3),
// //                                     width: 1,
// //                                   ),
// //                                 ),
// //                                 child: ClipRRect(
// //                                   borderRadius: BorderRadius.circular(16),
// //                                   child: Stack(
// //                                     children: [
// //                                       Padding(
// //                                         padding: EdgeInsets.all(width * 0.04),
// //                                         child: Column(
// //                                           children: [
// //                                             Row(
// //                                               crossAxisAlignment: CrossAxisAlignment.start,
// //                                               children: [
// //                                                 // Icon with status indicator
// //                                                 Stack(
// //                                                   children: [
// //                                                     Container(
// //                                                       width: width * 0.14,
// //                                                       height: width * 0.14,
// //                                                       decoration: BoxDecoration(
// //                                                         gradient: LinearGradient(
// //                                                           begin: Alignment.topLeft,
// //                                                           end: Alignment.bottomRight,
// //                                                           colors: isRead
// //                                                               ? [Colors.grey[700]!, Colors.grey[800]!]
// //                                                               : [Colors.blue, Colors.purple],
// //                                                         ),
// //                                                         shape: BoxShape.circle,
// //                                                         boxShadow: [
// //                                                           BoxShadow(
// //                                                             color: isRead
// //                                                                 ? Colors.transparent
// //                                                                 : Colors.blue.withOpacity(0.3),
// //                                                             blurRadius: 12,
// //                                                             spreadRadius: 2,
// //                                                           ),
// //                                                         ],
// //                                                       ),
// //                                                       child: Icon(
// //                                                         isRead
// //                                                             ? Icons.notifications
// //                                                             : Icons.notifications_active,
// //                                                         color: Colors.white,
// //                                                         size: width * 0.07,
// //                                                       ),
// //                                                     ),
// //                                                     if (!isRead)
// //                                                       Positioned(
// //                                                         top: 0,
// //                                                         right: 0,
// //                                                         child: Container(
// //                                                           width: width * 0.03,
// //                                                           height: width * 0.03,
// //                                                           decoration: BoxDecoration(
// //                                                             color: Colors.red,
// //                                                             shape: BoxShape.circle,
// //                                                             border: Border.all(
// //                                                               color: Color(0xFF0A0A0A),
// //                                                               width: 2,
// //                                                             ),
// //                                                           ),
// //                                                         ),
// //                                                       ),
// //                                                   ],
// //                                                 ),
// //                                                 SizedBox(width: width * 0.04),
// //                                                 Expanded(
// //                                                   child: Column(
// //                                                     crossAxisAlignment: CrossAxisAlignment.start,
// //                                                     children: [
// //                                                       Row(
// //                                                         children: [
// //                                                           Expanded(
// //                                                             child: Text(
// //                                                               notification.headline,
// //                                                               style: TextStyle(
// //                                                                 color: Colors.white,
// //                                                                 fontSize: width * 0.045,
// //                                                                 fontWeight: FontWeight.bold,
// //                                                               ),
// //                                                             ),
// //                                                           ),
// //                                                           // Status badges
// //                                                           if (isRead)
// //                                                             Container(
// //                                                               padding: EdgeInsets.symmetric(
// //                                                                 horizontal: 8,
// //                                                                 vertical: 4,
// //                                                               ),
// //                                                               decoration: BoxDecoration(
// //                                                                 color: Colors.green.withOpacity(0.2),
// //                                                                 borderRadius: BorderRadius.circular(8),
// //                                                                 border: Border.all(
// //                                                                   color: Colors.green.withOpacity(0.5),
// //                                                                 ),
// //                                                               ),
// //                                                               child: Row(
// //                                                                 mainAxisSize: MainAxisSize.min,
// //                                                                 children: [
// //                                                                   Icon(
// //                                                                     Icons.check_circle,
// //                                                                     size: width * 0.03,
// //                                                                     color: Colors.green,
// //                                                                   ),
// //                                                                   SizedBox(width: 4),
// //                                                                   Text(
// //                                                                     'Read',
// //                                                                     style: TextStyle(
// //                                                                       color: Colors.green,
// //                                                                       fontSize: width * 0.028,
// //                                                                       fontWeight: FontWeight.bold,
// //                                                                     ),
// //                                                                   ),
// //                                                                 ],
// //                                                               ),
// //                                                             )
// //                                                           else if (isViewed)
// //                                                             Container(
// //                                                               padding: EdgeInsets.symmetric(
// //                                                                 horizontal: 8,
// //                                                                 vertical: 4,
// //                                                               ),
// //                                                               decoration: BoxDecoration(
// //                                                                 color: Colors.blue.withOpacity(0.2),
// //                                                                 borderRadius: BorderRadius.circular(8),
// //                                                                 border: Border.all(
// //                                                                   color: Colors.blue.withOpacity(0.5),
// //                                                                 ),
// //                                                               ),
// //                                                               child: Row(
// //                                                                 mainAxisSize: MainAxisSize.min,
// //                                                                 children: [
// //                                                                   Icon(
// //                                                                     Icons.visibility,
// //                                                                     size: width * 0.03,
// //                                                                     color: Colors.blue,
// //                                                                   ),
// //                                                                   SizedBox(width: 4),
// //                                                                   Text(
// //                                                                     'Viewed',
// //                                                                     style: TextStyle(
// //                                                                       color: Colors.blue,
// //                                                                       fontSize: width * 0.028,
// //                                                                       fontWeight: FontWeight.bold,
// //                                                                     ),
// //                                                                   ),
// //                                                                 ],
// //                                                               ),
// //                                                             ),
// //                                                         ],
// //                                                       ),
// //                                                       SizedBox(height: height * 0.008),
// //                                                       Text(
// //                                                         notification.message,
// //                                                         style: TextStyle(
// //                                                           color: Colors.grey[300],
// //                                                           fontSize: width * 0.038,
// //                                                           height: 1.4,
// //                                                         ),
// //                                                         maxLines: 3,
// //                                                         overflow: TextOverflow.ellipsis,
// //                                                       ),
// //                                                       SizedBox(height: height * 0.008),
// //                                                       Row(
// //                                                         children: [
// //                                                           Icon(
// //                                                             Icons.access_time,
// //                                                             size: width * 0.035,
// //                                                             color: Colors.grey[500],
// //                                                           ),
// //                                                           SizedBox(width: 4),
// //                                                           Text(
// //                                                             timeAgo,
// //                                                             style: TextStyle(
// //                                                               color: Colors.grey[500],
// //                                                               fontSize: width * 0.032,
// //                                                             ),
// //                                                           ),
// //                                                         ],
// //                                                       ),
// //                                                     ],
// //                                                   ),
// //                                                 ),
// //                                               ],
// //                                             ),
// //                                             SizedBox(height: height * 0.015),
// //                                             // Action buttons
// //                                             Row(
// //                                               mainAxisAlignment: MainAxisAlignment.end,
// //                                               children: [
// //                                                 if (!isViewed)
// //                                                   Expanded(
// //                                                     child: ElevatedButton.icon(
// //                                                       onPressed: () => controller.markAsView(notification.id),
// //                                                       icon: Icon(Icons.visibility, size: width * 0.04),
// //                                                       label: Text('Mark Viewed'),
// //                                                       style: ElevatedButton.styleFrom(
// //                                                         backgroundColor: Colors.blue,
// //                                                         foregroundColor: Colors.white,
// //                                                         padding: EdgeInsets.symmetric(
// //                                                           vertical: height * 0.012,
// //                                                         ),
// //                                                         shape: RoundedRectangleBorder(
// //                                                           borderRadius: BorderRadius.circular(10),
// //                                                         ),
// //                                                         elevation: 0,
// //                                                       ),
// //                                                     ),
// //                                                   ),
// //                                                 if (!isViewed && !isRead) SizedBox(width: width * 0.02),
// //                                                 if (!isRead)
// //                                                   Expanded(
// //                                                     child: ElevatedButton.icon(
// //                                                       onPressed: () => controller.markAsRead(notification.id),
// //                                                       icon: Icon(Icons.check_circle, size: width * 0.04),
// //                                                       label: Text('Mark Read'),
// //                                                       style: ElevatedButton.styleFrom(
// //                                                         backgroundColor: Colors.green,
// //                                                         foregroundColor: Colors.white,
// //                                                         padding: EdgeInsets.symmetric(
// //                                                           vertical: height * 0.012,
// //                                                         ),
// //                                                         shape: RoundedRectangleBorder(
// //                                                           borderRadius: BorderRadius.circular(10),
// //                                                         ),
// //                                                         elevation: 0,
// //                                                       ),
// //                                                     ),
// //                                                   ),
// //                                                 if (isRead)
// //                                                   Expanded(
// //                                                     child: Container(
// //                                                       padding: EdgeInsets.symmetric(vertical: height * 0.012),
// //                                                       decoration: BoxDecoration(
// //                                                         color: Colors.grey[800],
// //                                                         borderRadius: BorderRadius.circular(10),
// //                                                       ),
// //                                                       child: Row(
// //                                                         mainAxisAlignment: MainAxisAlignment.center,
// //                                                         children: [
// //                                                           Icon(
// //                                                             Icons.check_circle,
// //                                                             color: Colors.green,
// //                                                             size: width * 0.045,
// //                                                           ),
// //                                                           SizedBox(width: 8),
// //                                                           Text(
// //                                                             'All Done',
// //                                                             style: TextStyle(
// //                                                               color: Colors.grey[400],
// //                                                               fontSize: width * 0.038,
// //                                                               fontWeight: FontWeight.w500,
// //                                                             ),
// //                                                           ),
// //                                                         ],
// //                                                       ),
// //                                                     ),
// //                                                   ),
// //                                               ],
// //                                             ),
// //                                           ],
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                               );
// //                             },
// //                           ),
// //                         ),
// //                 ),
// //               ],
// //             );
// //           }),
// //         ),
// //       ),
// //     );
// //   }

// //   String _formatTimeAgo(String dateString) {
// //     try {
// //       final date = DateTime.parse(dateString);
// //       final now = DateTime.now();
// //       final difference = now.difference(date);

// //       if (difference.inDays > 365) {
// //         return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
// //       } else if (difference.inDays > 30) {
// //         return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
// //       } else if (difference.inDays > 0) {
// //         return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
// //       } else if (difference.inHours > 0) {
// //         return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
// //       } else if (difference.inMinutes > 0) {
// //         return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
// //       } else {
// //         return 'Just now';
// //       }
// //     } catch (e) {
// //       return 'Unknown time';
// //     }
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'dart:async';

// class NotificationModel {
//   final String id;
//   final String headline;
//   final String message;
//   final String? url;
//   final String status;
//   final List<String> viewedBy;
//   final List<String> readBy;
//   final String createdAt;
//   final String updatedAt;
//   final bool viewed;
//   final bool read;

//   NotificationModel({
//     required this.id,
//     required this.headline,
//     required this.message,
//     this.url,
//     required this.status,
//     required this.viewedBy,
//     required this.readBy,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.viewed,
//     required this.read,
//   });

//   factory NotificationModel.fromJson(Map<String, dynamic> json) {
//     return NotificationModel(
//       id: json['_id'] ?? '',
//       headline: json['headline'] ?? '',
//       message: json['message'] ?? '',
//       url: json['url'],
//       status: json['status'] ?? '',
//       viewedBy: List<String>.from(json['viewedBy'] ?? []),
//       readBy: List<String>.from(json['readBy'] ?? []),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       viewed: json['viewed'] ?? false,
//       read: json['read'] ?? false,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'headline': headline,
//       'message': message,
//       'url': url,
//       'status': status,
//       'viewedBy': viewedBy,
//       'readBy': readBy,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'viewed': viewed,
//       'read': read,
//     };
//   }

//   NotificationModel copyWith({
//     String? id,
//     String? headline,
//     String? message,
//     String? url,
//     String? status,
//     List<String>? viewedBy,
//     List<String>? readBy,
//     String? createdAt,
//     String? updatedAt,
//     bool? viewed,
//     bool? read,
//   }) {
//     return NotificationModel(
//       id: id ?? this.id,
//       headline: headline ?? this.headline,
//       message: message ?? this.message,
//       url: url ?? this.url,
//       status: status ?? this.status,
//       viewedBy: viewedBy ?? this.viewedBy,
//       readBy: readBy ?? this.readBy,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       viewed: viewed ?? this.viewed,
//       read: read ?? this.read,
//     );
//   }
// }

// class NotificationController extends GetxController {
//   RxList<NotificationModel> notifications = <NotificationModel>[].obs;
//   RxBool isLoading = false.obs;
//   RxString currentUserId = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   Timer? _autoMarkTimer;

//   @override
//   void onInit() {
//     super.onInit();
//     _getCurrentUserId();
//     fetchNotifications();
//     ever(notifications, (_) {
//       if (currentUserId.value.isNotEmpty && notifications.any((n) => !isRead(n))) {
//         _autoMarkTimer?.cancel();
//         _autoMarkTimer = Timer(const Duration(seconds: 1), () {
//           autoMarkAllUnreadAsRead();
//         });
//       }
//     });
//   }

//   @override
//   void onClose() {
//     _autoMarkTimer?.cancel();
//     super.onClose();
//   }

//   Future<void> autoMarkAllUnreadAsRead() async {
//     print('🤖 Auto-marking all unread notifications as read...');
//     List<String> unreadIds = notifications.where((n) => !isRead(n)).map((n) => n.id).toList();
//     for (final id in unreadIds) {
//       await markAsRead(id);
//     }
//     print('🤖 Auto-marking completed.');
//   }

//   Future<void> _getCurrentUserId() async {
//     try {
//       String? uid = await getUserId();
//       if (uid != null && uid.isNotEmpty) {
//         currentUserId.value = uid;
//         print('✅ Current User ID from prefs: $uid');
//         return;
//       }

//       // If not in prefs, fetch from API
//       print('ℹ️ User ID not in prefs, fetching from API...');
//       uid = await _fetchUserIdFromApi();
//       if (uid != null && uid.isNotEmpty) {
//         final prefs = await SharedPreferences.getInstance();
//         await prefs.setString('user_id', uid);
//         currentUserId.value = uid;
//         print('✅ Current User ID from API: $uid');
//       } else {
//         print('❌ User ID not found even from API');
//       }
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//     }
//   }

//   Future<String?> _fetchUserIdFromApi() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch user ID: No token');
//         return null;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Fetch User ID Response Status: ${response.statusCode}');
//       print('📊 Fetch User ID Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final String? userId = responseData['user']?['id'];
//         return userId;
//       } else {
//         print('❌ Failed to fetch user ID: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('❌ Error fetching user ID from API: $e');
//       return null;
//     }
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? token = prefs.getString('auth_token');
//       if (token != null) {
//         print('✅ Token retrieved: ${token.substring(0, 20)}...');
//       } else {
//         print('❌ No token found in SharedPreferences');
//       }
//       return token;
//     } catch (e) {
//       print('❌ Error getting token: $e');
//       return null;
//     }
//   }

//   Future<String?> getUserId() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? userId = prefs.getString('user_id');
//       if (userId != null) {
//         print('✅ User ID retrieved: $userId');
//       } else {
//         print('❌ No user_id found in SharedPreferences');
//       }
//       return userId;
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//       return null;
//     }
//   }

//   Future<void> fetchNotifications() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch notifications: No token');
//         Get.snackbar(
//           'Error',
//           'Authentication token not found',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//         return;
//       }

//       print('📡 Fetching notifications from: $baseUrl/notifications');
      
//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Notifications Response Status: ${response.statusCode}');
//       print('📊 Notifications Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final List<dynamic> data = responseData['notifications'] ?? [];
//         notifications.value = data
//             .map<NotificationModel>((json) => NotificationModel.fromJson(json))
//             .toList();
//         print('✅ Loaded ${notifications.length} notifications');
//       } else {
//         print('❌ Failed to load notifications: ${response.statusCode}');
//         Get.snackbar(
//           'Error',
//           'Failed to load notifications (${response.statusCode})',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//       }
//     } catch (e) {
//       print('❌ Error fetching notifications: $e');
//       Get.snackbar(
//         'Error',
//         'Network error: $e',
//         backgroundColor: Colors.red.withOpacity(0.8),
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP,
//       );
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> markAsView(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as viewed: User ID is empty');
//       Get.snackbar(
//         'Error',
//         'User ID not found',
//         backgroundColor: Colors.orange.withOpacity(0.8),
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP,
//       );
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as viewed: No token');
//         Get.snackbar(
//           'Error',
//           'Authentication token not found',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//         return;
//       }

//       print('👁️ Marking notification as viewed: $notificationId');
//       print('👁️ Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].viewedBy.contains(currentUserId.value)) {
//           notifications[index] = notifications[index].copyWith(
//             viewedBy: [...notifications[index].viewedBy, currentUserId.value],
//             viewed: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as viewed');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/view';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as View Response Status: ${response.statusCode}');
//       print('📊 Mark as View Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as viewed');
//         Get.snackbar(
//           'Success',
//           'Marked as viewed',
//           backgroundColor: Colors.blue.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//           duration: Duration(seconds: 2),
//           icon: Icon(Icons.visibility, color: Colors.white),
//         );
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as viewed: ${response.statusCode}');
//         Get.snackbar(
//           'Error',
//           'Failed to mark as viewed (${response.statusCode})',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as viewed: $e');
//       Get.snackbar(
//         'Error',
//         'Network error: $e',
//         backgroundColor: Colors.red.withOpacity(0.8),
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP,
//       );
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   Future<void> markAsRead(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as read: User ID is empty');
//       Get.snackbar(
//         'Error',
//         'User ID not found',
//         backgroundColor: Colors.orange.withOpacity(0.8),
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP,
//       );
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as read: No token');
//         Get.snackbar(
//           'Error',
//           'Authentication token not found',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//         return;
//       }

//       print('📖 Marking notification as read: $notificationId');
//       print('📖 Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].readBy.contains(currentUserId.value)) {
//           // When marking as read, also mark as viewed
//           List<String> updatedViewedBy = notifications[index].viewedBy;
//           if (!updatedViewedBy.contains(currentUserId.value)) {
//             updatedViewedBy = [...updatedViewedBy, currentUserId.value];
//           }

//           notifications[index] = notifications[index].copyWith(
//             viewedBy: updatedViewedBy,
//             readBy: [...notifications[index].readBy, currentUserId.value],
//             viewed: true,
//             read: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as read');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/read';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as Read Response Status: ${response.statusCode}');
//       print('📊 Mark as Read Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as read');
//         Get.snackbar(
//           'Success',
//           'Marked as read',
//           backgroundColor: Colors.green.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//           duration: Duration(seconds: 2),
//           icon: Icon(Icons.check_circle, color: Colors.white),
//         );
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as read: ${response.statusCode}');
//         Get.snackbar(
//           'Error',
//           'Failed to mark as read (${response.statusCode})',
//           backgroundColor: Colors.red.withOpacity(0.8),
//           colorText: Colors.white,
//           snackPosition: SnackPosition.TOP,
//         );
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as read: $e');
//       Get.snackbar(
//         'Error',
//         'Network error: $e',
//         backgroundColor: Colors.red.withOpacity(0.8),
//         colorText: Colors.white,
//         snackPosition: SnackPosition.TOP,
//       );
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   bool isViewed(NotificationModel notification) {
//     bool viewed = currentUserId.value.isNotEmpty && 
//                   notification.viewedBy.contains(currentUserId.value);
//     return viewed;
//   }

//   bool isRead(NotificationModel notification) {
//     bool read = currentUserId.value.isNotEmpty && 
//                 notification.readBy.contains(currentUserId.value);
//     return read;
//   }

//   int getUnreadCount() {
//     return notifications.where((n) => !isRead(n)).length;
//   }
// }

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final NotificationController controller = Get.put(NotificationController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF0A0A0A),
//               Color(0xFF1A1A2E),
//               Color(0xFF0A0A0A),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: Obx(() {
//             if (controller.isLoading.value && controller.notifications.isEmpty) {
//               return Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircularProgressIndicator(
//                       color: Colors.blue,
//                       strokeWidth: 3,
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Text(
//                       'Loading notifications...',
//                       style: TextStyle(
//                         color: Colors.grey[400],
//                         fontSize: width * 0.04,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }

//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header with gradient
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: width * 0.04,
//                     vertical: height * 0.02,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Colors.blue.withOpacity(0.1),
//                         Colors.purple.withOpacity(0.05),
//                       ],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(24),
//                       bottomRight: Radius.circular(24),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GestureDetector(
//                             onTap: () => Get.back(),
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.arrow_back_ios_new,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 'Notifications',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * 0.06,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               if (controller.getUnreadCount() > 0)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 4),
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: 12,
//                                     vertical: 4,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.red,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Text(
//                                     '${controller.getUnreadCount()} new',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: width * 0.03,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               controller.fetchNotifications();
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.refresh,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: height * 0.02),
//                 Expanded(
//                   child: controller.notifications.isEmpty
//                       ? Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.notifications_off_outlined,
//                                 size: width * 0.2,
//                                 color: Colors.grey[700],
//                               ),
//                               SizedBox(height: height * 0.02),
//                               Text(
//                                 'No notifications yet',
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: width * 0.045,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * 0.01),
//                               Text(
//                                 'We\'ll notify you when something arrives',
//                                 style: TextStyle(
//                                   color: Colors.grey[600],
//                                   fontSize: width * 0.035,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       : RefreshIndicator(
//                           onRefresh: controller.fetchNotifications,
//                           color: Colors.blue,
//                           backgroundColor: Color(0xFF1A1A2E),
//                           child: ListView.builder(
//                             padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//                             itemCount: controller.notifications.length,
//                             itemBuilder: (context, index) {
//                               final notification = controller.notifications[index];
//                               final timeAgo = _formatTimeAgo(notification.createdAt);
//                               final isViewed = controller.isViewed(notification);
//                               final isRead = controller.isRead(notification);

//                               return Container(
//                                 margin: EdgeInsets.only(bottom: height * 0.015),
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topLeft,
//                                     end: Alignment.bottomRight,
//                                     colors: isRead
//                                         ? [
//                                             Colors.grey[900]!.withOpacity(0.5),
//                                             Colors.grey[850]!.withOpacity(0.5),
//                                           ]
//                                         : [
//                                             Colors.blue.withOpacity(0.15),
//                                             Colors.purple.withOpacity(0.1),
//                                           ],
//                                   ),
//                                   borderRadius: BorderRadius.circular(16),
//                                   border: Border.all(
//                                     color: isRead
//                                         ? Colors.grey[800]!
//                                         : Colors.blue.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(16),
//                                   child: Stack(
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.all(width * 0.04),
//                                         child: Column(
//                                           children: [
//                                             Row(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 // Icon with status indicator
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                       width: width * 0.14,
//                                                       height: width * 0.14,
//                                                       decoration: BoxDecoration(
//                                                         gradient: LinearGradient(
//                                                           begin: Alignment.topLeft,
//                                                           end: Alignment.bottomRight,
//                                                           colors: isRead
//                                                               ? [Colors.grey[700]!, Colors.grey[800]!]
//                                                               : [Colors.blue, Colors.purple],
//                                                         ),
//                                                         shape: BoxShape.circle,
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: isRead
//                                                                 ? Colors.transparent
//                                                                 : Colors.blue.withOpacity(0.3),
//                                                             blurRadius: 12,
//                                                             spreadRadius: 2,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: Icon(
//                                                         isRead
//                                                             ? Icons.notifications
//                                                             : Icons.notifications_active,
//                                                         color: Colors.white,
//                                                         size: width * 0.07,
//                                                       ),
//                                                     ),
//                                                     if (!isRead)
//                                                       Positioned(
//                                                         top: 0,
//                                                         right: 0,
//                                                         child: Container(
//                                                           width: width * 0.03,
//                                                           height: width * 0.03,
//                                                           decoration: BoxDecoration(
//                                                             color: Colors.red,
//                                                             shape: BoxShape.circle,
//                                                             border: Border.all(
//                                                               color: Color(0xFF0A0A0A),
//                                                               width: 2,
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(width: width * 0.04),
//                                                 Expanded(
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Text(
//                                                               notification.headline,
//                                                               style: TextStyle(
//                                                                 color: Colors.white,
//                                                                 fontSize: width * 0.045,
//                                                                 fontWeight: FontWeight.bold,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           // Status badges
//                                                           if (isRead)
//                                                             Container(
//                                                               padding: EdgeInsets.symmetric(
//                                                                 horizontal: 8,
//                                                                 vertical: 4,
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                 color: Colors.green.withOpacity(0.2),
//                                                                 borderRadius: BorderRadius.circular(8),
//                                                                 border: Border.all(
//                                                                   color: Colors.green.withOpacity(0.5),
//                                                                 ),
//                                                               ),
//                                                               child: Row(
//                                                                 mainAxisSize: MainAxisSize.min,
//                                                                 children: [
//                                                                   Icon(
//                                                                     Icons.check_circle,
//                                                                     size: width * 0.03,
//                                                                     color: Colors.green,
//                                                                   ),
//                                                                   SizedBox(width: 4),
//                                                                   Text(
//                                                                     'Read',
//                                                                     style: TextStyle(
//                                                                       color: Colors.green,
//                                                                       fontSize: width * 0.028,
//                                                                       fontWeight: FontWeight.bold,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             )
//                                                           else if (isViewed)
//                                                             Container(
//                                                               padding: EdgeInsets.symmetric(
//                                                                 horizontal: 8,
//                                                                 vertical: 4,
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                 color: Colors.blue.withOpacity(0.2),
//                                                                 borderRadius: BorderRadius.circular(8),
//                                                                 border: Border.all(
//                                                                   color: Colors.blue.withOpacity(0.5),
//                                                                 ),
//                                                               ),
//                                                               child: Row(
//                                                                 mainAxisSize: MainAxisSize.min,
//                                                                 children: [
//                                                                   Icon(
//                                                                     Icons.visibility,
//                                                                     size: width * 0.03,
//                                                                     color: Colors.blue,
//                                                                   ),
//                                                                   SizedBox(width: 4),
//                                                                   Text(
//                                                                     'Viewed',
//                                                                     style: TextStyle(
//                                                                       color: Colors.blue,
//                                                                       fontSize: width * 0.028,
//                                                                       fontWeight: FontWeight.bold,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                         ],
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Text(
//                                                         notification.message,
//                                                         style: TextStyle(
//                                                           color: Colors.grey[300],
//                                                           fontSize: width * 0.038,
//                                                           height: 1.4,
//                                                         ),
//                                                         maxLines: 3,
//                                                         overflow: TextOverflow.ellipsis,
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Row(
//                                                         children: [
//                                                           Icon(
//                                                             Icons.access_time,
//                                                             size: width * 0.035,
//                                                             color: Colors.grey[500],
//                                                           ),
//                                                           SizedBox(width: 4),
//                                                           Text(
//                                                             timeAgo,
//                                                             style: TextStyle(
//                                                               color: Colors.grey[500],
//                                                               fontSize: width * 0.032,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(height: height * 0.015),
//                                             // Action buttons
//                                             Row(
//                                               mainAxisAlignment: MainAxisAlignment.end,
//                                               children: [
//                                                 if (isRead)
//                                                   Expanded(
//                                                     child: Container(
//                                                       padding: EdgeInsets.symmetric(vertical: height * 0.012),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.grey[800],
//                                                         borderRadius: BorderRadius.circular(10),
//                                                       ),
//                                                       child: Row(
//                                                         mainAxisAlignment: MainAxisAlignment.center,
//                                                         children: [
//                                                           Icon(
//                                                             Icons.check_circle,
//                                                             color: Colors.green,
//                                                             size: width * 0.045,
//                                                           ),
//                                                           SizedBox(width: 8),
//                                                           Text(
//                                                             'All Done',
//                                                             style: TextStyle(
//                                                               color: Colors.grey[400],
//                                                               fontSize: width * 0.038,
//                                                               fontWeight: FontWeight.w500,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                 ),
//               ],
//             );
//           }),
//         ),
//       ),
//     );
//   }

//   String _formatTimeAgo(String dateString) {
//     try {
//       final date = DateTime.parse(dateString);
//       final now = DateTime.now();
//       final difference = now.difference(date);

//       if (difference.inDays > 365) {
//         return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 30) {
//         return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 0) {
//         return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
//       } else if (difference.inHours > 0) {
//         return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
//       } else if (difference.inMinutes > 0) {
//         return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
//       } else {
//         return 'Just now';
//       }
//     } catch (e) {
//       return 'Unknown time';
//     }
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'dart:async';

// class NotificationModel {
//   final String id;
//   final String headline;
//   final String message;
//   final String? url;
//   final String status;
//   final List<String> viewedBy;
//   final List<String> readBy;
//   final String createdAt;
//   final String updatedAt;
//   final bool viewed;
//   final bool read;

//   NotificationModel({
//     required this.id,
//     required this.headline,
//     required this.message,
//     this.url,
//     required this.status,
//     required this.viewedBy,
//     required this.readBy,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.viewed,
//     required this.read,
//   });

//   factory NotificationModel.fromJson(Map<String, dynamic> json) {
//     return NotificationModel(
//       id: json['_id'] ?? '',
//       headline: json['headline'] ?? '',
//       message: json['message'] ?? '',
//       url: json['url'],
//       status: json['status'] ?? '',
//       viewedBy: List<String>.from(json['viewedBy'] ?? []),
//       readBy: List<String>.from(json['readBy'] ?? []),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       viewed: json['viewed'] ?? false,
//       read: json['read'] ?? false,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'headline': headline,
//       'message': message,
//       'url': url,
//       'status': status,
//       'viewedBy': viewedBy,
//       'readBy': readBy,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'viewed': viewed,
//       'read': read,
//     };
//   }

//   NotificationModel copyWith({
//     String? id,
//     String? headline,
//     String? message,
//     String? url,
//     String? status,
//     List<String>? viewedBy,
//     List<String>? readBy,
//     String? createdAt,
//     String? updatedAt,
//     bool? viewed,
//     bool? read,
//   }) {
//     return NotificationModel(
//       id: id ?? this.id,
//       headline: headline ?? this.headline,
//       message: message ?? this.message,
//       url: url ?? this.url,
//       status: status ?? this.status,
//       viewedBy: viewedBy ?? this.viewedBy,
//       readBy: readBy ?? this.readBy,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       viewed: viewed ?? this.viewed,
//       read: read ?? this.read,
//     );
//   }
// }

// class NotificationController extends GetxController {
//   RxList<NotificationModel> notifications = <NotificationModel>[].obs;
//   RxBool isLoading = false.obs;
//   RxString currentUserId = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   Timer? _autoMarkTimer;

//   @override
//   void onInit() {
//     super.onInit();
//     _getCurrentUserId();
//     fetchNotifications();
//     ever(notifications, (_) {
//       if (currentUserId.value.isNotEmpty && notifications.any((n) => !isRead(n))) {
//         _autoMarkTimer?.cancel();
//         _autoMarkTimer = Timer(const Duration(seconds: 1), () {
//           autoMarkAllUnreadAsRead();
//         });
//       }
//     });
//   }

//   @override
//   void onClose() {
//     _autoMarkTimer?.cancel();
//     super.onClose();
//   }

//   Future<void> autoMarkAllUnreadAsRead() async {
//     print('🤖 Auto-marking all unread notifications as read...');
//     List<String> unreadIds = notifications.where((n) => !isRead(n)).map((n) => n.id).toList();
//     for (final id in unreadIds) {
//       await markAsRead(id);
//     }
//     print('🤖 Auto-marking completed.');
//   }

//   Future<void> _getCurrentUserId() async {
//     try {
//       String? uid = await getUserId();
//       if (uid != null && uid.isNotEmpty) {
//         currentUserId.value = uid;
//         print('✅ Current User ID from prefs: $uid');
//         return;
//       }

//       // If not in prefs, fetch from API
//       print('ℹ️ User ID not in prefs, fetching from API...');
//       uid = await _fetchUserIdFromApi();
//       if (uid != null && uid.isNotEmpty) {
//         final prefs = await SharedPreferences.getInstance();
//         await prefs.setString('user_id', uid);
//         currentUserId.value = uid;
//         print('✅ Current User ID from API: $uid');
//       } else {
//         print('❌ User ID not found even from API');
//       }
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//     }
//   }

//   Future<String?> _fetchUserIdFromApi() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch user ID: No token');
//         return null;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Fetch User ID Response Status: ${response.statusCode}');
//       print('📊 Fetch User ID Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final String? userId = responseData['user']?['id'];
//         return userId;
//       } else {
//         print('❌ Failed to fetch user ID: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('❌ Error fetching user ID from API: $e');
//       return null;
//     }
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? token = prefs.getString('auth_token');
//       if (token != null) {
//         print('✅ Token retrieved: ${token.substring(0, 20)}...');
//       } else {
//         print('❌ No token found in SharedPreferences');
//       }
//       return token;
//     } catch (e) {
//       print('❌ Error getting token: $e');
//       return null;
//     }
//   }

//   Future<String?> getUserId() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? userId = prefs.getString('user_id');
//       if (userId != null) {
//         print('✅ User ID retrieved: $userId');
//       } else {
//         print('❌ No user_id found in SharedPreferences');
//       }
//       return userId;
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//       return null;
//     }
//   }

//   Future<void> fetchNotifications() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch notifications: No token');
//         return;
//       }

//       print('📡 Fetching notifications from: $baseUrl/notifications');
      
//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Notifications Response Status: ${response.statusCode}');
//       print('📊 Notifications Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final List<dynamic> data = responseData['notifications'] ?? [];
//         notifications.value = data
//             .map<NotificationModel>((json) => NotificationModel.fromJson(json))
//             .toList();
//         print('✅ Loaded ${notifications.length} notifications');
//       } else {
//         print('❌ Failed to load notifications: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching notifications: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> markAsView(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as viewed: User ID is empty');
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as viewed: No token');
//         return;
//       }

//       print('👁️ Marking notification as viewed: $notificationId');
//       print('👁️ Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].viewedBy.contains(currentUserId.value)) {
//           notifications[index] = notifications[index].copyWith(
//             viewedBy: [...notifications[index].viewedBy, currentUserId.value],
//             viewed: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as viewed');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/view';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as View Response Status: ${response.statusCode}');
//       print('📊 Mark as View Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as viewed');
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as viewed: ${response.statusCode}');
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as viewed: $e');
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   Future<void> markAsRead(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as read: User ID is empty');
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as read: No token');
//         return;
//       }

//       print('📖 Marking notification as read: $notificationId');
//       print('📖 Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].readBy.contains(currentUserId.value)) {
//           // When marking as read, also mark as viewed
//           List<String> updatedViewedBy = notifications[index].viewedBy;
//           if (!updatedViewedBy.contains(currentUserId.value)) {
//             updatedViewedBy = [...updatedViewedBy, currentUserId.value];
//           }

//           notifications[index] = notifications[index].copyWith(
//             viewedBy: updatedViewedBy,
//             readBy: [...notifications[index].readBy, currentUserId.value],
//             viewed: true,
//             read: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as read');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/read';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as Read Response Status: ${response.statusCode}');
//       print('📊 Mark as Read Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as read');
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as read: ${response.statusCode}');
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as read: $e');
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   bool isViewed(NotificationModel notification) {
//     bool viewed = currentUserId.value.isNotEmpty && 
//                   notification.viewedBy.contains(currentUserId.value);
//     return viewed;
//   }

//   bool isRead(NotificationModel notification) {
//     bool read = currentUserId.value.isNotEmpty && 
//                 notification.readBy.contains(currentUserId.value);
//     return read;
//   }

//   int getUnreadCount() {
//     return notifications.where((n) => !isRead(n)).length;
//   }
// }

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final NotificationController controller = Get.put(NotificationController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF0A0A0A),
//               Color(0xFF1A1A2E),
//               Color(0xFF0A0A0A),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: Obx(() {
//             if (controller.isLoading.value && controller.notifications.isEmpty) {
//               return Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircularProgressIndicator(
//                       color: Colors.blue,
//                       strokeWidth: 3,
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Text(
//                       'Loading notifications...',
//                       style: TextStyle(
//                         color: Colors.grey[400],
//                         fontSize: width * 0.04,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }

//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header with gradient
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: width * 0.04,
//                     vertical: height * 0.02,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Colors.blue.withOpacity(0.1),
//                         Colors.purple.withOpacity(0.05),
//                       ],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(24),
//                       bottomRight: Radius.circular(24),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GestureDetector(
//                             onTap: () => Get.back(),
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.arrow_back_ios_new,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 'Notifications',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * 0.06,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               if (controller.getUnreadCount() > 0)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 4),
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: 12,
//                                     vertical: 4,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.red,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Text(
//                                     '${controller.getUnreadCount()} new',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: width * 0.03,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               controller.fetchNotifications();
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.refresh,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: height * 0.02),
//                 Expanded(
//                   child: controller.notifications.isEmpty
//                       ? Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.notifications_off_outlined,
//                                 size: width * 0.2,
//                                 color: Colors.grey[700],
//                               ),
//                               SizedBox(height: height * 0.02),
//                               Text(
//                                 'No notifications yet',
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: width * 0.045,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * 0.01),
//                               Text(
//                                 'We\'ll notify you when something arrives',
//                                 style: TextStyle(
//                                   color: Colors.grey[600],
//                                   fontSize: width * 0.035,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       : RefreshIndicator(
//                           onRefresh: controller.fetchNotifications,
//                           color: Colors.blue,
//                           backgroundColor: Color(0xFF1A1A2E),
//                           child: ListView.builder(
//                             padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//                             itemCount: controller.notifications.length,
//                             itemBuilder: (context, index) {
//                               final notification = controller.notifications[index];
//                               final timeAgo = _formatTimeAgo(notification.createdAt);
//                               final isViewed = controller.isViewed(notification);
//                               final isRead = controller.isRead(notification);

//                               return Container(
//                                 margin: EdgeInsets.only(bottom: height * 0.015),
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topLeft,
//                                     end: Alignment.bottomRight,
//                                     colors: isRead
//                                         ? [
//                                             Colors.grey[900]!.withOpacity(0.5),
//                                             Colors.grey[850]!.withOpacity(0.5),
//                                           ]
//                                         : [
//                                             Colors.blue.withOpacity(0.15),
//                                             Colors.purple.withOpacity(0.1),
//                                           ],
//                                   ),
//                                   borderRadius: BorderRadius.circular(16),
//                                   border: Border.all(
//                                     color: isRead
//                                         ? Colors.grey[800]!
//                                         : Colors.blue.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(16),
//                                   child: Stack(
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.all(width * 0.04),
//                                         child: Column(
//                                           children: [
//                                             Row(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 // Icon with status indicator
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                       width: width * 0.14,
//                                                       height: width * 0.14,
//                                                       decoration: BoxDecoration(
//                                                         gradient: LinearGradient(
//                                                           begin: Alignment.topLeft,
//                                                           end: Alignment.bottomRight,
//                                                           colors: isRead
//                                                               ? [Colors.grey[700]!, Colors.grey[800]!]
//                                                               : [Colors.blue, Colors.purple],
//                                                         ),
//                                                         shape: BoxShape.circle,
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: isRead
//                                                                 ? Colors.transparent
//                                                                 : Colors.blue.withOpacity(0.3),
//                                                             blurRadius: 12,
//                                                             spreadRadius: 2,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: Icon(
//                                                         isRead
//                                                             ? Icons.notifications
//                                                             : Icons.notifications_active,
//                                                         color: Colors.white,
//                                                         size: width * 0.07,
//                                                       ),
//                                                     ),
//                                                     if (!isRead)
//                                                       Positioned(
//                                                         top: 0,
//                                                         right: 0,
//                                                         child: Container(
//                                                           width: width * 0.03,
//                                                           height: width * 0.03,
//                                                           decoration: BoxDecoration(
//                                                             color: Colors.red,
//                                                             shape: BoxShape.circle,
//                                                             border: Border.all(
//                                                               color: Color(0xFF0A0A0A),
//                                                               width: 2,
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(width: width * 0.04),
//                                                 Expanded(
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Text(
//                                                               notification.headline,
//                                                               style: TextStyle(
//                                                                 color: Colors.white,
//                                                                 fontSize: width * 0.045,
//                                                                 fontWeight: FontWeight.bold,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           // Status badges
//                                                           if (isRead)
//                                                             Container(
//                                                               padding: EdgeInsets.symmetric(
//                                                                 horizontal: 8,
//                                                                 vertical: 4,
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                 color: Colors.green.withOpacity(0.2),
//                                                                 borderRadius: BorderRadius.circular(8),
//                                                                 border: Border.all(
//                                                                   color: Colors.green.withOpacity(0.5),
//                                                                 ),
//                                                               ),
//                                                               child: Row(
//                                                                 mainAxisSize: MainAxisSize.min,
//                                                                 children: [
//                                                                   Icon(
//                                                                     Icons.check_circle,
//                                                                     size: width * 0.03,
//                                                                     color: Colors.green,
//                                                                   ),
//                                                                   SizedBox(width: 4),
//                                                                   Text(
//                                                                     'Read',
//                                                                     style: TextStyle(
//                                                                       color: Colors.green,
//                                                                       fontSize: width * 0.028,
//                                                                       fontWeight: FontWeight.bold,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             )
//                                                           else if (isViewed)
//                                                             Container(
//                                                               padding: EdgeInsets.symmetric(
//                                                                 horizontal: 8,
//                                                                 vertical: 4,
//                                                               ),
//                                                               decoration: BoxDecoration(
//                                                                 color: Colors.blue.withOpacity(0.2),
//                                                                 borderRadius: BorderRadius.circular(8),
//                                                                 border: Border.all(
//                                                                   color: Colors.blue.withOpacity(0.5),
//                                                                 ),
//                                                               ),
//                                                               child: Row(
//                                                                 mainAxisSize: MainAxisSize.min,
//                                                                 children: [
//                                                                   Icon(
//                                                                     Icons.visibility,
//                                                                     size: width * 0.03,
//                                                                     color: Colors.blue,
//                                                                   ),
//                                                                   SizedBox(width: 4),
//                                                                   Text(
//                                                                     'Viewed',
//                                                                     style: TextStyle(
//                                                                       color: Colors.blue,
//                                                                       fontSize: width * 0.028,
//                                                                       fontWeight: FontWeight.bold,
//                                                                     ),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                         ],
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Text(
//                                                         notification.message,
//                                                         style: TextStyle(
//                                                           color: Colors.grey[300],
//                                                           fontSize: width * 0.038,
//                                                           height: 1.4,
//                                                         ),
//                                                         maxLines: 3,
//                                                         overflow: TextOverflow.ellipsis,
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Row(
//                                                         children: [
//                                                           Icon(
//                                                             Icons.access_time,
//                                                             size: width * 0.035,
//                                                             color: Colors.grey[500],
//                                                           ),
//                                                           SizedBox(width: 4),
//                                                           Text(
//                                                             timeAgo,
//                                                             style: TextStyle(
//                                                               color: Colors.grey[500],
//                                                               fontSize: width * 0.032,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                             SizedBox(height: height * 0.015),
//                                             // Action buttons
//                                             Row(
//                                               mainAxisAlignment: MainAxisAlignment.end,
//                                               children: [
//                                                 if (isRead)
//                                                   Expanded(
//                                                     child: Container(
//                                                       padding: EdgeInsets.symmetric(vertical: height * 0.012),
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.grey[800],
//                                                         borderRadius: BorderRadius.circular(10),
//                                                       ),
//                                                       child: Row(
//                                                         mainAxisAlignment: MainAxisAlignment.center,
//                                                         children: [
//                                                           Icon(
//                                                             Icons.check_circle,
//                                                             color: Colors.green,
//                                                             size: width * 0.045,
//                                                           ),
//                                                           SizedBox(width: 8),
//                                                           Text(
//                                                             'All Done',
//                                                             style: TextStyle(
//                                                               color: Colors.grey[400],
//                                                               fontSize: width * 0.038,
//                                                               fontWeight: FontWeight.w500,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                 ),
//               ],
//             );
//           }),
//         ),
//       ),
//     );
//   }

//   String _formatTimeAgo(String dateString) {
//     try {
//       final date = DateTime.parse(dateString);
//       final now = DateTime.now();
//       final difference = now.difference(date);

//       if (difference.inDays > 365) {
//         return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 30) {
//         return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 0) {
//         return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
//       } else if (difference.inHours > 0) {
//         return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
//       } else if (difference.inMinutes > 0) {
//         return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
//       } else {
//         return 'Just now';
//       }
//     } catch (e) {
//       return 'Unknown time';
//     }
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:intl/intl.dart';
// import 'dart:async';

// class NotificationModel {
//   final String id;
//   final String headline;
//   final String message;
//   final String? url;
//   final String status;
//   final List<String> viewedBy;
//   final List<String> readBy;
//   final String createdAt;
//   final String updatedAt;
//   final bool viewed;
//   final bool read;

//   NotificationModel({
//     required this.id,
//     required this.headline,
//     required this.message,
//     this.url,
//     required this.status,
//     required this.viewedBy,
//     required this.readBy,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.viewed,
//     required this.read,
//   });

//   factory NotificationModel.fromJson(Map<String, dynamic> json) {
//     return NotificationModel(
//       id: json['_id'] ?? '',
//       headline: json['headline'] ?? '',
//       message: json['message'] ?? '',
//       url: json['url'],
//       status: json['status'] ?? '',
//       viewedBy: List<String>.from(json['viewedBy'] ?? []),
//       readBy: List<String>.from(json['readBy'] ?? []),
//       createdAt: json['createdAt'] ?? '',
//       updatedAt: json['updatedAt'] ?? '',
//       viewed: json['viewed'] ?? false,
//       read: json['read'] ?? false,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'headline': headline,
//       'message': message,
//       'url': url,
//       'status': status,
//       'viewedBy': viewedBy,
//       'readBy': readBy,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'viewed': viewed,
//       'read': read,
//     };
//   }

//   NotificationModel copyWith({
//     String? id,
//     String? headline,
//     String? message,
//     String? url,
//     String? status,
//     List<String>? viewedBy,
//     List<String>? readBy,
//     String? createdAt,
//     String? updatedAt,
//     bool? viewed,
//     bool? read,
//   }) {
//     return NotificationModel(
//       id: id ?? this.id,
//       headline: headline ?? this.headline,
//       message: message ?? this.message,
//       url: url ?? this.url,
//       status: status ?? this.status,
//       viewedBy: viewedBy ?? this.viewedBy,
//       readBy: readBy ?? this.readBy,
//       createdAt: createdAt ?? this.createdAt,
//       updatedAt: updatedAt ?? this.updatedAt,
//       viewed: viewed ?? this.viewed,
//       read: read ?? this.read,
//     );
//   }
// }

// class NotificationController extends GetxController {
//   RxList<NotificationModel> notifications = <NotificationModel>[].obs;
//   RxBool isLoading = false.obs;
//   RxString currentUserId = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   Timer? _autoMarkTimer;

//   @override
//   void onInit() {
//     super.onInit();
//     _getCurrentUserId();
//     fetchNotifications();
//     ever(notifications, (_) {
//       if (currentUserId.value.isNotEmpty && notifications.any((n) => !isRead(n))) {
//         _autoMarkTimer?.cancel();
//         _autoMarkTimer = Timer(const Duration(seconds: 1), () {
//           autoMarkAllUnreadAsRead();
//         });
//       }
//     });
//   }

//   @override
//   void onClose() {
//     _autoMarkTimer?.cancel();
//     super.onClose();
//   }

//   Future<void> autoMarkAllUnreadAsRead() async {
//     print('🤖 Auto-marking all unread notifications as read...');
//     List<String> unreadIds = notifications.where((n) => !isRead(n)).map((n) => n.id).toList();
//     for (final id in unreadIds) {
//       await markAsRead(id);
//     }
//     print('🤖 Auto-marking completed.');
//   }

//   Future<void> _getCurrentUserId() async {
//     try {
//       String? uid = await getUserId();
//       if (uid != null && uid.isNotEmpty) {
//         currentUserId.value = uid;
//         print('✅ Current User ID from prefs: $uid');
//         return;
//       }

//       // If not in prefs, fetch from API
//       print('ℹ️ User ID not in prefs, fetching from API...');
//       uid = await _fetchUserIdFromApi();
//       if (uid != null && uid.isNotEmpty) {
//         final prefs = await SharedPreferences.getInstance();
//         await prefs.setString('user_id', uid);
//         currentUserId.value = uid;
//         print('✅ Current User ID from API: $uid');
//       } else {
//         print('❌ User ID not found even from API');
//       }
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//     }
//   }

//   Future<String?> _fetchUserIdFromApi() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch user ID: No token');
//         return null;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/auth/me'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Fetch User ID Response Status: ${response.statusCode}');
//       print('📊 Fetch User ID Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final String? userId = responseData['user']?['id'];
//         return userId;
//       } else {
//         print('❌ Failed to fetch user ID: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('❌ Error fetching user ID from API: $e');
//       return null;
//     }
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? token = prefs.getString('auth_token');
//       if (token != null) {
//         print('✅ Token retrieved: ${token.substring(0, 20)}...');
//       } else {
//         print('❌ No token found in SharedPreferences');
//       }
//       return token;
//     } catch (e) {
//       print('❌ Error getting token: $e');
//       return null;
//     }
//   }

//   Future<String?> getUserId() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       String? userId = prefs.getString('user_id');
//       if (userId != null) {
//         print('✅ User ID retrieved: $userId');
//       } else {
//         print('❌ No user_id found in SharedPreferences');
//       }
//       return userId;
//     } catch (e) {
//       print('❌ Error getting user ID: $e');
//       return null;
//     }
//   }

//   Future<void> fetchNotifications() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot fetch notifications: No token');
//         return;
//       }

//       print('📡 Fetching notifications from: $baseUrl/notifications');
      
//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Notifications Response Status: ${response.statusCode}');
//       print('📊 Notifications Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> responseData = jsonDecode(response.body);
//         final List<dynamic> data = responseData['notifications'] ?? [];
//         notifications.value = data
//             .map<NotificationModel>((json) => NotificationModel.fromJson(json))
//             .toList();
//         print('✅ Loaded ${notifications.length} notifications');
//       } else {
//         print('❌ Failed to load notifications: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching notifications: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> markAsView(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as viewed: User ID is empty');
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as viewed: No token');
//         return;
//       }

//       print('👁️ Marking notification as viewed: $notificationId');
//       print('👁️ Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].viewedBy.contains(currentUserId.value)) {
//           notifications[index] = notifications[index].copyWith(
//             viewedBy: [...notifications[index].viewedBy, currentUserId.value],
//             viewed: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as viewed');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/view';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as View Response Status: ${response.statusCode}');
//       print('📊 Mark as View Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as viewed');
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as viewed: ${response.statusCode}');
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as viewed: $e');
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   Future<void> markAsRead(String notificationId) async {
//     if (currentUserId.value.isEmpty) {
//       print('❌ Cannot mark as read: User ID is empty');
//       return;
//     }

//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('❌ Cannot mark as read: No token');
//         return;
//       }

//       print('📖 Marking notification as read: $notificationId');
//       print('📖 Current User ID: ${currentUserId.value}');

//       // Optimistically update UI
//       int index = notifications.indexWhere((n) => n.id == notificationId);
//       if (index != -1) {
//         if (!notifications[index].readBy.contains(currentUserId.value)) {
//           // When marking as read, also mark as viewed
//           List<String> updatedViewedBy = notifications[index].viewedBy;
//           if (!updatedViewedBy.contains(currentUserId.value)) {
//             updatedViewedBy = [...updatedViewedBy, currentUserId.value];
//           }

//           notifications[index] = notifications[index].copyWith(
//             viewedBy: updatedViewedBy,
//             readBy: [...notifications[index].readBy, currentUserId.value],
//             viewed: true,
//             read: true,
//           );
//           notifications.refresh();
//           print('✅ UI updated optimistically');
//         } else {
//           print('ℹ️ Already marked as read');
//         }
//       }

//       final url = '$baseUrl/notifications/$notificationId/read';
//       print('📡 POST Request URL: $url');

//       final response = await http.post(
//         Uri.parse(url),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📊 Mark as Read Response Status: ${response.statusCode}');
//       print('📊 Mark as Read Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         print('✅ Successfully marked as read');
//         // Refresh to get updated data from server
//         await fetchNotifications();
//       } else {
//         print('❌ Failed to mark as read: ${response.statusCode}');
//         // Revert optimistic update
//         await fetchNotifications();
//       }
//     } catch (e) {
//       print('❌ Error marking as read: $e');
//       // Revert optimistic update
//       await fetchNotifications();
//     }
//   }

//   bool isViewed(NotificationModel notification) {
//     bool viewed = currentUserId.value.isNotEmpty && 
//                   notification.viewedBy.contains(currentUserId.value);
//     return viewed;
//   }

//   bool isRead(NotificationModel notification) {
//     bool read = currentUserId.value.isNotEmpty && 
//                 notification.readBy.contains(currentUserId.value);
//     return read;
//   }

//   int getUnreadCount() {
//     return notifications.where((n) => !isRead(n)).length;
//   }
// }

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final NotificationController controller = Get.put(NotificationController());
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFF0A0A0A),
//               Color(0xFF1A1A2E),
//               Color(0xFF0A0A0A),
//             ],
//           ),
//         ),
//         child: SafeArea(
//           child: Obx(() {
//             if (controller.isLoading.value && controller.notifications.isEmpty) {
//               return Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CircularProgressIndicator(
//                       color: Colors.blue,
//                       strokeWidth: 3,
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Text(
//                       'Loading notifications...',
//                       style: TextStyle(
//                         color: Colors.grey[400],
//                         fontSize: width * 0.04,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             }

//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header with gradient
//                 Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: width * 0.04,
//                     vertical: height * 0.02,
//                   ),
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Colors.blue.withOpacity(0.1),
//                         Colors.purple.withOpacity(0.05),
//                       ],
//                     ),
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(24),
//                       bottomRight: Radius.circular(24),
//                     ),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           GestureDetector(
//                             onTap: () => Get.back(),
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.arrow_back_ios_new,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 'Notifications',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * 0.06,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               if (controller.getUnreadCount() > 0)
//                                 Container(
//                                   margin: EdgeInsets.only(top: 4),
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: 12,
//                                     vertical: 4,
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.red,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Text(
//                                     '${controller.getUnreadCount()} new',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: width * 0.03,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               controller.fetchNotifications();
//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(width * 0.02),
//                               decoration: BoxDecoration(
//                                 color: Colors.white.withOpacity(0.1),
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                               child: Icon(
//                                 Icons.refresh,
//                                 color: Colors.white,
//                                 size: width * 0.05,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: height * 0.02),
//                 Expanded(
//                   child: controller.notifications.isEmpty
//                       ? Center(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Icon(
//                                 Icons.notifications_off_outlined,
//                                 size: width * 0.2,
//                                 color: Colors.grey[700],
//                               ),
//                               SizedBox(height: height * 0.02),
//                               Text(
//                                 'No notifications yet',
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: width * 0.045,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * 0.01),
//                               Text(
//                                 'We\'ll notify you when something arrives',
//                                 style: TextStyle(
//                                   color: Colors.grey[600],
//                                   fontSize: width * 0.035,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       : RefreshIndicator(
//                           onRefresh: controller.fetchNotifications,
//                           color: Colors.blue,
//                           backgroundColor: Color(0xFF1A1A2E),
//                           child: ListView.builder(
//                             padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//                             itemCount: controller.notifications.length,
//                             itemBuilder: (context, index) {
//                               final notification = controller.notifications[index];
//                               final timeAgo = _formatTimeAgo(notification.createdAt);
//                               final isViewed = controller.isViewed(notification);
//                               final isRead = controller.isRead(notification);

//                               return Container(
//                                 margin: EdgeInsets.only(bottom: height * 0.015),
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topLeft,
//                                     end: Alignment.bottomRight,
//                                     colors: isRead
//                                         ? [
//                                             Colors.grey[900]!.withOpacity(0.5),
//                                             Colors.grey[850]!.withOpacity(0.5),
//                                           ]
//                                         : [
//                                             Colors.blue.withOpacity(0.15),
//                                             Colors.purple.withOpacity(0.1),
//                                           ],
//                                   ),
//                                   borderRadius: BorderRadius.circular(16),
//                                   border: Border.all(
//                                     color: isRead
//                                         ? Colors.grey[800]!
//                                         : Colors.blue.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(16),
//                                   child: Stack(
//                                     children: [
//                                       Padding(
//                                         padding: EdgeInsets.all(width * 0.04),
//                                         child: Column(
//                                           children: [
//                                             Row(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 // Icon with status indicator
//                                                 Stack(
//                                                   children: [
//                                                     Container(
//                                                       width: width * 0.14,
//                                                       height: width * 0.14,
//                                                       decoration: BoxDecoration(
//                                                         gradient: LinearGradient(
//                                                           begin: Alignment.topLeft,
//                                                           end: Alignment.bottomRight,
//                                                           colors: isRead
//                                                               ? [Colors.grey[700]!, Colors.grey[800]!]
//                                                               : [Colors.blue, Colors.purple],
//                                                         ),
//                                                         shape: BoxShape.circle,
//                                                         boxShadow: [
//                                                           BoxShadow(
//                                                             color: isRead
//                                                                 ? Colors.transparent
//                                                                 : Colors.blue.withOpacity(0.3),
//                                                             blurRadius: 12,
//                                                             spreadRadius: 2,
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       child: Icon(
//                                                         isRead
//                                                             ? Icons.notifications
//                                                             : Icons.notifications_active,
//                                                         color: Colors.white,
//                                                         size: width * 0.07,
//                                                       ),
//                                                     ),
//                                                     if (!isRead)
//                                                       Positioned(
//                                                         top: 0,
//                                                         right: 0,
//                                                         child: Container(
//                                                           width: width * 0.03,
//                                                           height: width * 0.03,
//                                                           decoration: BoxDecoration(
//                                                             color: Colors.red,
//                                                             shape: BoxShape.circle,
//                                                             border: Border.all(
//                                                               color: Color(0xFF0A0A0A),
//                                                               width: 2,
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(width: width * 0.04),
//                                                 Expanded(
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Row(
//                                                         children: [
//                                                           Expanded(
//                                                             child: Text(
//                                                               notification.headline,
//                                                               style: TextStyle(
//                                                                 color: Colors.white,
//                                                                 fontSize: width * 0.045,
//                                                                 fontWeight: FontWeight.bold,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           // Double tick for read notifications
//                                                           if (isRead)
//                                                             Icon(
//                                                               Icons.done_all,
//                                                               color: Colors.blue,
//                                                               size: width * 0.05,
//                                                             ),
//                                                         ],
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Text(
//                                                         notification.message,
//                                                         style: TextStyle(
//                                                           color: Colors.grey[300],
//                                                           fontSize: width * 0.038,
//                                                           height: 1.4,
//                                                         ),
//                                                         maxLines: 3,
//                                                         overflow: TextOverflow.ellipsis,
//                                                       ),
//                                                       SizedBox(height: height * 0.008),
//                                                       Row(
//                                                         children: [
//                                                           Icon(
//                                                             Icons.access_time,
//                                                             size: width * 0.035,
//                                                             color: Colors.grey[500],
//                                                           ),
//                                                           SizedBox(width: 4),
//                                                           Text(
//                                                             timeAgo,
//                                                             style: TextStyle(
//                                                               color: Colors.grey[500],
//                                                               fontSize: width * 0.032,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                 ),
//               ],
//             );
//           }),
//         ),
//       ),
//     );
//   }

//   String _formatTimeAgo(String dateString) {
//     try {
//       final date = DateTime.parse(dateString);
//       final now = DateTime.now();
//       final difference = now.difference(date);

//       if (difference.inDays > 365) {
//         return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 30) {
//         return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
//       } else if (difference.inDays > 0) {
//         return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
//       } else if (difference.inHours > 0) {
//         return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
//       } else if (difference.inMinutes > 0) {
//         return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
//       } else {
//         return 'Just now';
//       }
//     } catch (e) {
//       return 'Unknown time';
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class NotificationModel {
  final String id;
  final String headline;
  final String message;
  final String? url;
  final String status;
  final List<String> viewedBy;
  final List<String> readBy;
  final String createdAt;
  final String updatedAt;
  final bool viewed;
  final bool read;

  NotificationModel({
    required this.id,
    required this.headline,
    required this.message,
    this.url,
    required this.status,
    required this.viewedBy,
    required this.readBy,
    required this.createdAt,
    required this.updatedAt,
    required this.viewed,
    required this.read,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['_id'] ?? '',
      headline: json['headline'] ?? '',
      message: json['message'] ?? '',
      url: json['url'],
      status: json['status'] ?? '',
      viewedBy: List<String>.from(json['viewedBy'] ?? []),
      readBy: List<String>.from(json['readBy'] ?? []),
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      viewed: json['viewed'] ?? false,
      read: json['read'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'headline': headline,
      'message': message,
      'url': url,
      'status': status,
      'viewedBy': viewedBy,
      'readBy': readBy,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'viewed': viewed,
      'read': read,
    };
  }

  NotificationModel copyWith({
    String? id,
    String? headline,
    String? message,
    String? url,
    String? status,
    List<String>? viewedBy,
    List<String>? readBy,
    String? createdAt,
    String? updatedAt,
    bool? viewed,
    bool? read,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      headline: headline ?? this.headline,
      message: message ?? this.message,
      url: url ?? this.url,
      status: status ?? this.status,
      viewedBy: viewedBy ?? this.viewedBy,
      readBy: readBy ?? this.readBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      viewed: viewed ?? this.viewed,
      read: read ?? this.read,
    );
  }
}

class NotificationController extends GetxController {
  RxList<NotificationModel> notifications = <NotificationModel>[].obs;
  RxBool isLoading = false.obs;
  RxString currentUserId = ''.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  Timer? _autoMarkTimer;

  @override
  void onInit() {
    super.onInit();
    _getCurrentUserId();
    fetchNotifications();
    
    ever(notifications, (_) {
      if (currentUserId.value.isNotEmpty && notifications.any((n) => !isRead(n))) {
        _autoMarkTimer?.cancel();
        _autoMarkTimer = Timer(const Duration(seconds: 1), () {
          autoMarkAllUnreadAsRead();
        });
      }
    });
  }

  @override
  void onClose() {
    _autoMarkTimer?.cancel();
    super.onClose();
  }

  Future<void> autoMarkAllUnreadAsRead() async {
    print('🤖 Auto-marking all unread notifications as read...');
    List<String> unreadIds = notifications.where((n) => !isRead(n)).map((n) => n.id).toList();
    for (final id in unreadIds) {
      await markAsRead(id);
    }
    print('🤖 Auto-marking completed.');
  }

  Future<void> _getCurrentUserId() async {
    try {
      String? uid = await getUserId();
      if (uid != null && uid.isNotEmpty) {
        currentUserId.value = uid;
        print('✅ Current User ID from prefs: $uid');
        return;
      }

      print('ℹ️ User ID not in prefs, fetching from API...');
      uid = await _fetchUserIdFromApi();
      if (uid != null && uid.isNotEmpty) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_id', uid);
        currentUserId.value = uid;
        print('✅ Current User ID from API: $uid');
      } else {
        print('❌ User ID not found even from API');
      }
    } catch (e) {
      print('❌ Error getting user ID: $e');
    }
  }

  Future<String?> _fetchUserIdFromApi() async {
    try {
      String? token = await getToken();
      if (token == null) {
        print('❌ Cannot fetch user ID: No token');
        return null;
      }

      final response = await http.get(
        Uri.parse('$baseUrl/auth/me'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('📊 Fetch User ID Response Status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final String? userId = responseData['user']?['id'];
        return userId;
      } else {
        print('❌ Failed to fetch user ID: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('❌ Error fetching user ID from API: $e');
      return null;
    }
  }

  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('auth_token');
      if (token != null) {
        print('✅ Token retrieved: ${token.substring(0, 20)}...');
      } else {
        print('❌ No token found in SharedPreferences');
      }
      return token;
    } catch (e) {
      print('❌ Error getting token: $e');
      return null;
    }
  }

  Future<String?> getUserId() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? userId = prefs.getString('user_id');
      if (userId != null) {
        print('✅ User ID retrieved: $userId');
      } else {
        print('❌ No user_id found in SharedPreferences');
      }
      return userId;
    } catch (e) {
      print('❌ Error getting user ID: $e');
      return null;
    }
  }

  Future<void> fetchNotifications() async {
    isLoading.value = true;
    try {
      String? token = await getToken();
      if (token == null) {
        print('❌ Cannot fetch notifications: No token');
        return;
      }

      print('📡 Fetching notifications from: $baseUrl/notifications');
      
      final response = await http.get(
        Uri.parse('$baseUrl/notifications'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('📊 Notifications Response Status: ${response.statusCode}');
      print('📊 Notifications Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);
        final List<dynamic> data = responseData['notifications'] ?? [];
        
        notifications.value = data
            .map<NotificationModel>((json) => NotificationModel.fromJson(json))
            .toList();
        
        print('✅ Loaded ${notifications.length} notifications');
      } else {
        print('❌ Failed to load notifications: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Error fetching notifications: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> markAsView(String notificationId) async {
    if (currentUserId.value.isEmpty) {
      print('❌ Cannot mark as viewed: User ID is empty');
      return;
    }

    try {
      String? token = await getToken();
      if (token == null) {
        print('❌ Cannot mark as viewed: No token');
        return;
      }

      print('👁️ Marking notification as viewed: $notificationId');
      print('👁️ Current User ID: ${currentUserId.value}');

      // Optimistically update UI
      int index = notifications.indexWhere((n) => n.id == notificationId);
      if (index != -1) {
        if (!notifications[index].viewedBy.contains(currentUserId.value)) {
          notifications[index] = notifications[index].copyWith(
            viewedBy: [...notifications[index].viewedBy, currentUserId.value],
            viewed: true,
          );
          notifications.refresh();
          print('✅ UI updated optimistically');
        } else {
          print('ℹ️ Already marked as viewed');
        }
      }

      final url = '$baseUrl/notifications/$notificationId/view';
      print('📡 POST Request URL: $url');

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('📊 Mark as View Response Status: ${response.statusCode}');
      print('📊 Mark as View Response Body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('✅ Successfully marked as viewed');
        // Refresh to get updated data from server
        await fetchNotifications();
      } else {
        print('❌ Failed to mark as viewed: ${response.statusCode}');
        // Revert optimistic update
        await fetchNotifications();
      }
    } catch (e) {
      print('❌ Error marking as viewed: $e');
      // Revert optimistic update
      await fetchNotifications();
    }
  }

  Future<void> markAsRead(String notificationId) async {
    if (currentUserId.value.isEmpty) {
      print('❌ Cannot mark as read: User ID is empty');
      return;
    }

    try {
      String? token = await getToken();
      if (token == null) {
        print('❌ Cannot mark as read: No token');
        return;
      }

      print('📖 Marking notification as read: $notificationId');
      print('📖 Current User ID: ${currentUserId.value}');

      // Optimistically update UI
      int index = notifications.indexWhere((n) => n.id == notificationId);
      if (index != -1) {
        if (!notifications[index].readBy.contains(currentUserId.value)) {
          // When marking as read, also mark as viewed
          List<String> updatedViewedBy = notifications[index].viewedBy;
          if (!updatedViewedBy.contains(currentUserId.value)) {
            updatedViewedBy = [...updatedViewedBy, currentUserId.value];
          }

          notifications[index] = notifications[index].copyWith(
            viewedBy: updatedViewedBy,
            readBy: [...notifications[index].readBy, currentUserId.value],
            viewed: true,
            read: true,
          );
          notifications.refresh();
          print('✅ UI updated optimistically');
        } else {
          print('ℹ️ Already marked as read');
        }
      }

      final url = '$baseUrl/notifications/$notificationId/read';
      print('📡 POST Request URL: $url');

      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('📊 Mark as Read Response Status: ${response.statusCode}');
      print('📊 Mark as Read Response Body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('✅ Successfully marked as read');
        // Refresh to get updated data from server
        await fetchNotifications();
      } else {
        print('❌ Failed to mark as read: ${response.statusCode}');
        // Revert optimistic update
        await fetchNotifications();
      }
    } catch (e) {
      print('❌ Error marking as read: $e');
      // Revert optimistic update
      await fetchNotifications();
    }
  }

  bool isViewed(NotificationModel notification) {
    bool viewed = currentUserId.value.isNotEmpty && 
                  notification.viewedBy.contains(currentUserId.value);
    return viewed;
  }

  bool isRead(NotificationModel notification) {
    bool read = currentUserId.value.isNotEmpty && 
                notification.readBy.contains(currentUserId.value);
    return read;
  }

  int getUnreadCount() {
    return notifications.where((n) => !isRead(n)).length;
  }
}

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationController controller = Get.put(NotificationController());
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0A0A0A),
              Color(0xFF1A1A2E),
              Color(0xFF0A0A0A),
            ],
          ),
        ),
        child: SafeArea(
          child: Obx(() {
            if (controller.isLoading.value && controller.notifications.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Colors.blue,
                      strokeWidth: 3,
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      'Loading notifications...',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: width * 0.04,
                      ),
                    ),
                  ],
                ),
              );
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with gradient
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.02,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.withOpacity(0.1),
                        Colors.purple.withOpacity(0.05),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: Container(
                              padding: EdgeInsets.all(width * 0.02),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                                size: width * 0.05,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                'Notifications',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.06,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (controller.getUnreadCount() > 0)
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    '${controller.getUnreadCount()} new',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width * 0.03,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.fetchNotifications();
                            },
                            child: Container(
                              padding: EdgeInsets.all(width * 0.02),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                Icons.refresh,
                                color: Colors.white,
                                size: width * 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Expanded(
                  child: controller.notifications.isEmpty
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.notifications_off_outlined,
                                size: width * 0.2,
                                color: Colors.grey[700],
                              ),
                              SizedBox(height: height * 0.02),
                              Text(
                                'No notifications yet',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              Text(
                                'We\'ll notify you when something arrives',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: width * 0.035,
                                ),
                              ),
                            ],
                          ),
                        )
                      : RefreshIndicator(
                          onRefresh: controller.fetchNotifications,
                          color: Colors.blue,
                          backgroundColor: Color(0xFF1A1A2E),
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                            itemCount: controller.notifications.length,
                            itemBuilder: (context, index) {
                              final notification = controller.notifications[index];
                              final timeAgo = _formatTimeAgo(notification.createdAt);
                              final isViewed = controller.isViewed(notification);
                              final isRead = controller.isRead(notification);

                              return Container(
                                margin: EdgeInsets.only(bottom: height * 0.015),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: isRead
                                        ? [
                                            Colors.grey[900]!.withOpacity(0.5),
                                            Colors.grey[850]!.withOpacity(0.5),
                                          ]
                                        : [
                                            Colors.blue.withOpacity(0.15),
                                            Colors.purple.withOpacity(0.1),
                                          ],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    color: isRead
                                        ? Colors.grey[800]!
                                        : Colors.blue.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Padding(
                                    padding: EdgeInsets.all(width * 0.04),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        // Icon with status indicator
                                        Stack(
                                          children: [
                                            Container(
                                              width: width * 0.14,
                                              height: width * 0.14,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: isRead
                                                      ? [Colors.grey[700]!, Colors.grey[800]!]
                                                      : [Colors.blue, Colors.purple],
                                                ),
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: isRead
                                                        ? Colors.transparent
                                                        : Colors.blue.withOpacity(0.3),
                                                    blurRadius: 12,
                                                    spreadRadius: 2,
                                                  ),
                                                ],
                                              ),
                                              child: Icon(
                                                isRead
                                                    ? Icons.notifications
                                                    : Icons.notifications_active,
                                                color: Colors.white,
                                                size: width * 0.07,
                                              ),
                                            ),
                                            if (!isRead)
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: Container(
                                                  width: width * 0.03,
                                                  height: width * 0.03,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFF0A0A0A),
                                                      width: 2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                        SizedBox(width: width * 0.04),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      notification.headline,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: width * 0.045,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  // Double tick for read notifications
                                                  if (isRead)
                                                    Icon(
                                                      Icons.done_all,
                                                      color: Colors.blue,
                                                      size: width * 0.05,
                                                    ),
                                                ],
                                              ),
                                              SizedBox(height: height * 0.008),
                                              Text(
                                                notification.message,
                                                style: TextStyle(
                                                  color: Colors.grey[300],
                                                  fontSize: width * 0.038,
                                                  height: 1.4,
                                                ),
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              SizedBox(height: height * 0.008),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    size: width * 0.035,
                                                    color: Colors.grey[500],
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    timeAgo,
                                                    style: TextStyle(
                                                      color: Colors.grey[500],
                                                      fontSize: width * 0.032,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  String _formatTimeAgo(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      final now = DateTime.now();
      final difference = now.difference(date);

      if (difference.inDays > 365) {
        return '${(difference.inDays / 365).floor()} year${(difference.inDays / 365).floor() > 1 ? 's' : ''} ago';
      } else if (difference.inDays > 30) {
        return '${(difference.inDays / 30).floor()} month${(difference.inDays / 30).floor() > 1 ? 's' : ''} ago';
      } else if (difference.inDays > 0) {
        return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
      } else if (difference.inHours > 0) {
        return '${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago';
      } else if (difference.inMinutes > 0) {
        return '${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago';
      } else {
        return 'Just now';
      }
    } catch (e) {
      return 'Unknown time';
    }
  }
}