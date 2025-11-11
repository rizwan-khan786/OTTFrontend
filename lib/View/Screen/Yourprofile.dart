// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Addprofile.dart';

// // GetX Controller for Profile Selection
// class ProfileController extends GetxController {
//   RxInt selectedProfileIndex = (-1).obs;
  
//   final List<Map<String, dynamic>> profiles = [
//     {
//       'name': 'Shubham gharat',
//       'color': const Color(0xFF3A8FB7),
//       'icon': Icons.person,
//     },
//     {
//       'name': 'Shubham Gharat2',
//       'color': const Color(0xFFB73A5C),
//       'icon': Icons.person,
//     },
//     {
//       'name': 'Kids',
//       'color': const Color(0xFFD4A057),
//       'icon': Icons.child_care,
//     },
//   ];

//   void selectProfile(int index) {
//     selectedProfileIndex.value = index;
//     // Navigate to home or perform action
//     Future.delayed(const Duration(milliseconds: 300), () {
//       Get.snackbar(
//         'Profile Selected',
//         'Welcome ${profiles[index]['name']}!',
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.grey[800],
//         colorText: Colors.white,
//         duration: const Duration(seconds: 2),
//       );
//     });
//   }

//   void editProfiles() {
//     Get.snackbar(
//       'Edit Profiles',
//       'Edit profiles functionality',
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.grey[800],
//       colorText: Colors.white,
//     );
//   }

//   void learnMore() {
//     Get.snackbar(
//       'Learn More',
//       'Learn more about profiles',
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.grey[800],
//       colorText: Colors.white,
//     );
//   }

//   void addNewProfile() {
//     Get.snackbar(
//       'Add Profile',
//       'Create a new profile',
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.grey[800],
//       colorText: Colors.white,
//     );
//   }
// }

// class Yourprofile extends StatelessWidget {
//   const Yourprofile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     final ProfileController controller = Get.put(ProfileController());
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Center(
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: width * 0.05,
//                     vertical: height * 0.02,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       // Title
//                       Text(
//                         "Who's watching?",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: orientation == Orientation.portrait 
//                               ? width * 0.07 
//                               : width * 0.045,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
                      
//                       SizedBox(height: orientation == Orientation.portrait 
//                           ? height * 0.05 
//                           : height * 0.06),
                      
//                       // Profile Grid
//                       _buildProfileGrid(
//                         controller, 
//                         width, 
//                         height, 
//                         orientation
//                       ),
                      
//                       SizedBox(height: orientation == Orientation.portrait 
//                           ? height * 0.08 
//                           : height * 0.1),
                      
//                       // Edit Profiles Button
//                       _buildActionButton(
//                         text: 'Edit profiles',
//                         onTap: () => controller.editProfiles(),
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                       ),
                      
//                       SizedBox(height: height * 0.02),
                      
//                       // Learn More Button
//                       _buildActionButton(
//                         text: 'Learn more',
//                         onTap: () => controller.learnMore(),
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildProfileGrid(
//     ProfileController controller,
//     double width,
//     double height,
//     Orientation orientation,
//   ) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: width * 0.05,
//         mainAxisSpacing: height * 0.03,
//         childAspectRatio: orientation == Orientation.portrait ? 0.9 : 1.5,
//       ),
//       itemCount: controller.profiles.length + 1,
//       itemBuilder: (context, index) {
//         if (index == controller.profiles.length) {
//           return _buildNewProfileCard(
//             controller,
//             width,
//             height,
//             orientation,
//           );
//         }
//         return _buildProfileCard(
//           controller,
//           index,
//           width,
//           height,
//           orientation,
//         );
//       },
//     );
//   }

//   Widget _buildProfileCard(
//     ProfileController controller,
//     int index,
//     double width,
//     double height,
//     Orientation orientation,
//   ) {
//     final profile = controller.profiles[index];
    
//     return GestureDetector(
//       onTap: () => controller.selectProfile(index),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: orientation == Orientation.portrait 
//                 ? width * 0.3 
//                 : width * 0.18,
//             height: orientation == Orientation.portrait 
//                 ? width * 0.3 
//                 : width * 0.18,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   profile['color'].withOpacity(0.8),
//                   profile['color'].withOpacity(0.4),
//                 ],
//               ),
//             ),
//             child: Icon(
//               profile['icon'],
//               color: Colors.white.withOpacity(0.9),
//               size: orientation == Orientation.portrait 
//                   ? width * 0.15 
//                   : width * 0.09,
//             ),
//           ),
//           SizedBox(height: height * 0.015),
//           Text(
//             profile['name'],
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: orientation == Orientation.portrait 
//                   ? width * 0.04 
//                   : width * 0.025,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildNewProfileCard(
//     ProfileController controller,
//     double width,
//     double height,
//     Orientation orientation,
//   ) {
//     return GestureDetector(
//       onTap: () => controller.addNewProfile(),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           InkWell(
//             onTap: (){
//               Get.to(Addprofile());
//             },
//             child: Container(
//               width: orientation == Orientation.portrait 
//                   ? width * 0.3 
//                   : width * 0.18,
//               height: orientation == Orientation.portrait 
//                   ? width * 0.3 
//                   : width * 0.18,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.grey[800],
//               ),
//               child: Icon(
//                 Icons.add,
//                 color: Colors.white,
//                 size: orientation == Orientation.portrait 
//                     ? width * 0.12 
//                     : width * 0.07,
//               ),
//             ),
//           ),
//           SizedBox(height: height * 0.015),
//           Text(
//             'New',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: orientation == Orientation.portrait 
//                   ? width * 0.04 
//                   : width * 0.025,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButton({
//     required String text,
//     required VoidCallback onTap,
//     required double width,
//     required double height,
//     required Orientation orientation,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: width * 0.9,
//         padding: EdgeInsets.symmetric(
//           vertical: orientation == Orientation.portrait 
//               ? height * 0.02 
//               : height * 0.025,
//         ),
//         decoration: BoxDecoration(
//           color: Colors.grey[800],
//           borderRadius: BorderRadius.circular(width * 0.015),
//         ),
//         alignment: Alignment.center,
//         child: Text(
//           text,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: orientation == Orientation.portrait 
//                 ? width * 0.045 
//                 : width * 0.028,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//       ),
//     );
//   }
// }



// ============== YourProfile.dart ==============
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott/View/Screen/Addprofile.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class YourProfileController extends GetxController {
  RxInt selectedProfileIndex = (-1).obs;
  RxString userName = ''.obs;
  RxString userEmail = ''.obs;
  RxBool isLoading = false.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    try {
      isLoading.value = true;
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      
      if (token == null) {
        print('No token found');
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

      print('YourProfile Response Status Code: ${response.statusCode}');
      print('YourProfile Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        
        if (responseData['user'] != null) {
          userName.value = responseData['user']['name'] ?? '';
          userEmail.value = responseData['user']['email'] ?? '';
        }
      } else {
        print('Failed to fetch profile');
      }
    } catch (e) {
      print('Error fetching profile: $e');
    } finally {
      isLoading.value = false;
    }
  }

  List<Map<String, dynamic>> get profiles {
    return [
      {
        'name': userName.value.isNotEmpty ? userName.value : 'User',
        'color': const Color(0xFF3A8FB7),
        'icon': Icons.person,
      },
      {
        'name': 'Kids',
        'color': const Color(0xFFD4A057),
        'icon': Icons.child_care,
      },
    ];
  }

  void selectProfile(int index) {
    selectedProfileIndex.value = index;
    Future.delayed(const Duration(milliseconds: 300), () {
      Get.snackbar(
        'Profile Selected',
        'Welcome ${profiles[index]['name']}!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.grey[800],
        colorText: Colors.white,
        duration: const Duration(seconds: 2),
      );
    });
  }

  void editProfiles() {
    Get.snackbar(
      'Edit Profiles',
      'Edit profiles functionality',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey[800],
      colorText: Colors.white,
    );
  }

  void learnMore() {
    Get.snackbar(
      'Learn More',
      'Learn more about profiles',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.grey[800],
      colorText: Colors.white,
    );
  }
}

class Yourprofile extends StatelessWidget {
  const Yourprofile({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    final YourProfileController controller = Get.put(YourProfileController());
    
    return OrientationBuilder(
      builder: (context, orientation) {
        return Scaffold(
          backgroundColor: const Color(0xFF0A0A0A),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05,
                    vertical: height * 0.02,
                  ),
                  child: Obx(() => controller.isLoading.value
                    ? Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Who's watching?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: orientation == Orientation.portrait 
                                  ? width * 0.07 
                                  : width * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                          SizedBox(height: orientation == Orientation.portrait 
                              ? height * 0.05 
                              : height * 0.06),
                          
                          _buildProfileGrid(
                            controller, 
                            width, 
                            height, 
                            orientation
                          ),
                          
                          SizedBox(height: orientation == Orientation.portrait 
                              ? height * 0.08 
                              : height * 0.1),
                          
                          _buildActionButton(
                            text: 'Edit profiles',
                            onTap: () => controller.editProfiles(),
                            width: width,
                            height: height,
                            orientation: orientation,
                          ),
                          
                          SizedBox(height: height * 0.02),
                          
                          _buildActionButton(
                            text: 'Learn more',
                            onTap: () => controller.learnMore(),
                            width: width,
                            height: height,
                            orientation: orientation,
                          ),
                        ],
                      ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProfileGrid(
    YourProfileController controller,
    double width,
    double height,
    Orientation orientation,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: width * 0.05,
        mainAxisSpacing: height * 0.03,
        childAspectRatio: orientation == Orientation.portrait ? 0.9 : 1.5,
      ),
      itemCount: controller.profiles.length + 1,
      itemBuilder: (context, index) {
        if (index == controller.profiles.length) {
          return _buildNewProfileCard(
            controller,
            width,
            height,
            orientation,
          );
        }
        return _buildProfileCard(
          controller,
          index,
          width,
          height,
          orientation,
        );
      },
    );
  }

  Widget _buildProfileCard(
    YourProfileController controller,
    int index,
    double width,
    double height,
    Orientation orientation,
  ) {
    final profile = controller.profiles[index];
    
    return GestureDetector(
      onTap: () => controller.selectProfile(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: orientation == Orientation.portrait 
                ? width * 0.3 
                : width * 0.18,
            height: orientation == Orientation.portrait 
                ? width * 0.3 
                : width * 0.18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  profile['color'].withOpacity(0.8),
                  profile['color'].withOpacity(0.4),
                ],
              ),
            ),
            child: Icon(
              profile['icon'],
              color: Colors.white.withOpacity(0.9),
              size: orientation == Orientation.portrait 
                  ? width * 0.15 
                  : width * 0.09,
            ),
          ),
          SizedBox(height: height * 0.015),
          Text(
            profile['name'],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: orientation == Orientation.portrait 
                  ? width * 0.04 
                  : width * 0.025,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildNewProfileCard(
    YourProfileController controller,
    double width,
    double height,
    Orientation orientation,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() => Addprofile());
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: orientation == Orientation.portrait 
                ? width * 0.3 
                : width * 0.18,
            height: orientation == Orientation.portrait 
                ? width * 0.3 
                : width * 0.18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[800],
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: orientation == Orientation.portrait 
                  ? width * 0.12 
                  : width * 0.07,
            ),
          ),
          SizedBox(height: height * 0.015),
          Text(
            'New',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: orientation == Orientation.portrait 
                  ? width * 0.04 
                  : width * 0.025,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required String text,
    required VoidCallback onTap,
    required double width,
    required double height,
    required Orientation orientation,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * 0.9,
        padding: EdgeInsets.symmetric(
          vertical: orientation == Orientation.portrait 
              ? height * 0.02 
              : height * 0.025,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(width * 0.015),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: orientation == Orientation.portrait 
                ? width * 0.045 
                : width * 0.028,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}