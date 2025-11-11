
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

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

// // Razorpay Order Model
// class RazorpayOrder {
//   final String id;
//   final int amount;
//   final String currency;

//   RazorpayOrder({
//     required this.id,
//     required this.amount,
//     required this.currency,
//   });

//   factory RazorpayOrder.fromJson(Map<String, dynamic> json) {
//     return RazorpayOrder(
//       id: json['id'] ?? '',
//       amount: json['amount'] ?? 0,
//       currency: json['currency'] ?? 'INR',
//     );
//   }
// }

// // User Profile Model
// class UserProfile {
//   final String id;
//   final String name;
//   final String email;
//   final String mobile;
//   final String status;
//   final bool emailVerified;
//   final String subscriptionStatus;
//   final bool hasAllAccess;
//   final List<dynamic> episodeSubscriptions;
//   final String? accessUntil;
//   final String? lastLoginAt;

//   UserProfile({
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

//   factory UserProfile.fromJson(Map<String, dynamic> json) {
//     return UserProfile(
//       id: json['id'] ?? '',
//       name: json['name'] ?? '',
//       email: json['email'] ?? '',
//       mobile: json['mobile'] ?? '',
//       status: json['status'] ?? '',
//       emailVerified: json['emailVerified'] ?? false,
//       subscriptionStatus: json['subscriptionStatus'] ?? 'none',
//       hasAllAccess: json['hasAllAccess'] ?? false,
//       episodeSubscriptions: json['episodeSubscriptions'] ?? [],
//       accessUntil: json['accessUntil']?.toString(),
//       lastLoginAt: json['lastLoginAt']?.toString(),
//     );
//   }
// }

// // Controller for Subscription Management
// class SubscriptionController extends GetxController {
//   RxBool hasSubscription = false.obs;
//   RxString currentPlan = 'None'.obs;
//   RxString expiryDate = ''.obs;
//   Rx<SubscriptionPlan?> selectedPlan = Rx<SubscriptionPlan?>(null);
//   RxList<SubscriptionPlan> availablePlans = <SubscriptionPlan>[].obs;
//   RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
//   RxList<String> videoOptions = <String>[].obs;
//   RxString selectedVideoOption = ''.obs;
//   RxBool isLoadingVideos = false.obs;
//   RxBool videoLoadError = false.obs;
//   RxBool isLoadingPayment = false.obs;
//   RxString lastOrderId = ''.obs;
//   RxInt lastOrderAmount = 0.obs;
//   RxBool showWelcomeSnackbar = false.obs;

//   late Razorpay _razorpay;

//   static const String razorpayKeyId = 'rzp_test_Ebu4VH55Q04q13';

//   final String createOrderUrl = 'https://spottt.codifyinstitute.org/api/v1/subscriptions/order/by-episode-name';
//   final String webhookUrl = 'https://spottt.codifyinstitute.org/api/v1/subscriptions/webhook';
//   final String profileUrl = 'https://spottt.codifyinstitute.org/api/v1/auth/me';
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     _razorpay = Razorpay();
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//     checkSubscription();
//     fetchPlans();
//     fetchMySubscriptions();
//     _checkForWelcomeMessage();
//   }

//   Future<void> _checkForWelcomeMessage() async {
//     final prefs = await SharedPreferences.getInstance();
//     final showWelcome = prefs.getBool('show_welcome_after_payment') ?? false;
//     if (showWelcome && hasSubscription.value && currentPlan.value != 'None') {
//       showWelcomeSnackbar.value = true;
//       prefs.remove('show_welcome_after_payment');
//       Get.snackbar(
//         'Welcome Back! 🎉',
//         'Your subscription is active. Enjoy ${currentPlan.value}!',
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//         duration: const Duration(seconds: 3),
//       );
//     }
//   }

//   @override
//   void onClose() {
//     _razorpay.clear();
//     super.onClose();
//   }

//   // Check if a specific plan is already active
//   bool isPlanActive(SubscriptionPlan plan) {
//     final isFullPlan = plan.title.toLowerCase().contains('full') ||
//                        plan.title.toLowerCase().contains('all') ||
//                        plan.title.toLowerCase().contains('monthly');
    
//     if (isFullPlan) {
//       // For full/monthly plans, check if any active subscription exists with same plan code
//       return mySubscriptions.any((sub) => 
//         sub.isActive && 
//         sub.plan.code == plan.code
//       );
//     }
    
//     // For per-episode plans, we'll check during episode selection
//     return false;
//   }

//   // Check if a specific episode is already subscribed
//   bool isEpisodeSubscribed(String episodeName) {
//     return mySubscriptions.any((sub) => 
//       sub.isActive && 
//       sub.episodeName == episodeName
//     );
//   }

//   // Get active subscription for a plan
//   MySubscription? getActiveSubscriptionForPlan(SubscriptionPlan plan) {
//     return mySubscriptions.firstWhereOrNull((sub) => 
//       sub.isActive && 
//       sub.plan.code == plan.code
//     );
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

//   Future<void> fetchPlans() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/subscriptions/plans'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ Plans Response Status: ${response.statusCode}');
//       print('📦 Plans Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         availablePlans.value = data
//             .map((json) => SubscriptionPlan.fromJson(json))
//             .where((plan) => plan.active)
//             .toList();
//         if (availablePlans.isNotEmpty) {
//           selectedPlan.value = availablePlans.first;
//         }
//       } else {
//         print('❌ Failed to fetch plans: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Error fetching plans: $e');
//     }
//   }

//   Future<void> fetchVideoOptions(String planCode) async {
//     try {
//       isLoadingVideos.value = true;
//       videoLoadError.value = false;
      
//       final isFullPlan = (selectedPlan.value?.title.toLowerCase().contains('full') ?? false) ||
//                          (selectedPlan.value?.title.toLowerCase().contains('all') ?? false);
      
//       if (isFullPlan) {
//         print('🎯 Full plan detected - showing only "All" option');
//         videoOptions.value = ['All'];
//         selectedVideoOption.value = 'All';
//         isLoadingVideos.value = false;
//         return;
//       }
      
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
      
//       if (token == null) {
//         print('❌ No token found for video fetch');
//         videoLoadError.value = true;
//         isLoadingVideos.value = false;
//         return;
//       }

//       print('🔄 Fetching videos from: $baseUrl/videos');
//       print('🔑 Using token: Bearer ${token.substring(0, 20)}...');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('📡 Videos Response Status: ${response.statusCode}');
//       print('📦 Videos Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final dynamic data = jsonDecode(response.body);
        
//         if (data is List) {
//           videoOptions.value = data.map((item) => item.toString()).where((option) => option != 'All').toList();
//           print('✅ Video options loaded (filtered): ${videoOptions.length} items');
//           print('📋 Options: ${videoOptions.value}');
          
//           // Persist previous selection if it's still in the list
//           if (videoOptions.isNotEmpty) {
//             if (selectedVideoOption.value.isEmpty || !videoOptions.contains(selectedVideoOption.value)) {
//               selectedVideoOption.value = videoOptions.first;
//             }
//           }
//         } else {
//           print('⚠️ Unexpected response format: ${data.runtimeType}');
//           videoLoadError.value = true;
//         }
//       } else {
//         print('❌ Failed to fetch videos: ${response.statusCode}');
//         print('📄 Response: ${response.body}');
//         videoLoadError.value = true;
//       }
//     } catch (e) {
//       print('❌ Error fetching videos: $e');
//       print('📍 Stack trace: ${StackTrace.current}');
//       videoLoadError.value = true;
//     } finally {
//       isLoadingVideos.value = false;
//     }
//   }

//   Future<UserProfile?> fetchUserProfile() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for profile fetch');
//         return null;
//       }

//       final response = await http.get(
//         Uri.parse(profileUrl),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('✅ Profile Response Status: ${response.statusCode}');
//       print('📦 Profile Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         final userData = data['user'] ?? data;
//         final profile = UserProfile.fromJson(userData);
//         print('✅ Profile loaded: Subscription Status = ${profile.subscriptionStatus}, Episode Subscriptions = ${profile.episodeSubscriptions.length}');
//         return profile;
//       } else {
//         print('❌ Failed to fetch profile: ${response.statusCode}');
//         return null;
//       }
//     } catch (e) {
//       print('❌ Error fetching profile: $e');
//       return null;
//     }
//   }

//   Future<void> syncSubscriptionState({int maxRetries = 10}) async {
//     int retries = 0;
//     while (retries < maxRetries) {
//       final profile = await fetchUserProfile();
//       if (profile != null) {
//         final wasEmpty = hasSubscription.value == false && currentPlan.value == 'None';
//         hasSubscription.value = profile.subscriptionStatus != 'none' || profile.episodeSubscriptions.isNotEmpty || profile.hasAllAccess;
//         currentPlan.value = profile.subscriptionStatus != 'none' ? profile.subscriptionStatus : 'None';
//         expiryDate.value = profile.accessUntil ?? '';
//         print('🔄 Sync attempt ${retries + 1}: hasSubscription=${hasSubscription.value}, currentPlan=${currentPlan.value}, episodes=${profile.episodeSubscriptions.length}');
        
//         if (hasSubscription.value && wasEmpty) {
//           print('✅ Subscription activated after webhook!');
//           return;
//         } else if (hasSubscription.value) {
//           return;
//         }
//       }
//       retries++;
//       if (retries < maxRetries) {
//         print('⏳ Not active yet (webhook pending?), retrying in 5s... (attempt ${retries + 1}/${maxRetries})');
//         await Future.delayed(const Duration(seconds: 5));
//       }
//     }
//     print('❌ Max retries done, still not active. Webhook not hitting - check Razorpay dashboard.');
//   }

//   void checkSubscription() {
//     syncSubscriptionState();
//   }

//   Future<void> selectPlan(SubscriptionPlan plan) async {
//     if (isPlanActive(plan)) {
//       final activeSub = getActiveSubscriptionForPlan(plan);
//       return;
//     }
    
//     selectedPlan.value = plan;
//     print('🎯 Plan selected: ${plan.title} (${plan.code})');
//     await fetchVideoOptions(plan.code);
//   }

//   void selectVideoOption(String option) {
//     if (option != selectedVideoOption.value) {
//       selectedVideoOption.value = option;
//       print('🎬 Video option selected: $option');
//     }
//   }

//   Future<RazorpayOrder?> createOrder(String planCode, String episodeName) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token found for order creation');
//         return null;
//       }

//       final body = {
//         "planCode": planCode,
//         "episodeName": episodeName,
//       };

//       print('📤 Creating order with: ${jsonEncode(body)}');

//       final response = await http.post(
//         Uri.parse(createOrderUrl),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//         body: jsonEncode(body),
//       );

//       print('✅ Order Creation Response Status: ${response.statusCode}');
//       print('📦 Order Creation Response Body: ${response.body}');

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final data = jsonDecode(response.body);
//         final Map<String, dynamic>? orderData = data['order'];
//         if (orderData == null) {
//           print('❌ No order data - backend issue');
//           return null;
//         }
//         final order = RazorpayOrder.fromJson(orderData);
//         if (order.id.isEmpty) {
//           print('❌ Empty order ID - backend issue');
//           return null;
//         }
//         lastOrderId.value = order.id;
//         lastOrderAmount.value = order.amount;
//         print('✅ Order created & matched: ${order.id} (Amount: ${order.amount} ${order.currency}) - Ready for Razorpay webhook');
//         return order;
//       } else {
//         print('❌ Failed to create order: ${response.statusCode} - ${response.body}');
//         return null;
//       }
//     } catch (e) {
//       print('❌ Error creating order: $e');
//       return null;
//     }
//   }

//   Future<void> sendWebhookSimulation(PaymentSuccessResponse response) async {
//     if (lastOrderAmount.value == 0) {
//       print('❌ No order amount available for webhook simulation');
//       return;
//     }

//     final payload = {
//       "event": "payment.captured",
//       "payload": {
//         "payment": {
//           "entity": {
//             "id": response.paymentId,
//             "order_id": response.orderId,
//             "amount": lastOrderAmount.value,
//             "currency": "INR"
//           }
//         }
//       }
//     };

//     try {
//       print('🧪 Sending simulated webhook in background with order_id: ${response.orderId}, payment_id: ${response.paymentId}, amount: ${lastOrderAmount.value}');
//       print('📤 Simulated payload: ${jsonEncode(payload)}');

//       final res = await http.post(
//         Uri.parse(webhookUrl),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: jsonEncode(payload),
//       );

//       print('🧪 Simulated webhook Response Status: ${res.statusCode}');
//       print('📦 Simulated webhook Response Body: ${res.body}');

//       if (res.statusCode == 200) {
//         print('✅ Simulated webhook sent successfully in background');
//       } else {
//         print('❌ Simulated webhook failed: ${res.statusCode} - Check backend logs');
//       }
//     } catch (e) {
//       print('❌ Simulated webhook error: $e');
//     }
//   }

//   Future<void> manualActivateWebhook(String orderId) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       if (token == null) {
//         print('❌ No token for manual webhook');
//         return;
//       }

//       final body = {
//         "event": "payment.captured",
//         "payload": {
//           "payment": {
//             "entity": {
//               "id": "pay_manual_${DateTime.now().millisecondsSinceEpoch}",
//               "order_id": orderId,
//               "amount": lastOrderAmount.value,
//               "currency": "INR"
//             }
//           }
//         }
//       };

//       print('🧪 Manual webhook POST to backend with order_id: $orderId');
//       print('📤 Manual payload: ${jsonEncode(body)}');

//       final response = await http.post(
//         Uri.parse(webhookUrl),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//         body: jsonEncode(body),
//       );

//       print('🧪 Manual webhook Response Status: ${response.statusCode}');
//       print('📦 Manual Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         print('✅ Manual webhook success - sync now');
//         syncSubscriptionState();
//         fetchMySubscriptions();
//       } else {
//         print('❌ Manual webhook failed: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('❌ Manual webhook error: $e');
//     }
//   }

//   Future<void> initiatePayment() async {
//     if (selectedPlan.value == null) {
//       return;
//     }

//     if (selectedVideoOption.value.isEmpty) {
//       return;
//     }

//     isLoadingPayment.value = true;

//     final order = await createOrder(selectedPlan.value!.code, selectedVideoOption.value);
//     if (order == null || order.id.isEmpty) {
//       isLoadingPayment.value = false;
//       return;
//     }

//     final options = {
//       'key': razorpayKeyId,
//       'order_id': order.id,
//       'amount': order.amount.toString(),
//       'name': 'Spottt Prime',
//       'description': 'Subscription for ${selectedPlan.value!.title} - Episode: ${selectedVideoOption.value}',
//       'prefill': {
//         'contact': '',
//         'email': '',
//       },
//       'external': {
//         'wallets': ['PAYTM']
//       },
//     };

//     try {
//       print('💳 Opening Razorpay with order_id: ${order.id} (webhook should hit backend now)');
//       _razorpay.open(options);
//     } catch (e) {
//       print('❌ Razorpay open error: $e');
//     } finally {
//       isLoadingPayment.value = false;
//     }
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) async {
//     print('✅ Payment Success: Payment ID=${response.paymentId}, Order ID=${response.orderId} (webhook trigger expected)');
//     Get.snackbar(
//       'Payment Success! 🎉',
//       '',
//       backgroundColor: Colors.green,
//       colorText: Colors.white,
//       snackPosition: SnackPosition.BOTTOM,
//       margin: const EdgeInsets.all(16),
//       duration: const Duration(seconds: 3),
//       icon: const Icon(Icons.check_circle, color: Colors.white),
//     );
//     if (selectedPlan.value != null) {
//       hasSubscription.value = true;
//       currentPlan.value = selectedPlan.value!.title;
//       final expiry = DateTime.now().add(Duration(days: selectedPlan.value!.durationDays));
//       expiryDate.value = expiry.toString().split(' ')[0];
//     }
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setBool('show_welcome_after_payment', true);
//     sendWebhookSimulation(response);
//     syncSubscriptionState(maxRetries: 10);
//     fetchMySubscriptions();
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     print('❌ Payment Error: Code=${response.code}, Message=${response.message}');
//     Get.snackbar(
//       'Payment Failed',
//       response.message ?? 'Unknown error',
//       backgroundColor: Colors.red,
//       colorText: Colors.white,
//       snackPosition: SnackPosition.BOTTOM,
//       margin: const EdgeInsets.all(16),
//       duration: const Duration(seconds: 4),
//     );
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     Get.snackbar(
//       'External Wallet',
//       'Opening ${response.walletName}',
//       backgroundColor: Colors.blue,
//       colorText: Colors.white,
//       duration: const Duration(seconds: 2),
//     );
//   }

//   Future<void> subscribeToPlan() async {
//     if (selectedPlan.value == null) {
//       return;
//     }

//     if (selectedVideoOption.value.isEmpty) {
//       return;
//     }

//     final prefs = await SharedPreferences.getInstance();
//     final token = prefs.getString('auth_token');
//     if (token == null) {
//       return;
//     }

//     print('🔄 Initiating payment for ${selectedPlan.value!.title} (${selectedPlan.value!.price} INR) - Episode: ${selectedVideoOption.value}');

//     await initiatePayment();
//   }

//   void cancelSubscription() {
//     Get.defaultDialog(
//       title: 'Cancel Subscription',
//       titleStyle: const TextStyle(
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//       backgroundColor: Colors.grey[900],
//       content: const Text(
//         'Are you sure you want to cancel your subscription?',
//         style: TextStyle(color: Colors.white70),
//         textAlign: TextAlign.center,
//       ),
//       confirm: ElevatedButton(
//         onPressed: () {
//           hasSubscription.value = false;
//           currentPlan.value = 'None';
//           expiryDate.value = '';
//           Get.back();
//           Get.snackbar(
//             'Cancelled',
//             'Your subscription has been cancelled',
//             backgroundColor: Colors.red,
//             colorText: Colors.white,
//             snackPosition: SnackPosition.BOTTOM,
//             margin: const EdgeInsets.all(16),
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.red,
//         ),
//         child: const Text('Yes, Cancel'),
//       ),
//       cancel: TextButton(
//         onPressed: () => Get.back(),
//         child: const Text(
//           'No, Keep it',
//           style: TextStyle(color: Colors.blue),
//         ),
//       ),
//     );
//   }
// }

// class Subscription extends StatelessWidget {
//   const Subscription({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final SubscriptionController controller = Get.put(SubscriptionController());

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
//                 padding: EdgeInsets.all(width * 0.04),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () => Get.back(),
//                           icon: Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                             size: width * 0.06,
//                           ),
//                           padding: EdgeInsets.zero,
//                           constraints: const BoxConstraints(),
//                         ),
//                         SizedBox(width: width * 0.03),
//                         Text(
//                           'Subscribe to Prime',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: width * 0.055,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Container(
//                       width: width,
//                       padding: EdgeInsets.all(width * 0.05),
//                       decoration: BoxDecoration(
//                         gradient: const LinearGradient(
//                           colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(width * 0.04),
//                       ),
//                       child: Column(
//                         children: [
//                           Icon(
//                             Icons.stars,
//                             color: Colors.yellow,
//                             size: width * 0.15,
//                           ),
//                           SizedBox(height: height * 0.02),
//                           Text(
//                             'Unlimited Entertainment',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.06,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Stream thousands of movies and TV shows',
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: width * 0.035,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Text(
//                       'Choose Your Plan',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * 0.05,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Obx(() {
//                       if (controller.availablePlans.isEmpty) {
//                         return Center(
//                           child: Padding(
//                             padding: EdgeInsets.all(width * 0.1),
//                             child: const CircularProgressIndicator(color: Colors.blue),
//                           ),
//                         );
//                       }
//                       return Column(
//                         children: controller.availablePlans.map((plan) => Column(
//                           children: [
//                             _buildPlanCard(controller, plan, width, height, isLandscape),
//                             SizedBox(height: height * 0.02),
//                           ],
//                         )).toList(),
//                       );
//                     }),
//                     SizedBox(height: height * 0.02),
//                     Obx(() => controller.selectedPlan.value != null
//                         ? Container(
//                             width: width,
//                             constraints: BoxConstraints(
//                               minHeight: height * 0.06,
//                             ),
//                             child: controller.isLoadingPayment.value
//                                 ? Center(
//                                     child: Container(
//                                       padding: EdgeInsets.symmetric(vertical: height * 0.02),
//                                       child: const CircularProgressIndicator(
//                                         color: Colors.blue,
//                                       ),
//                                     ),
//                                   )
//                                 : ElevatedButton(
//                                     onPressed: () => controller.subscribeToPlan(),
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: Colors.blue,
//                                       padding: EdgeInsets.symmetric(
//                                         horizontal: width * 0.04,
//                                         vertical: height * 0.018,
//                                       ),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius: BorderRadius.circular(width * 0.02),
//                                       ),
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: [
//                                         Flexible(
//                                           child: Text(
//                                             'Pay ₹${controller.selectedPlan.value!.price} - Subscribe to ${controller.selectedPlan.value!.title}${controller.selectedVideoOption.value != 'All' && controller.selectedVideoOption.value.isNotEmpty ? ' - ${controller.selectedVideoOption.value}' : ''}',
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: width * 0.038,
//                                               fontWeight: FontWeight.bold,
//                                               height: 1.3,
//                                             ),
//                                             textAlign: TextAlign.center,
//                                             maxLines: 3,
//                                             overflow: TextOverflow.ellipsis,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                           )
//                         : const SizedBox.shrink()),
//                     SizedBox(height: height * 0.02),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   void _showVideoOptionsDialog(
//     SubscriptionController controller,
//     double width,
//     double height,
//   ) {
//     Get.dialog(
//       Dialog(
//         backgroundColor: Colors.transparent,
//         insetPadding: EdgeInsets.symmetric(horizontal: width * 0.08),
//         child: Container(
//           constraints: BoxConstraints(
//             maxHeight: height * 0.65,
//           ),
//           decoration: BoxDecoration(
//             color: const Color(0xFF0F0F0F),
//             borderRadius: BorderRadius.circular(width * 0.05),
//             border: Border.all(
//               color: Colors.blue.withOpacity(0.4),
//               width: 2,
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.blue.withOpacity(0.3),
//                 blurRadius: 20,
//                 spreadRadius: 2,
//               ),
//             ],
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(width * 0.045),
//                 decoration: BoxDecoration(
//                   gradient: const LinearGradient(
//                     colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                   ),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(width * 0.045),
//                     topRight: Radius.circular(width * 0.045),
//                   ),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       blurRadius: 10,
//                       offset: const Offset(0, 2),
//                     ),
//                   ],
//                 ),
//                 child: Row(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.all(width * 0.02),
//                       decoration: BoxDecoration(color: Colors.white.withOpacity(0.2),
//                         borderRadius: BorderRadius.circular(width * 0.015),
//                       ),
//                       child: Icon(
//                         Icons.video_library,
//                         color: Colors.white,
//                         size: width * 0.065,
//                       ),
//                     ),
//                     SizedBox(width: width * 0.03),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Select Video Episode',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.048,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             'Choose your preferred episode',
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: width * 0.03,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () => Get.back(),
//                       icon: Container(
//                         padding: EdgeInsets.all(width * 0.015),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.2),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(
//                           Icons.close,
//                           color: Colors.white,
//                           size: width * 0.05,
//                         ),
//                       ),
//                       padding: EdgeInsets.zero,
//                       constraints: const BoxConstraints(),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 1,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       Colors.transparent,
//                       Colors.blue.withOpacity(0.5),
//                       Colors.transparent,
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: Obx(() {
//                   if (controller.isLoadingVideos.value) {
//                     return Container(
//                       padding: EdgeInsets.all(width * 0.1),
//                       child: const Center(
//                         child: CircularProgressIndicator(
//                           color: Colors.blue,
//                         ),
//                       ),
//                     );
//                   }

//                   if (controller.videoLoadError.value) {
//                     return Container(
//                       padding: EdgeInsets.all(width * 0.08),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(
//                             Icons.error_outline,
//                             color: Colors.red,
//                             size: width * 0.15,
//                           ),
//                           SizedBox(height: height * 0.02),
//                           Text(
//                             'Failed to load episodes',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.045,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Please try again',
//                             style: TextStyle(
//                               color: Colors.white70,
//                               fontSize: width * 0.035,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.03),
//                           ElevatedButton.icon(
//                             onPressed: () {
//                               if (controller.selectedPlan.value != null) {
//                                 controller.fetchVideoOptions(
//                                   controller.selectedPlan.value!.code,
//                                 );
//                               }
//                             },
//                             icon: Icon(Icons.refresh, size: width * 0.045),
//                             label: const Text('Retry'),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: width * 0.06,
//                                 vertical: height * 0.015,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   }

//                   return Column(
//                     children: [
//                       Expanded(
//                         child: ListView.builder(
//                           shrinkWrap: true,
//                           padding: EdgeInsets.all(width * 0.04),
//                           itemCount: controller.videoOptions.length,
//                           physics: const BouncingScrollPhysics(),
//                           itemBuilder: (context, index) {
//                             final option = controller.videoOptions[index];
//                             final isSelected = option == controller.selectedVideoOption.value;
//                             final isSubscribed = controller.isEpisodeSubscribed(option);
                            
//                             return AnimatedContainer(
//                               duration: const Duration(milliseconds: 200),
//                               margin: EdgeInsets.only(bottom: height * 0.015),
//                               child: InkWell(
//                                 onTap: isSubscribed ? null : () {
//                                   controller.selectVideoOption(option);
//                                 },
//                                 borderRadius: BorderRadius.circular(width * 0.03),
//                                 child: Container(
//                                   padding: EdgeInsets.all(width * 0.04),
//                                   decoration: BoxDecoration(
//                                     gradient: isSubscribed
//                                         ? LinearGradient(
//                                             colors: [
//                                               Colors.green.withOpacity(0.4),
//                                               Colors.green.withOpacity(0.3),
//                                             ],
//                                             begin: Alignment.topLeft,
//                                             end: Alignment.bottomRight,
//                                           )
//                                         : (isSelected
//                                             ? LinearGradient(
//                                                 colors: [
//                                                   const Color(0xFF1E3A8A).withOpacity(0.4),
//                                                   const Color(0xFF3B82F6).withOpacity(0.3),
//                                                 ],
//                                                 begin: Alignment.topLeft,
//                                                 end: Alignment.bottomRight,
//                                               )
//                                             : null),
//                                     color: isSubscribed ? null : (isSelected ? null : Colors.grey[900]),
//                                     borderRadius: BorderRadius.circular(width * 0.03),
//                                     border: Border.all(
//                                       color: isSubscribed 
//                                           ? Colors.green 
//                                           : (isSelected ? Colors.blue : Colors.grey[800]!),
//                                       width: isSubscribed || isSelected ? 2 : 1,
//                                     ),
//                                     boxShadow: (isSubscribed || isSelected)
//                                         ? [
//                                             BoxShadow(
//                                               color: (isSubscribed ? Colors.green : Colors.blue).withOpacity(0.3),
//                                               blurRadius: 8,
//                                               offset: const Offset(0, 2),
//                                             ),
//                                           ]
//                                         : null,
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Container(
//                                         padding: EdgeInsets.all(width * 0.01),
//                                         decoration: BoxDecoration(
//                                           color: isSubscribed
//                                               ? Colors.green.withOpacity(0.3)
//                                               : (isSelected
//                                                   ? Colors.blue.withOpacity(0.3)
//                                                   : Colors.transparent),
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Icon(
//                                           isSubscribed
//                                               ? Icons.check_circle
//                                               : (isSelected 
//                                                   ? Icons.radio_button_checked 
//                                                   : Icons.radio_button_unchecked),
//                                           color: isSubscribed ? Colors.green : (isSelected ? Colors.blue : Colors.grey),
//                                           size: width * 0.06,
//                                         ),
//                                       ),
//                                       SizedBox(width: width * 0.035),
//                                       Expanded(
//                                         child: Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               option,
//                                               style: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: width * 0.042,
//                                                 fontWeight: isSubscribed || isSelected 
//                                                     ? FontWeight.bold 
//                                                     : FontWeight.normal,
//                                               ),
//                                             ),
//                                             if (isSubscribed)
//                                               Text(
//                                                 'Already Subscribed ✓',
//                                                 style: TextStyle(
//                                                   color: Colors.green,
//                                                   fontSize: width * 0.03,
//                                                   fontWeight: FontWeight.w600,
//                                                 ),
//                                               ),
//                                           ],
//                                         ),
//                                       ),
//                                       if (isSubscribed || isSelected)
//                                         Container(
//                                           padding: EdgeInsets.all(width * 0.015),
//                                           decoration: BoxDecoration(
//                                             color: isSubscribed ? Colors.green : Colors.blue,
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: Icon(
//                                             Icons.check,
//                                             color: Colors.white,
//                                             size: width * 0.04,
//                                           ),
//                                         ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       ),
//                       if (controller.selectedVideoOption.value.isNotEmpty && controller.videoOptions.isNotEmpty)
//                         Container(
//                           width: double.infinity,
//                           padding: EdgeInsets.all(width * 0.04),
//                           margin: EdgeInsets.all(width * 0.02),
//                           decoration: BoxDecoration(
//                             color: Colors.blue.withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(width * 0.02),
//                             border: Border.all(color: Colors.blue.withOpacity(0.5)),
//                           ),
//                           child: Row(
//                             children: [
//                               Icon(Icons.check_circle, color: Colors.green, size: width * 0.05),
//                               SizedBox(width: width * 0.02),
//                               Expanded(
//                                 child: Text(
//                                   'Selected: ${controller.selectedVideoOption.value}',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: width * 0.04,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   );
//                 }),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildPlanCard(
//     SubscriptionController controller,
//     SubscriptionPlan plan,
//     double width,
//     double height,
//     bool isLandscape,
//   ) {
//     final bool isSelected = controller.selectedPlan.value?.code == plan.code;
//     final bool isPlanActive = controller.isPlanActive(plan);
    
//     String durationText;
//     if (plan.durationDays == 7) {
//       durationText = '${plan.durationDays} Days';
//     } else {
//       int months = plan.durationDays ~/ 30;
//       durationText = 'per ${months} Month${months > 1 ? 's' : ''}';
//     }

//     final isFullPlan = plan.title.toLowerCase().contains('full') ||
//                        plan.title.toLowerCase().contains('all') ||
//                        plan.title.toLowerCase().contains('monthly');

//     return GestureDetector(
//       onTap: isPlanActive ? null : () async {
//         await controller.selectPlan(plan);
        
//         if (!isFullPlan) {
//           _showVideoOptionsDialog(controller, width, height);
//         }
//       },
//       child: Opacity(
//         opacity: isPlanActive ? 0.6 : 1.0,
//         child: Container(
//           padding: EdgeInsets.all(width * 0.04),
//           decoration: BoxDecoration(
//             color: isPlanActive 
//                 ? Colors.green.withOpacity(0.2) 
//                 : (isSelected ? Colors.blue.withOpacity(0.2) : Colors.grey[900]),
//             border: Border.all(
//               color: isPlanActive 
//                   ? Colors.green 
//                   : (isSelected ? Colors.blue : Colors.grey[800]!),
//               width: isPlanActive || isSelected ? 2 : 1,
//             ),
//             borderRadius: BorderRadius.circular(width * 0.03),
//           ),
//           child: Row(
//             children: [
//               Icon(
//                 isPlanActive 
//                     ? Icons.check_circle 
//                     : (isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked),
//                 color: isPlanActive 
//                     ? Colors.green 
//                     : (isSelected ? Colors.blue : Colors.grey),
//                 size: width * 0.06,
//               ),
//               SizedBox(width: width * 0.03),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       plan.title,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * 0.045,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.005),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           '₹${plan.price}',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: width * 0.055,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                         SizedBox(width: width * 0.01),
//                         Padding(
//                           padding: EdgeInsets.only(bottom: height * 0.003),
//                           child: Text(
//                             durationText,
//                             style: TextStyle(
//                               color: Colors.grey[400],
//                               fontSize: width * 0.03,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     if (isPlanActive) ...[
//                       SizedBox(height: height * 0.005),
//                       Text(
//                         'Active Subscription',
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontSize: width * 0.032,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ],
//                   ],
//                 ),
//               ),
//               if (isPlanActive || isSelected)
//                 Container(
//                   padding: EdgeInsets.all(width * 0.01),
//                   decoration: BoxDecoration(
//                     color: isPlanActive ? Colors.green : Colors.blue,
//                     borderRadius: BorderRadius.circular(width * 0.01),
//                   ),
//                   child: Icon(
//                     Icons.check,
//                     color: Colors.white,
//                     size: width * 0.04,
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

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
      episodeId: json['episodeId'],
      episodeName: json['episodeName'],
      orderId: json['orderId'] ?? '',
      amount: json['amount'] ?? 0,
      history: (json['history'] as List? ?? []).map((h) => SubscriptionHistory.fromJson(h)).toList(),
      createdAt: json['createdAt'] ?? '',
      updatedAt: json['updatedAt'] ?? '',
      v: json['__v'] ?? 0,
      startAt: json['startAt'],
      endAt: json['endAt'],
    );
  }

  bool get isActive {
    if (status != 'active' || endAt == null) return false;
    try {
      return DateTime.parse(endAt!).isAfter(DateTime.now());
    } catch (e) {
      return false;
    }
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

// Razorpay Order Model
class RazorpayOrder {
  final String id;
  final int amount;
  final String currency;

  RazorpayOrder({
    required this.id,
    required this.amount,
    required this.currency,
  });

  factory RazorpayOrder.fromJson(Map<String, dynamic> json) {
    return RazorpayOrder(
      id: json['id'] ?? '',
      amount: json['amount'] ?? 0,
      currency: json['currency'] ?? 'INR',
    );
  }
}

// User Profile Model
class UserProfile {
  final String id;
  final String name;
  final String email;
  final String mobile;
  final String status;
  final bool emailVerified;
  final String subscriptionStatus;
  final bool hasAllAccess;
  final List<dynamic> episodeSubscriptions;
  final String? accessUntil;
  final String? lastLoginAt;

  UserProfile({
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
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      mobile: json['mobile'] ?? '',
      status: json['status'] ?? '',
      emailVerified: json['emailVerified'] ?? false,
      subscriptionStatus: json['subscriptionStatus'] ?? 'none',
      hasAllAccess: json['hasAllAccess'] ?? false,
      episodeSubscriptions: json['episodeSubscriptions'] ?? [],
      accessUntil: json['accessUntil']?.toString(),
      lastLoginAt: json['lastLoginAt']?.toString(),
    );
  }
}

// Controller for Subscription Management
class SubscriptionController extends GetxController {
  RxBool hasSubscription = false.obs;
  RxString currentPlan = 'None'.obs;
  RxString expiryDate = ''.obs;
  Rx<SubscriptionPlan?> selectedPlan = Rx<SubscriptionPlan?>(null);
  RxList<SubscriptionPlan> availablePlans = <SubscriptionPlan>[].obs;
  RxList<MySubscription> mySubscriptions = <MySubscription>[].obs;
  RxList<String> videoOptions = <String>[].obs;
  RxString selectedVideoOption = ''.obs;
  RxBool isLoadingVideos = false.obs;
  RxBool videoLoadError = false.obs;
  RxBool isLoadingPayment = false.obs;
  RxString lastOrderId = ''.obs;
  RxInt lastOrderAmount = 0.obs;
  RxBool showWelcomeSnackbar = false.obs;

  late Razorpay _razorpay;

  static const String razorpayKeyId = 'rzp_live_RaPyMd7VAuSswA';

  final String createOrderUrl = 'https://spottt.codifyinstitute.org/api/v1/subscriptions/order/by-episode-name';
  final String webhookUrl = 'https://spottt.codifyinstitute.org/api/v1/subscriptions/webhook';
  final String profileUrl = 'https://spottt.codifyinstitute.org/api/v1/auth/me';
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  @override
  void onInit() {
    super.onInit();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    checkSubscription();
    fetchPlans();
    fetchMySubscriptions();
    _checkForWelcomeMessage();
  }

  Future<void> _checkForWelcomeMessage() async {
    final prefs = await SharedPreferences.getInstance();
    final showWelcome = prefs.getBool('show_welcome_after_payment') ?? false;
    if (showWelcome && hasSubscription.value && currentPlan.value != 'None') {
      showWelcomeSnackbar.value = true;
      prefs.remove('show_welcome_after_payment');
      Get.snackbar(
        'Welcome Back! 🎉',
        'Your subscription is active. Enjoy ${currentPlan.value}!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
        duration: const Duration(seconds: 3),
      );
    }
  }

  @override
  void onClose() {
    _razorpay.clear();
    super.onClose();
  }

  // Check if a specific plan is already active
  bool isPlanActive(SubscriptionPlan plan) {
    final isFullPlan = plan.title.toLowerCase().contains('full') ||
                       plan.title.toLowerCase().contains('all') ||
                       plan.title.toLowerCase().contains('monthly');
    
    if (isFullPlan) {
      // For full/monthly plans, check if any active subscription exists with same plan code
      return mySubscriptions.any((sub) => 
        sub.isActive && 
        sub.plan.code == plan.code
      );
    }
    
    // For per-episode plans, we'll check during episode selection
    return false;
  }

  // Check if a specific episode is already subscribed
  bool isEpisodeSubscribed(String episodeName) {
    return mySubscriptions.any((sub) => 
      sub.isActive && 
      sub.episodeName == episodeName
    );
  }

  // Get active subscription for a plan
  MySubscription? getActiveSubscriptionForPlan(SubscriptionPlan plan) {
    return mySubscriptions.firstWhereOrNull((sub) => 
      sub.isActive && 
      sub.plan.code == plan.code
    );
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

  Future<void> fetchPlans() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('❌ No token found');
        return;
      }

      final response = await http.get(
        Uri.parse('$baseUrl/subscriptions/plans'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('✅ Plans Response Status: ${response.statusCode}');
      print('📦 Plans Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        availablePlans.value = data
            .map((json) => SubscriptionPlan.fromJson(json))
            .where((plan) => plan.active)
            .toList();
        if (availablePlans.isNotEmpty) {
          selectedPlan.value = availablePlans.first;
        }
      } else {
        print('❌ Failed to fetch plans: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Error fetching plans: $e');
    }
  }

  Future<void> fetchVideoOptions(String planCode) async {
    try {
      isLoadingVideos.value = true;
      videoLoadError.value = false;
      
      final isFullPlan = (selectedPlan.value?.title.toLowerCase().contains('full') ?? false) ||
                         (selectedPlan.value?.title.toLowerCase().contains('all') ?? false);
      
      if (isFullPlan) {
        print('🎯 Full plan detected - showing only "All" option');
        videoOptions.value = ['All'];
        selectedVideoOption.value = 'All';
        isLoadingVideos.value = false;
        return;
      }
      
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      
      if (token == null) {
        print('❌ No token found for video fetch');
        videoLoadError.value = true;
        isLoadingVideos.value = false;
        return;
      }

      print('🔄 Fetching videos from: $baseUrl/videos');
      print('🔑 Using token: Bearer ${token.substring(0, 20)}...');

      final response = await http.get(
        Uri.parse('$baseUrl/videos'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('📡 Videos Response Status: ${response.statusCode}');
      print('📦 Videos Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final dynamic data = jsonDecode(response.body);
        
        if (data is List) {
          videoOptions.value = data.map((item) => item.toString()).where((option) => option != 'All').toList();
          print('✅ Video options loaded (filtered): ${videoOptions.length} items');
          print('📋 Options: ${videoOptions.value}');
          
          // Persist previous selection if it's still in the list
          if (videoOptions.isNotEmpty) {
            if (selectedVideoOption.value.isEmpty || !videoOptions.contains(selectedVideoOption.value)) {
              selectedVideoOption.value = videoOptions.first;
            }
          }
        } else {
          print('⚠️ Unexpected response format: ${data.runtimeType}');
          videoLoadError.value = true;
        }
      } else {
        print('❌ Failed to fetch videos: ${response.statusCode}');
        print('📄 Response: ${response.body}');
        videoLoadError.value = true;
      }
    } catch (e) {
      print('❌ Error fetching videos: $e');
      print('📍 Stack trace: ${StackTrace.current}');
      videoLoadError.value = true;
    } finally {
      isLoadingVideos.value = false;
    }
  }

  Future<UserProfile?> fetchUserProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('❌ No token found for profile fetch');
        return null;
      }

      final response = await http.get(
        Uri.parse(profileUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      print('✅ Profile Response Status: ${response.statusCode}');
      print('📦 Profile Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final userData = data['user'] ?? data;
        final profile = UserProfile.fromJson(userData);
        print('✅ Profile loaded: Subscription Status = ${profile.subscriptionStatus}, Episode Subscriptions = ${profile.episodeSubscriptions.length}');
        return profile;
      } else {
        print('❌ Failed to fetch profile: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('❌ Error fetching profile: $e');
      return null;
    }
  }

  Future<void> syncSubscriptionState({int maxRetries = 10}) async {
    int retries = 0;
    while (retries < maxRetries) {
      final profile = await fetchUserProfile();
      if (profile != null) {
        final wasEmpty = hasSubscription.value == false && currentPlan.value == 'None';
        hasSubscription.value = profile.subscriptionStatus != 'none' || profile.episodeSubscriptions.isNotEmpty || profile.hasAllAccess;
        currentPlan.value = profile.subscriptionStatus != 'none' ? profile.subscriptionStatus : 'None';
        expiryDate.value = profile.accessUntil ?? '';
        print('🔄 Sync attempt ${retries + 1}: hasSubscription=${hasSubscription.value}, currentPlan=${currentPlan.value}, episodes=${profile.episodeSubscriptions.length}');
        
        if (hasSubscription.value && wasEmpty) {
          print('✅ Subscription activated after webhook!');
          return;
        } else if (hasSubscription.value) {
          return;
        }
      }
      retries++;
      if (retries < maxRetries) {
        print('⏳ Not active yet (webhook pending?), retrying in 5s... (attempt ${retries + 1}/${maxRetries})');
        await Future.delayed(const Duration(seconds: 5));
      }
    }
    print('❌ Max retries done, still not active. Webhook not hitting - check Razorpay dashboard.');
  }

  void checkSubscription() {
    syncSubscriptionState();
  }

  Future<void> selectPlan(SubscriptionPlan plan) async {
    if (isPlanActive(plan)) {
      final activeSub = getActiveSubscriptionForPlan(plan);
      return;
    }
    
    selectedPlan.value = plan;
    print('🎯 Plan selected: ${plan.title} (${plan.code})');
    await fetchVideoOptions(plan.code);
  }

  void selectVideoOption(String option) {
    if (option != selectedVideoOption.value) {
      selectedVideoOption.value = option;
      print('🎬 Video option selected: $option');
    }
  }

  Future<RazorpayOrder?> createOrder(String planCode, String episodeName) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('❌ No token found for order creation');
        return null;
      }

      final body = {
        "planCode": planCode,
        "episodeName": episodeName,
      };

      print('📤 Creating order with: ${jsonEncode(body)}');

      final response = await http.post(
        Uri.parse(createOrderUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(body),
      );

      print('✅ Order Creation Response Status: ${response.statusCode}');
      print('📦 Order Creation Response Body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        final Map<String, dynamic>? orderData = data['order'];
        if (orderData == null) {
          print('❌ No order data - backend issue');
          return null;
        }
        final order = RazorpayOrder.fromJson(orderData);
        if (order.id.isEmpty) {
          print('❌ Empty order ID - backend issue');
          return null;
        }
        lastOrderId.value = order.id;
        lastOrderAmount.value = order.amount;
        print('✅ Order created & matched: ${order.id} (Amount: ${order.amount} ${order.currency}) - Ready for Razorpay webhook');
        return order;
      } else {
        print('❌ Failed to create order: ${response.statusCode} - ${response.body}');
        return null;
      }
    } catch (e) {
      print('❌ Error creating order: $e');
      return null;
    }
  }

  Future<void> sendWebhookSimulation(PaymentSuccessResponse response) async {
    if (lastOrderAmount.value == 0) {
      print('❌ No order amount available for webhook simulation');
      return;
    }

    final payload = {
      "event": "payment.captured",
      "payload": {
        "payment": {
          "entity": {
            "id": response.paymentId,
            "order_id": response.orderId,
            "amount": lastOrderAmount.value,
            "currency": "INR"
          }
        }
      }
    };

    try {
      print('🧪 Sending simulated webhook in background with order_id: ${response.orderId}, payment_id: ${response.paymentId}, amount: ${lastOrderAmount.value}');
      print('📤 Simulated payload: ${jsonEncode(payload)}');

      final res = await http.post(
        Uri.parse(webhookUrl),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(payload),
      );

      print('🧪 Simulated webhook Response Status: ${res.statusCode}');
      print('📦 Simulated webhook Response Body: ${res.body}');

      if (res.statusCode == 200) {
        print('✅ Simulated webhook sent successfully in background');
      } else {
        print('❌ Simulated webhook failed: ${res.statusCode} - Check backend logs');
      }
    } catch (e) {
      print('❌ Simulated webhook error: $e');
    }
  }

  Future<void> manualActivateWebhook(String orderId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      if (token == null) {
        print('❌ No token for manual webhook');
        return;
      }

      final body = {
        "event": "payment.captured",
        "payload": {
          "payment": {
            "entity": {
              "id": "pay_manual_${DateTime.now().millisecondsSinceEpoch}",
              "order_id": orderId,
              "amount": lastOrderAmount.value,
              "currency": "INR"
            }
          }
        }
      };

      print('🧪 Manual webhook POST to backend with order_id: $orderId');
      print('📤 Manual payload: ${jsonEncode(body)}');

      final response = await http.post(
        Uri.parse(webhookUrl),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(body),
      );

      print('🧪 Manual webhook Response Status: ${response.statusCode}');
      print('📦 Manual Response Body: ${response.body}');

      if (response.statusCode == 200) {
        print('✅ Manual webhook success - sync now');
        syncSubscriptionState();
        fetchMySubscriptions();
      } else {
        print('❌ Manual webhook failed: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Manual webhook error: $e');
    }
  }

  Future<void> initiatePayment() async {
    if (selectedPlan.value == null) {
      return;
    }

    if (selectedVideoOption.value.isEmpty) {
      return;
    }

    isLoadingPayment.value = true;

    final order = await createOrder(selectedPlan.value!.code, selectedVideoOption.value);
    if (order == null || order.id.isEmpty) {
      isLoadingPayment.value = false;
      return;
    }

    final options = {
      'key': razorpayKeyId,
      'order_id': order.id,
      'amount': order.amount.toString(),
      'name': 'Spottt Prime',
      'description': 'Subscription for ${selectedPlan.value!.title} - Episode: ${selectedVideoOption.value}',
      'prefill': {
        'contact': '',
        'email': '',
      },
      'external': {
        'wallets': ['PAYTM']
      },
    };

    try {
      print('💳 Opening Razorpay with order_id: ${order.id} (webhook should hit backend now)');
      _razorpay.open(options);
    } catch (e) {
      print('❌ Razorpay open error: $e');
    } finally {
      isLoadingPayment.value = false;
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) async {
    print('✅ Payment Success: Payment ID=${response.paymentId}, Order ID=${response.orderId} (webhook trigger expected)');
    Get.snackbar(
      'Payment Success! 🎉',
      '',
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.check_circle, color: Colors.white),
    );
    if (selectedPlan.value != null) {
      hasSubscription.value = true;
      currentPlan.value = selectedPlan.value!.title;
      final expiry = DateTime.now().add(Duration(days: selectedPlan.value!.durationDays));
      expiryDate.value = expiry.toString().split(' ')[0];
    }
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('show_welcome_after_payment', true);
    sendWebhookSimulation(response);
    syncSubscriptionState(maxRetries: 10);
    fetchMySubscriptions();
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('❌ Payment Error: Code=${response.code}, Message=${response.message}');
    Get.snackbar(
      'Payment Failed',
      response.message ?? 'Unknown error',
      backgroundColor: Colors.red,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 4),
    );
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar(
      'External Wallet',
      'Opening ${response.walletName}',
      backgroundColor: Colors.blue,
      colorText: Colors.white,
      duration: const Duration(seconds: 2),
    );
  }

  Future<void> subscribeToPlan() async {
    if (selectedPlan.value == null) {
      return;
    }

    if (selectedVideoOption.value.isEmpty) {
      return;
    }

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');
    if (token == null) {
      return;
    }

    print('🔄 Initiating payment for ${selectedPlan.value!.title} (${selectedPlan.value!.price} INR) - Episode: ${selectedVideoOption.value}');

    await initiatePayment();
  }

  void cancelSubscription() {
    Get.defaultDialog(
      title: 'Cancel Subscription',
      titleStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.grey[900],
      content: const Text(
        'Are you sure you want to cancel your subscription?',
        style: TextStyle(color: Colors.white70),
        textAlign: TextAlign.center,
      ),
      confirm: ElevatedButton(
        onPressed: () {
          hasSubscription.value = false;
          currentPlan.value = 'None';
          expiryDate.value = '';
          Get.back();
          Get.snackbar(
            'Cancelled',
            'Your subscription has been cancelled',
            backgroundColor: Colors.red,
            colorText: Colors.white,
            snackPosition: SnackPosition.BOTTOM,
            margin: const EdgeInsets.all(16),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        child: const Text('Yes, Cancel'),
      ),
      cancel: TextButton(
        onPressed: () => Get.back(),
        child: const Text(
          'No, Keep it',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
    final SubscriptionController controller = Get.put(SubscriptionController());

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
                padding: EdgeInsets.all(width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => Get.back(),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: width * 0.06,
                          ),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Subscribe to Prime',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.03),
                    Container(
                      width: width,
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(width * 0.04),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.stars,
                            color: Colors.yellow,
                            size: width * 0.15,
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            'Premium Access',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.06,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Unlock exclusive series and ad-free viewing',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: width * 0.035,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Text(
                      'Choose Your Plan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Obx(() {
                      if (controller.availablePlans.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.1),
                            child: const CircularProgressIndicator(color: Colors.blue),
                          ),
                        );
                      }
                      return Column(
                        children: controller.availablePlans.map((plan) => Column(
                          children: [
                            _buildPlanCard(controller, plan, width, height, isLandscape),
                            SizedBox(height: height * 0.02),
                          ],
                        )).toList(),
                      );
                    }),
                    SizedBox(height: height * 0.02),
                    Obx(() => controller.selectedPlan.value != null
                        ? Container(
                            width: width,
                            constraints: BoxConstraints(
                              minHeight: height * 0.06,
                            ),
                            child: controller.isLoadingPayment.value
                                ? Center(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: height * 0.02),
                                      child: const CircularProgressIndicator(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  )
                                : ElevatedButton(
                                    onPressed: () => controller.subscribeToPlan(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: width * 0.04,
                                        vertical: height * 0.018,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(width * 0.02),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'Pay ₹${controller.selectedPlan.value!.price} - Subscribe to ${controller.selectedPlan.value!.title}${controller.selectedVideoOption.value != 'All' && controller.selectedVideoOption.value.isNotEmpty ? ' - ${controller.selectedVideoOption.value}' : ''}',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width * 0.038,
                                              fontWeight: FontWeight.bold,
                                              height: 1.3,
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          )
                        : const SizedBox.shrink()),
                    SizedBox(height: height * 0.02),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showVideoOptionsDialog(
    SubscriptionController controller,
    double width,
    double height,
  ) {
    Get.dialog(
      Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: width * 0.08),
        child: Container(
          constraints: BoxConstraints(
            maxHeight: height * 0.65,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF0F0F0F),
            borderRadius: BorderRadius.circular(width * 0.05),
            border: Border.all(
              color: Colors.blue.withOpacity(0.4),
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(width * 0.045),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(width * 0.045),
                    topRight: Radius.circular(width * 0.045),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(width * 0.015),
                      ),
                      child: Icon(
                        Icons.video_library,
                        color: Colors.white,
                        size: width * 0.065,
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Video Episode',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.048,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Choose your preferred episode',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: width * 0.03,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: Container(
                        padding: EdgeInsets.all(width * 0.015),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: width * 0.05,
                        ),
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.blue.withOpacity(0.5),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Obx(() {
                  if (controller.isLoadingVideos.value) {
                    return Container(
                      padding: EdgeInsets.all(width * 0.1),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    );
                  }

                  if (controller.videoLoadError.value) {
                    return Container(
                      padding: EdgeInsets.all(width * 0.08),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: width * 0.15,
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            'Failed to load episodes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Please try again',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: width * 0.035,
                            ),
                          ),
                          SizedBox(height: height * 0.03),
                          ElevatedButton.icon(
                            onPressed: () {
                              if (controller.selectedPlan.value != null) {
                                controller.fetchVideoOptions(
                                  controller.selectedPlan.value!.code,
                                );
                              }
                            },
                            icon: Icon(Icons.refresh, size: width * 0.045),
                            label: const Text('Retry'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.06,
                                vertical: height * 0.015,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(width * 0.04),
                          itemCount: controller.videoOptions.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            final option = controller.videoOptions[index];
                            final isSelected = option == controller.selectedVideoOption.value;
                            final isSubscribed = controller.isEpisodeSubscribed(option);
                            
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin: EdgeInsets.only(bottom: height * 0.015),
                              child: InkWell(
                                onTap: isSubscribed ? null : () {
                                  controller.selectVideoOption(option);
                                },
                                borderRadius: BorderRadius.circular(width * 0.03),
                                child: Container(
                                  padding: EdgeInsets.all(width * 0.04),
                                  decoration: BoxDecoration(
                                    gradient: isSubscribed
                                        ? LinearGradient(
                                            colors: [
                                              Colors.green.withOpacity(0.4),
                                              Colors.green.withOpacity(0.3),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          )
                                        : (isSelected
                                            ? LinearGradient(
                                                colors: [
                                                  const Color(0xFF1E3A8A).withOpacity(0.4),
                                                  const Color(0xFF3B82F6).withOpacity(0.3),
                                                ],
                                                begin: Alignment.topLeft,
                                                end: Alignment.bottomRight,
                                              )
                                            : null),
                                    color: isSubscribed ? null : (isSelected ? null : Colors.grey[900]),
                                    borderRadius: BorderRadius.circular(width * 0.03),
                                    border: Border.all(
                                      color: isSubscribed 
                                          ? Colors.green 
                                          : (isSelected ? Colors.blue : Colors.grey[800]!),
                                      width: isSubscribed || isSelected ? 2 : 1,
                                    ),
                                    boxShadow: (isSubscribed || isSelected)
                                        ? [
                                            BoxShadow(
                                              color: (isSubscribed ? Colors.green : Colors.blue).withOpacity(0.3),
                                              blurRadius: 8,
                                              offset: const Offset(0, 2),
                                            ),
                                          ]
                                        : null,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(width * 0.01),
                                        decoration: BoxDecoration(
                                          color: isSubscribed
                                              ? Colors.green.withOpacity(0.3)
                                              : (isSelected
                                                  ? Colors.blue.withOpacity(0.3)
                                                  : Colors.transparent),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          isSubscribed
                                              ? Icons.check_circle
                                              : (isSelected 
                                                  ? Icons.radio_button_checked 
                                                  : Icons.radio_button_unchecked),
                                          color: isSubscribed ? Colors.green : (isSelected ? Colors.blue : Colors.grey),
                                          size: width * 0.06,
                                        ),
                                      ),
                                      SizedBox(width: width * 0.035),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              option,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: width * 0.042,
                                                fontWeight: isSubscribed || isSelected 
                                                    ? FontWeight.bold 
                                                    : FontWeight.normal,
                                              ),
                                            ),
                                            if (isSubscribed)
                                              Text(
                                                'Already Subscribed ✓',
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: width * 0.03,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      if (isSubscribed || isSelected)
                                        Container(
                                          padding: EdgeInsets.all(width * 0.015),
                                          decoration: BoxDecoration(
                                            color: isSubscribed ? Colors.green : Colors.blue,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: width * 0.04,
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
                      if (controller.selectedVideoOption.value.isNotEmpty && controller.videoOptions.isNotEmpty)
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(width * 0.04),
                          margin: EdgeInsets.all(width * 0.02),
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(width * 0.02),
                            border: Border.all(color: Colors.blue.withOpacity(0.5)),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.check_circle, color: Colors.green, size: width * 0.05),
                              SizedBox(width: width * 0.02),
                              Expanded(
                                child: Text(
                                  'Selected: ${controller.selectedVideoOption.value}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: width * 0.04,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanCard(
    SubscriptionController controller,
    SubscriptionPlan plan,
    double width,
    double height,
    bool isLandscape,
  ) {
    final bool isSelected = controller.selectedPlan.value?.code == plan.code;
    final bool isPlanActive = controller.isPlanActive(plan);
    
    String durationText;
    if (plan.durationDays == 7) {
      durationText = '${plan.durationDays} Days';
    } else {
      int months = plan.durationDays ~/ 30;
      durationText = 'per ${months} Month${months > 1 ? 's' : ''}';
    }

    final isFullPlan = plan.title.toLowerCase().contains('full') ||
                       plan.title.toLowerCase().contains('all') ||
                       plan.title.toLowerCase().contains('monthly');

    return GestureDetector(
      onTap: isPlanActive ? null : () async {
        await controller.selectPlan(plan);
        
        if (!isFullPlan) {
          _showVideoOptionsDialog(controller, width, height);
        }
      },
      child: Opacity(
        opacity: isPlanActive ? 0.6 : 1.0,
        child: Container(
          padding: EdgeInsets.all(width * 0.04),
          decoration: BoxDecoration(
            color: isPlanActive 
                ? Colors.green.withOpacity(0.2) 
                : (isSelected ? Colors.blue.withOpacity(0.2) : Colors.grey[900]),
            border: Border.all(
              color: isPlanActive 
                  ? Colors.green 
                  : (isSelected ? Colors.blue : Colors.grey[800]!),
              width: isPlanActive || isSelected ? 2 : 1,
            ),
            borderRadius: BorderRadius.circular(width * 0.03),
          ),
          child: Row(
            children: [
              Icon(
                isPlanActive 
                    ? Icons.check_circle 
                    : (isSelected ? Icons.radio_button_checked : Icons.radio_button_unchecked),
                color: isPlanActive 
                    ? Colors.green 
                    : (isSelected ? Colors.blue : Colors.grey),
                size: width * 0.06,
              ),
              SizedBox(width: width * 0.03),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plan.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: height * 0.005),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '₹${plan.price}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.055,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(width: width * 0.01),
                        Padding(
                          padding: EdgeInsets.only(bottom: height * 0.003),
                          child: Text(
                            durationText,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: width * 0.03,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (isPlanActive) ...[
                      SizedBox(height: height * 0.005),
                      Text(
                        'Active Subscription',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: width * 0.032,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (isPlanActive || isSelected)
                Container(
                  padding: EdgeInsets.all(width * 0.01),
                  decoration: BoxDecoration(
                    color: isPlanActive ? Colors.green : Colors.blue,
                    borderRadius: BorderRadius.circular(width * 0.01),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: width * 0.04,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}