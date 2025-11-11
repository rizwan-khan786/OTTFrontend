
// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:get/get.dart';
// // // // // // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // // // // // import 'package:ott/View/Screen/Searchscreen.dart';

// // // // // // // // // GetX Controller
// // // // // // // // class HomeController extends GetxController {
// // // // // // // //   RxInt currentBannerIndex = 0.obs;
// // // // // // // //   RxString selectedTab = 'All'.obs;
  
// // // // // // // //   List<String> bannerImages = [
// // // // // // // //     'assets/Banner1.png',
// // // // // // // //     'assets/Banner1.png',
// // // // // // // //     'assets/Banner1.png',
// // // // // // // //   ];
  
// // // // // // // //   List<String> tabs = ['All', 'Movies', 'Series'];
  
// // // // // // // //   List<Map<String, dynamic>> continueWatching = [
// // // // // // // //     {
// // // // // // // //       'title': 'House M.D.',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //       'progress': 0.3,
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'The Expanse',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //       'progress': 0.7,
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'Breaking Bad',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //       'progress': 0.5,
// // // // // // // //     },
// // // // // // // //   ];
  
// // // // // // // //   List<Map<String, dynamic>> primeMovies = [
// // // // // // // //     {
// // // // // // // //       'title': 'The Good Doctor',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'Naruto Shippuden',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'Supernatural',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'The Flash',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //   ];
  
// // // // // // // //   List<Map<String, dynamic>> paramountMovies = [
// // // // // // // //     {
// // // // // // // //       'title': 'Mission Impossible',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'Top Gun Maverick',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //     {
// // // // // // // //       'title': 'Transformers',
// // // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // // //     },
// // // // // // // //   ];
  
// // // // // // // //   void changeBanner(int index) {
// // // // // // // //     currentBannerIndex.value = index;
// // // // // // // //   }
  
// // // // // // // //   void changeTab(String tab) {
// // // // // // // //     selectedTab.value = tab;
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class Homescreen extends StatelessWidget {
// // // // // // // //   const Homescreen({super.key});

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     final HomeController controller = Get.put(HomeController());

// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // // // //       body: OrientationBuilder(
// // // // // // // //         builder: (context, orientation) {
// // // // // // // //           double height = MediaQuery.of(context).size.height;
// // // // // // // //           double width = MediaQuery.of(context).size.width;
// // // // // // // //           bool isLandscape = orientation == Orientation.landscape;

// // // // // // // //           return SafeArea(
// // // // // // // //             child: SingleChildScrollView(
// // // // // // // //               child: Column(
// // // // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                 children: [
// // // // // // // //                   // Header
// // // // // // // //                   _buildHeader(width, height, isLandscape),
                  
// // // // // // // //                   // Tabs
// // // // // // // //                   _buildTabs(controller, width, height, isLandscape),
                  
// // // // // // // //                   // Banner Slider
// // // // // // // //                   _buildBannerSlider(controller, width, height, isLandscape),
                  
// // // // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.03)),
                  
// // // // // // // //                   // Continue Watching Section
// // // // // // // //                   _buildContinueWatching(controller, width, height, isLandscape),
                  
// // // // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.03)),
                  
// // // // // // // //                   // Prime Most Viewed Section
// // // // // // // //                   _buildSection(
// // // // // // // //                     'Prime - Most viewed',
// // // // // // // //                     controller.primeMovies,
// // // // // // // //                     width,
// // // // // // // //                     height,
// // // // // // // //                     Colors.blue,
// // // // // // // //                     'Prime',
// // // // // // // //                     isLandscape,
// // // // // // // //                   ),
                  
// // // // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.03)),
                  
// // // // // // // //                   // Paramount Most Viewed Section
// // // // // // // //                   _buildSection(
// // // // // // // //                     'Paramount+ - Most viewed',
// // // // // // // //                     controller.paramountMovies,
// // // // // // // //                     width,
// // // // // // // //                     height,
// // // // // // // //                     const Color(0xFF1E90FF),
// // // // // // // //                     'Paramount+',
// // // // // // // //                     isLandscape,
// // // // // // // //                   ),
                  
// // // // // // // //                   SizedBox(height: height * 0.1),
// // // // // // // //                 ],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           );
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // // // // // //     return Padding(
// // // // // // // //       padding: EdgeInsets.symmetric(
// // // // // // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // // // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // // // // // //       ),
// // // // // // // //       child: Row(
// // // // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // // //         children: [
// // // // // // // //           Image.asset(
// // // // // // // //             'assets/prime_logo.png',
// // // // // // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // // // // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // // // // // //             errorBuilder: (context, error, stackTrace) {
// // // // // // // //               return Text(
// // // // // // // //                 'prime video',
// // // // // // // //                 style: TextStyle(
// // // // // // // //                   color: Colors.white,
// // // // // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // // // // //                   fontWeight: FontWeight.bold,
// // // // // // // //                 ),
// // // // // // // //               );
// // // // // // // //             },
// // // // // // // //           ),
// // // // // // // //           Row(
// // // // // // // //             children: [
// // // // // // // //               InkWell(
// // // // // // // //                 onTap: () {
                  
// // // // // // // //                   Get.to(Searchscreen());
// // // // // // // //                 },
// // // // // // // //                 child: Icon(
// // // // // // // //                   Icons.search,
// // // // // // // //                   color: Colors.white,
// // // // // // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // // //               Icon(
// // // // // // // //                 Icons.cast,
// // // // // // // //                 color: Colors.white,
// // // // // // // //                 size: width * (isLandscape ? 0.04 : 0.06),
// // // // // // // //               ),
// // // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // // //               CircleAvatar(
// // // // // // // //                 radius: width * (isLandscape ? 0.025 : 0.04),
// // // // // // // //                 backgroundColor: Colors.blue,
// // // // // // // //                 child: Icon(
// // // // // // // //                   Icons.person,
// // // // // // // //                   color: Colors.white,
// // // // // // // //                   size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ],
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildTabs(HomeController controller, double width, double height, bool isLandscape) {
// // // // // // // //     return Padding(
// // // // // // // //       padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //       child: Row(
// // // // // // // //         children: controller.tabs.map((tab) {
// // // // // // // //           return Obx(() => GestureDetector(
// // // // // // // //             onTap: () => controller.changeTab(tab),
// // // // // // // //             child: Container(
// // // // // // // //               margin: EdgeInsets.only(right: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // // //               padding: EdgeInsets.symmetric(
// // // // // // // //                 horizontal: width * (isLandscape ? 0.025 : 0.04),
// // // // // // // //                 vertical: height * (isLandscape ? 0.015 : 0.01),
// // // // // // // //               ),
// // // // // // // //               decoration: BoxDecoration(
// // // // // // // //                 color: controller.selectedTab.value == tab
// // // // // // // //                     ? Colors.white
// // // // // // // //                     : Colors.transparent,
// // // // // // // //                 borderRadius: BorderRadius.circular(20),
// // // // // // // //                 border: Border.all(
// // // // // // // //                   color: Colors.grey[600]!,
// // // // // // // //                   width: 1,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               child: Text(
// // // // // // // //                 tab,
// // // // // // // //                 style: TextStyle(
// // // // // // // //                   color: controller.selectedTab.value == tab
// // // // // // // //                       ? Colors.black
// // // // // // // //                       : Colors.white,
// // // // // // // //                   fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // // // // //                   fontWeight: FontWeight.w500,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           ));
// // // // // // // //         }).toList(),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // // // // // //     return Column(
// // // // // // // //       children: [
// // // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // // //         SizedBox(
// // // // // // // //           height: height * (isLandscape ? 0.65 : 0.55),
// // // // // // // //           child: PageView.builder(
// // // // // // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // // // // // //             itemCount: controller.bannerImages.length,
// // // // // // // //             itemBuilder: (context, index) {
// // // // // // // //               return Container(
// // // // // // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //                 decoration: BoxDecoration(
// // // // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // // // //                   image: DecorationImage(
// // // // // // // //                     image: AssetImage(controller.bannerImages[index]),
// // // // // // // //                     fit: BoxFit.cover,
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //                 child: Container(
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // // //                     gradient: LinearGradient(
// // // // // // // //                       begin: Alignment.topCenter,
// // // // // // // //                       end: Alignment.bottomCenter,
// // // // // // // //                       colors: [
// // // // // // // //                         Colors.transparent,
// // // // // // // //                         Colors.black.withOpacity(0.7),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                   child: Column(
// // // // // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                     children: [
// // // // // // // //                       Padding(
// // // // // // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //                         child: Column(
// // // // // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                           children: [
// // // // // // // //                             Text(
// // // // // // // //                               'AMAZON ORIGINAL',
// // // // // // // //                               style: TextStyle(
// // // // // // // //                                 color: Colors.grey[300],
// // // // // // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // // // //                                 fontWeight: FontWeight.w500,
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // // // // //                             Text(
// // // // // // // //                               'THE BOYS',
// // // // // // // //                               style: TextStyle(
// // // // // // // //                                 color: Colors.white,
// // // // // // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // // // // // //                             Row(
// // // // // // // //                               children: [
// // // // // // // //                                 Container(
// // // // // // // //                                   padding: EdgeInsets.symmetric(
// // // // // // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // // // // //                                   ),
// // // // // // // //                                   decoration: BoxDecoration(
// // // // // // // //                                     color: Colors.blue,
// // // // // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // // // // //                                   ),
// // // // // // // //                                   child: Row(
// // // // // // // //                                     mainAxisSize: MainAxisSize.min,
// // // // // // // //                                     children: [
// // // // // // // //                                       Icon(
// // // // // // // //                                         Icons.check_circle,
// // // // // // // //                                         color: Colors.white,
// // // // // // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // // // // // //                                       ),
// // // // // // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // // // // // //                                       Text(
// // // // // // // //                                         'Included with prime',
// // // // // // // //                                         style: TextStyle(
// // // // // // // //                                           color: Colors.white,
// // // // // // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // // // //                                           fontWeight: FontWeight.w500,
// // // // // // // //                                         ),
// // // // // // // //                                       ),
// // // // // // // //                                     ],
// // // // // // // //                                   ),
// // // // // // // //                                 ),
// // // // // // // //                                 const Spacer(),
// // // // // // // //                                 Container(
// // // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // // // //                                   decoration: BoxDecoration(
// // // // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // // // //                                     shape: BoxShape.circle,
// // // // // // // //                                   ),
// // // // // // // //                                   child: Icon(
// // // // // // // //                                     Icons.add,
// // // // // // // //                                     color: Colors.white,
// // // // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // // //                                   ),
// // // // // // // //                                 ),
// // // // // // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // // //                                 Container(
// // // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // // // //                                   decoration: BoxDecoration(
// // // // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // // // //                                     shape: BoxShape.circle,
// // // // // // // //                                   ),
// // // // // // // //                                   child: Icon(
// // // // // // // //                                     Icons.info_outline,
// // // // // // // //                                     color: Colors.white,
// // // // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // // //                                   ),
// // // // // // // //                                 ),
// // // // // // // //                               ],
// // // // // // // //                             ),
// // // // // // // //                           ],
// // // // // // // //                         ),
// // // // // // // //                       ),
// // // // // // // //                     ],
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               );
// // // // // // // //             },
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // // //         // Page Indicators
// // // // // // // //         Obx(() => Row(
// // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //           children: List.generate(
// // // // // // // //             controller.bannerImages.length,
// // // // // // // //             (index) => Container(
// // // // // // // //               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // // // // // //               width: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //               height: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //               decoration: BoxDecoration(
// // // // // // // //                 shape: BoxShape.circle,
// // // // // // // //                 color: controller.currentBannerIndex.value == index
// // // // // // // //                     ? Colors.blue
// // // // // // // //                     : Colors.grey[600],
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //         )),
// // // // // // // //       ],
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildContinueWatching(HomeController controller, double width, double height, bool isLandscape) {
// // // // // // // //     return Column(
// // // // // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //       children: [
// // // // // // // //         Padding(
// // // // // // // //           padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //           child: Text(
// // // // // // // //             'Keep watching',
// // // // // // // //             style: TextStyle(
// // // // // // // //               color: Colors.white,
// // // // // // // //               fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // // // // //               fontWeight: FontWeight.bold,
// // // // // // // //             ),
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // // //         SizedBox(
// // // // // // // //           height: height * (isLandscape ? 0.35 : 0.22),
// // // // // // // //           child: ListView.builder(
// // // // // // // //             scrollDirection: Axis.horizontal,
// // // // // // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //             itemCount: controller.continueWatching.length,
// // // // // // // //             itemBuilder: (context, index) {
// // // // // // // //               final item = controller.continueWatching[index];
// // // // // // // //               return GestureDetector(
// // // // // // // //                 onTap: () {
// // // // // // // //                   Get.to(() => Movieplayerscreen());
// // // // // // // //                 },
// // // // // // // //                 child: Container(
// // // // // // // //                   width: width * (isLandscape ? 0.4 : 0.65),
// // // // // // // //                   margin: EdgeInsets.only(right: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // // //                   child: Column(
// // // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                     children: [
// // // // // // // //                       Expanded(
// // // // // // // //                         child: Container(
// // // // // // // //                           decoration: BoxDecoration(
// // // // // // // //                             borderRadius: BorderRadius.circular(8),
// // // // // // // //                             image: DecorationImage(
// // // // // // // //                               image: AssetImage(item['image']),
// // // // // // // //                               fit: BoxFit.cover,
// // // // // // // //                             ),
// // // // // // // //                           ),
// // // // // // // //                           child: Stack(
// // // // // // // //                             children: [
// // // // // // // //                               Positioned(
// // // // // // // //                                 left: width * (isLandscape ? 0.02 : 0.03),
// // // // // // // //                                 top: height * (isLandscape ? 0.03 : 0.02),
// // // // // // // //                                 child: Container(
// // // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // // // //                                   decoration: BoxDecoration(
// // // // // // // //                                     color: Colors.black.withOpacity(0.6),
// // // // // // // //                                     shape: BoxShape.circle,
// // // // // // // //                                   ),
// // // // // // // //                                   child: Icon(
// // // // // // // //                                     Icons.play_arrow,
// // // // // // // //                                     color: Colors.white,
// // // // // // // //                                     size: width * (isLandscape ? 0.04 : 0.06),
// // // // // // // //                                   ),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                               Positioned(
// // // // // // // //                                 bottom: 0,
// // // // // // // //                                 left: 0,
// // // // // // // //                                 right: 0,
// // // // // // // //                                 child: Container(
// // // // // // // //                                   height: 3,
// // // // // // // //                                   decoration: BoxDecoration(
// // // // // // // //                                     color: Colors.grey[700],
// // // // // // // //                                     borderRadius: const BorderRadius.only(
// // // // // // // //                                       bottomLeft: Radius.circular(8),
// // // // // // // //                                       bottomRight: Radius.circular(8),
// // // // // // // //                                     ),
// // // // // // // //                                   ),
// // // // // // // //                                   child: FractionallySizedBox(
// // // // // // // //                                     alignment: Alignment.centerLeft,
// // // // // // // //                                     widthFactor: item['progress'],
// // // // // // // //                                     child: Container(
// // // // // // // //                                       decoration: const BoxDecoration(
// // // // // // // //                                         color: Colors.blue,
// // // // // // // //                                         borderRadius: BorderRadius.only(
// // // // // // // //                                           bottomLeft: Radius.circular(8),
// // // // // // // //                                         ),
// // // // // // // //                                       ),
// // // // // // // //                                     ),
// // // // // // // //                                   ),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                             ],
// // // // // // // //                           ),
// // // // // // // //                         ),
// // // // // // // //                       ),
// // // // // // // //                     ],
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               );
// // // // // // // //             },
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ],
// // // // // // // //     );
// // // // // // // //   }

// // // // // // // //   Widget _buildSection(
// // // // // // // //     String title,
// // // // // // // //     List<Map<String, dynamic>> items,
// // // // // // // //     double width,
// // // // // // // //     double height,
// // // // // // // //     Color brandColor,
// // // // // // // //     String brandName,
// // // // // // // //     bool isLandscape,
// // // // // // // //   ) {
// // // // // // // //     return Column(
// // // // // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //       children: [
// // // // // // // //         Padding(
// // // // // // // //           padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //           child: Row(
// // // // // // // //             children: [
// // // // // // // //               Container(
// // // // // // // //                 width: width * (isLandscape ? 0.05 : 0.08),
// // // // // // // //                 height: width * (isLandscape ? 0.05 : 0.08),
// // // // // // // //                 decoration: BoxDecoration(
// // // // // // // //                   color: brandColor,
// // // // // // // //                   shape: BoxShape.circle,
// // // // // // // //                 ),
// // // // // // // //                 child: Center(
// // // // // // // //                   child: Text(
// // // // // // // //                     brandName[0],
// // // // // // // //                     style: TextStyle(
// // // // // // // //                       color: Colors.white,
// // // // // // // //                       fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // // //               Text(
// // // // // // // //                 title,
// // // // // // // //                 style: TextStyle(
// // // // // // // //                   color: Colors.white,
// // // // // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // // // // // //                   fontWeight: FontWeight.bold,
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // // //         SizedBox(
// // // // // // // //           height: height * (isLandscape ? 0.4 : 0.25),
// // // // // // // //           child: ListView.builder(
// // // // // // // //             scrollDirection: Axis.horizontal,
// // // // // // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // // //             itemCount: items.length,
// // // // // // // //             itemBuilder: (context, index) {
// // // // // // // //               final item = items[index];
// // // // // // // //               return Container(
// // // // // // // //                 width: width * (isLandscape ? 0.2 : 0.35),
// // // // // // // //                 margin: EdgeInsets.only(right: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // // //                 child: Column(
// // // // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                   children: [
// // // // // // // //                     Expanded(
// // // // // // // //                       child: Container(
// // // // // // // //                         decoration: BoxDecoration(
// // // // // // // //                           borderRadius: BorderRadius.circular(8),
// // // // // // // //                           image: DecorationImage(
// // // // // // // //                             image: AssetImage(item['image']),
// // // // // // // //                             fit: BoxFit.cover,
// // // // // // // //                           ),
// // // // // // // //                         ),
// // // // // // // //                         child: Stack(
// // // // // // // //                           children: [
// // // // // // // //                             Positioned(
// // // // // // // //                               left: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //                               top: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //                               child: Container(
// // // // // // // //                                 padding: EdgeInsets.all(width * (isLandscape ? 0.01 : 0.015)),
// // // // // // // //                                 decoration: BoxDecoration(
// // // // // // // //                                   color: Colors.black.withOpacity(0.6),
// // // // // // // //                                   shape: BoxShape.circle,
// // // // // // // //                                 ),
// // // // // // // //                                 child: Icon(
// // // // // // // //                                   Icons.play_arrow,
// // // // // // // //                                   color: Colors.white,
// // // // // // // //                                   size: width * (isLandscape ? 0.03 : 0.04),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                             Positioned(
// // // // // // // //                               right: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //                               top: width * (isLandscape ? 0.015 : 0.02),
// // // // // // // //                               child: Container(
// // // // // // // //                                 padding: EdgeInsets.all(width * (isLandscape ? 0.008 : 0.01)),
// // // // // // // //                                 decoration: BoxDecoration(
// // // // // // // //                                   color: Colors.black.withOpacity(0.6),
// // // // // // // //                                   shape: BoxShape.circle,
// // // // // // // //                                 ),
// // // // // // // //                                 child: Icon(
// // // // // // // //                                   Icons.add,
// // // // // // // //                                   color: Colors.white,
// // // // // // // //                                   size: width * (isLandscape ? 0.03 : 0.04),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                           ],
// // // // // // // //                         ),
// // // // // // // //                       ),
// // // // // // // //                     ),
// // // // // // // //                   ],
// // // // // // // //                 ),
// // // // // // // //               );
// // // // // // // //             },
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ],
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }

// // // // // // // // class VideoDetails extends StatelessWidget {
// // // // // // // //   final String title;
// // // // // // // //   final String image;

// // // // // // // //   const VideoDetails({super.key, required this.title, required this.image});

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // // // //       body: Center(
// // // // // // // //         child: Column(
// // // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //           children: [
// // // // // // // //             Image.asset(image),
// // // // // // // //             SizedBox(height: 20),
// // // // // // // //             Text(
// // // // // // // //               title,
// // // // // // // //               style: const TextStyle(color: Colors.white, fontSize: 24),
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }


// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:get/get.dart';
// // // // // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // // // // import 'package:ott/View/Screen/Searchscreen.dart';

// // // // // // // // GetX Controller
// // // // // // // class HomeController extends GetxController {
// // // // // // //   RxInt currentBannerIndex = 0.obs;
// // // // // // //   RxString selectedTab = 'All'.obs;
  
// // // // // // //   List<String> bannerImages = [
// // // // // // //     'assets/Banner1.png',
// // // // // // //     'assets/Banner1.png',
// // // // // // //     'assets/Banner1.png',
// // // // // // //   ];
  
// // // // // // //   List<String> tabs = ['All', 'Movies', 'Series'];
  
// // // // // // //   // Series 1 Episodes
// // // // // // //   List<Map<String, dynamic>> series1Episodes = [
// // // // // // //     {
// // // // // // //       'title': 'Series 1 - Episode 1',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.3,
// // // // // // //       'episodeNumber': 1,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 1 - Episode 2',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.0,
// // // // // // //       'episodeNumber': 2,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 1 - Episode 3',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.0,
// // // // // // //       'episodeNumber': 3,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 1 - Episode 4',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.0,
// // // // // // //       'episodeNumber': 4,
// // // // // // //     },
// // // // // // //   ];
  
// // // // // // //   // Series 2 Episodes
// // // // // // //   List<Map<String, dynamic>> series2Episodes = [
// // // // // // //     {
// // // // // // //       'title': 'Series 2 - Episode 1',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.7,
// // // // // // //       'episodeNumber': 1,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 2 - Episode 2',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.5,
// // // // // // //       'episodeNumber': 2,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 2 - Episode 3',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.0,
// // // // // // //       'episodeNumber': 3,
// // // // // // //     },
// // // // // // //     {
// // // // // // //       'title': 'Series 2 - Episode 4',
// // // // // // //       'image': 'assets/movieimage.jpg',
// // // // // // //       'progress': 0.0,
// // // // // // //       'episodeNumber': 4,
// // // // // // //     },
// // // // // // //   ];
  
// // // // // // //   void changeBanner(int index) {
// // // // // // //     currentBannerIndex.value = index;
// // // // // // //   }
  
// // // // // // //   void changeTab(String tab) {
// // // // // // //     selectedTab.value = tab;
// // // // // // //   }
// // // // // // // }

// // // // // // // class Homescreen extends StatelessWidget {
// // // // // // //   const Homescreen({super.key});

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     final HomeController controller = Get.put(HomeController());

// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // // //       body: OrientationBuilder(
// // // // // // //         builder: (context, orientation) {
// // // // // // //           double height = MediaQuery.of(context).size.height;
// // // // // // //           double width = MediaQuery.of(context).size.width;
// // // // // // //           bool isLandscape = orientation == Orientation.landscape;

// // // // // // //           return SafeArea(
// // // // // // //             child: SingleChildScrollView(
// // // // // // //               child: Column(
// // // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                 children: [
// // // // // // //                   // Header
// // // // // // //                   _buildHeader(width, height, isLandscape),
                  
// // // // // // //                   // Tabs
// // // // // // //                   _buildTabs(controller, width, height, isLandscape),
                  
// // // // // // //                   // Banner Slider
// // // // // // //                   _buildBannerSlider(controller, width, height, isLandscape),
                  
// // // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.03)),
                  
// // // // // // //                   // Series 1 Section
// // // // // // //                   _buildSeriesSection(
// // // // // // //                     'Series 1',
// // // // // // //                     controller.series1Episodes,
// // // // // // //                     width,
// // // // // // //                     height,
// // // // // // //                     Colors.purple,
// // // // // // //                     isLandscape,
// // // // // // //                   ),
                  
// // // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.03)),
                  
// // // // // // //                   // Series 2 Section
// // // // // // //                   _buildSeriesSection(
// // // // // // //                     'Series 2',
// // // // // // //                     controller.series2Episodes,
// // // // // // //                     width,
// // // // // // //                     height,
// // // // // // //                     Colors.orange,
// // // // // // //                     isLandscape,
// // // // // // //                   ),
                  
// // // // // // //                   SizedBox(height: height * 0.1),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // // // // //     return Padding(
// // // // // // //       padding: EdgeInsets.symmetric(
// // // // // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // // // // //       ),
// // // // // // //       child: Row(
// // // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // //         children: [
// // // // // // //           Image.asset(
// // // // // // //             'assets/prime_logo.png',
// // // // // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // // // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // // // // //             errorBuilder: (context, error, stackTrace) {
// // // // // // //               return Text(
// // // // // // //                 'prime video',
// // // // // // //                 style: TextStyle(
// // // // // // //                   color: Colors.white,
// // // // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                   fontWeight: FontWeight.bold,
// // // // // // //                 ),
// // // // // // //               );
// // // // // // //             },
// // // // // // //           ),
// // // // // // //           Row(
// // // // // // //             children: [
// // // // // // //               InkWell(
// // // // // // //                 onTap: () {
// // // // // // //                   Get.to(Searchscreen());
// // // // // // //                 },
// // // // // // //                 child: Icon(
// // // // // // //                   Icons.search,
// // // // // // //                   color: Colors.white,
// // // // // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // //               Icon(
// // // // // // //                 Icons.cast,
// // // // // // //                 color: Colors.white,
// // // // // // //                 size: width * (isLandscape ? 0.04 : 0.06),
// // // // // // //               ),
// // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // //               CircleAvatar(
// // // // // // //                 radius: width * (isLandscape ? 0.025 : 0.04),
// // // // // // //                 backgroundColor: Colors.blue,
// // // // // // //                 child: Icon(
// // // // // // //                   Icons.person,
// // // // // // //                   color: Colors.white,
// // // // // // //                   size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildTabs(HomeController controller, double width, double height, bool isLandscape) {
// // // // // // //     return Padding(
// // // // // // //       padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // //       child: Row(
// // // // // // //         children: controller.tabs.map((tab) {
// // // // // // //           return Obx(() => GestureDetector(
// // // // // // //             onTap: () => controller.changeTab(tab),
// // // // // // //             child: Container(
// // // // // // //               margin: EdgeInsets.only(right: width * (isLandscape ? 0.02 : 0.04)),
// // // // // // //               padding: EdgeInsets.symmetric(
// // // // // // //                 horizontal: width * (isLandscape ? 0.025 : 0.04),
// // // // // // //                 vertical: height * (isLandscape ? 0.015 : 0.01),
// // // // // // //               ),
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: controller.selectedTab.value == tab
// // // // // // //                     ? Colors.white
// // // // // // //                     : Colors.transparent,
// // // // // // //                 borderRadius: BorderRadius.circular(20),
// // // // // // //                 border: Border.all(
// // // // // // //                   color: Colors.grey[600]!,
// // // // // // //                   width: 1,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               child: Text(
// // // // // // //                 tab,
// // // // // // //                 style: TextStyle(
// // // // // // //                   color: controller.selectedTab.value == tab
// // // // // // //                       ? Colors.black
// // // // // // //                       : Colors.white,
// // // // // // //                   fontSize: width * (isLandscape ? 0.025 : 0.035),
// // // // // // //                   fontWeight: FontWeight.w500,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ));
// // // // // // //         }).toList(),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // // // // //     return Column(
// // // // // // //       children: [
// // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // //         SizedBox(
// // // // // // //           height: height * (isLandscape ? 0.65 : 0.55),
// // // // // // //           child: PageView.builder(
// // // // // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // // // // //             itemCount: controller.bannerImages.length,
// // // // // // //             itemBuilder: (context, index) {
// // // // // // //               return Container(
// // // // // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // //                 decoration: BoxDecoration(
// // // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // // //                   image: DecorationImage(
// // // // // // //                     image: AssetImage(controller.bannerImages[index]),
// // // // // // //                     fit: BoxFit.cover,
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //                 child: Container(
// // // // // // //                   decoration: BoxDecoration(
// // // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // // //                     gradient: LinearGradient(
// // // // // // //                       begin: Alignment.topCenter,
// // // // // // //                       end: Alignment.bottomCenter,
// // // // // // //                       colors: [
// // // // // // //                         Colors.transparent,
// // // // // // //                         Colors.black.withOpacity(0.7),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                   child: Column(
// // // // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                     children: [
// // // // // // //                       Padding(
// // // // // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // // // // //                         child: Column(
// // // // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                           children: [
// // // // // // //                             Text(
// // // // // // //                               'AMAZON ORIGINAL',
// // // // // // //                               style: TextStyle(
// // // // // // //                                 color: Colors.grey[300],
// // // // // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // // //                                 fontWeight: FontWeight.w500,
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // // // //                             Text(
// // // // // // //                               'THE BOYS',
// // // // // // //                               style: TextStyle(
// // // // // // //                                 color: Colors.white,
// // // // // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // // // // //                                 fontWeight: FontWeight.bold,
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // // // // //                             Row(
// // // // // // //                               children: [
// // // // // // //                                 Container(
// // // // // // //                                   padding: EdgeInsets.symmetric(
// // // // // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // // // //                                   ),
// // // // // // //                                   decoration: BoxDecoration(
// // // // // // //                                     color: Colors.blue,
// // // // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // // // //                                   ),
// // // // // // //                                   child: Row(
// // // // // // //                                     mainAxisSize: MainAxisSize.min,
// // // // // // //                                     children: [
// // // // // // //                                       Icon(
// // // // // // //                                         Icons.check_circle,
// // // // // // //                                         color: Colors.white,
// // // // // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // // // // //                                       ),
// // // // // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // // // // //                                       Text(
// // // // // // //                                         'Included with prime',
// // // // // // //                                         style: TextStyle(
// // // // // // //                                           color: Colors.white,
// // // // // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // // //                                           fontWeight: FontWeight.w500,
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                     ],
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                                 const Spacer(),
// // // // // // //                                 Container(
// // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // // //                                   decoration: BoxDecoration(
// // // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // // //                                     shape: BoxShape.circle,
// // // // // // //                                   ),
// // // // // // //                                   child: Icon(
// // // // // // //                                     Icons.add,
// // // // // // //                                     color: Colors.white,
// // // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // //                                 Container(
// // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // // //                                   decoration: BoxDecoration(
// // // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // // //                                     shape: BoxShape.circle,
// // // // // // //                                   ),
// // // // // // //                                   child: Icon(
// // // // // // //                                     Icons.info_outline,
// // // // // // //                                     color: Colors.white,
// // // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                               ],
// // // // // // //                             ),
// // // // // // //                           ],
// // // // // // //                         ),
// // // // // // //                       ),
// // // // // // //                     ],
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               );
// // // // // // //             },
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // //         // Page Indicators
// // // // // // //         Obx(() => Row(
// // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //           children: List.generate(
// // // // // // //             controller.bannerImages.length,
// // // // // // //             (index) => Container(
// // // // // // //               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // // // // //               width: width * (isLandscape ? 0.015 : 0.02),
// // // // // // //               height: width * (isLandscape ? 0.015 : 0.02),
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 shape: BoxShape.circle,
// // // // // // //                 color: controller.currentBannerIndex.value == index
// // // // // // //                     ? Colors.blue
// // // // // // //                     : Colors.grey[600],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         )),
// // // // // // //       ],
// // // // // // //     );
// // // // // // //   }

// // // // // // //   Widget _buildSeriesSection(
// // // // // // //     String title,
// // // // // // //     List<Map<String, dynamic>> episodes,
// // // // // // //     double width,
// // // // // // //     double height,
// // // // // // //     Color brandColor,
// // // // // // //     bool isLandscape,
// // // // // // //   ) {
// // // // // // //     return Column(
// // // // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //       children: [
// // // // // // //         Padding(
// // // // // // //           padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // //           child: Row(
// // // // // // //             children: [
// // // // // // //               Container(
// // // // // // //                 width: width * (isLandscape ? 0.05 : 0.08),
// // // // // // //                 height: width * (isLandscape ? 0.05 : 0.08),
// // // // // // //                 decoration: BoxDecoration(
// // // // // // //                   color: brandColor,
// // // // // // //                   shape: BoxShape.circle,
// // // // // // //                 ),
// // // // // // //                 child: Center(
// // // // // // //                   child: Icon(
// // // // // // //                     Icons.play_circle_filled,
// // // // // // //                     color: Colors.white,
// // // // // // //                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // //               Text(
// // // // // // //                 title,
// // // // // // //                 style: TextStyle(
// // // // // // //                   color: Colors.white,
// // // // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // // // //                   fontWeight: FontWeight.bold,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // // //         SizedBox(
// // // // // // //           height: height * (isLandscape ? 0.35 : 0.22),
// // // // // // //           child: ListView.builder(
// // // // // // //             scrollDirection: Axis.horizontal,
// // // // // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // // //             itemCount: episodes.length,
// // // // // // //             itemBuilder: (context, index) {
// // // // // // //               final episode = episodes[index];
// // // // // // //               return GestureDetector(
// // // // // // //                 onTap: () {
// // // // // // //                   Get.to(() => Movieplayerscreen());
// // // // // // //                 },
// // // // // // //                 child: Container(
// // // // // // //                   width: width * (isLandscape ? 0.4 : 0.65),
// // // // // // //                   margin: EdgeInsets.only(right: width * (isLandscape ? 0.02 : 0.03)),
// // // // // // //                   child: Column(
// // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                     children: [
// // // // // // //                       Expanded(
// // // // // // //                         child: Container(
// // // // // // //                           decoration: BoxDecoration(
// // // // // // //                             borderRadius: BorderRadius.circular(8),
// // // // // // //                             image: DecorationImage(
// // // // // // //                               image: AssetImage(episode['image']),
// // // // // // //                               fit: BoxFit.cover,
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           child: Stack(
// // // // // // //                             children: [
// // // // // // //                               // Episode Number Badge
// // // // // // //                               Positioned(
// // // // // // //                                 left: width * (isLandscape ? 0.02 : 0.03),
// // // // // // //                                 top: height * (isLandscape ? 0.02 : 0.015),
// // // // // // //                                 child: Container(
// // // // // // //                                   padding: EdgeInsets.symmetric(
// // // // // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // // // //                                   ),
// // // // // // //                                   decoration: BoxDecoration(
// // // // // // //                                     color: brandColor,
// // // // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // // // //                                   ),
// // // // // // //                                   child: Text(
// // // // // // //                                     'EP ${episode['episodeNumber']}',
// // // // // // //                                     style: TextStyle(
// // // // // // //                                       color: Colors.white,
// // // // // // //                                       fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // // //                                       fontWeight: FontWeight.bold,
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                               ),
// // // // // // //                               // Play Button
// // // // // // //                               Center(
// // // // // // //                                 child: Container(
// // // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.02 : 0.03)),
// // // // // // //                                   decoration: BoxDecoration(
// // // // // // //                                     color: Colors.black.withOpacity(0.6),
// // // // // // //                                     shape: BoxShape.circle,
// // // // // // //                                   ),
// // // // // // //                                   child: Icon(
// // // // // // //                                     Icons.play_arrow,
// // // // // // //                                     color: Colors.white,
// // // // // // //                                     size: width * (isLandscape ? 0.05 : 0.08),
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                               ),
// // // // // // //                               // Progress Bar
// // // // // // //                               if (episode['progress'] > 0)
// // // // // // //                                 Positioned(
// // // // // // //                                   bottom: 0,
// // // // // // //                                   left: 0,
// // // // // // //                                   right: 0,
// // // // // // //                                   child: Container(
// // // // // // //                                     height: 3,
// // // // // // //                                     decoration: BoxDecoration(
// // // // // // //                                       color: Colors.grey[700],
// // // // // // //                                       borderRadius: const BorderRadius.only(
// // // // // // //                                         bottomLeft: Radius.circular(8),
// // // // // // //                                         bottomRight: Radius.circular(8),
// // // // // // //                                       ),
// // // // // // //                                     ),
// // // // // // //                                     child: FractionallySizedBox(
// // // // // // //                                       alignment: Alignment.centerLeft,
// // // // // // //                                       widthFactor: episode['progress'],
// // // // // // //                                       child: Container(
// // // // // // //                                         decoration: BoxDecoration(
// // // // // // //                                           color: brandColor,
// // // // // // //                                           borderRadius: const BorderRadius.only(
// // // // // // //                                             bottomLeft: Radius.circular(8),
// // // // // // //                                           ),
// // // // // // //                                         ),
// // // // // // //                                       ),
// // // // // // //                                     ),
// // // // // // //                                   ),
// // // // // // //                                 ),
// // // // // // //                             ],
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                       ),
// // // // // // //                       SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // // // //                       Text(
// // // // // // //                         episode['title'],
// // // // // // //                         style: TextStyle(
// // // // // // //                           color: Colors.white,
// // // // // // //                           fontSize: width * (isLandscape ? 0.02 : 0.035),
// // // // // // //                           fontWeight: FontWeight.w500,
// // // // // // //                         ),
// // // // // // //                         maxLines: 1,
// // // // // // //                         overflow: TextOverflow.ellipsis,
// // // // // // //                       ),
// // // // // // //                     ],
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               );
// // // // // // //             },
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ],
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // class VideoDetails extends StatelessWidget {
// // // // // // //   final String title;
// // // // // // //   final String image;

// // // // // // //   const VideoDetails({super.key, required this.title, required this.image});

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // // //       body: Center(
// // // // // // //         child: Column(
// // // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //           children: [
// // // // // // //             Image.asset(image),
// // // // // // //             SizedBox(height: 20),
// // // // // // //             Text(
// // // // // // //               title,
// // // // // // //               style: const TextStyle(color: Colors.white, fontSize: 24),
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }                                           





// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:get/get.dart';
// // // // // // import 'package:ott/View/Screen/Episodedeailpage.dart';
// // // // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // // // import 'package:ott/View/Screen/Searchscreen.dart';

// // // // // // // GetX Controller
// // // // // // class HomeController extends GetxController {
// // // // // //   RxInt currentBannerIndex = 0.obs;
  
// // // // // //   List<String> bannerImages = [
// // // // // //     'assets/Banner1.png',
// // // // // //     'assets/Banner1.png',
// // // // // //     'assets/Banner1.png',
// // // // // //   ];
  
// // // // // //   List<Map<String, dynamic>> series = [
// // // // // //     {
// // // // // //       'id': 1,
// // // // // //       'title': 'Series 1',
// // // // // //       'image': 'assets/movieimage.jpg',
// // // // // //       'description': 'An epic tale of adventure, mystery, and drama that will keep you on the edge of your seat.',
// // // // // //       'rating': '8.5',
// // // // // //       'year': '2023',
// // // // // //       'seasons': 2,
// // // // // //       'episodes': [
// // // // // //         {
// // // // // //           'season': 1,
// // // // // //           'episodeList': [
// // // // // //             {'number': 1, 'title': 'Pilot', 'duration': '45 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 2, 'title': 'The Beginning', 'duration': '42 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 3, 'title': 'Dark Waters', 'duration': '44 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 4, 'title': 'Revelations', 'duration': '46 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 5, 'title': 'The Truth', 'duration': '43 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //           ]
// // // // // //         },
// // // // // //         {
// // // // // //           'season': 2,
// // // // // //           'episodeList': [
// // // // // //             {'number': 1, 'title': 'New Dawn', 'duration': '47 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 2, 'title': 'Shadows', 'duration': '45 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 3, 'title': 'Rising Storm', 'duration': '44 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 4, 'title': 'Breaking Point', 'duration': '48 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //           ]
// // // // // //         }
// // // // // //       ]
// // // // // //     },
// // // // // //     {
// // // // // //       'id': 2,
// // // // // //       'title': 'Series 2',
// // // // // //       'image': 'assets/movieimage.jpg',
// // // // // //       'description': 'A thrilling journey through time and space with unforgettable characters and stunning visuals.',
// // // // // //       'rating': '9.0',
// // // // // //       'year': '2024',
// // // // // //       'seasons': 1,
// // // // // //       'episodes': [
// // // // // //         {
// // // // // //           'season': 1,
// // // // // //           'episodeList': [
// // // // // //             {'number': 1, 'title': 'First Contact', 'duration': '50 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 2, 'title': 'Mysteries Unfold', 'duration': '48 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 3, 'title': 'The Chase', 'duration': '46 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 4, 'title': 'Destiny', 'duration': '52 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //             {'number': 5, 'title': 'Finale', 'duration': '55 min', 'thumbnail': 'assets/movieimage.jpg'},
// // // // // //           ]
// // // // // //         }
// // // // // //       ]
// // // // // //     },
// // // // // //   ];
  
// // // // // //   void changeBanner(int index) {
// // // // // //     currentBannerIndex.value = index;
// // // // // //   }
// // // // // // }

// // // // // // class Homescreen extends StatelessWidget {
// // // // // //   const Homescreen({super.key});

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final HomeController controller = Get.put(HomeController());

// // // // // //     return Scaffold(
// // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // //       body: OrientationBuilder(
// // // // // //         builder: (context, orientation) {
// // // // // //           double height = MediaQuery.of(context).size.height;
// // // // // //           double width = MediaQuery.of(context).size.width;
// // // // // //           bool isLandscape = orientation == Orientation.landscape;

// // // // // //           return SafeArea(
// // // // // //             child: SingleChildScrollView(
// // // // // //               child: Column(
// // // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                 children: [
// // // // // //                   // Header
// // // // // //                   _buildHeader(width, height, isLandscape),
                  
// // // // // //                   // Banner Slider
// // // // // //                   _buildBannerSlider(controller, width, height, isLandscape),
                  
// // // // // //                   SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                  
// // // // // //                   // Series Section
// // // // // //                   _buildSeriesSection(controller, width, height, isLandscape),
                  
// // // // // //                   SizedBox(height: height * 0.05),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ),
// // // // // //           );
// // // // // //         },
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // // // //     return Padding(
// // // // // //       padding: EdgeInsets.symmetric(
// // // // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // // // //       ),
// // // // // //       child: Row(
// // // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //         children: [
// // // // // //           Image.asset(
// // // // // //             'assets/prime_logo.png',
// // // // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // // // //             errorBuilder: (context, error, stackTrace) {
// // // // // //               return Text(
// // // // // //                 'prime video',
// // // // // //                 style: TextStyle(
// // // // // //                   color: Colors.white,
// // // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // // //                   fontWeight: FontWeight.bold,
// // // // // //                 ),
// // // // // //               );
// // // // // //             },
// // // // // //           ),
// // // // // //           Row(
// // // // // //             children: [
// // // // // //               InkWell(
// // // // // //                 onTap: () {
// // // // // //                   Get.to(Searchscreen());
// // // // // //                 },
// // // // // //                 child: Icon(
// // // // // //                   Icons.search,
// // // // // //                   color: Colors.white,
// // // // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // // // //                 ),
// // // // // //               ),
// // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // //               Icon(
// // // // // //                 Icons.cast,
// // // // // //                 color: Colors.white,
// // // // // //                 size: width * (isLandscape ? 0.04 : 0.06),
// // // // // //               ),
// // // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // // //               CircleAvatar(
// // // // // //                 radius: width * (isLandscape ? 0.025 : 0.04),
// // // // // //                 backgroundColor: Colors.blue,
// // // // // //                 child: Icon(
// // // // // //                   Icons.person,
// // // // // //                   color: Colors.white,
// // // // // //                   size: width * (isLandscape ? 0.03 : 0.05),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ],
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // // // //     return Column(
// // // // // //       children: [
// // // // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // // // //         SizedBox(
// // // // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // // // //           child: PageView.builder(
// // // // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // // // //             itemCount: controller.bannerImages.length,
// // // // // //             itemBuilder: (context, index) {
// // // // // //               return Container(
// // // // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // //                 decoration: BoxDecoration(
// // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // //                   image: DecorationImage(
// // // // // //                     image: AssetImage(controller.bannerImages[index]),
// // // // // //                     fit: BoxFit.cover,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //                 child: Container(
// // // // // //                   decoration: BoxDecoration(
// // // // // //                     borderRadius: BorderRadius.circular(12),
// // // // // //                     gradient: LinearGradient(
// // // // // //                       begin: Alignment.topCenter,
// // // // // //                       end: Alignment.bottomCenter,
// // // // // //                       colors: [
// // // // // //                         Colors.transparent,
// // // // // //                         Colors.black.withOpacity(0.8),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                   child: Column(
// // // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                     children: [
// // // // // //                       Padding(
// // // // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // // // //                         child: Column(
// // // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                           children: [
// // // // // //                             Text(
// // // // // //                               'AMAZON ORIGINAL',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: Colors.grey[300],
// // // // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                                 fontWeight: FontWeight.w500,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // // //                             Text(
// // // // // //                               'THE BOYS',
// // // // // //                               style: TextStyle(
// // // // // //                                 color: Colors.white,
// // // // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // // // //                             Row(
// // // // // //                               children: [
// // // // // //                                 Container(
// // // // // //                                   padding: EdgeInsets.symmetric(
// // // // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // // //                                   ),
// // // // // //                                   decoration: BoxDecoration(
// // // // // //                                     color: Colors.blue,
// // // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // // //                                   ),
// // // // // //                                   child: Row(
// // // // // //                                     mainAxisSize: MainAxisSize.min,
// // // // // //                                     children: [
// // // // // //                                       Icon(
// // // // // //                                         Icons.check_circle,
// // // // // //                                         color: Colors.white,
// // // // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // // // //                                       ),
// // // // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // // // //                                       Text(
// // // // // //                                         'Included with prime',
// // // // // //                                         style: TextStyle(
// // // // // //                                           color: Colors.white,
// // // // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                                           fontWeight: FontWeight.w500,
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                     ],
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                                 const Spacer(),
// // // // // //                                 Container(
// // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // //                                   decoration: BoxDecoration(
// // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // //                                     shape: BoxShape.circle,
// // // // // //                                   ),
// // // // // //                                   child: Icon(
// // // // // //                                     Icons.add,
// // // // // //                                     color: Colors.white,
// // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // // //                                 Container(
// // // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // // //                                   decoration: BoxDecoration(
// // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // //                                     shape: BoxShape.circle,
// // // // // //                                   ),
// // // // // //                                   child: Icon(
// // // // // //                                     Icons.info_outline,
// // // // // //                                     color: Colors.white,
// // // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ],
// // // // // //                             ),
// // // // // //                           ],
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     ],
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               );
// // // // // //             },
// // // // // //           ),
// // // // // //         ),
// // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // // //         // Page Indicators
// // // // // //         Obx(() => Row(
// // // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // // //           children: List.generate(
// // // // // //             controller.bannerImages.length,
// // // // // //             (index) => Container(
// // // // // //               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // // // //               width: width * (isLandscape ? 0.015 : 0.02),
// // // // // //               height: width * (isLandscape ? 0.015 : 0.02),
// // // // // //               decoration: BoxDecoration(
// // // // // //                 shape: BoxShape.circle,
// // // // // //                 color: controller.currentBannerIndex.value == index
// // // // // //                     ? Colors.blue
// // // // // //                     : Colors.grey[600],
// // // // // //               ),
// // // // // //             ),
// // // // // //           ),
// // // // // //         )),
// // // // // //       ],
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // // // // //     return Column(
// // // // // //       crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //       children: [
// // // // // //         Padding(
// // // // // //           padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // //           child: Text(
// // // // // //             'Available Series',
// // // // // //             style: TextStyle(
// // // // // //               color: Colors.white,
// // // // // //               fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // // // //               fontWeight: FontWeight.bold,
// // // // // //             ),
// // // // // //           ),
// // // // // //         ),
// // // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // // // //         ListView.builder(
// // // // // //           shrinkWrap: true,
// // // // // //           physics: const NeverScrollableScrollPhysics(),
// // // // // //           padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // // //           itemCount: controller.series.length,
// // // // // //           itemBuilder: (context, index) {
// // // // // //             final series = controller.series[index];
// // // // // //             return GestureDetector(
// // // // // //               onTap: () {
// // // // // //                 Get.to(() => SeriesDetailScreen(seriesData: series));
// // // // // //               },
// // // // // //               child: Container(
// // // // // //                 margin: EdgeInsets.only(bottom: height * (isLandscape ? 0.03 : 0.025)),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Container(
// // // // // //                       height: height * (isLandscape ? 0.5 : 0.3),
// // // // // //                       decoration: BoxDecoration(
// // // // // //                         borderRadius: BorderRadius.circular(12),
// // // // // //                         image: DecorationImage(
// // // // // //                           image: AssetImage(series['image']),
// // // // // //                           fit: BoxFit.cover,
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                       child: Container(
// // // // // //                         decoration: BoxDecoration(
// // // // // //                           borderRadius: BorderRadius.circular(12),
// // // // // //                           gradient: LinearGradient(
// // // // // //                             begin: Alignment.topCenter,
// // // // // //                             end: Alignment.bottomCenter,
// // // // // //                             colors: [
// // // // // //                               Colors.transparent,
// // // // // //                               Colors.black.withOpacity(0.7),
// // // // // //                             ],
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         child: Stack(
// // // // // //                           children: [
// // // // // //                             Positioned(
// // // // // //                               bottom: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                               left: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                               right: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                               child: Column(
// // // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                                 children: [
// // // // // //                                   Text(
// // // // // //                                     series['title'],
// // // // // //                                     style: TextStyle(
// // // // // //                                       color: Colors.white,
// // // // // //                                       fontSize: width * (isLandscape ? 0.04 : 0.06),
// // // // // //                                       fontWeight: FontWeight.bold,
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                   SizedBox(height: height * 0.01),
// // // // // //                                   Row(
// // // // // //                                     children: [
// // // // // //                                       Icon(
// // // // // //                                         Icons.star,
// // // // // //                                         color: Colors.amber,
// // // // // //                                         size: width * (isLandscape ? 0.025 : 0.04),
// // // // // //                                       ),
// // // // // //                                       SizedBox(width: width * 0.01),
// // // // // //                                       Text(
// // // // // //                                         series['rating'],
// // // // // //                                         style: TextStyle(
// // // // // //                                           color: Colors.white,
// // // // // //                                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                       SizedBox(width: width * 0.03),
// // // // // //                                       Text(
// // // // // //                                         series['year'],
// // // // // //                                         style: TextStyle(
// // // // // //                                           color: Colors.grey[400],
// // // // // //                                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                       SizedBox(width: width * 0.03),
// // // // // //                                       Container(
// // // // // //                                         padding: EdgeInsets.symmetric(
// // // // // //                                           horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // // //                                           vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // // //                                         ),
// // // // // //                                         decoration: BoxDecoration(
// // // // // //                                           color: Colors.blue,
// // // // // //                                           borderRadius: BorderRadius.circular(4),
// // // // // //                                         ),
// // // // // //                                         child: Text(
// // // // // //                                           '${series['seasons']} Season${series['seasons'] > 1 ? 's' : ''}',
// // // // // //                                           style: TextStyle(
// // // // // //                                             color: Colors.white,
// // // // // //                                             fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // // //                                             fontWeight: FontWeight.w500,
// // // // // //                                           ),
// // // // // //                                         ),
// // // // // //                                       ),
// // // // // //                                     ],
// // // // // //                                   ),
// // // // // //                                 ],
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             Center(
// // // // // //                               child: Container(
// // // // // //                                 padding: EdgeInsets.all(width * (isLandscape ? 0.025 : 0.04)),
// // // // // //                                 decoration: BoxDecoration(
// // // // // //                                   color: Colors.white.withOpacity(0.3),
// // // // // //                                   shape: BoxShape.circle,
// // // // // //                                 ),
// // // // // //                                 child: Icon(
// // // // // //                                   Icons.play_arrow,
// // // // // //                                   color: Colors.white,
// // // // // //                                   size: width * (isLandscape ? 0.06 : 0.1),
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ],
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // // //                     Text(
// // // // // //                       series['description'],
// // // // // //                       style: TextStyle(
// // // // // //                         color: Colors.grey[400],
// // // // // //                         fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // // //                         height: 1.4,
// // // // // //                       ),
// // // // // //                       maxLines: 2,
// // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),
// // // // // //             );
// // // // // //           },
// // // // // //         ),
// // // // // //       ],
// // // // // //     );
// // // // // //   }
// // // // // // }



// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:get/get.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:ott/View/Screen/Episodedeailpage.dart';
// // // // // import 'package:ott/View/Screen/Searchscreen.dart';

// // // // // // API Response Model
// // // // // class VideoResponse {
// // // // //   final String id;
// // // // //   final List<VideoData> videos;
// // // // //   final int totalEpisodes;
// // // // //   final String latestRelease;

// // // // //   VideoResponse({
// // // // //     required this.id,
// // // // //     required this.videos,
// // // // //     required this.totalEpisodes,
// // // // //     required this.latestRelease,
// // // // //   });

// // // // //   factory VideoResponse.fromJson(Map<String, dynamic> json) {
// // // // //     return VideoResponse(
// // // // //       id: json['_id'] ?? '',
// // // // //       videos: (json['videos'] as List?)
// // // // //               ?.map((v) => VideoData.fromJson(v))
// // // // //               .toList() ??
// // // // //           [],
// // // // //       totalEpisodes: json['totalEpisodes'] ?? 0,
// // // // //       latestRelease: json['latestRelease'] ?? '',
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class VideoData {
// // // // //   final String id;
// // // // //   final String episodeName;
// // // // //   final String videoTitle;
// // // // //   final String description;

// // // // //   VideoData({
// // // // //     required this.id,
// // // // //     required this.episodeName,
// // // // //     required this.videoTitle,
// // // // //     required this.description,
// // // // //   });

// // // // //   factory VideoData.fromJson(Map<String, dynamic> json) {
// // // // //     return VideoData(
// // // // //       id: json['_id'] ?? '',
// // // // //       episodeName: json['episodeName'] ?? '',
// // // // //       videoTitle: json['videoTitle'] ?? '',
// // // // //       description: json['description'] ?? '',
// // // // //     );
// // // // //   }
// // // // // }

// // // // // // GetX Controller
// // // // // class HomeController extends GetxController {
// // // // //   RxInt currentBannerIndex = 0.obs;
// // // // //   RxBool isLoading = false.obs;
// // // // //   RxList<Map<String, dynamic>> series = <Map<String, dynamic>>[].obs;

// // // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// // // // //   List<String> bannerImages = [
// // // // //     'assets/Banner1.png',
// // // // //     'assets/Banner1.png',
// // // // //     'assets/Banner1.png',
// // // // //   ];

// // // // //   @override
// // // // //   void onInit() {
// // // // //     super.onInit();
// // // // //     fetchAllVideos();
// // // // //   }

// // // // //   void changeBanner(int index) {
// // // // //     currentBannerIndex.value = index;
// // // // //   }

// // // // //   // Get Token from SharedPreferences
// // // // //   Future<String?> getToken() async {
// // // // //     try {
// // // // //       final prefs = await SharedPreferences.getInstance();
// // // // //       return prefs.getString('auth_token');
// // // // //     } catch (e) {
// // // // //       print('Error getting token: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   // Fetch Videos from API
// // // // //   Future<void> fetchAllVideos() async {
// // // // //     isLoading.value = true;

// // // // //     try {
// // // // //       // Get token
// // // // //       String? token = await getToken();
// // // // //       print('Token: $token');

// // // // //       // API Call
// // // // //       final response = await http.get(
// // // // //         Uri.parse('$baseUrl/videos/all'),
// // // // //         headers: {
// // // // //           'Content-Type': 'application/json',
// // // // //           if (token != null) 'Authorization': 'Bearer $token',
// // // // //         },
// // // // //       );

// // // // //       print('API Response Status: ${response.statusCode}');
// // // // //       print('API Response Body: ${response.body}');

// // // // //       if (response.statusCode == 200) {
// // // // //         final List<dynamic> responseData = jsonDecode(response.body);

// // // // //         // Clear existing series
// // // // //         series.clear();

// // // // //         // Parse API response
// // // // //         for (var item in responseData) {
// // // // //           final videoResponse = VideoResponse.fromJson(item);

// // // // //           // Create series data with dummy info
// // // // //           series.add({
// // // // //             'id': videoResponse.id,
// // // // //             'title': videoResponse.id, // Using _id as title (Episode 2)
// // // // //             'image': 'assets/movieimage.jpg',
// // // // //             'description':
// // // // //                 'An epic tale of adventure, mystery, and drama that will keep you on the edge of your seat.',
// // // // //             'rating': '8.5',
// // // // //             'year': '2023',
// // // // //             'seasons': 2,
// // // // //             'totalEpisodes': videoResponse.totalEpisodes,
// // // // //             'latestRelease': videoResponse.latestRelease,
// // // // //             'episodes': [
// // // // //               {
// // // // //                 'season': 1,
// // // // //                 'episodeList': [
// // // // //                   {
// // // // //                     'number': 1,
// // // // //                     'title': 'Pilot',
// // // // //                     'duration': '45 min',
// // // // //                     'thumbnail': 'assets/movieimage.jpg'
// // // // //                   },
// // // // //                   {
// // // // //                     'number': 2,
// // // // //                     'title': 'The Beginning',
// // // // //                     'duration': '42 min',
// // // // //                     'thumbnail': 'assets/movieimage.jpg'
// // // // //                   },
// // // // //                   {
// // // // //                     'number': 3,
// // // // //                     'title': 'Dark Waters',
// // // // //                     'duration': '44 min',
// // // // //                     'thumbnail': 'assets/movieimage.jpg'
// // // // //                   },
// // // // //                 ]
// // // // //               },
// // // // //               {
// // // // //                 'season': 2,
// // // // //                 'episodeList': [
// // // // //                   {
// // // // //                     'number': 1,
// // // // //                     'title': 'New Dawn',
// // // // //                     'duration': '47 min',
// // // // //                     'thumbnail': 'assets/movieimage.jpg'
// // // // //                   },
// // // // //                   {
// // // // //                     'number': 2,
// // // // //                     'title': 'Shadows',
// // // // //                     'duration': '45 min',
// // // // //                     'thumbnail': 'assets/movieimage.jpg'
// // // // //                   },
// // // // //                 ]
// // // // //               }
// // // // //             ]
// // // // //           });
// // // // //         }

// // // // //         print('Series loaded: ${series.length}');
// // // // //       } else {
// // // // //         print('API Error: ${response.statusCode}');
// // // // //         // Load dummy data on error
// // // // //         loadDummyData();
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error fetching videos: $e');
// // // // //       // Load dummy data on exception
// // // // //       loadDummyData();
// // // // //     } finally {
// // // // //       isLoading.value = false;
// // // // //     }
// // // // //   }

// // // // //   // Load dummy data if API fails
// // // // //   void loadDummyData() {
// // // // //     series.value = [
// // // // //       {
// // // // //         'id': 1,
// // // // //         'title': 'Series 1',
// // // // //         'image': 'assets/movieimage.jpg',
// // // // //         'description':
// // // // //             'An epic tale of adventure, mystery, and drama that will keep you on the edge of your seat.',
// // // // //         'rating': '8.5',
// // // // //         'year': '2023',
// // // // //         'seasons': 2,
// // // // //         'episodes': [
// // // // //           {
// // // // //             'season': 1,
// // // // //             'episodeList': [
// // // // //               {
// // // // //                 'number': 1,
// // // // //                 'title': 'Pilot',
// // // // //                 'duration': '45 min',
// // // // //                 'thumbnail': 'assets/movieimage.jpg'
// // // // //               },
// // // // //               {
// // // // //                 'number': 2,
// // // // //                 'title': 'The Beginning',
// // // // //                 'duration': '42 min',
// // // // //                 'thumbnail': 'assets/movieimage.jpg'
// // // // //               },
// // // // //             ]
// // // // //           },
// // // // //         ]
// // // // //       },
// // // // //     ];
// // // // //   }
// // // // // }

// // // // // class Homescreen extends StatelessWidget {
// // // // //   const Homescreen({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final HomeController controller = Get.put(HomeController());

// // // // //     return Scaffold(
// // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // //       body: OrientationBuilder(
// // // // //         builder: (context, orientation) {
// // // // //           double height = MediaQuery.of(context).size.height;
// // // // //           double width = MediaQuery.of(context).size.width;
// // // // //           bool isLandscape = orientation == Orientation.landscape;

// // // // //           return SafeArea(
// // // // //             child: Obx(() {
// // // // //               if (controller.isLoading.value && controller.series.isEmpty) {
// // // // //                 return Center(
// // // // //                   child: CircularProgressIndicator(
// // // // //                     color: Colors.blue,
// // // // //                   ),
// // // // //                 );
// // // // //               }

// // // // //               return SingleChildScrollView(
// // // // //                 child: Column(
// // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                   children: [
// // // // //                     // Header
// // // // //                     _buildHeader(width, height, isLandscape),

// // // // //                     // Banner Slider
// // // // //                     _buildBannerSlider(controller, width, height, isLandscape),

// // // // //                     SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),

// // // // //                     // Series Section
// // // // //                     _buildSeriesSection(
// // // // //                         controller, width, height, isLandscape),

// // // // //                     SizedBox(height: height * 0.05),
// // // // //                   ],
// // // // //                 ),
// // // // //               );
// // // // //             }),
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // // //     return Padding(
// // // // //       padding: EdgeInsets.symmetric(
// // // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // // //       ),
// // // // //       child: Row(
// // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //         children: [
// // // // //           Image.asset(
// // // // //             'assets/prime_logo.png',
// // // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // // //             errorBuilder: (context, error, stackTrace) {
// // // // //               return Text(
// // // // //                 'prime video',
// // // // //                 style: TextStyle(
// // // // //                   color: Colors.white,
// // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // //                   fontWeight: FontWeight.bold,
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //           Row(
// // // // //             children: [
// // // // //               InkWell(
// // // // //                 onTap: () {
// // // // //                   Get.to(Searchscreen());
// // // // //                 },
// // // // //                 child: Icon(
// // // // //                   Icons.search,
// // // // //                   color: Colors.white,
// // // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // // //                 ),
// // // // //               ),
// // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // //               Icon(
// // // // //                 Icons.cast,
// // // // //                 color: Colors.white,
// // // // //                 size: width * (isLandscape ? 0.04 : 0.06),
// // // // //               ),
// // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // //               CircleAvatar(
// // // // //                 radius: width * (isLandscape ? 0.025 : 0.04),
// // // // //                 backgroundColor: Colors.blue,
// // // // //                 child: Icon(
// // // // //                   Icons.person,
// // // // //                   color: Colors.white,
// // // // //                   size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildBannerSlider(
// // // // //       HomeController controller, double width, double height, bool isLandscape) {
// // // // //     return Column(
// // // // //       children: [
// // // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // // //         SizedBox(
// // // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // // //           child: PageView.builder(
// // // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // // //             itemCount: controller.bannerImages.length,
// // // // //             itemBuilder: (context, index) {
// // // // //               return Container(
// // // // //                 margin: EdgeInsets.symmetric(
// // // // //                     horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //                 decoration: BoxDecoration(
// // // // //                   borderRadius: BorderRadius.circular(12),
// // // // //                   image: DecorationImage(
// // // // //                     image: AssetImage(controller.bannerImages[index]),
// // // // //                     fit: BoxFit.cover,
// // // // //                   ),
// // // // //                 ),
// // // // //                 child: Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     borderRadius: BorderRadius.circular(12),
// // // // //                     gradient: LinearGradient(
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                       colors: [
// // // // //                         Colors.transparent,
// // // // //                         Colors.black.withOpacity(0.8),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                   child: Column(
// // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Padding(
// // // // //                         padding: EdgeInsets.all(
// // // // //                             width * (isLandscape ? 0.03 : 0.04)),
// // // // //                         child: Column(
// // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                           children: [
// // // // //                             Text(
// // // // //                               'AMAZON ORIGINAL',
// // // // //                               style: TextStyle(
// // // // //                                 color: Colors.grey[300],
// // // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                 fontWeight: FontWeight.w500,
// // // // //                               ),
// // // // //                             ),
// // // // //                             SizedBox(
// // // // //                                 height: height * (isLandscape ? 0.015 : 0.01)),
// // // // //                             Text(
// // // // //                               'THE BOYS',
// // // // //                               style: TextStyle(
// // // // //                                 color: Colors.white,
// // // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                             SizedBox(
// // // // //                                 height: height * (isLandscape ? 0.02 : 0.015)),
// // // // //                             Row(
// // // // //                               children: [
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.symmetric(
// // // // //                                     horizontal:
// // // // //                                         width * (isLandscape ? 0.015 : 0.02),
// // // // //                                     vertical:
// // // // //                                         height * (isLandscape ? 0.008 : 0.005),
// // // // //                                   ),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.blue,
// // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // //                                   ),
// // // // //                                   child: Row(
// // // // //                                     mainAxisSize: MainAxisSize.min,
// // // // //                                     children: [
// // // // //                                       Icon(
// // // // //                                         Icons.check_circle,
// // // // //                                         color: Colors.white,
// // // // //                                         size: width *
// // // // //                                             (isLandscape ? 0.025 : 0.035),
// // // // //                                       ),
// // // // //                                       SizedBox(
// // // // //                                           width:
// // // // //                                               width * (isLandscape ? 0.008 : 0.01)),
// // // // //                                       Text(
// // // // //                                         'Included with prime',
// // // // //                                         style: TextStyle(
// // // // //                                           color: Colors.white,
// // // // //                                           fontSize:
// // // // //                                               width * (isLandscape ? 0.02 : 0.03),
// // // // //                                           fontWeight: FontWeight.w500,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                 ),
// // // // //                                 const Spacer(),
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.all(
// // // // //                                       width * (isLandscape ? 0.015 : 0.02)),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // //                                     shape: BoxShape.circle,
// // // // //                                   ),
// // // // //                                   child: Icon(
// // // // //                                     Icons.add,
// // // // //                                     color: Colors.white,
// // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   ),
// // // // //                                 ),
// // // // //                                 SizedBox(
// // // // //                                     width: width * (isLandscape ? 0.02 : 0.03)),
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.all(
// // // // //                                       width * (isLandscape ? 0.015 : 0.02)),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // //                                     shape: BoxShape.circle,
// // // // //                                   ),
// // // // //                                   child: Icon(
// // // // //                                     Icons.info_outline,
// // // // //                                     color: Colors.white,
// // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //         ),
// // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // //         // Page Indicators
// // // // //         Obx(() => Row(
// // // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // // //               children: List.generate(
// // // // //                 controller.bannerImages.length,
// // // // //                 (index) => Container(
// // // // //                   margin: EdgeInsets.symmetric(
// // // // //                       horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // // //                   width: width * (isLandscape ? 0.015 : 0.02),
// // // // //                   height: width * (isLandscape ? 0.015 : 0.02),
// // // // //                   decoration: BoxDecoration(
// // // // //                     shape: BoxShape.circle,
// // // // //                     color: controller.currentBannerIndex.value == index
// // // // //                         ? Colors.blue
// // // // //                         : Colors.grey[600],
// // // // //                   ),
// // // // //                 ),
// // // // //               ),
// // // // //             )),
// // // // //       ],
// // // // //     );
// // // // //   }

// // // // //   Widget _buildSeriesSection(HomeController controller, double width,
// // // // //       double height, bool isLandscape) {
// // // // //     return Obx(() {
// // // // //       if (controller.series.isEmpty) {
// // // // //         return Padding(
// // // // //           padding: EdgeInsets.symmetric(
// // // // //               horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //           child: Center(
// // // // //             child: Text(
// // // // //               'No series available',
// // // // //               style: TextStyle(
// // // // //                 color: Colors.grey[400],
// // // // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       }

// // // // //       return Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //         children: [
// // // // //           Padding(
// // // // //             padding: EdgeInsets.symmetric(
// // // // //                 horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //             child: Text(
// // // // //               'Available Series',
// // // // //               style: TextStyle(
// // // // //                 color: Colors.white,
// // // // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // // //                 fontWeight: FontWeight.bold,
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // // //           ListView.builder(
// // // // //             shrinkWrap: true,
// // // // //             physics: const NeverScrollableScrollPhysics(),
// // // // //             padding: EdgeInsets.symmetric(
// // // // //                 horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //             itemCount: controller.series.length,
// // // // //             itemBuilder: (context, index) {
// // // // //               final series = controller.series[index];
// // // // //               return GestureDetector(
// // // // //                 onTap: () {
// // // // //                   Get.to(() => SeriesDetailScreen(seriesData: series));
// // // // //                 },
// // // // //                 child: Container(
// // // // //                   margin: EdgeInsets.only(
// // // // //                       bottom: height * (isLandscape ? 0.03 : 0.025)),
// // // // //                   child: Column(
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Container(
// // // // //                         height: height * (isLandscape ? 0.5 : 0.3),
// // // // //                         decoration: BoxDecoration(
// // // // //                           borderRadius: BorderRadius.circular(12),
// // // // //                           image: DecorationImage(
// // // // //                             image: AssetImage(series['image']),
// // // // //                             fit: BoxFit.cover,
// // // // //                           ),
// // // // //                         ),
// // // // //                         child: Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             borderRadius: BorderRadius.circular(12),
// // // // //                             gradient: LinearGradient(
// // // // //                               begin: Alignment.topCenter,
// // // // //                               end: Alignment.bottomCenter,
// // // // //                               colors: [
// // // // //                                 Colors.transparent,
// // // // //                                 Colors.black.withOpacity(0.7),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ),
// // // // //                           child: Stack(
// // // // //                             children: [
// // // // //                               Positioned(
// // // // //                                 bottom: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                 left: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                 right: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                 child: Column(
// // // // //                                   crossAxisAlignment:
// // // // //                                       CrossAxisAlignment.start,
// // // // //                                   children: [
// // // // //                                     Text(
// // // // //                                       series['title'],
// // // // //                                       style: TextStyle(
// // // // //                                         color: Colors.white,
// // // // //                                         fontSize: width *
// // // // //                                             (isLandscape ? 0.04 : 0.06),
// // // // //                                         fontWeight: FontWeight.bold,
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                     SizedBox(height: height * 0.01),
// // // // //                                     Row(
// // // // //                                       children: [
// // // // //                                         Icon(
// // // // //                                           Icons.star,
// // // // //                                           color: Colors.amber,
// // // // //                                           size: width *
// // // // //                                               (isLandscape ? 0.025 : 0.04),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.01),
// // // // //                                         Text(
// // // // //                                           series['rating'],
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.white,
// // // // //                                             fontSize: width *
// // // // //                                                 (isLandscape ? 0.022 : 0.035),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.03),
// // // // //                                         Text(
// // // // //                                           series['year'],
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.grey[400],
// // // // //                                             fontSize: width *
// // // // //                                                 (isLandscape ? 0.022 : 0.035),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.03),
// // // // //                                         Container(
// // // // //                                           padding: EdgeInsets.symmetric(
// // // // //                                             horizontal: width *
// // // // //                                                 (isLandscape ? 0.015 : 0.02),
// // // // //                                             vertical: height *
// // // // //                                                 (isLandscape ? 0.008 : 0.005),
// // // // //                                           ),
// // // // //                                           decoration: BoxDecoration(
// // // // //                                             color: Colors.blue,
// // // // //                                             borderRadius:
// // // // //                                                 BorderRadius.circular(4),
// // // // //                                           ),
// // // // //                                           child: Text(
// // // // //                                             '${series['seasons']} Season${series['seasons'] > 1 ? 's' : ''}',
// // // // //                                             style: TextStyle(
// // // // //                                               color: Colors.white,
// // // // //                                               fontSize: width *
// // // // //                                                   (isLandscape ? 0.02 : 0.03),
// // // // //                                               fontWeight: FontWeight.w500,
// // // // //                                             ),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                       ],
// // // // //                                     ),
// // // // //                                   ],
// // // // //                                 ),
// // // // //                               ),
// // // // //                               Center(
// // // // //                                 child: Container(
// // // // //                                   padding: EdgeInsets.all(
// // // // //                                       width * (isLandscape ? 0.025 : 0.04)),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.white.withOpacity(0.3),
// // // // //                                     shape: BoxShape.circle,
// // // // //                                   ),
// // // // //                                   child: Icon(
// // // // //                                     Icons.play_arrow,
// // // // //                                     color: Colors.white,
// // // // //                                     size: width * (isLandscape ? 0.06 : 0.1),
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                       SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // //                       Text(
// // // // //                         series['description'],
// // // // //                         style: TextStyle(
// // // // //                           color: Colors.grey[400],
// // // // //                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // //                           height: 1.4,
// // // // //                         ),
// // // // //                         maxLines: 2,
// // // // //                         overflow: TextOverflow.ellipsis,
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //         ],
// // // // //       );
// // // // //     });
// // // // //   }
// // // // // }



// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:get/get.dart';
// // // // // import 'package:ott/View/Screen/Episodedeailpage.dart';
// // // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // // import 'package:ott/View/Screen/Searchscreen.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // // Import the models (make sure to create a separate file for models)
// // // // // // import 'package:ott/Models/series_models.dart';

// // // // // // GetX Controller
// // // // // class HomeController extends GetxController {
// // // // //   RxInt currentBannerIndex = 0.obs;
// // // // //   RxBool isLoading = false.obs;
// // // // //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
  
// // // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // // //   List<String> bannerImages = [
// // // // //     'assets/Banner1.png',
// // // // //     'assets/Banner1.png',
// // // // //     'assets/Banner1.png',
// // // // //   ];

// // // // //   @override
// // // // //   void onInit() {
// // // // //     super.onInit();
// // // // //     fetchAllSeries();
// // // // //   }
  
// // // // //   void changeBanner(int index) {
// // // // //     currentBannerIndex.value = index;
// // // // //   }

// // // // //   // Get Token from SharedPreferences
// // // // //   Future<String?> getToken() async {
// // // // //     try {
// // // // //       final prefs = await SharedPreferences.getInstance();
// // // // //       return prefs.getString('auth_token');
// // // // //     } catch (e) {
// // // // //       print('Error getting token: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

// // // // //   // Show Toast Message
// // // // //   void showToast(String message, {bool isError = false}) {
// // // // //     Fluttertoast.showToast(
// // // // //       msg: message,
// // // // //       toastLength: Toast.LENGTH_SHORT,
// // // // //       gravity: ToastGravity.BOTTOM,
// // // // //       backgroundColor: isError ? Colors.red : Colors.green,
// // // // //       textColor: Colors.white,
// // // // //       fontSize: 16.0,
// // // // //     );
// // // // //   }

// // // // //   // Fetch All Series from API
// // // // //   Future<void> fetchAllSeries() async {
// // // // //     isLoading.value = true;

// // // // //     try {
// // // // //       // Get token
// // // // //       String? token = await getToken();
      
// // // // //       print('Fetching series...');
// // // // //       print('Token: $token');

// // // // //       // API Call
// // // // //       final response = await http.get(
// // // // //         Uri.parse('$baseUrl/videos/all'),
// // // // //         headers: {
// // // // //           'Content-Type': 'application/json',
// // // // //           if (token != null) 'Authorization': 'Bearer $token',
// // // // //         },
// // // // //       );

// // // // //       print('Response Status Code: ${response.statusCode}');
// // // // //       print('Response Body: ${response.body}');

// // // // //       if (response.statusCode == 200) {
// // // // //         final List<dynamic> data = jsonDecode(response.body);
        
// // // // //         seriesList.value = data
// // // // //             .map((json) => SeriesResponse.fromJson(json))
// // // // //             .toList();

// // // // //         print('Total series loaded: ${seriesList.length}');
// // // // //       } else {
// // // // //         showToast('Failed to load series', isError: true);
// // // // //       }
// // // // //     } catch (e) {
// // // // //       print('Error fetching series: $e');
// // // // //       showToast('An error occurred while loading series', isError: true);
// // // // //     } finally {
// // // // //       isLoading.value = false;
// // // // //     }
// // // // //   }

// // // // //   // Refresh Series
// // // // //   Future<void> refreshSeries() async {
// // // // //     await fetchAllSeries();
// // // // //   }
// // // // // }

// // // // // class Homescreen extends StatelessWidget {
// // // // //   const Homescreen({super.key});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final HomeController controller = Get.put(HomeController());

// // // // //     return Scaffold(
// // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // //       body: OrientationBuilder(
// // // // //         builder: (context, orientation) {
// // // // //           double height = MediaQuery.of(context).size.height;
// // // // //           double width = MediaQuery.of(context).size.width;
// // // // //           bool isLandscape = orientation == Orientation.landscape;

// // // // //           return SafeArea(
// // // // //             child: RefreshIndicator(
// // // // //               onRefresh: () => controller.refreshSeries(),
// // // // //               backgroundColor: const Color(0xFF1A1A1A),
// // // // //               color: const Color(0xFF00A8E8),
// // // // //               child: Obx(() {
// // // // //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// // // // //                   return Center(
// // // // //                     child: CircularProgressIndicator(
// // // // //                       color: const Color(0xFF00A8E8),
// // // // //                     ),
// // // // //                   );
// // // // //                 }

// // // // //                 return SingleChildScrollView(
// // // // //                   physics: const AlwaysScrollableScrollPhysics(),
// // // // //                   child: Column(
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       // Header
// // // // //                       _buildHeader(width, height, isLandscape),
                      
// // // // //                       // Banner Slider
// // // // //                       _buildBannerSlider(controller, width, height, isLandscape),
                      
// // // // //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                      
// // // // //                       // Series Section
// // // // //                       _buildSeriesSection(controller, width, height, isLandscape),
                      
// // // // //                       SizedBox(height: height * 0.05),
// // // // //                     ],
// // // // //                   ),
// // // // //                 );
// // // // //               }),
// // // // //             ),
// // // // //           );
// // // // //         },
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // // //     return Padding(
// // // // //       padding: EdgeInsets.symmetric(
// // // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // // //       ),
// // // // //       child: Row(
// // // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //         children: [
// // // // //           Image.asset(
// // // // //             'assets/prime_logo.png',
// // // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // // //             errorBuilder: (context, error, stackTrace) {
// // // // //               return Text(
// // // // //                 'prime video',
// // // // //                 style: TextStyle(
// // // // //                   color: Colors.white,
// // // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // // //                   fontWeight: FontWeight.bold,
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //           Row(
// // // // //             children: [
// // // // //               InkWell(
// // // // //                 onTap: () {
// // // // //                   Get.to(Searchscreen());
// // // // //                 },
// // // // //                 child: Icon(
// // // // //                   Icons.search,
// // // // //                   color: Colors.white,
// // // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // // //                 ),
// // // // //               ),
// // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // //               Icon(
// // // // //                 Icons.cast,
// // // // //                 color: Colors.white,
// // // // //                 size: width * (isLandscape ? 0.04 : 0.06),
// // // // //               ),
// // // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // // //               CircleAvatar(
// // // // //                 radius: width * (isLandscape ? 0.025 : 0.04),
// // // // //                 backgroundColor: Colors.blue,
// // // // //                 child: Icon(
// // // // //                   Icons.person,
// // // // //                   color: Colors.white,
// // // // //                   size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // // //     return Column(
// // // // //       children: [
// // // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // // //         SizedBox(
// // // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // // //           child: PageView.builder(
// // // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // // //             itemCount: controller.bannerImages.length,
// // // // //             itemBuilder: (context, index) {
// // // // //               return Container(
// // // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //                 decoration: BoxDecoration(
// // // // //                   borderRadius: BorderRadius.circular(12),
// // // // //                   image: DecorationImage(
// // // // //                     image: AssetImage(controller.bannerImages[index]),
// // // // //                     fit: BoxFit.cover,
// // // // //                   ),
// // // // //                 ),
// // // // //                 child: Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     borderRadius: BorderRadius.circular(12),
// // // // //                     gradient: LinearGradient(
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                       colors: [
// // // // //                         Colors.transparent,
// // // // //                         Colors.black.withOpacity(0.8),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                   child: Column(
// // // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Padding(
// // // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // // //                         child: Column(
// // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                           children: [
// // // // //                             Text(
// // // // //                               'AMAZON ORIGINAL',
// // // // //                               style: TextStyle(
// // // // //                                 color: Colors.grey[300],
// // // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                 fontWeight: FontWeight.w500,
// // // // //                               ),
// // // // //                             ),
// // // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // //                             Text(
// // // // //                               'THE BOYS',
// // // // //                               style: TextStyle(
// // // // //                                 color: Colors.white,
// // // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                               ),
// // // // //                             ),
// // // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // // //                             Row(
// // // // //                               children: [
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.symmetric(
// // // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // //                                   ),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.blue,
// // // // //                                     borderRadius: BorderRadius.circular(4),
// // // // //                                   ),
// // // // //                                   child: Row(
// // // // //                                     mainAxisSize: MainAxisSize.min,
// // // // //                                     children: [
// // // // //                                       Icon(
// // // // //                                         Icons.check_circle,
// // // // //                                         color: Colors.white,
// // // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // // //                                       ),
// // // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // // //                                       Text(
// // // // //                                         'Included with prime',
// // // // //                                         style: TextStyle(
// // // // //                                           color: Colors.white,
// // // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                           fontWeight: FontWeight.w500,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                 ),
// // // // //                                 const Spacer(),
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // //                                     shape: BoxShape.circle,
// // // // //                                   ),
// // // // //                                   child: Icon(
// // // // //                                     Icons.add,
// // // // //                                     color: Colors.white,
// // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   ),
// // // // //                                 ),
// // // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // // //                                 Container(
// // // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // //                                     shape: BoxShape.circle,
// // // // //                                   ),
// // // // //                                   child: Icon(
// // // // //                                     Icons.info_outline,
// // // // //                                     color: Colors.white,
// // // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // // //                                   ),
// // // // //                                 ),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //         ),
// // // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // // //         // Page Indicators
// // // // //         Obx(() => Row(
// // // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // // //           children: List.generate(
// // // // //             controller.bannerImages.length,
// // // // //             (index) => Container(
// // // // //               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // // //               width: width * (isLandscape ? 0.015 : 0.02),
// // // // //               height: width * (isLandscape ? 0.015 : 0.02),
// // // // //               decoration: BoxDecoration(
// // // // //                 shape: BoxShape.circle,
// // // // //                 color: controller.currentBannerIndex.value == index
// // // // //                     ? Colors.blue
// // // // //                     : Colors.grey[600],
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         )),
// // // // //       ],
// // // // //     );
// // // // //   }

// // // // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // // // //     return Obx(() {
// // // // //       if (controller.seriesList.isEmpty) {
// // // // //         return Center(
// // // // //           child: Padding(
// // // // //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // // //             child: Text(
// // // // //               'No series available',
// // // // //               style: TextStyle(
// // // // //                 color: Colors.grey[400],
// // // // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       }

// // // // //       return Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //         children: [
// // // // //           Padding(
// // // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //             child: Text(
// // // // //               'Available Series',
// // // // //               style: TextStyle(
// // // // //                 color: Colors.white,
// // // // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // // //                 fontWeight: FontWeight.bold,
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // // //           ListView.builder(
// // // // //             shrinkWrap: true,
// // // // //             physics: const NeverScrollableScrollPhysics(),
// // // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // // //             itemCount: controller.seriesList.length,
// // // // //             itemBuilder: (context, index) {
// // // // //               final series = controller.seriesList[index];
// // // // //               final firstVideo = series.videos?.isNotEmpty == true ? series.videos![0] : null;
              
// // // // //               return GestureDetector(
// // // // //                 onTap: () {
// // // // //                   // Navigate to detail page
// // // // //                   // Get.to(() => SeriesDetailScreen(seriesData: series));
// // // // //                     Get.to(() => SeriesDetailScreen(seriesData: series));
// // // // //                 },
// // // // //                 child: Container(
// // // // //                   margin: EdgeInsets.only(bottom: height * (isLandscape ? 0.03 : 0.025)),
// // // // //                   child: Column(
// // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                     children: [
// // // // //                       Container(
// // // // //                         height: height * (isLandscape ? 0.5 : 0.3),
// // // // //                         decoration: BoxDecoration(
// // // // //                           borderRadius: BorderRadius.circular(12),
// // // // //                           color: Colors.grey[900],
// // // // //                         ),
// // // // //                         child: Stack(
// // // // //                           children: [
// // // // //                             // Image
// // // // //                             if (series.seriesThumbUrl != null && series.seriesThumbUrl!.isNotEmpty)
// // // // //                               ClipRRect(
// // // // //                                 borderRadius: BorderRadius.circular(12),
// // // // //                                 child: Image.network(
// // // // //                                   series.seriesThumbUrl!,
// // // // //                                   width: double.infinity,
// // // // //                                   height: double.infinity,
// // // // //                                   fit: BoxFit.cover,
// // // // //                                   errorBuilder: (context, error, stackTrace) {
// // // // //                                     return _buildPlaceholderImage(width, height, isLandscape);
// // // // //                                   },
// // // // //                                   loadingBuilder: (context, child, loadingProgress) {
// // // // //                                     if (loadingProgress == null) return child;
// // // // //                                     return Center(
// // // // //                                       child: CircularProgressIndicator(
// // // // //                                         color: const Color(0xFF00A8E8),
// // // // //                                         value: loadingProgress.expectedTotalBytes != null
// // // // //                                             ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
// // // // //                                             : null,
// // // // //                                       ),
// // // // //                                     );
// // // // //                                   },
// // // // //                                 ),
// // // // //                               )
// // // // //                             else
// // // // //                               _buildPlaceholderImage(width, height, isLandscape),
                            
// // // // //                             // Gradient Overlay
// // // // //                             Container(
// // // // //                               decoration: BoxDecoration(
// // // // //                                 borderRadius: BorderRadius.circular(12),
// // // // //                                 gradient: LinearGradient(
// // // // //                                   begin: Alignment.topCenter,
// // // // //                                   end: Alignment.bottomCenter,
// // // // //                                   colors: [
// // // // //                                     Colors.transparent,
// // // // //                                     Colors.black.withOpacity(0.7),
// // // // //                                   ],
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
                            
// // // // //                             // Series Info
// // // // //                             Positioned(
// // // // //                               bottom: width * (isLandscape ? 0.02 : 0.03),
// // // // //                               left: width * (isLandscape ? 0.02 : 0.03),
// // // // //                               right: width * (isLandscape ? 0.02 : 0.03),
// // // // //                               child: Column(
// // // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                                 children: [
// // // // //                                   Text(
// // // // //                                     series.episodeName ?? 'Unknown Series',
// // // // //                                     style: TextStyle(
// // // // //                                       color: Colors.white,
// // // // //                                       fontSize: width * (isLandscape ? 0.04 : 0.06),
// // // // //                                       fontWeight: FontWeight.bold,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   SizedBox(height: height * 0.01),
// // // // //                                   Row(
// // // // //                                     children: [
// // // // //                                       if (firstVideo?.imdbRating != null) ...[
// // // // //                                         Icon(
// // // // //                                           Icons.star,
// // // // //                                           color: Colors.amber,
// // // // //                                           size: width * (isLandscape ? 0.025 : 0.04),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.01),
// // // // //                                         Text(
// // // // //                                           firstVideo!.imdbRating!.toStringAsFixed(1),
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.white,
// // // // //                                             fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.03),
// // // // //                                       ],
// // // // //                                       if (firstVideo?.releaseDate != null) ...[
// // // // //                                         Text(
// // // // //                                           _formatYear(firstVideo!.releaseDate!),
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.grey[400],
// // // // //                                             fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                         SizedBox(width: width * 0.03),
// // // // //                                       ],
// // // // //                                       if (series.totalEpisodes != null)
// // // // //                                         Container(
// // // // //                                           padding: EdgeInsets.symmetric(
// // // // //                                             horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // // //                                             vertical: height * (isLandscape ? 0.008 : 0.005),
// // // // //                                           ),
// // // // //                                           decoration: BoxDecoration(
// // // // //                                             color: Colors.blue,
// // // // //                                             borderRadius: BorderRadius.circular(4),
// // // // //                                           ),
// // // // //                                           child: Text(
// // // // //                                             '${series.totalEpisodes} Episode${series.totalEpisodes! > 1 ? 's' : ''}',
// // // // //                                             style: TextStyle(
// // // // //                                               color: Colors.white,
// // // // //                                               fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // // //                                               fontWeight: FontWeight.w500,
// // // // //                                             ),
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ),
                            
// // // // //                             // Play Button
// // // // //                             Center(
// // // // //                               child: Container(
// // // // //                                 padding: EdgeInsets.all(width * (isLandscape ? 0.025 : 0.04)),
// // // // //                                 decoration: BoxDecoration(
// // // // //                                   color: Colors.white.withOpacity(0.3),
// // // // //                                   shape: BoxShape.circle,
// // // // //                                 ),
// // // // //                                 child: Icon(
// // // // //                                   Icons.play_arrow,
// // // // //                                   color: Colors.white,
// // // // //                                   size: width * (isLandscape ? 0.06 : 0.1),
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                       SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // // //                       Text(
// // // // //                         firstVideo?.description ?? 'No description available',
// // // // //                         style: TextStyle(
// // // // //                           color: Colors.grey[400],
// // // // //                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // // //                           height: 1.4,
// // // // //                         ),
// // // // //                         maxLines: 2,
// // // // //                         overflow: TextOverflow.ellipsis,
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               );
// // // // //             },
// // // // //           ),
// // // // //         ],
// // // // //       );
// // // // //     });
// // // // //   }

// // // // //   Widget _buildPlaceholderImage(double width, double height, bool isLandscape) {
// // // // //     return Container(
// // // // //       width: double.infinity,
// // // // //       height: double.infinity,
// // // // //       decoration: BoxDecoration(
// // // // //         borderRadius: BorderRadius.circular(12),
// // // // //         color: Colors.grey[900],
// // // // //       ),
// // // // //       child: Center(
// // // // //         child: Icon(
// // // // //           Icons.movie,
// // // // //           color: Colors.grey[700],
// // // // //           size: width * (isLandscape ? 0.1 : 0.15),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   String _formatYear(String dateString) {
// // // // //     try {
// // // // //       final date = DateTime.parse(dateString);
// // // // //       return date.year.toString();
// // // // //     } catch (e) {
// // // // //       return 'N/A';
// // // // //     }
// // // // //   }
// // // // // }




// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:ott/View/Screen/Episodedeailpage.dart';
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'package:ott/View/Screen/Notifiaction.dart';
// // // // import 'package:ott/View/Screen/Searchscreen.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // Import the models (make sure to create a separate file for models)
// // // // // import 'package:ott/Models/series_models.dart';

// // // // // GetX Controller
// // // // class HomeController extends GetxController {
// // // //   RxInt currentBannerIndex = 0.obs;
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
  
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // //   List<String> bannerImages = [
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //   ];

// // // //   @override
// // // //   void onInit() {
// // // //     super.onInit();
// // // //     fetchAllSeries();
// // // //   }
  
// // // //   void changeBanner(int index) {
// // // //     currentBannerIndex.value = index;
// // // //   }

// // // //   // Get Token from SharedPreferences
// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

// // // //   // Show Toast Message
// // // //   void showToast(String message, {bool isError = false}) {
// // // //     Fluttertoast.showToast(
// // // //       msg: message,
// // // //       toastLength: Toast.LENGTH_SHORT,
// // // //       gravity: ToastGravity.BOTTOM,
// // // //       backgroundColor: isError ? Colors.red : Colors.green,
// // // //       textColor: Colors.white,
// // // //       fontSize: 16.0,
// // // //     );
// // // //   }

// // // //   // Fetch All Series from API
// // // //   Future<void> fetchAllSeries() async {
// // // //     isLoading.value = true;

// // // //     try {
// // // //       // Get token
// // // //       String? token = await getToken();
      
// // // //       print('Fetching series...');
// // // //       print('Token: $token');

// // // //       // API Call
// // // //       final response = await http.get(
// // // //         Uri.parse('$baseUrl/videos/all'),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //           if (token != null) 'Authorization': 'Bearer $token',
// // // //         },
// // // //       );

// // // //       print('Response Status Code: ${response.statusCode}');
// // // //       print('Response Body: ${response.body}');

// // // //       if (response.statusCode == 200) {
// // // //         final List<dynamic> data = jsonDecode(response.body);
        
// // // //         seriesList.value = data
// // // //             .map((json) => SeriesResponse.fromJson(json))
// // // //             .toList();

// // // //         print('Total series loaded: ${seriesList.length}');
// // // //       } else {
// // // //         showToast('Failed to load series', isError: true);
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching series: $e');
// // // //       showToast('An error occurred while loading series', isError: true);
// // // //     } finally {
// // // //       isLoading.value = false;
// // // //     }
// // // //   }

// // // //   // Refresh Series
// // // //   Future<void> refreshSeries() async {
// // // //     await fetchAllSeries();
// // // //   }
// // // // }


// // // // class Homescreen extends StatelessWidget {
// // // //   const Homescreen({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final HomeController controller = Get.put(HomeController());

// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: OrientationBuilder(
// // // //         builder: (context, orientation) {
// // // //           double height = MediaQuery.of(context).size.height;
// // // //           double width = MediaQuery.of(context).size.width;
// // // //           bool isLandscape = orientation == Orientation.landscape;

// // // //           return SafeArea(
// // // //             child: RefreshIndicator(
// // // //               onRefresh: () => controller.refreshSeries(),
// // // //               backgroundColor: const Color(0xFF1A1A1A),
// // // //               color: const Color(0xFF00A8E8),
// // // //               child: Obx(() {
// // // //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// // // //                   return Center(
// // // //                     child: CircularProgressIndicator(
// // // //                       color: const Color(0xFF00A8E8),
// // // //                     ),
// // // //                   );
// // // //                 }

// // // //                 return SingleChildScrollView(
// // // //                   physics: const AlwaysScrollableScrollPhysics(),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       // Header
// // // //                       _buildHeader(width, height, isLandscape),
                      
// // // //                       // Banner Slider
// // // //                       _buildBannerSlider(controller, width, height, isLandscape),
                      
// // // //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                      
// // // //                       // Series Section
// // // //                       _buildSeriesSection(controller, width, height, isLandscape),
                      
// // // //                       SizedBox(height: height * 0.05),
// // // //                     ],
// // // //                   ),
// // // //                 );
// // // //               }),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // //     return Padding(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //         children: [
// // // //           Image.asset(
// // // //             'assets/prime_logo.png',
// // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // //             errorBuilder: (context, error, stackTrace) {
// // // //               return Text(
// // // //                 'prime video',
// // // //                 style: TextStyle(
// // // //                   color: Colors.white,
// // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //           Row(
// // // //             children: [
// // // //               InkWell(
// // // //                 onTap: () {
// // // //                   Get.to(Searchscreen());
// // // //                 },
// // // //                 child: Icon(
// // // //                   Icons.search,
// // // //                   color: Colors.white,
// // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // //                 ),
// // // //               ),
// // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // //               // Commented out cast icon
// // // //               // Icon(
// // // //               //   Icons.cast,
// // // //               //   color: Colors.white,
// // // //               //   size: width * (isLandscape ? 0.04 : 0.06),
// // // //               // ),
// // // //               // SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // //               // Commented out profile icon
// // // //               // CircleAvatar(
// // // //               //   radius: width * (isLandscape ? 0.025 : 0.04),
// // // //               //   backgroundColor: Colors.blue,
// // // //               //   child: Icon(
// // // //               //     Icons.person,
// // // //               //     color: Colors.white,
// // // //               //     size: width * (isLandscape ? 0.03 : 0.05),
// // // //               //   ),
// // // //               // ),
// // // //               InkWell(
// // // //                 onTap: () {
// // // //                   Get.to(() => NotificationScreen());
// // // //                 },
// // // //                 child: Icon(
// // // //                   Icons.notifications_outlined,
// // // //                   color: Colors.white,
// // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Column(
// // // //       children: [
// // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // //         SizedBox(
// // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // //           child: PageView.builder(
// // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // //             itemCount: controller.bannerImages.length,
// // // //             itemBuilder: (context, index) {
// // // //               return Container(
// // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //                 decoration: BoxDecoration(
// // // //                   borderRadius: BorderRadius.circular(12),
// // // //                   image: DecorationImage(
// // // //                     image: AssetImage(controller.bannerImages[index]),
// // // //                     fit: BoxFit.cover,
// // // //                   ),
// // // //                 ),
// // // //                 child: Container(
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                     gradient: LinearGradient(
// // // //                       begin: Alignment.topCenter,
// // // //                       end: Alignment.bottomCenter,
// // // //                       colors: [
// // // //                         Colors.transparent,
// // // //                         Colors.black.withOpacity(0.8),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   child: Column(
// // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Padding(
// // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // //                         child: Column(
// // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                           children: [
// // // //                             Text(
// // // //                               'AMAZON ORIGINAL',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                 fontWeight: FontWeight.w500,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // //                             Text(
// // // //                               'THE BOYS',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.white,
// // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // //                             Row(
// // // //                               children: [
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.symmetric(
// // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // //                                   ),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.blue,
// // // //                                     borderRadius: BorderRadius.circular(4),
// // // //                                   ),
// // // //                                   child: Row(
// // // //                                     mainAxisSize: MainAxisSize.min,
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.check_circle,
// // // //                                         color: Colors.white,
// // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // //                                       ),
// // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // //                                       Text(
// // // //                                         'Included with prime',
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.white,
// // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                           fontWeight: FontWeight.w500,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ),
// // // //                                 const Spacer(),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.add,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.info_outline,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // //         // Page Indicators
// // // //         Obx(() => Row(
// // // //           mainAxisAlignment: MainAxisAlignment.center,
// // // //           children: List.generate(
// // // //             controller.bannerImages.length,
// // // //             (index) => Container(
// // // //               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // //               width: width * (isLandscape ? 0.015 : 0.02),
// // // //               height: width * (isLandscape ? 0.015 : 0.02),
// // // //               decoration: BoxDecoration(
// // // //                 shape: BoxShape.circle,
// // // //                 color: controller.currentBannerIndex.value == index
// // // //                     ? Colors.blue
// // // //                     : Colors.grey[600],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         )),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Obx(() {
// // // //       if (controller.seriesList.isEmpty) {
// // // //         return Center(
// // // //           child: Padding(
// // // //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //             child: Text(
// // // //               'No series available',
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[400],
// // // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       }

// // // //       return Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             child: Text(
// // // //               'Available Series',
// // // //               style: TextStyle(
// // // //                 color: Colors.white,
// // // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // //                 fontWeight: FontWeight.bold,
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // //           ListView.builder(
// // // //             shrinkWrap: true,
// // // //             physics: const NeverScrollableScrollPhysics(),
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             itemCount: controller.seriesList.length,
// // // //             itemBuilder: (context, index) {
// // // //               final series = controller.seriesList[index];
// // // //               final firstVideo = series.videos?.isNotEmpty == true ? series.videos![0] : null;
              
// // // //               return GestureDetector(
// // // //                 onTap: () {
// // // //                   // Navigate to detail page
// // // //                   // Get.to(() => SeriesDetailScreen(seriesData: series));
// // // //                     Get.to(() => SeriesDetailScreen(seriesData: series));
// // // //                 },
// // // //                 child: Container(
// // // //                   margin: EdgeInsets.only(bottom: height * (isLandscape ? 0.03 : 0.025)),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Container(
// // // //                         height: height * (isLandscape ? 0.5 : 0.3),
// // // //                         decoration: BoxDecoration(
// // // //                           borderRadius: BorderRadius.circular(12),
// // // //                           color: Colors.grey[900],
// // // //                         ),
// // // //                         child: Stack(
// // // //                           children: [
// // // //                             // Image
// // // //                             if (series.seriesThumbUrl != null && series.seriesThumbUrl!.isNotEmpty)
// // // //                               ClipRRect(
// // // //                                 borderRadius: BorderRadius.circular(12),
// // // //                                 child: Image.network(
// // // //                                   series.seriesThumbUrl!,
// // // //                                   width: double.infinity,
// // // //                                   height: double.infinity,
// // // //                                   fit: BoxFit.cover,
// // // //                                   errorBuilder: (context, error, stackTrace) {
// // // //                                     return _buildPlaceholderImage(width, height, isLandscape);
// // // //                                   },
// // // //                                   loadingBuilder: (context, child, loadingProgress) {
// // // //                                     if (loadingProgress == null) return child;
// // // //                                     return Center(
// // // //                                       child: CircularProgressIndicator(
// // // //                                         color: const Color(0xFF00A8E8),
// // // //                                         value: loadingProgress.expectedTotalBytes != null
// // // //                                             ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
// // // //                                             : null,
// // // //                                       ),
// // // //                                     );
// // // //                                   },
// // // //                                 ),
// // // //                               )
// // // //                             else
// // // //                               _buildPlaceholderImage(width, height, isLandscape),
                            
// // // //                             // Gradient Overlay
// // // //                             Container(
// // // //                               decoration: BoxDecoration(
// // // //                                 borderRadius: BorderRadius.circular(12),
// // // //                                 gradient: LinearGradient(
// // // //                                   begin: Alignment.topCenter,
// // // //                                   end: Alignment.bottomCenter,
// // // //                                   colors: [
// // // //                                     Colors.transparent,
// // // //                                     Colors.black.withOpacity(0.7),
// // // //                                   ],
// // // //                                 ),
// // // //                               ),
// // // //                             ),
                            
// // // //                             // Series Info
// // // //                             Positioned(
// // // //                               bottom: width * (isLandscape ? 0.02 : 0.03),
// // // //                               left: width * (isLandscape ? 0.02 : 0.03),
// // // //                               right: width * (isLandscape ? 0.02 : 0.03),
// // // //                               child: Column(
// // // //                                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                 children: [
// // // //                                   Text(
// // // //                                     series.episodeName ?? 'Unknown Series',
// // // //                                     style: TextStyle(
// // // //                                       color: Colors.white,
// // // //                                       fontSize: width * (isLandscape ? 0.04 : 0.06),
// // // //                                       fontWeight: FontWeight.bold,
// // // //                                     ),
// // // //                                   ),
// // // //                                   SizedBox(height: height * 0.01),
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       if (firstVideo?.imdbRating != null) ...[
// // // //                                         Icon(
// // // //                                           Icons.star,
// // // //                                           color: Colors.amber,
// // // //                                           size: width * (isLandscape ? 0.025 : 0.04),
// // // //                                         ),
// // // //                                         SizedBox(width: width * 0.01),
// // // //                                         Text(
// // // //                                           firstVideo!.imdbRating!.toStringAsFixed(1),
// // // //                                           style: TextStyle(
// // // //                                             color: Colors.white,
// // // //                                             fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // //                                           ),
// // // //                                         ),
// // // //                                         SizedBox(width: width * 0.03),
// // // //                                       ],
// // // //                                       if (firstVideo?.releaseDate != null) ...[
// // // //                                         Text(
// // // //                                           _formatYear(firstVideo!.releaseDate!),
// // // //                                           style: TextStyle(
// // // //                                             color: Colors.grey[400],
// // // //                                             fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // //                                           ),
// // // //                                         ),
// // // //                                         SizedBox(width: width * 0.03),
// // // //                                       ],
// // // //                                       if (series.totalEpisodes != null)
// // // //                                         Container(
// // // //                                           padding: EdgeInsets.symmetric(
// // // //                                             horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // //                                             vertical: height * (isLandscape ? 0.008 : 0.005),
// // // //                                           ),
// // // //                                           decoration: BoxDecoration(
// // // //                                             color: Colors.blue,
// // // //                                             borderRadius: BorderRadius.circular(4),
// // // //                                           ),
// // // //                                           child: Text(
// // // //                                             '${series.totalEpisodes} Episode${series.totalEpisodes! > 1 ? 's' : ''}',
// // // //                                             style: TextStyle(
// // // //                                               color: Colors.white,
// // // //                                               fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                               fontWeight: FontWeight.w500,
// // // //                                             ),
// // // //                                           ),
// // // //                                         ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ],
// // // //                               ),
// // // //                             ),
                            
// // // //                             // Play Button
// // // //                             Center(
// // // //                               child: Container(
// // // //                                 padding: EdgeInsets.all(width * (isLandscape ? 0.025 : 0.04)),
// // // //                                 decoration: BoxDecoration(
// // // //                                   color: Colors.white.withOpacity(0.3),
// // // //                                   shape: BoxShape.circle,
// // // //                                 ),
// // // //                                 child: Icon(
// // // //                                   Icons.play_arrow,
// // // //                                   color: Colors.white,
// // // //                                   size: width * (isLandscape ? 0.06 : 0.1),
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                       SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // //                       Text(
// // // //                         firstVideo?.description ?? 'No description available',
// // // //                         style: TextStyle(
// // // //                           color: Colors.grey[400],
// // // //                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// // // //                           height: 1.4,
// // // //                         ),
// // // //                         maxLines: 2,
// // // //                         overflow: TextOverflow.ellipsis,
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //         ],
// // // //       );
// // // //     });
// // // //   }

// // // //   Widget _buildPlaceholderImage(double width, double height, bool isLandscape) {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       height: double.infinity,
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: BorderRadius.circular(12),
// // // //         color: Colors.grey[900],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: width * (isLandscape ? 0.1 : 0.15),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   String _formatYear(String dateString) {
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       return date.year.toString();
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }
// // // // }


// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:ott/View/Screen/Episodedeailpage.dart'; // Assuming this is SeriesDetailScreen
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'package:ott/View/Screen/Notifiaction.dart';
// // // // import 'package:ott/View/Screen/Searchscreen.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';
// // // // import 'package:video_player/video_player.dart'; // Added for trailer preview
// // // // import 'dart:async'; // Added for Timer

// // // // // Import the models (place the models above in a separate file or here)
// // // // // import 'package:ott/Models/series_models.dart';

// // // // // GetX Controller (no changes needed)
// // // // class HomeController extends GetxController {
// // // //   RxInt currentBannerIndex = 0.obs;
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
// // // //   List<String> bannerImages = [
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //   ];

// // // //   @override
// // // //   void onInit() {
// // // //     super.onInit();
// // // //     fetchAllSeries();
// // // //   }

// // // //   void changeBanner(int index) {
// // // //     currentBannerIndex.value = index;
// // // //   }

// // // //   // Get Token from SharedPreferences
// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

// // // //   // Show Toast Message
// // // //   void showToast(String message, {bool isError = false}) {
// // // //     Fluttertoast.showToast(
// // // //       msg: message,
// // // //       toastLength: Toast.LENGTH_SHORT,
// // // //       gravity: ToastGravity.BOTTOM,
// // // //       backgroundColor: isError ? Colors.red : Colors.green,
// // // //       textColor: Colors.white,
// // // //       fontSize: 16.0,
// // // //     );
// // // //   }

// // // //   // Fetch All Series from API
// // // //   Future<void> fetchAllSeries() async {
// // // //     isLoading.value = true;
// // // //     try {
// // // //       // Get token
// // // //       String? token = await getToken();
// // // //       print('Fetching series...');
// // // //       print('Token: $token');

// // // //       // API Call
// // // //       final response = await http.get(
// // // //         Uri.parse('$baseUrl/videos/all'),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //           if (token != null) 'Authorization': 'Bearer $token',
// // // //         },
// // // //       );

// // // //       print('Response Status Code: ${response.statusCode}');
// // // //       print('Response Body: ${response.body}');

// // // //       if (response.statusCode == 200) {
// // // //         final List<dynamic> data = jsonDecode(response.body);
// // // //         seriesList.value = data
// // // //             .map((json) => SeriesResponse.fromJson(json))
// // // //             .toList();
// // // //         print('Total series loaded: ${seriesList.length}');
// // // //       } else {
// // // //         showToast('Failed to load series', isError: true);
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching series: $e');
// // // //       showToast('An error occurred while loading series', isError: true);
// // // //     } finally {
// // // //       isLoading.value = false;
// // // //     }
// // // //   }

// // // //   // Refresh Series
// // // //   Future<void> refreshSeries() async {
// // // //     await fetchAllSeries();
// // // //   }
// // // // }

// // // // // New StatefulWidget for Series Item with Trailer Preview
// // // // class SeriesItem extends StatefulWidget {
// // // //   final SeriesResponse series;
// // // //   final double width;
// // // //   final double height;
// // // //   final bool isLandscape;

// // // //   const SeriesItem({
// // // //     super.key,
// // // //     required this.series,
// // // //     required this.width,
// // // //     required this.height,
// // // //     required this.isLandscape,
// // // //   });

// // // //   @override
// // // //   State<SeriesItem> createState() => _SeriesItemState();
// // // // }

// // // // class _SeriesItemState extends State<SeriesItem> {
// // // //   VideoPlayerController? _controller;
// // // //   bool _showTrailer = false;
// // // //   bool _isVideoLoading = false;
// // // //   Timer? _timer;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _startPreviewTimer();
// // // //   }

// // // //   void _startPreviewTimer() {
// // // //     // Show thumbnail for 2 seconds, then load trailer if available
// // // //     _timer = Timer(const Duration(seconds: 2), () {
// // // //       if (widget.series.seriesTrailerUrl != null &&
// // // //           widget.series.seriesTrailerUrl!.isNotEmpty) {
// // // //         _loadTrailer();
// // // //       }
// // // //     });
// // // //   }

// // // //   Future<void> _loadTrailer() async {
// // // //     if (mounted) {
// // // //       setState(() {
// // // //         _isVideoLoading = true;
// // // //       });
// // // //     }

// // // //     try {
// // // //       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
// // // //       await _controller!.initialize();
// // // //       if (mounted) {
// // // //         setState(() {
// // // //           _showTrailer = true;
// // // //           _isVideoLoading = false;
// // // //         });
// // // //         _controller!.play();
// // // //         _controller!.setLooping(true); // Loop the trailer
// // // //         _controller!.setVolume(0.0); // Muted for preview
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error loading trailer: $e');
// // // //       if (mounted) {
// // // //         setState(() {
// // // //           _isVideoLoading = false;
// // // //         });
// // // //       }
// // // //     }
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _timer?.cancel();
// // // //     _controller?.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   Widget _buildPlaceholderImage() {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       height: double.infinity,
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: BorderRadius.circular(12),
// // // //         color: Colors.grey[900],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: widget.width * (widget.isLandscape ? 0.1 : 0.15),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   String _formatYear(String? dateString) {
// // // //     if (dateString == null) return 'N/A';
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       return date.year.toString();
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final firstVideo = widget.series.videos?.isNotEmpty == true
// // // //         ? widget.series.videos![0]
// // // //         : null;

// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         Get.to(() => SeriesDetailScreen(seriesData: widget.series)); // Assuming SeriesDetailScreen is EpisodeDetailPage
// // // //       },
// // // //       child: Container(
// // // //         margin: EdgeInsets.only(
// // // //           bottom: widget.height * (widget.isLandscape ? 0.03 : 0.025),
// // // //         ),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Container(
// // // //               height: widget.height * (widget.isLandscape ? 0.5 : 0.3),
// // // //               decoration: BoxDecoration(
// // // //                 borderRadius: BorderRadius.circular(12),
// // // //                 color: Colors.grey[900],
// // // //               ),
// // // //               child: Stack(
// // // //                 children: [
// // // //                   // Thumbnail (always base layer)
// // // //                   ClipRRect(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                     child: widget.series.seriesThumbUrl != null &&
// // // //                             widget.series.seriesThumbUrl!.isNotEmpty
// // // //                         ? Image.network(
// // // //                             widget.series.seriesThumbUrl!,
// // // //                             width: double.infinity,
// // // //                             height: double.infinity,
// // // //                             fit: BoxFit.cover,
// // // //                             errorBuilder: (context, error, stackTrace) {
// // // //                               return _buildPlaceholderImage();
// // // //                             },
// // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // //                               if (loadingProgress == null) return child;
// // // //                               return Stack(
// // // //                                 fit: StackFit.expand,
// // // //                                 children: [
// // // //                                   _buildPlaceholderImage(),
// // // //                                   Center(
// // // //                                     child: CircularProgressIndicator(
// // // //                                       color: const Color(0xFF00A8E8),
// // // //                                       value: loadingProgress.expectedTotalBytes != null
// // // //                                           ? loadingProgress.cumulativeBytesLoaded /
// // // //                                               loadingProgress.expectedTotalBytes!
// // // //                                           : null,
// // // //                                     ),
// // // //                                   ),
// // // //                                 ],
// // // //                               );
// // // //                             },
// // // //                           )
// // // //                         : _buildPlaceholderImage(),
// // // //                   ),
// // // //                   // Trailer Video Overlay (shows after 2s if available)
// // // //                   if (_showTrailer &&
// // // //                       _controller != null &&
// // // //                       _controller!.value.isInitialized)
// // // //                     Positioned.fill(
// // // //                       child: ClipRRect(
// // // //                         borderRadius: BorderRadius.circular(12),
// // // //                         child: FittedBox(
// // // //                           fit: BoxFit.cover,
// // // //                           child: SizedBox(
// // // //                             width: _controller!.value.size.width,
// // // //                             height: _controller!.value.size.height,
// // // //                             child: VideoPlayer(_controller!),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   // Loading indicator for video
// // // //                   if (_isVideoLoading)
// // // //                     const Positioned.fill(
// // // //                       child: Center(
// // // //                         child: CircularProgressIndicator(
// // // //                           color: Color(0xFF00A8E8),
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   // Gradient Overlay
// // // //                   Container(
// // // //                     decoration: BoxDecoration(
// // // //                       borderRadius: BorderRadius.circular(12),
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.7),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                   // Series Info
// // // //                   Positioned(
// // // //                     bottom: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     left: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     right: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     child: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text(
// // // //                           widget.series.episodeName ?? 'Unknown Series',
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: widget.width * (widget.isLandscape ? 0.04 : 0.06),
// // // //                             fontWeight: FontWeight.bold,
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(height: widget.height * 0.01),
// // // //                         Row(
// // // //                           children: [
// // // //                             if (firstVideo?.imdbRating != null) ...[
// // // //                               Icon(
// // // //                                 Icons.star,
// // // //                                 color: Colors.amber,
// // // //                                 size: widget.width * (widget.isLandscape ? 0.025 : 0.04),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.01),
// // // //                               Text(
// // // //                                 firstVideo!.imdbRating!.toStringAsFixed(1),
// // // //                                 style: TextStyle(
// // // //                                   color: Colors.white,
// // // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                                 ),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.03),
// // // //                             ],
// // // //                             if (firstVideo?.releaseDate != null) ...[
// // // //                               Text(
// // // //                                 _formatYear(firstVideo?.releaseDate),
// // // //                                 style: TextStyle(
// // // //                                   color: Colors.grey[400],
// // // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                                 ),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.03),
// // // //                             ],
// // // //                             if (widget.series.totalEpisodes != null)
// // // //                               Container(
// // // //                                 padding: EdgeInsets.symmetric(
// // // //                                   horizontal: widget.width * (widget.isLandscape ? 0.015 : 0.02),
// // // //                                   vertical: widget.height * (widget.isLandscape ? 0.008 : 0.005),
// // // //                                 ),
// // // //                                 decoration: BoxDecoration(
// // // //                                   color: Colors.blue,
// // // //                                   borderRadius: BorderRadius.circular(4),
// // // //                                 ),
// // // //                                 child: Text(
// // // //                                   '${widget.series.totalEpisodes} Episode${widget.series.totalEpisodes! > 1 ? 's' : ''}',
// // // //                                   style: TextStyle(
// // // //                                     color: Colors.white,
// // // //                                     fontSize: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                                     fontWeight: FontWeight.w500,
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                           ],
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   // Play Button (center, can tap to play full if needed, but here for UI)
// // // //                   Center(
// // // //                     child: Container(
// // // //                       padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.025 : 0.04)),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.white.withOpacity(0.2),
// // // //                         shape: BoxShape.circle,
// // // //                       ),
// // // //                       child: Icon(
// // // //                         Icons.play_arrow,
// // // //                         color: Colors.white,
// // // //                         size: widget.width * (widget.isLandscape ? 0.06 : 0.1),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: widget.height * (widget.isLandscape ? 0.015 : 0.01)),
// // // //             Text(
// // // //               firstVideo?.description ?? 'No description available',
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[400],
// // // //                 fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                 height: 1.4,
// // // //               ),
// // // //               maxLines: 2,
// // // //               overflow: TextOverflow.ellipsis,
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class Homescreen extends StatelessWidget {
// // // //   const Homescreen({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final HomeController controller = Get.put(HomeController());
// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: OrientationBuilder(
// // // //         builder: (context, orientation) {
// // // //           double height = MediaQuery.of(context).size.height;
// // // //           double width = MediaQuery.of(context).size.width;
// // // //           bool isLandscape = orientation == Orientation.landscape;
// // // //           return SafeArea(
// // // //             child: RefreshIndicator(
// // // //               onRefresh: () => controller.refreshSeries(),
// // // //               backgroundColor: const Color(0xFF1A1A1A),
// // // //               color: const Color(0xFF00A8E8),
// // // //               child: Obx(() {
// // // //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// // // //                   return Center(
// // // //                     child: CircularProgressIndicator(
// // // //                       color: const Color(0xFF00A8E8),
// // // //                     ),
// // // //                   );
// // // //                 }
// // // //                 return SingleChildScrollView(
// // // //                   physics: const AlwaysScrollableScrollPhysics(),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       // Header
// // // //                       _buildHeader(width, height, isLandscape),
// // // //                       // Banner Slider
// // // //                       _buildBannerSlider(controller, width, height, isLandscape),
// // // //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
// // // //                       // Series Section (Updated to use SeriesItem)
// // // //                       _buildSeriesSection(controller, width, height, isLandscape),
// // // //                       SizedBox(height: height * 0.05),
// // // //                     ],
// // // //                   ),
// // // //                 );
// // // //               }),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildHeader(double width, double height, bool isLandscape) {
// // // //     return Padding(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //         children: [
// // // //           Image.asset(
// // // //             'assets/prime_logo.png',
// // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // //             errorBuilder: (context, error, stackTrace) {
// // // //               return Text(
// // // //                 'prime video',
// // // //                 style: TextStyle(
// // // //                   color: Colors.white,
// // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //           Row(
// // // //             children: [
// // // //               InkWell(
// // // //                 onTap: () {
// // // //                   Get.to(Searchscreen());
// // // //                 },
// // // //                 child: Icon(
// // // //                   Icons.search,
// // // //                   color: Colors.white,
// // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // //                 ),
// // // //               ),
// // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // //               InkWell(
// // // //                 onTap: () {
// // // //                   Get.to(() => NotificationScreen());
// // // //                 },
// // // //                 child: Icon(
// // // //                   Icons.notifications_outlined,
// // // //                   color: Colors.white,
// // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Column(
// // // //       children: [
// // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // //         SizedBox(
// // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // //           child: PageView.builder(
// // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // //             itemCount: controller.bannerImages.length,
// // // //             itemBuilder: (context, index) {
// // // //               return Container(
// // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //                 decoration: BoxDecoration(
// // // //                   borderRadius: BorderRadius.circular(12),
// // // //                   image: DecorationImage(
// // // //                     image: AssetImage(controller.bannerImages[index]),
// // // //                     fit: BoxFit.cover,
// // // //                   ),
// // // //                 ),
// // // //                 child: Container(
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                     gradient: LinearGradient(
// // // //                       begin: Alignment.topCenter,
// // // //                       end: Alignment.bottomCenter,
// // // //                       colors: [
// // // //                         Colors.transparent,
// // // //                         Colors.black.withOpacity(0.8),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   child: Column(
// // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Padding(
// // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // //                         child: Column(
// // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                           children: [
// // // //                             Text(
// // // //                               'AMAZON ORIGINAL',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                 fontWeight: FontWeight.w500,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // //                             Text(
// // // //                               'THE BOYS',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.white,
// // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // //                             Row(
// // // //                               children: [
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.symmetric(
// // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // //                                   ),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.blue,
// // // //                                     borderRadius: BorderRadius.circular(4),
// // // //                                   ),
// // // //                                   child: Row(
// // // //                                     mainAxisSize: MainAxisSize.min,
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.check_circle,
// // // //                                         color: Colors.white,
// // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // //                                       ),
// // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // //                                       Text(
// // // //                                         'Included with prime',
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.white,
// // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                           fontWeight: FontWeight.w500,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ),
// // // //                                 const Spacer(),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.add,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.info_outline,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // //         // Page Indicators
// // // //         Obx(() => Row(
// // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // //               children: List.generate(
// // // //                 controller.bannerImages.length,
// // // //                 (index) => Container(
// // // //                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // //                   width: width * (isLandscape ? 0.015 : 0.02),
// // // //                   height: width * (isLandscape ? 0.015 : 0.02),
// // // //                   decoration: BoxDecoration(
// // // //                     shape: BoxShape.circle,
// // // //                     color: controller.currentBannerIndex.value == index
// // // //                         ? Colors.blue
// // // //                         : Colors.grey[600],
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //             )),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Obx(() {
// // // //       if (controller.seriesList.isEmpty) {
// // // //         return Center(
// // // //           child: Padding(
// // // //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //             child: Text(
// // // //               'No series available',
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[400],
// // // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       }
// // // //       return Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             child: Text(
// // // //               'Available Series',
// // // //               style: TextStyle(
// // // //                 color: Colors.white,
// // // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // //                 fontWeight: FontWeight.bold,
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // //           ListView.builder(
// // // //             shrinkWrap: true,
// // // //             physics: const NeverScrollableScrollPhysics(),
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             itemCount: controller.seriesList.length,
// // // //             itemBuilder: (context, index) {
// // // //               return SeriesItem(
// // // //                 series: controller.seriesList[index],
// // // //                 width: width,
// // // //                 height: height,
// // // //                 isLandscape: isLandscape,
// // // //               );
// // // //             },
// // // //           ),
// // // //         ],
// // // //       );
// // // //     });
// // // //   }
// // // // }


// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:ott/View/Screen/Episodedeailpage.dart'; // Assuming this is SeriesDetailScreen
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'package:ott/View/Screen/Notifiaction.dart';
// // // // import 'package:ott/View/Screen/Searchscreen.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';
// // // // import 'package:video_player/video_player.dart'; // Added for trailer preview
// // // // import 'dart:async'; // Added for Timer

// // // // // Import the models (place the models above in a separate file or here)
// // // // // import 'package:ott/Models/series_models.dart';

// // // // // GetX Controller (updated with unread count)
// // // // class HomeController extends GetxController {
// // // //   RxInt currentBannerIndex = 0.obs;
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
// // // //   RxInt unreadCount = 0.obs;
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
// // // //   List<String> bannerImages = [
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //     'assets/Banner1.png',
// // // //   ];

// // // //   @override
// // // //   void onInit() {
// // // //     super.onInit();
// // // //     fetchAllSeries();
// // // //     fetchUnreadCount();
// // // //   }

// // // //   void changeBanner(int index) {
// // // //     currentBannerIndex.value = index;
// // // //   }

// // // //   // Get Token from SharedPreferences
// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

// // // //   // Show Toast Message
// // // //   void showToast(String message, {bool isError = false}) {
// // // //     Fluttertoast.showToast(
// // // //       msg: message,
// // // //       toastLength: Toast.LENGTH_SHORT,
// // // //       gravity: ToastGravity.BOTTOM,
// // // //       backgroundColor: isError ? Colors.red : Colors.green,
// // // //       textColor: Colors.white,
// // // //       fontSize: 16.0,
// // // //     );
// // // //   }

// // // //   // Fetch Unread Count from Notifications API
// // // //   Future<void> fetchUnreadCount() async {
// // // //     try {
// // // //       String? token = await getToken();
// // // //       if (token == null) {
// // // //         print('No token found for notifications');
// // // //         return;
// // // //       }

// // // //       print('Fetching unread count...');
// // // //       print('Token: $token');

// // // //       final response = await http.get(
// // // //         Uri.parse('$baseUrl/notifications'),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //           'Authorization': 'Bearer $token',
// // // //         },
// // // //       );

// // // //       print('Unread Count Response Status Code: ${response.statusCode}');
// // // //       print('Unread Count Response Body: ${response.body}');

// // // //       if (response.statusCode == 200) {
// // // //         final Map<String, dynamic> data = jsonDecode(response.body);
// // // //         unreadCount.value = data['unreadCount'] ?? 0;
// // // //         print('Unread count loaded: ${unreadCount.value}');
// // // //       } else {
// // // //         showToast('Failed to load unread count', isError: true);
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching unread count: $e');
// // // //       showToast('An error occurred while loading unread count', isError: true);
// // // //     }
// // // //   }

// // // //   // Fetch All Series from API
// // // //   Future<void> fetchAllSeries() async {
// // // //     isLoading.value = true;
// // // //     try {
// // // //       // Get token
// // // //       String? token = await getToken();
// // // //       print('Fetching series...');
// // // //       print('Token: $token');

// // // //       // API Call
// // // //       final response = await http.get(
// // // //         Uri.parse('$baseUrl/videos/all'),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //           if (token != null) 'Authorization': 'Bearer $token',
// // // //         },
// // // //       );

// // // //       print('Response Status Code: ${response.statusCode}');
// // // //       print('Response Body: ${response.body}');

// // // //       if (response.statusCode == 200) {
// // // //         final List<dynamic> data = jsonDecode(response.body);
// // // //         seriesList.value = data
// // // //             .map((json) => SeriesResponse.fromJson(json))
// // // //             .toList();
// // // //         print('Total series loaded: ${seriesList.length}');
// // // //       } else {
// // // //         showToast('Failed to load series', isError: true);
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching series: $e');
// // // //       showToast('An error occurred while loading series', isError: true);
// // // //     } finally {
// // // //       isLoading.value = false;
// // // //     }
// // // //   }

// // // //   // Refresh Series
// // // //   Future<void> refreshSeries() async {
// // // //     await fetchAllSeries();
// // // //     await fetchUnreadCount(); // Also refresh unread count on pull-to-refresh
// // // //   }
// // // // }

// // // // // New StatefulWidget for Series Item with Trailer Preview
// // // // class SeriesItem extends StatefulWidget {
// // // //   final SeriesResponse series;
// // // //   final double width;
// // // //   final double height;
// // // //   final bool isLandscape;

// // // //   const SeriesItem({
// // // //     super.key,
// // // //     required this.series,
// // // //     required this.width,
// // // //     required this.height,
// // // //     required this.isLandscape,
// // // //   });

// // // //   @override
// // // //   State<SeriesItem> createState() => _SeriesItemState();
// // // // }

// // // // class _SeriesItemState extends State<SeriesItem> {
// // // //   VideoPlayerController? _controller;
// // // //   bool _showTrailer = false;
// // // //   bool _isVideoLoading = false;
// // // //   Timer? _timer;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _startPreviewTimer();
// // // //   }

// // // //   void _startPreviewTimer() {
// // // //     // Show thumbnail for 2 seconds, then load trailer if available
// // // //     _timer = Timer(const Duration(seconds: 2), () {
// // // //       if (widget.series.seriesTrailerUrl != null &&
// // // //           widget.series.seriesTrailerUrl!.isNotEmpty) {
// // // //         _loadTrailer();
// // // //       }
// // // //     });
// // // //   }

// // // //   Future<void> _loadTrailer() async {
// // // //     if (mounted) {
// // // //       setState(() {
// // // //         _isVideoLoading = true;
// // // //       });
// // // //     }

// // // //     try {
// // // //       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
// // // //       await _controller!.initialize();
// // // //       if (mounted) {
// // // //         setState(() {
// // // //           _showTrailer = true;
// // // //           _isVideoLoading = false;
// // // //         });
// // // //         _controller!.play();
// // // //         _controller!.setLooping(true); // Loop the trailer
// // // //         _controller!.setVolume(0.0); // Muted for preview
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error loading trailer: $e');
// // // //       if (mounted) {
// // // //         setState(() {
// // // //           _isVideoLoading = false;
// // // //         });
// // // //       }
// // // //     }
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _timer?.cancel();
// // // //     _controller?.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   Widget _buildPlaceholderImage() {
// // // //     return Container(
// // // //       width: double.infinity,
// // // //       height: double.infinity,
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: BorderRadius.circular(12),
// // // //         color: Colors.grey[900],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: widget.width * (widget.isLandscape ? 0.1 : 0.15),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   String _formatYear(String? dateString) {
// // // //     if (dateString == null) return 'N/A';
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       return date.year.toString();
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final firstVideo = widget.series.videos?.isNotEmpty == true
// // // //         ? widget.series.videos![0]
// // // //         : null;

// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         Get.to(() => SeriesDetailScreen(seriesData: widget.series)); // Assuming SeriesDetailScreen is EpisodeDetailPage
// // // //       },
// // // //       child: Container(
// // // //         margin: EdgeInsets.only(
// // // //           bottom: widget.height * (widget.isLandscape ? 0.03 : 0.025),
// // // //         ),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             Container(
// // // //               height: widget.height * (widget.isLandscape ? 0.5 : 0.3),
// // // //               decoration: BoxDecoration(
// // // //                 borderRadius: BorderRadius.circular(12),
// // // //                 color: Colors.grey[900],
// // // //               ),
// // // //               child: Stack(
// // // //                 children: [
// // // //                   // Thumbnail (always base layer)
// // // //                   ClipRRect(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                     child: widget.series.seriesThumbUrl != null &&
// // // //                             widget.series.seriesThumbUrl!.isNotEmpty
// // // //                         ? Image.network(
// // // //                             widget.series.seriesThumbUrl!,
// // // //                             width: double.infinity,
// // // //                             height: double.infinity,
// // // //                             fit: BoxFit.cover,
// // // //                             errorBuilder: (context, error, stackTrace) {
// // // //                               return _buildPlaceholderImage();
// // // //                             },
// // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // //                               if (loadingProgress == null) return child;
// // // //                               return Stack(
// // // //                                 fit: StackFit.expand,
// // // //                                 children: [
// // // //                                   _buildPlaceholderImage(),
// // // //                                   Center(
// // // //                                     child: CircularProgressIndicator(
// // // //                                       color: const Color(0xFF00A8E8),
// // // //                                       value: loadingProgress.expectedTotalBytes != null
// // // //                                           ? loadingProgress.cumulativeBytesLoaded /
// // // //                                               loadingProgress.expectedTotalBytes!
// // // //                                           : null,
// // // //                                     ),
// // // //                                   ),
// // // //                                 ],
// // // //                               );
// // // //                             },
// // // //                           )
// // // //                         : _buildPlaceholderImage(),
// // // //                   ),
// // // //                   // Trailer Video Overlay (shows after 2s if available)
// // // //                   if (_showTrailer &&
// // // //                       _controller != null &&
// // // //                       _controller!.value.isInitialized)
// // // //                     Positioned.fill(
// // // //                       child: ClipRRect(
// // // //                         borderRadius: BorderRadius.circular(12),
// // // //                         child: FittedBox(
// // // //                           fit: BoxFit.cover,
// // // //                           child: SizedBox(
// // // //                             width: _controller!.value.size.width,
// // // //                             height: _controller!.value.size.height,
// // // //                             child: VideoPlayer(_controller!),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   // Loading indicator for video
// // // //                   if (_isVideoLoading)
// // // //                     const Positioned.fill(
// // // //                       child: Center(
// // // //                         child: CircularProgressIndicator(
// // // //                           color: Color(0xFF00A8E8),
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   // Gradient Overlay
// // // //                   Container(
// // // //                     decoration: BoxDecoration(
// // // //                       borderRadius: BorderRadius.circular(12),
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.7),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                   // Series Info
// // // //                   Positioned(
// // // //                     bottom: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     left: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     right: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                     child: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text(
// // // //                           widget.series.episodeName ?? 'Unknown Series',
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: widget.width * (widget.isLandscape ? 0.04 : 0.06),
// // // //                             fontWeight: FontWeight.bold,
// // // //                           ),
// // // //                         ),
// // // //                         SizedBox(height: widget.height * 0.01),
// // // //                         Row(
// // // //                           children: [
// // // //                             if (firstVideo?.imdbRating != null) ...[
// // // //                               Icon(
// // // //                                 Icons.star,
// // // //                                 color: Colors.amber,
// // // //                                 size: widget.width * (widget.isLandscape ? 0.025 : 0.04),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.01),
// // // //                               Text(
// // // //                                 firstVideo!.imdbRating!.toStringAsFixed(1),
// // // //                                 style: TextStyle(
// // // //                                   color: Colors.white,
// // // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                                 ),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.03),
// // // //                             ],
// // // //                             if (firstVideo?.releaseDate != null) ...[
// // // //                               Text(
// // // //                                 _formatYear(firstVideo?.releaseDate),
// // // //                                 style: TextStyle(
// // // //                                   color: Colors.grey[400],
// // // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                                 ),
// // // //                               ),
// // // //                               SizedBox(width: widget.width * 0.03),
// // // //                             ],
// // // //                             if (widget.series.totalEpisodes != null)
// // // //                               Container(
// // // //                                 padding: EdgeInsets.symmetric(
// // // //                                   horizontal: widget.width * (widget.isLandscape ? 0.015 : 0.02),
// // // //                                   vertical: widget.height * (widget.isLandscape ? 0.008 : 0.005),
// // // //                                 ),
// // // //                                 decoration: BoxDecoration(
// // // //                                   color: Colors.blue,
// // // //                                   borderRadius: BorderRadius.circular(4),
// // // //                                 ),
// // // //                                 child: Text(
// // // //                                   '${widget.series.totalEpisodes} Episode${widget.series.totalEpisodes! > 1 ? 's' : ''}',
// // // //                                   style: TextStyle(
// // // //                                     color: Colors.white,
// // // //                                     fontSize: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // // //                                     fontWeight: FontWeight.w500,
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                           ],
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   // Play Button (center, can tap to play full if needed, but here for UI)
// // // //                   Center(
// // // //                     child: Container(
// // // //                       padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.025 : 0.04)),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.white.withOpacity(0.2),
// // // //                         shape: BoxShape.circle,
// // // //                       ),
// // // //                       child: Icon(
// // // //                         Icons.play_arrow,
// // // //                         color: Colors.white,
// // // //                         size: widget.width * (widget.isLandscape ? 0.06 : 0.1),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //             SizedBox(height: widget.height * (widget.isLandscape ? 0.015 : 0.01)),
// // // //             Text(
// // // //               firstVideo?.description ?? 'No description available',
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[400],
// // // //                 fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // // //                 height: 1.4,
// // // //               ),
// // // //               maxLines: 2,
// // // //               overflow: TextOverflow.ellipsis,
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // class Homescreen extends StatelessWidget {
// // // //   const Homescreen({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final HomeController controller = Get.put(HomeController());
// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: OrientationBuilder(
// // // //         builder: (context, orientation) {
// // // //           double height = MediaQuery.of(context).size.height;
// // // //           double width = MediaQuery.of(context).size.width;
// // // //           bool isLandscape = orientation == Orientation.landscape;
// // // //           return SafeArea(
// // // //             child: RefreshIndicator(
// // // //               onRefresh: () => controller.refreshSeries(),
// // // //               backgroundColor: const Color(0xFF1A1A1A),
// // // //               color: const Color(0xFF00A8E8),
// // // //               child: Obx(() {
// // // //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// // // //                   return Center(
// // // //                     child: CircularProgressIndicator(
// // // //                       color: const Color(0xFF00A8E8),
// // // //                     ),
// // // //                   );
// // // //                 }
// // // //                 return SingleChildScrollView(
// // // //                   physics: const AlwaysScrollableScrollPhysics(),
// // // //                   child: Column(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       // Header
// // // //                       _buildHeader(width, height, isLandscape, controller),
// // // //                       // Banner Slider
// // // //                       _buildBannerSlider(controller, width, height, isLandscape),
// // // //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
// // // //                       // Series Section (Updated to use SeriesItem)
// // // //                       _buildSeriesSection(controller, width, height, isLandscape),
// // // //                       SizedBox(height: height * 0.05),
// // // //                     ],
// // // //                   ),
// // // //                 );
// // // //               }),
// // // //             ),
// // // //           );
// // // //         },
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
// // // //     return Padding(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //         children: [
// // // //           Image.asset(
// // // //             'assets/prime_logo.png',
// // // //             width: width * (isLandscape ? 0.15 : 0.25),
// // // //             height: height * (isLandscape ? 0.06 : 0.04),
// // // //             errorBuilder: (context, error, stackTrace) {
// // // //               return Text(
// // // //                 'prime video',
// // // //                 style: TextStyle(
// // // //                   color: Colors.white,
// // // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // // //                   fontWeight: FontWeight.bold,
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //           Row(
// // // //             children: [
// // // //               InkWell(
// // // //                 onTap: () {
// // // //                   Get.to(Searchscreen());
// // // //                 },
// // // //                 child: Icon(
// // // //                   Icons.search,
// // // //                   color: Colors.white,
// // // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // // //                 ),
// // // //               ),
// // // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // // //               Stack(
// // // //                 children: [
// // // //                   InkWell(
// // // //                     onTap: () {
// // // //                       Get.to(() => NotificationScreen());
// // // //                     },
// // // //                     child: Icon(
// // // //                       Icons.notifications_outlined,
// // // //                       color: Colors.white,
// // // //                       size: width * (isLandscape ? 0.04 : 0.06),
// // // //                     ),
// // // //                   ),
// // // //                   // Unread Count Badge
// // // //                   Obx(() {
// // // //                     if (controller.unreadCount.value > 0) {
// // // //                       return Positioned(
// // // //                         right: 0,
// // // //                         top: 0,
// // // //                         child: Container(
// // // //                           padding: EdgeInsets.all(width * 0.015),
// // // //                           decoration: BoxDecoration(
// // // //                             color: Colors.blue,
// // // //                             shape: BoxShape.circle,
// // // //                           ),
// // // //                           constraints: BoxConstraints(
// // // //                             minWidth: width * 0.03,
// // // //                             minHeight: width * 0.03,
// // // //                           ),
// // // //                           child: Text(
// // // //                             '${controller.unreadCount.value}',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.025,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                             textAlign: TextAlign.center,
// // // //                           ),
// // // //                         ),
// // // //                       );
// // // //                     }
// // // //                     return const SizedBox.shrink();
// // // //                   }),
// // // //                 ],
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Column(
// // // //       children: [
// // // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // // //         SizedBox(
// // // //           height: height * (isLandscape ? 0.65 : 0.5),
// // // //           child: PageView.builder(
// // // //             onPageChanged: (index) => controller.changeBanner(index),
// // // //             itemCount: controller.bannerImages.length,
// // // //             itemBuilder: (context, index) {
// // // //               return Container(
// // // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //                 decoration: BoxDecoration(
// // // //                   borderRadius: BorderRadius.circular(12),
// // // //                   image: DecorationImage(
// // // //                     image: AssetImage(controller.bannerImages[index]),
// // // //                     fit: BoxFit.cover,
// // // //                   ),
// // // //                 ),
// // // //                 child: Container(
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                     gradient: LinearGradient(
// // // //                       begin: Alignment.topCenter,
// // // //                       end: Alignment.bottomCenter,
// // // //                       colors: [
// // // //                         Colors.transparent,
// // // //                         Colors.black.withOpacity(0.8),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   child: Column(
// // // //                     mainAxisAlignment: MainAxisAlignment.end,
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Padding(
// // // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // // //                         child: Column(
// // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                           children: [
// // // //                             Text(
// // // //                               'AMAZON ORIGINAL',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                 fontWeight: FontWeight.w500,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // // //                             Text(
// // // //                               'THE BOYS',
// // // //                               style: TextStyle(
// // // //                                 color: Colors.white,
// // // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // // //                             Row(
// // // //                               children: [
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.symmetric(
// // // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // // //                                   ),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.blue,
// // // //                                     borderRadius: BorderRadius.circular(4),
// // // //                                   ),
// // // //                                   child: Row(
// // // //                                     mainAxisSize: MainAxisSize.min,
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.check_circle,
// // // //                                         color: Colors.white,
// // // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // // //                                       ),
// // // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // // //                                       Text(
// // // //                                         'Included with prime',
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.white,
// // // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // // //                                           fontWeight: FontWeight.w500,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ),
// // // //                                 const Spacer(),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.add,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // // //                                 Container(
// // // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // // //                                   decoration: BoxDecoration(
// // // //                                     color: Colors.black.withOpacity(0.3),
// // // //                                     shape: BoxShape.circle,
// // // //                                   ),
// // // //                                   child: Icon(
// // // //                                     Icons.info_outline,
// // // //                                     color: Colors.white,
// // // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // // //                                   ),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               );
// // // //             },
// // // //           ),
// // // //         ),
// // // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // // //         // Page Indicators
// // // //         Obx(() => Row(
// // // //               mainAxisAlignment: MainAxisAlignment.center,
// // // //               children: List.generate(
// // // //                 controller.bannerImages.length,
// // // //                 (index) => Container(
// // // //                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // // //                   width: width * (isLandscape ? 0.015 : 0.02),
// // // //                   height: width * (isLandscape ? 0.015 : 0.02),
// // // //                   decoration: BoxDecoration(
// // // //                     shape: BoxShape.circle,
// // // //                     color: controller.currentBannerIndex.value == index
// // // //                         ? Colors.blue
// // // //                         : Colors.grey[600],
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //             )),
// // // //       ],
// // // //     );
// // // //   }

// // // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // // //     return Obx(() {
// // // //       if (controller.seriesList.isEmpty) {
// // // //         return Center(
// // // //           child: Padding(
// // // //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //             child: Text(
// // // //               'No series available',
// // // //               style: TextStyle(
// // // //                 color: Colors.grey[400],
// // // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         );
// // // //       }
// // // //       return Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             child: Text(
// // // //               'Available Series',
// // // //               style: TextStyle(
// // // //                 color: Colors.white,
// // // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // // //                 fontWeight: FontWeight.bold,
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // // //           ListView.builder(
// // // //             shrinkWrap: true,
// // // //             physics: const NeverScrollableScrollPhysics(),
// // // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // // //             itemCount: controller.seriesList.length,
// // // //             itemBuilder: (context, index) {
// // // //               return SeriesItem(
// // // //                 series: controller.seriesList[index],
// // // //                 width: width,
// // // //                 height: height,
// // // //                 isLandscape: isLandscape,
// // // //               );
// // // //             },
// // // //           ),
// // // //         ],
// // // //       );
// // // //     });
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:ott/View/Screen/Episodedeailpage.dart'; // Assuming this is SeriesDetailScreen
// // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // import 'package:ott/View/Screen/Notifiaction.dart';
// // // import 'package:ott/View/Screen/Searchscreen.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';
// // // import 'package:video_player/video_player.dart'; // Added for trailer preview
// // // import 'dart:async'; // Added for Timer

// // // // Import the models (place the models above in a separate file or here)
// // // // import 'package:ott/Models/series_models.dart';

// // // // GetX Controller (updated with unread count)
// // // class HomeController extends GetxController {
// // //   RxInt currentBannerIndex = 0.obs;
// // //   RxBool isLoading = false.obs;
// // //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
// // //   RxInt unreadCount = 0.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
// // //   List<String> bannerImages = [
// // //     'assets/Banner1.png',
// // //     'assets/Banner1.png',
// // //     'assets/Banner1.png',
// // //   ];

// // //   @override
// // //   void onInit() {
// // //     super.onInit();
// // //     fetchAllSeries();
// // //     fetchUnreadCount();
// // //   }

// // //   void changeBanner(int index) {
// // //     currentBannerIndex.value = index;
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

// // //   // Show Toast Message
// // //   void showToast(String message, {bool isError = false}) {
// // //     Fluttertoast.showToast(
// // //       msg: message,
// // //       toastLength: Toast.LENGTH_SHORT,
// // //       gravity: ToastGravity.BOTTOM,
// // //       backgroundColor: isError ? Colors.red : Colors.green,
// // //       textColor: Colors.white,
// // //       fontSize: 16.0,
// // //     );
// // //   }

// // //   // Fetch Unread Count from Notifications API
// // //   Future<void> fetchUnreadCount() async {
// // //     try {
// // //       String? token = await getToken();
// // //       if (token == null) {
// // //         print('No token found for notifications');
// // //         return;
// // //       }

// // //       print('Fetching unread count...');
// // //       print('Token: $token');

// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/notifications'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('Unread Count Response Status Code: ${response.statusCode}');
// // //       print('Unread Count Response Body: ${response.body}');

// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = jsonDecode(response.body);
// // //         unreadCount.value = data['unreadCount'] ?? 0;
// // //         print('Unread count loaded: ${unreadCount.value}');
// // //       } else {
// // //         showToast('Failed to load unread count', isError: true);
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching unread count: $e');
// // //       showToast('An error occurred while loading unread count', isError: true);
// // //     }
// // //   }

// // //   // Fetch All Series from API
// // //   Future<void> fetchAllSeries() async {
// // //     isLoading.value = true;
// // //     try {
// // //       // Get token
// // //       String? token = await getToken();
// // //       print('Fetching series...');
// // //       print('Token: $token');

// // //       // API Call
// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/videos/all'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           if (token != null) 'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       print('Response Status Code: ${response.statusCode}');
// // //       print('Response Body: ${response.body}');

// // //       if (response.statusCode == 200) {
// // //         final List<dynamic> data = jsonDecode(response.body);
// // //         seriesList.value = data
// // //             .map((json) => SeriesResponse.fromJson(json))
// // //             .toList();
// // //         print('Total series loaded: ${seriesList.length}');
// // //       } else {
// // //         showToast('Failed to load series', isError: true);
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching series: $e');
// // //       showToast('An error occurred while loading series', isError: true);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   // Refresh Series
// // //   Future<void> refreshSeries() async {
// // //     await fetchAllSeries();
// // //     await fetchUnreadCount(); // Also refresh unread count on pull-to-refresh
// // //   }
// // // }

// // // // New StatefulWidget for Series Item with Trailer Preview
// // // class SeriesItem extends StatefulWidget {
// // //   final SeriesResponse series;
// // //   final double width;
// // //   final double height;
// // //   final bool isLandscape;

// // //   const SeriesItem({
// // //     super.key,
// // //     required this.series,
// // //     required this.width,
// // //     required this.height,
// // //     required this.isLandscape,
// // //   });

// // //   @override
// // //   State<SeriesItem> createState() => _SeriesItemState();
// // // }

// // // class _SeriesItemState extends State<SeriesItem> {
// // //   VideoPlayerController? _controller;
// // //   bool _showTrailer = false;
// // //   bool _isVideoLoading = false;
// // //   Timer? _timer;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _startPreviewTimer();
// // //   }

// // //   void _startPreviewTimer() {
// // //     // Show thumbnail for 2 seconds, then load trailer if available
// // //     _timer = Timer(const Duration(seconds: 2), () {
// // //       if (widget.series.seriesTrailerUrl != null &&
// // //           widget.series.seriesTrailerUrl!.isNotEmpty) {
// // //         _loadTrailer();
// // //       }
// // //     });
// // //   }

// // //   Future<void> _loadTrailer() async {
// // //     if (mounted) {
// // //       setState(() {
// // //         _isVideoLoading = true;
// // //       });
// // //     }

// // //     try {
// // //       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
// // //       await _controller!.initialize();
// // //       if (mounted) {
// // //         setState(() {
// // //           _showTrailer = true;
// // //           _isVideoLoading = false;
// // //         });
// // //         _controller!.play();
// // //         _controller!.setLooping(true); // Loop the trailer
// // //         _controller!.setVolume(0.0); // Muted for preview
// // //       }
// // //     } catch (e) {
// // //       print('Error loading trailer: $e');
// // //       if (mounted) {
// // //         setState(() {
// // //           _isVideoLoading = false;
// // //         });
// // //       }
// // //     }
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _timer?.cancel();
// // //     _controller?.dispose();
// // //     super.dispose();
// // //   }

// // //   Widget _buildPlaceholderImage() {
// // //     return Container(
// // //       width: double.infinity,
// // //       height: double.infinity,
// // //       decoration: BoxDecoration(
// // //         borderRadius: BorderRadius.circular(12),
// // //         color: Colors.grey[900],
// // //       ),
// // //       child: Center(
// // //         child: Icon(
// // //           Icons.movie,
// // //           color: Colors.grey[700],
// // //           size: widget.width * (widget.isLandscape ? 0.1 : 0.15),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   String _formatYear(String? dateString) {
// // //     if (dateString == null) return 'N/A';
// // //     try {
// // //       final date = DateTime.parse(dateString);
// // //       return date.year.toString();
// // //     } catch (e) {
// // //       return 'N/A';
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final firstVideo = widget.series.videos?.isNotEmpty == true
// // //         ? widget.series.videos![0]
// // //         : null;

// // //     return GestureDetector(
// // //       onTap: () {
// // //         Get.to(() => SeriesDetailScreen(seriesData: widget.series)); // Assuming SeriesDetailScreen is EpisodeDetailPage
// // //       },
// // //       child: Container(
// // //         margin: EdgeInsets.only(
// // //           bottom: widget.height * (widget.isLandscape ? 0.03 : 0.025),
// // //         ),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             Container(
// // //               height: widget.height * (widget.isLandscape ? 0.5 : 0.3),
// // //               decoration: BoxDecoration(
// // //                 borderRadius: BorderRadius.circular(12),
// // //                 color: Colors.grey[900],
// // //               ),
// // //               child: Stack(
// // //                 children: [
// // //                   // Thumbnail (always base layer)
// // //                   ClipRRect(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                     child: widget.series.seriesThumbUrl != null &&
// // //                             widget.series.seriesThumbUrl!.isNotEmpty
// // //                         ? Image.network(
// // //                             widget.series.seriesThumbUrl!,
// // //                             width: double.infinity,
// // //                             height: double.infinity,
// // //                             fit: BoxFit.cover,
// // //                             errorBuilder: (context, error, stackTrace) {
// // //                               return _buildPlaceholderImage();
// // //                             },
// // //                             loadingBuilder: (context, child, loadingProgress) {
// // //                               if (loadingProgress == null) return child;
// // //                               return Stack(
// // //                                 fit: StackFit.expand,
// // //                                 children: [
// // //                                   _buildPlaceholderImage(),
// // //                                   Center(
// // //                                     child: CircularProgressIndicator(
// // //                                       color: const Color(0xFF00A8E8),
// // //                                       value: loadingProgress.expectedTotalBytes != null
// // //                                           ? loadingProgress.cumulativeBytesLoaded /
// // //                                               loadingProgress.expectedTotalBytes!
// // //                                           : null,
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               );
// // //                             },
// // //                           )
// // //                         : _buildPlaceholderImage(),
// // //                   ),
// // //                   // Trailer Video Overlay (shows after 2s if available)
// // //                   if (_showTrailer &&
// // //                       _controller != null &&
// // //                       _controller!.value.isInitialized)
// // //                     Positioned.fill(
// // //                       child: ClipRRect(
// // //                         borderRadius: BorderRadius.circular(12),
// // //                         child: FittedBox(
// // //                           fit: BoxFit.cover,
// // //                           child: SizedBox(
// // //                             width: _controller!.value.size.width,
// // //                             height: _controller!.value.size.height,
// // //                             child: VideoPlayer(_controller!),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   // Loading indicator for video
// // //                   if (_isVideoLoading)
// // //                     const Positioned.fill(
// // //                       child: Center(
// // //                         child: CircularProgressIndicator(
// // //                           color: Color(0xFF00A8E8),
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   // Gradient Overlay
// // //                   Container(
// // //                     decoration: BoxDecoration(
// // //                       borderRadius: BorderRadius.circular(12),
// // //                       gradient: LinearGradient(
// // //                         begin: Alignment.topCenter,
// // //                         end: Alignment.bottomCenter,
// // //                         colors: [
// // //                           Colors.transparent,
// // //                           Colors.black.withOpacity(0.7),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   // Series Info
// // //                   Positioned(
// // //                     bottom: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // //                     left: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // //                     right: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // //                     child: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           widget.series.episodeName ?? 'Unknown Series',
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: widget.width * (widget.isLandscape ? 0.04 : 0.06),
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                         SizedBox(height: widget.height * 0.01),
// // //                         Row(
// // //                           children: [
// // //                             if (firstVideo?.imdbRating != null) ...[
// // //                               Icon(
// // //                                 Icons.star,
// // //                                 color: Colors.amber,
// // //                                 size: widget.width * (widget.isLandscape ? 0.025 : 0.04),
// // //                               ),
// // //                               SizedBox(width: widget.width * 0.01),
// // //                               Text(
// // //                                 firstVideo!.imdbRating!.toStringAsFixed(1),
// // //                                 style: TextStyle(
// // //                                   color: Colors.white,
// // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // //                                 ),
// // //                               ),
// // //                               SizedBox(width: widget.width * 0.03),
// // //                             ],
// // //                             if (firstVideo?.releaseDate != null) ...[
// // //                               Text(
// // //                                 _formatYear(firstVideo?.releaseDate),
// // //                                 style: TextStyle(
// // //                                   color: Colors.grey[400],
// // //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // //                                 ),
// // //                               ),
// // //                               SizedBox(width: widget.width * 0.03),
// // //                             ],
// // //                             if (widget.series.totalEpisodes != null)
// // //                               Container(
// // //                                 padding: EdgeInsets.symmetric(
// // //                                   horizontal: widget.width * (widget.isLandscape ? 0.015 : 0.02),
// // //                                   vertical: widget.height * (widget.isLandscape ? 0.008 : 0.005),
// // //                                 ),
// // //                                 decoration: BoxDecoration(
// // //                                   color: Colors.blue,
// // //                                   borderRadius: BorderRadius.circular(4),
// // //                                 ),
// // //                                 child: Text(
// // //                                   '${widget.series.totalEpisodes} Episode${widget.series.totalEpisodes! > 1 ? 's' : ''}',
// // //                                   style: TextStyle(
// // //                                     color: Colors.white,
// // //                                     fontSize: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// // //                                     fontWeight: FontWeight.w500,
// // //                                   ),
// // //                                 ),
// // //                               ),
// // //                           ],
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   // Play Button (center, can tap to play full if needed, but here for UI)
// // //                   Center(
// // //                     child: Container(
// // //                       padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.025 : 0.04)),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.white.withOpacity(0.2),
// // //                         shape: BoxShape.circle,
// // //                       ),
// // //                       child: Icon(
// // //                         Icons.play_arrow,
// // //                         color: Colors.white,
// // //                         size: widget.width * (widget.isLandscape ? 0.06 : 0.1),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //             SizedBox(height: widget.height * (widget.isLandscape ? 0.015 : 0.01)),
// // //             Text(
// // //               firstVideo?.description ?? 'No description available',
// // //               style: TextStyle(
// // //                 color: Colors.grey[400],
// // //                 fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// // //                 height: 1.4,
// // //               ),
// // //               maxLines: 2,
// // //               overflow: TextOverflow.ellipsis,
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class Homescreen extends StatelessWidget {
// // //   const Homescreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final HomeController controller = Get.put(HomeController());
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: OrientationBuilder(
// // //         builder: (context, orientation) {
// // //           double height = MediaQuery.of(context).size.height;
// // //           double width = MediaQuery.of(context).size.width;
// // //           bool isLandscape = orientation == Orientation.landscape;
// // //           return SafeArea(
// // //             child: RefreshIndicator(
// // //               onRefresh: () => controller.refreshSeries(),
// // //               backgroundColor: const Color(0xFF1A1A1A),
// // //               color: const Color(0xFF00A8E8),
// // //               child: Obx(() {
// // //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// // //                   return Center(
// // //                     child: CircularProgressIndicator(
// // //                       color: const Color(0xFF00A8E8),
// // //                     ),
// // //                   );
// // //                 }
// // //                 return SingleChildScrollView(
// // //                   physics: const AlwaysScrollableScrollPhysics(),
// // //                   child: Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       // Header
// // //                       _buildHeader(width, height, isLandscape, controller),
// // //                       // Banner Slider
// // //                       _buildBannerSlider(controller, width, height, isLandscape),
// // //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
// // //                       // Series Section (Updated to use SeriesItem)
// // //                       _buildSeriesSection(controller, width, height, isLandscape),
// // //                       SizedBox(height: height * 0.05),
// // //                     ],
// // //                   ),
// // //                 );
// // //               }),
// // //             ),
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
// // //     return Padding(
// // //       padding: EdgeInsets.symmetric(
// // //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// // //         vertical: height * (isLandscape ? 0.03 : 0.02),
// // //       ),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //         children: [
// // //           Image.asset(
// // //             'assets/prime_logo.png',
// // //             width: width * (isLandscape ? 0.15 : 0.25),
// // //             height: height * (isLandscape ? 0.06 : 0.04),
// // //             errorBuilder: (context, error, stackTrace) {
// // //               return Text(
// // //                 'prime video',
// // //                 style: TextStyle(
// // //                   color: Colors.white,
// // //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// // //                   fontWeight: FontWeight.bold,
// // //                 ),
// // //               );
// // //             },
// // //           ),
// // //           Row(
// // //             children: [
// // //               InkWell(
// // //                 onTap: () {
// // //                   Get.to(Searchscreen());
// // //                 },
// // //                 child: Icon(
// // //                   Icons.search,
// // //                   color: Colors.white,
// // //                   size: width * (isLandscape ? 0.04 : 0.06),
// // //                 ),
// // //               ),
// // //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// // //               Stack(
// // //                 clipBehavior: Clip.none,
// // //                 children: [
// // //                   InkWell(
// // //                     onTap: () {
// // //                       Get.to(() => NotificationScreen());
// // //                     },
// // //                     child: Icon(
// // //                       Icons.notifications_outlined,
// // //                       color: Colors.white,
// // //                       size: width * (isLandscape ? 0.04 : 0.06),
// // //                     ),
// // //                   ),
// // //                   // Unread Count Badge
// // //                   Obx(() {
// // //                     if (controller.unreadCount.value > 0) {
// // //                       return Positioned(
// // //                         right: -4,
// // //                         top: -4,
// // //                         child: Container(
// // //                           padding: EdgeInsets.all(
// // //                             controller.unreadCount.value > 99 
// // //                               ? width * 0.008 
// // //                               : width * 0.012
// // //                           ),
// // //                           decoration: BoxDecoration(
// // //                             color: Colors.blue,
// // //                             shape: BoxShape.circle,
// // //                             border: Border.all(
// // //                               color: const Color(0xFF0A0A0A),
// // //                               width: 1.5,
// // //                             ),
// // //                           ),
// // //                           constraints: BoxConstraints(
// // //                             minWidth: width * 0.045,
// // //                             minHeight: width * 0.045,
// // //                           ),
// // //                           child: Center(
// // //                             child: Text(
// // //                               controller.unreadCount.value > 99 
// // //                                 ? '99+' 
// // //                                 : '${controller.unreadCount.value}',
// // //                               style: TextStyle(
// // //                                 color: Colors.white,
// // //                                 fontSize: controller.unreadCount.value > 99 
// // //                                   ? width * 0.022 
// // //                                   : width * 0.028,
// // //                                 fontWeight: FontWeight.bold,
// // //                                 height: 1,
// // //                               ),
// // //                               textAlign: TextAlign.center,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       );
// // //                     }
// // //                     return const SizedBox.shrink();
// // //                   }),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// // //     return Column(
// // //       children: [
// // //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// // //         SizedBox(
// // //           height: height * (isLandscape ? 0.65 : 0.5),
// // //           child: PageView.builder(
// // //             onPageChanged: (index) => controller.changeBanner(index),
// // //             itemCount: controller.bannerImages.length,
// // //             itemBuilder: (context, index) {
// // //               return Container(
// // //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // //                 decoration: BoxDecoration(
// // //                   borderRadius: BorderRadius.circular(12),
// // //                   image: DecorationImage(
// // //                     image: AssetImage(controller.bannerImages[index]),
// // //                     fit: BoxFit.cover,
// // //                   ),
// // //                 ),
// // //                 child: Container(
// // //                   decoration: BoxDecoration(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                     gradient: LinearGradient(
// // //                       begin: Alignment.topCenter,
// // //                       end: Alignment.bottomCenter,
// // //                       colors: [
// // //                         Colors.transparent,
// // //                         Colors.black.withOpacity(0.8),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   child: Column(
// // //                     mainAxisAlignment: MainAxisAlignment.end,
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       Padding(
// // //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// // //                         child: Column(
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Text(
// // //                               'AMAZON ORIGINAL',
// // //                               style: TextStyle(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// // //                                 fontWeight: FontWeight.w500,
// // //                               ),
// // //                             ),
// // //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// // //                             Text(
// // //                               'THE BOYS',
// // //                               style: TextStyle(
// // //                                 color: Colors.white,
// // //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// // //                                 fontWeight: FontWeight.bold,
// // //                               ),
// // //                             ),
// // //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// // //                             Row(
// // //                               children: [
// // //                                 Container(
// // //                                   padding: EdgeInsets.symmetric(
// // //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// // //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// // //                                   ),
// // //                                   decoration: BoxDecoration(
// // //                                     color: Colors.blue,
// // //                                     borderRadius: BorderRadius.circular(4),
// // //                                   ),
// // //                                   child: Row(
// // //                                     mainAxisSize: MainAxisSize.min,
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.check_circle,
// // //                                         color: Colors.white,
// // //                                         size: width * (isLandscape ? 0.025 : 0.035),
// // //                                       ),
// // //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// // //                                       Text(
// // //                                         'Included with prime',
// // //                                         style: TextStyle(
// // //                                           color: Colors.white,
// // //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// // //                                           fontWeight: FontWeight.w500,
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                 ),
// // //                                 const Spacer(),
// // //                                 Container(
// // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // //                                   decoration: BoxDecoration(
// // //                                     color: Colors.black.withOpacity(0.3),
// // //                                     shape: BoxShape.circle,
// // //                                   ),
// // //                                   child: Icon(
// // //                                     Icons.add,
// // //                                     color: Colors.white,
// // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // //                                   ),
// // //                                 ),
// // //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// // //                                 Container(
// // //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// // //                                   decoration: BoxDecoration(
// // //                                     color: Colors.black.withOpacity(0.3),
// // //                                     shape: BoxShape.circle,
// // //                                   ),
// // //                                   child: Icon(
// // //                                     Icons.info_outline,
// // //                                     color: Colors.white,
// // //                                     size: width * (isLandscape ? 0.03 : 0.05),
// // //                                   ),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               );
// // //             },
// // //           ),
// // //         ),
// // //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// // //         // Page Indicators
// // //         Obx(() => Row(
// // //               mainAxisAlignment: MainAxisAlignment.center,
// // //               children: List.generate(
// // //                 controller.bannerImages.length,
// // //                 (index) => Container(
// // //                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// // //                   width: width * (isLandscape ? 0.015 : 0.02),
// // //                   height: width * (isLandscape ? 0.015 : 0.02),
// // //                   decoration: BoxDecoration(
// // //                     shape: BoxShape.circle,
// // //                     color: controller.currentBannerIndex.value == index
// // //                         ? Colors.blue
// // //                         : Colors.grey[600],
// // //                   ),
// // //                 ),
// // //               ),
// // //             )),
// // //       ],
// // //     );
// // //   }

// // //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// // //     return Obx(() {
// // //       if (controller.seriesList.isEmpty) {
// // //         return Center(
// // //           child: Padding(
// // //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // //             child: Text(
// // //               'No series available',
// // //               style: TextStyle(
// // //                 color: Colors.grey[400],
// // //                 fontSize: width * (isLandscape ? 0.03 : 0.045),
// // //               ),
// // //             ),
// // //           ),
// // //         );
// // //       }
// // //       return Column(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // //             child: Text(
// // //               'Available Series',
// // //               style: TextStyle(
// // //                 color: Colors.white,
// // //                 fontSize: width * (isLandscape ? 0.035 : 0.055),
// // //                 fontWeight: FontWeight.bold,
// // //               ),
// // //             ),
// // //           ),
// // //           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
// // //           ListView.builder(
// // //             shrinkWrap: true,
// // //             physics: const NeverScrollableScrollPhysics(),
// // //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// // //             itemCount: controller.seriesList.length,
// // //             itemBuilder: (context, index) {
// // //               return SeriesItem(
// // //                 series: controller.seriesList[index],
// // //                 width: width,
// // //                 height: height,
// // //                 isLandscape: isLandscape,
// // //               );
// // //             },
// // //           ),
// // //         ],
// // //       );
// // //     });
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:ott/View/Screen/Episodedeailpage.dart';
// // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // import 'package:ott/View/Screen/Notifiaction.dart';
// // import 'package:ott/View/Screen/Searchscreen.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';
// // import 'package:video_player/video_player.dart';
// // import 'dart:async';

// // // GetX Controller
// // class HomeController extends GetxController {
// //   RxInt currentBannerIndex = 0.obs;
// //   RxBool isLoading = false.obs;
// //   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
// //   RxInt unreadCount = 0.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
// //   List<String> bannerImages = [
// //     'assets/Banner1.png',
// //     'assets/Banner1.png',
// //     'assets/Banner1.png',
// //   ];

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     fetchAllSeries();
// //     fetchUnreadCount();
// //   }

// //   void changeBanner(int index) {
// //     currentBannerIndex.value = index;
// //   }

// //   Future<String?> getToken() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       return prefs.getString('auth_token');
// //     } catch (e) {
// //       print('Error getting token: $e');
// //       return null;
// //     }
// //   }

// //   void showToast(String message, {bool isError = false}) {
// //     Fluttertoast.showToast(
// //       msg: message,
// //       toastLength: Toast.LENGTH_SHORT,
// //       gravity: ToastGravity.BOTTOM,
// //       backgroundColor: isError ? Colors.red : Colors.green,
// //       textColor: Colors.white,
// //       fontSize: 16.0,
// //     );
// //   }

// //   Future<void> fetchUnreadCount() async {
// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         print('No token found for notifications');
// //         return;
// //       }

// //       print('Fetching unread count...');
// //       print('Token: $token');

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/notifications'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('Unread Count Response Status Code: ${response.statusCode}');
// //       print('Unread Count Response Body: ${response.body}');

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> data = jsonDecode(response.body);
// //         unreadCount.value = data['unreadCount'] ?? 0;
// //         print('Unread count loaded: ${unreadCount.value}');
// //       } else {
// //         showToast('Failed to load unread count', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching unread count: $e');
// //       showToast('An error occurred while loading unread count', isError: true);
// //     }
// //   }

// //   Future<void> fetchAllSeries() async {
// //     isLoading.value = true;
// //     try {
// //       String? token = await getToken();
// //       print('Fetching series...');
// //       print('Token: $token');

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/videos/all'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           if (token != null) 'Authorization': 'Bearer $token',
// //         },
// //       );

// //       print('Response Status Code: ${response.statusCode}');
// //       print('Response Body: ${response.body}');

// //       if (response.statusCode == 200) {
// //         final List<dynamic> data = jsonDecode(response.body);
// //         seriesList.value = data
// //             .map((json) => SeriesResponse.fromJson(json))
// //             .toList();
// //         print('Total series loaded: ${seriesList.length}');
// //       } else {
// //         showToast('Failed to load series', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching series: $e');
// //       showToast('An error occurred while loading series', isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
// //   }

// //   Future<void> refreshSeries() async {
// //     await fetchAllSeries();
// //     await fetchUnreadCount();
// //   }
// // }

// // // Enhanced Series Item Widget
// // class SeriesItem extends StatefulWidget {
// //   final SeriesResponse series;
// //   final double width;
// //   final double height;
// //   final bool isLandscape;

// //   const SeriesItem({
// //     super.key,
// //     required this.series,
// //     required this.width,
// //     required this.height,
// //     required this.isLandscape,
// //   });

// //   @override
// //   State<SeriesItem> createState() => _SeriesItemState();
// // }

// // class _SeriesItemState extends State<SeriesItem> {
// //   VideoPlayerController? _controller;
// //   bool _showTrailer = false;
// //   bool _isVideoLoading = false;
// //   Timer? _timer;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _startPreviewTimer();
// //   }

// //   void _startPreviewTimer() {
// //     _timer = Timer(const Duration(seconds: 2), () {
// //       if (widget.series.seriesTrailerUrl != null &&
// //           widget.series.seriesTrailerUrl!.isNotEmpty) {
// //         _loadTrailer();
// //       }
// //     });
// //   }

// //   Future<void> _loadTrailer() async {
// //     if (mounted) {
// //       setState(() {
// //         _isVideoLoading = true;
// //       });
// //     }

// //     try {
// //       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
// //       await _controller!.initialize();
// //       if (mounted) {
// //         setState(() {
// //           _showTrailer = true;
// //           _isVideoLoading = false;
// //         });
// //         _controller!.play();
// //         _controller!.setLooping(true);
// //         _controller!.setVolume(0.0);
// //       }
// //     } catch (e) {
// //       print('Error loading trailer: $e');
// //       if (mounted) {
// //         setState(() {
// //           _isVideoLoading = false;
// //         });
// //       }
// //     }
// //   }

// //   @override
// //   void dispose() {
// //     _timer?.cancel();
// //     _controller?.dispose();
// //     super.dispose();
// //   }

// //   Widget _buildPlaceholderImage() {
// //     return Container(
// //       width: double.infinity,
// //       height: double.infinity,
// //       decoration: BoxDecoration(
// //         borderRadius: BorderRadius.circular(16),
// //         gradient: LinearGradient(
// //           begin: Alignment.topLeft,
// //           end: Alignment.bottomRight,
// //           colors: [
// //             const Color(0xFF1A1A2E),
// //             const Color(0xFF16213E),
// //           ],
// //         ),
// //       ),
// //       child: Center(
// //         child: Icon(
// //           Icons.movie_outlined,
// //           color: Colors.white.withOpacity(0.3),
// //           size: widget.width * (widget.isLandscape ? 0.08 : 0.12),
// //         ),
// //       ),
// //     );
// //   }

// //   String _formatYear(String? dateString) {
// //     if (dateString == null) return 'N/A';
// //     try {
// //       final date = DateTime.parse(dateString);
// //       return date.year.toString();
// //     } catch (e) {
// //       return 'N/A';
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final firstVideo = widget.series.videos?.isNotEmpty == true
// //         ? widget.series.videos![0]
// //         : null;

// //     return GestureDetector(
// //       onTap: () {
// //         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
// //       },
// //       child: Container(
// //         margin: EdgeInsets.only(
// //           bottom: widget.height * (widget.isLandscape ? 0.04 : 0.03),
// //         ),
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(16),
// //           boxShadow: [
// //             BoxShadow(
// //               color: Colors.black.withOpacity(0.3),
// //               blurRadius: 15,
// //               offset: const Offset(0, 5),
// //             ),
// //           ],
// //         ),
// //         child: ClipRRect(
// //           borderRadius: BorderRadius.circular(16),
// //           child: Container(
// //             height: widget.height * (widget.isLandscape ? 0.55 : 0.35),
// //             decoration: BoxDecoration(
// //               color: const Color(0xFF1A1A1A),
// //             ),
// //             child: Stack(
// //               children: [
// //                 // Thumbnail / Trailer
// //                 Positioned.fill(
// //                   child: Stack(
// //                     children: [
// //                       // Thumbnail
// //                       if (widget.series.seriesThumbUrl != null &&
// //                           widget.series.seriesThumbUrl!.isNotEmpty)
// //                         Image.network(
// //                           widget.series.seriesThumbUrl!,
// //                           width: double.infinity,
// //                           height: double.infinity,
// //                           fit: BoxFit.cover,
// //                           errorBuilder: (context, error, stackTrace) {
// //                             return _buildPlaceholderImage();
// //                           },
// //                           loadingBuilder: (context, child, loadingProgress) {
// //                             if (loadingProgress == null) return child;
// //                             return Stack(
// //                               fit: StackFit.expand,
// //                               children: [
// //                                 _buildPlaceholderImage(),
// //                                 Center(
// //                                   child: CircularProgressIndicator(
// //                                     color: const Color(0xFF00A8E8),
// //                                     strokeWidth: 3,
// //                                     value: loadingProgress.expectedTotalBytes != null
// //                                         ? loadingProgress.cumulativeBytesLoaded /
// //                                             loadingProgress.expectedTotalBytes!
// //                                         : null,
// //                                   ),
// //                                 ),
// //                               ],
// //                             );
// //                           },
// //                         )
// //                       else
// //                         _buildPlaceholderImage(),
// //                       // Trailer Video Overlay
// //                       if (_showTrailer &&
// //                           _controller != null &&
// //                           _controller!.value.isInitialized)
// //                         Positioned.fill(
// //                           child: FittedBox(
// //                             fit: BoxFit.cover,
// //                             child: SizedBox(
// //                               width: _controller!.value.size.width,
// //                               height: _controller!.value.size.height,
// //                               child: VideoPlayer(_controller!),
// //                             ),
// //                           ),
// //                         ),
// //                       // Loading indicator
// //                       if (_isVideoLoading)
// //                         const Positioned.fill(
// //                           child: Center(
// //                             child: CircularProgressIndicator(
// //                               color: Color(0xFF00A8E8),
// //                               strokeWidth: 3,
// //                             ),
// //                           ),
// //                         ),
// //                     ],
// //                   ),
// //                 ),
// //                 // Gradient Overlays
// //                 Positioned.fill(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.transparent,
// //                           Colors.black.withOpacity(0.3),
// //                           Colors.black.withOpacity(0.9),
// //                         ],
// //                         stops: const [0.0, 0.5, 1.0],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 // Top Bar with Rating & Episodes
// //                 Positioned(
// //                   top: widget.height * 0.015,
// //                   left: widget.width * 0.03,
// //                   right: widget.width * 0.03,
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       // IMDb Rating Badge
// //                       if (firstVideo?.imdbRating != null)
// //                         Container(
// //                           padding: EdgeInsets.symmetric(
// //                             horizontal: widget.width * 0.025,
// //                             vertical: widget.height * 0.008,
// //                           ),
// //                           decoration: BoxDecoration(
// //                             color: Colors.amber.withOpacity(0.95),
// //                             borderRadius: BorderRadius.circular(8),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: Colors.amber.withOpacity(0.3),
// //                                 blurRadius: 8,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           child: Row(
// //                             mainAxisSize: MainAxisSize.min,
// //                             children: [
// //                               Icon(
// //                                 Icons.star_rounded,
// //                                 color: Colors.black87,
// //                                 size: widget.width * (widget.isLandscape ? 0.025 : 0.04),
// //                               ),
// //                               SizedBox(width: widget.width * 0.01),
// //                               Text(
// //                                 firstVideo!.imdbRating!.toStringAsFixed(1),
// //                                 style: TextStyle(
// //                                   color: Colors.black87,
// //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       // Episodes Badge
// //                       if (widget.series.totalEpisodes != null)
// //                         Container(
// //                           padding: EdgeInsets.symmetric(
// //                             horizontal: widget.width * 0.025,
// //                             vertical: widget.height * 0.008,
// //                           ),
// //                           decoration: BoxDecoration(
// //                             color: const Color(0xFF00A8E8).withOpacity(0.95),
// //                             borderRadius: BorderRadius.circular(8),
// //                             boxShadow: [
// //                               BoxShadow(
// //                                 color: const Color(0xFF00A8E8).withOpacity(0.3),
// //                                 blurRadius: 8,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           child: Row(
// //                             mainAxisSize: MainAxisSize.min,
// //                             children: [
// //                               Icon(
// //                                 Icons.play_circle_outline_rounded,
// //                                 color: Colors.white,
// //                                 size: widget.width * (widget.isLandscape ? 0.025 : 0.04),
// //                               ),
// //                               SizedBox(width: widget.width * 0.01),
// //                               Text(
// //                                 '${widget.series.totalEpisodes} EP',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.035),
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                     ],
// //                   ),
// //                 ),
// //                 // Play Button Center
// //                 Center(
// //                   child: Container(
// //                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.03 : 0.045)),
// //                     decoration: BoxDecoration(
// //                       color: Colors.white.withOpacity(0.25),
// //                       shape: BoxShape.circle,
// //                       border: Border.all(
// //                         color: Colors.white.withOpacity(0.5),
// //                         width: 2,
// //                       ),
// //                       boxShadow: [
// //                         BoxShadow(
// //                           color: Colors.black.withOpacity(0.3),
// //                           blurRadius: 20,
// //                           spreadRadius: 2,
// //                         ),
// //                       ],
// //                     ),
// //                     child: Icon(
// //                       Icons.play_arrow_rounded,
// //                       color: Colors.white,
// //                       size: widget.width * (widget.isLandscape ? 0.06 : 0.1),
// //                     ),
// //                   ),
// //                 ),
// //                 // Bottom Content
// //                 Positioned(
// //                   bottom: 0,
// //                   left: 0,
// //                   right: 0,
// //                   child: Container(
// //                     padding: EdgeInsets.all(widget.width * 0.04),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         // Series Title
// //                         Text(
// //                           widget.series.episodeName ?? 'Unknown Series',
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: widget.width * (widget.isLandscape ? 0.045 : 0.065),
// //                             fontWeight: FontWeight.bold,
// //                             letterSpacing: 0.5,
// //                             height: 1.2,
// //                             shadows: [
// //                               Shadow(
// //                                 color: Colors.black.withOpacity(0.8),
// //                                 blurRadius: 10,
// //                                 offset: const Offset(0, 2),
// //                               ),
// //                             ],
// //                           ),
// //                           maxLines: 2,
// //                           overflow: TextOverflow.ellipsis,
// //                         ),
// //                         SizedBox(height: widget.height * 0.01),
// //                         // Year & Genre Info
// //                         Row(
// //                           children: [
// //                             if (firstVideo?.releaseDate != null) ...[
// //                               Container(
// //                                 padding: EdgeInsets.symmetric(
// //                                   horizontal: widget.width * 0.02,
// //                                   vertical: widget.height * 0.005,
// //                                 ),
// //                                 decoration: BoxDecoration(
// //                                   color: Colors.white.withOpacity(0.2),
// //                                   borderRadius: BorderRadius.circular(6),
// //                                   border: Border.all(
// //                                     color: Colors.white.withOpacity(0.3),
// //                                     width: 1,
// //                                   ),
// //                                 ),
// //                                 child: Text(
// //                                   _formatYear(firstVideo?.releaseDate),
// //                                   style: TextStyle(
// //                                     color: Colors.white,
// //                                     fontSize: widget.width * (widget.isLandscape ? 0.022 : 0.032),
// //                                     fontWeight: FontWeight.w600,
// //                                   ),
// //                                 ),
// //                               ),
// //                               SizedBox(width: widget.width * 0.02),
// //                             ],
// //                             Expanded(
// //                               child: Text(
// //                                 firstVideo?.description ?? 'No description available',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[300],
// //                                   fontSize: widget.width * (widget.isLandscape ? 0.02 : 0.03),
// //                                   height: 1.3,
// //                                   shadows: [
// //                                     Shadow(
// //                                       color: Colors.black.withOpacity(0.8),
// //                                       blurRadius: 8,
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class Homescreen extends StatelessWidget {
// //   const Homescreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final HomeController controller = Get.put(HomeController());
// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: OrientationBuilder(
// //         builder: (context, orientation) {
// //           double height = MediaQuery.of(context).size.height;
// //           double width = MediaQuery.of(context).size.width;
// //           bool isLandscape = orientation == Orientation.landscape;
// //           return SafeArea(
// //             child: RefreshIndicator(
// //               onRefresh: () => controller.refreshSeries(),
// //               backgroundColor: const Color(0xFF1A1A1A),
// //               color: const Color(0xFF00A8E8),
// //               child: Obx(() {
// //                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
// //                   return Center(
// //                     child: CircularProgressIndicator(
// //                       color: const Color(0xFF00A8E8),
// //                       strokeWidth: 3,
// //                     ),
// //                   );
// //                 }
// //                 return SingleChildScrollView(
// //                   physics: const AlwaysScrollableScrollPhysics(),
// //                   child: Column(
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       _buildHeader(width, height, isLandscape, controller),
// //                       _buildBannerSlider(controller, width, height, isLandscape),
// //                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
// //                       _buildSeriesSection(controller, width, height, isLandscape),
// //                       SizedBox(height: height * 0.05),
// //                     ],
// //                   ),
// //                 );
// //               }),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
// //     return Padding(
// //       padding: EdgeInsets.symmetric(
// //         horizontal: width * (isLandscape ? 0.03 : 0.04),
// //         vertical: height * (isLandscape ? 0.03 : 0.02),
// //       ),
// //       child: Row(
// //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //         children: [
// //           Image.asset(
// //             'assets/prime_logo.png',
// //             width: width * (isLandscape ? 0.15 : 0.25),
// //             height: height * (isLandscape ? 0.06 : 0.04),
// //             errorBuilder: (context, error, stackTrace) {
// //               return Text(
// //                 'prime video',
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: width * (isLandscape ? 0.03 : 0.05),
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               );
// //             },
// //           ),
// //           Row(
// //             children: [
// //               InkWell(
// //                 onTap: () {
// //                   Get.to(Searchscreen());
// //                 },
// //                 child: Icon(
// //                   Icons.search,
// //                   color: Colors.white,
// //                   size: width * (isLandscape ? 0.04 : 0.06),
// //                 ),
// //               ),
// //               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
// //               Stack(
// //                 children: [
// //                   InkWell(
// //                     onTap: () {
// //                       Get.to(() => NotificationScreen());
// //                     },
// //                     child: Icon(
// //                       Icons.notifications_outlined,
// //                       color: Colors.white,
// //                       size: width * (isLandscape ? 0.04 : 0.06),
// //                     ),
// //                   ),
// //                   Obx(() {
// //                     if (controller.unreadCount.value > 0) {
// //                       return Positioned(
// //                         right: 0,
// //                         top: 0,
// //                         child: Container(
// //                           padding: EdgeInsets.all(width * 0.015),
// //                           decoration: BoxDecoration(
// //                             color: Colors.blue,
// //                             shape: BoxShape.circle,
// //                           ),
// //                           constraints: BoxConstraints(
// //                             minWidth: width * 0.03,
// //                             minHeight: width * 0.03,
// //                           ),
// //                           child: Text(
// //                             '${controller.unreadCount.value}',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: width * 0.025,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                             textAlign: TextAlign.center,
// //                           ),
// //                         ),
// //                       );
// //                     }
// //                     return const SizedBox.shrink();
// //                   }),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
// //     return Column(
// //       children: [
// //         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
// //         SizedBox(
// //           height: height * (isLandscape ? 0.65 : 0.5),
// //           child: PageView.builder(
// //             onPageChanged: (index) => controller.changeBanner(index),
// //             itemCount: controller.bannerImages.length,
// //             itemBuilder: (context, index) {
// //               return Container(
// //                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// //                 decoration: BoxDecoration(
// //                   borderRadius: BorderRadius.circular(12),
// //                   image: DecorationImage(
// //                     image: AssetImage(controller.bannerImages[index]),
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //                 child: Container(
// //                   decoration: BoxDecoration(
// //                     borderRadius: BorderRadius.circular(12),
// //                     gradient: LinearGradient(
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                       colors: [
// //                         Colors.transparent,
// //                         Colors.black.withOpacity(0.8),
// //                       ],
// //                     ),
// //                   ),
// //                   child: Column(
// //                     mainAxisAlignment: MainAxisAlignment.end,
// //                     crossAxisAlignment: CrossAxisAlignment.start,
// //                     children: [
// //                       Padding(
// //                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
// //                         child: Column(
// //                           crossAxisAlignment: CrossAxisAlignment.start,
// //                           children: [
// //                             Text(
// //                               'AMAZON ORIGINAL',
// //                               style: TextStyle(
// //                                 color: Colors.grey[300],
// //                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
// //                                 fontWeight: FontWeight.w500,
// //                               ),
// //                             ),
// //                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
// //                             Text(
// //                               'THE BOYS',
// //                               style: TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
// //                                 fontWeight: FontWeight.bold,
// //                               ),
// //                             ),
// //                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
// //                             Row(
// //                               children: [
// //                                 Container(
// //                                   padding: EdgeInsets.symmetric(
// //                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
// //                                     vertical: height * (isLandscape ? 0.008 : 0.005),
// //                                   ),
// //                                   decoration: BoxDecoration(
// //                                     color: Colors.blue,
// //                                     borderRadius: BorderRadius.circular(4),
// //                                   ),
// //                                   child: Row(
// //                                     mainAxisSize: MainAxisSize.min,
// //                                     children: [
// //                                       Icon(
// //                                         Icons.check_circle,
// //                                         color: Colors.white,
// //                                         size: width * (isLandscape ? 0.025 : 0.035),
// //                                       ),
// //                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
// //                                       Text(
// //                                         'Included with prime',
// //                                         style: TextStyle(
// //                                           color: Colors.white,
// //                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
// //                                           fontWeight: FontWeight.w500,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ),
// //                                 const Spacer(),
// //                                 Container(
// //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// //                                   decoration: BoxDecoration(
// //                                     color: Colors.black.withOpacity(0.3),
// //                                     shape: BoxShape.circle,
// //                                   ),
// //                                   child: Icon(
// //                                     Icons.add,
// //                                     color: Colors.white,
// //                                     size: width * (isLandscape ? 0.03 : 0.05),
// //                                   ),
// //                                 ),
// //                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
// //                                 Container(
// //                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
// //                                   decoration: BoxDecoration(
// //                                     color: Colors.black.withOpacity(0.3),
// //                                     shape: BoxShape.circle,
// //                                   ),
// //                                   child: Icon(
// //                                     Icons.info_outline,
// //                                     color: Colors.white,
// //                                     size: width * (isLandscape ? 0.03 : 0.05),
// //                                   ),
// //                                 ),
// //                               ],
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               );
// //             },
// //           ),
// //         ),
// //         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
// //         Obx(() => Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: List.generate(
// //                 controller.bannerImages.length,
// //                 (index) => Container(
// //                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
// //                   width: width * (isLandscape ? 0.015 : 0.02),
// //                   height: width * (isLandscape ? 0.015 : 0.02),
// //                   decoration: BoxDecoration(
// //                     shape: BoxShape.circle,
// //                     color: controller.currentBannerIndex.value == index
// //                         ? Colors.blue
// //                         : Colors.grey[600],
// //                   ),
// //                 ),
// //               ),
// //             )),
// //       ],
// //     );
// //   }

// //   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
// //     return Obx(() {
// //       if (controller.seriesList.isEmpty) {
// //         return Center(
// //           child: Padding(
// //             padding: EdgeInsets.symmetric(vertical: height * 0.1),
// //             child: Column(
// //               children: [
// //                 Icon(
// //                   Icons.movie_filter_outlined,
// //                   size: width * 0.15,
// //                   color: Colors.grey[700],
// //                 ),
// //                 SizedBox(height: height * 0.02),
// //                 Text(
// //                   'No series available',
// //                   style: TextStyle(
// //                     color: Colors.grey[400],
// //                     fontSize: width * (isLandscape ? 0.03 : 0.045),
// //                     fontWeight: FontWeight.w500,
// //                   ),
// //                 ),
// //                 SizedBox(height: height * 0.01),
// //                 Text(
// //                   'Check back later for new content',
// //                   style: TextStyle(
// //                     color: Colors.grey[600],
// //                     fontSize: width * (isLandscape ? 0.025 : 0.035),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         );
// //       }
// //       return Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Available Series',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: width * (isLandscape ? 0.04 : 0.06),
// //                         fontWeight: FontWeight.bold,
// //                         letterSpacing: 0.5,
// //                       ),
// //                     ),
// //                     SizedBox(height: height * 0.005),
// //                     Text(
// //                       '${controller.seriesList.length} series to watch',
// //                       style: TextStyle(
// //                         color: Colors.grey[500],
// //                         fontSize: width * (isLandscape ? 0.022 : 0.035),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                 Container(
// //                   padding: EdgeInsets.symmetric(
// //                     horizontal: width * 0.03,
// //                     vertical: height * 0.01,
// //                   ),
// //                   decoration: BoxDecoration(
// //                     color: const Color(0xFF00A8E8).withOpacity(0.2),
// //                     borderRadius: BorderRadius.circular(20),
// //                     border: Border.all(
// //                       color: const Color(0xFF00A8E8).withOpacity(0.5),
// //                       width: 1.5,
// //                     ),
// //                   ),
// //                   child: Row(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       Icon(
// //                         Icons.filter_list_rounded,
// //                         color: const Color(0xFF00A8E8),
// //                         size: width * (isLandscape ? 0.03 : 0.045),
// //                       ),
// //                       SizedBox(width: width * 0.015),
// //                       Text(
// //                         'Filter',
// //                         style: TextStyle(
// //                           color: const Color(0xFF00A8E8),
// //                           fontSize: width * (isLandscape ? 0.022 : 0.035),
// //                           fontWeight: FontWeight.w600,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: height * (isLandscape ? 0.04 : 0.03)),
// //           ListView.builder(
// //             shrinkWrap: true,
// //             physics: const NeverScrollableScrollPhysics(),
// //             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
// //             itemCount: controller.seriesList.length,
// //             itemBuilder: (context, index) {
// //               return SeriesItem(
// //                 series: controller.seriesList[index],
// //                 width: width,
// //                 height: height,
// //                 isLandscape: isLandscape,
// //               );
// //             },
// //           ),
// //         ],
// //       );
// //     });
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // GetX Controller
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   List<String> bannerImages = [
//     'assets/Banner1.png',
//     'assets/Banner1.png',
//     'assets/Banner1.png',
//   ];

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchUnreadCount();
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         unreadCount.value = data['unreadCount'] ?? 0;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) => SeriesResponse.fromJson(json))
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'SOP OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 child: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                   size: width * (isLandscape ? 0.04 : 0.06),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     child: Icon(
//                       Icons.notifications_outlined,
//                       color: Colors.white,
//                       size: width * (isLandscape ? 0.04 : 0.06),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: 0,
//                         top: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         SizedBox(
//           height: height * (isLandscape ? 0.65 : 0.5),
//           child: PageView.builder(
//             onPageChanged: (index) => controller.changeBanner(index),
//             itemCount: controller.bannerImages.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: DecorationImage(
//                     image: AssetImage(controller.bannerImages[index]),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.transparent,
//                         Colors.black.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               '',
//                               style: TextStyle(
//                                 color: Colors.grey[300],
//                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                             Text(
//                               '',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                             Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
//                                     vertical: height * (isLandscape ? 0.008 : 0.005),
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.blue,
//                                     borderRadius: BorderRadius.circular(4),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Icon(
//                                         Icons.check_circle,
//                                         color: Colors.white,
//                                         size: width * (isLandscape ? 0.025 : 0.035),
//                                       ),
//                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
//                                       Text(
//                                         'Included with prime',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Container(
//                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.3),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                     size: width * (isLandscape ? 0.03 : 0.05),
//                                   ),
//                                 ),
//                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
//                                 Container(
//                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.3),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Icon(
//                                     Icons.info_outline,
//                                     color: Colors.white,
//                                     size: width * (isLandscape ? 0.03 : 0.05),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() => Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 controller.bannerImages.length,
//                 (index) => Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                   width: width * (isLandscape ? 0.015 : 0.02),
//                   height: width * (isLandscape ? 0.015 : 0.02),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: controller.currentBannerIndex.value == index
//                         ? Colors.blue
//                         : Colors.grey[600],
//                   ),
//                 ),
//               ),
//             )),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Container(
//                 //   padding: EdgeInsets.symmetric(
//                 //     horizontal: width * 0.025,
//                 //     vertical: height * 0.008,
//                 //   ),
//                 //   decoration: BoxDecoration(
//                 //     color: const Color(0xFF00A8E8).withOpacity(0.2),
//                 //     borderRadius: BorderRadius.circular(16),
//                 //     border: Border.all(
//                 //       color: const Color(0xFF00A8E8).withOpacity(0.5),
//                 //       width: 1.5,
//                 //     ),
//                 //   ),
//                 //   child: Row(
//                 //     mainAxisSize: MainAxisSize.min,
//                 //     children: [
//                 //       // Icon(
//                 //       //   Icons.filter_list_rounded,
//                 //       //   color: const Color(0xFF00A8E8),
//                 //       //   size: width * (isLandscape ? 0.025 : 0.04),
//                 //       // ),
//                 //       // SizedBox(width: width * 0.012),
//                 //       // Text(
//                 //       //   'Filter',
//                 //       //   style: TextStyle(
//                 //       //     color: const Color(0xFF00A8E8),
//                 //       //     fontSize: width * (isLandscape ? 0.018 : 0.03),
//                 //       //     fontWeight: FontWeight.w600,
//                 //       //   ),
//                 //       // ),
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // GetX Controller
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   List<String> bannerImages = [
//     'assets/Banner1.png',
//     'assets/Banner1.png',
//     'assets/Banner1.png',
//   ];

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 30 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) return;

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
//         if (currentUnread > _previousUnreadCount) {
//           // New notifications arrived
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//           showToast('You have ${currentUnread - _previousUnreadCount} new notification${currentUnread - _previousUnreadCount > 1 ? 's' : ''}!');
//         } else {
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//         }
//       }
//     } catch (e) {
//       print('Error checking for new notifications: $e');
//     }
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) => SeriesResponse.fromJson(json))
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'SOP OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 child: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                   size: width * (isLandscape ? 0.04 : 0.06),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     child: Icon(
//                       Icons.notifications_outlined,
//                       color: Colors.white,
//                       size: width * (isLandscape ? 0.04 : 0.06),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: 0,
//                         top: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         SizedBox(
//           height: height * (isLandscape ? 0.65 : 0.5),
//           child: PageView.builder(
//             onPageChanged: (index) => controller.changeBanner(index),
//             itemCount: controller.bannerImages.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   image: DecorationImage(
//                     image: AssetImage(controller.bannerImages[index]),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.transparent,
//                         Colors.black.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               '',
//                               style: TextStyle(
//                                 color: Colors.grey[300],
//                                 fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                             Text(
//                               '',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                             Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: width * (isLandscape ? 0.015 : 0.02),
//                                     vertical: height * (isLandscape ? 0.008 : 0.005),
//                                   ),
//                                   decoration: BoxDecoration(
//                                     color: Colors.blue,
//                                     borderRadius: BorderRadius.circular(4),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Icon(
//                                         Icons.check_circle,
//                                         color: Colors.white,
//                                         size: width * (isLandscape ? 0.025 : 0.035),
//                                       ),
//                                       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
//                                       Text(
//                                         'Included with prime',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Container(
//                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.3),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Icon(
//                                     Icons.add,
//                                     color: Colors.white,
//                                     size: width * (isLandscape ? 0.03 : 0.05),
//                                   ),
//                                 ),
//                                 SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
//                                 Container(
//                                   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.3),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Icon(
//                                     Icons.info_outline,
//                                     color: Colors.white,
//                                     size: width * (isLandscape ? 0.03 : 0.05),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() => Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 controller.bannerImages.length,
//                 (index) => Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                   width: width * (isLandscape ? 0.015 : 0.02),
//                   height: width * (isLandscape ? 0.015 : 0.02),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: controller.currentBannerIndex.value == index
//                         ? Colors.blue
//                         : Colors.grey[600],
//                   ),
//                 ),
//               ),
//             )),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Container(
//                 //   padding: EdgeInsets.symmetric(
//                 //     horizontal: width * 0.025,
//                 //     vertical: height * 0.008,
//                 //   ),
//                 //   decoration: BoxDecoration(
//                 //     color: const Color(0xFF00A8E8).withOpacity(0.2),
//                 //     borderRadius: BorderRadius.circular(16),
//                 //     border: Border.all(
//                 //       color: const Color(0xFF00A8E8).withOpacity(0.5),
//                 //       width: 1.5,
//                 //     ),
//                 //   ),
//                 //   child: Row(
//                 //     mainAxisSize: MainAxisSize.min,
//                 //     children: [
//                 //       // Icon(
//                 //       //   Icons.filter_list_rounded,
//                 //       //   color: const Color(0xFF00A8E8),
//                 //       //   size: width * (isLandscape ? 0.025 : 0.04),
//                 //       // ),
//                 //       // SizedBox(width: width * 0.012),
//                 //       // Text(
//                 //       //   'Filter',
//                 //       //   style: TextStyle(
//                 //       //     color: const Color(0xFF00A8E8),
//                 //       //     fontSize: width * (isLandscape ? 0.018 : 0.03),
//                 //       //     fontWeight: FontWeight.w600,
//                 //       //   ),
//                 //       // ),
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }



// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // Banner Data Models
// class Banner {
//   final String? id;
//   final String? imageKey;
//   final String? imageMime;
//   final int? imageSize;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final int? v;
//   final String? imageUrl;

//   Banner({
//     this.id,
//     this.imageKey,
//     this.imageMime,
//     this.imageSize,
//     this.createdAt,
//     this.updatedAt,
//     this.v,
//     this.imageUrl,
//   });

//   factory Banner.fromJson(Map<String, dynamic> json) {
//     return Banner(
//       id: json['_id'] as String?,
//       imageKey: json['imageKey'] as String?,
//       imageMime: json['imageMime'] as String?,
//       imageSize: json['imageSize'] as int?,
//       createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
//       updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
//       v: json['__v'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//     );
//   }
// }

// class BannersResponse {
//   final List<Banner> banners;

//   BannersResponse({required this.banners});

//   factory BannersResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['banners'] as List<dynamic>? ?? [];
//     List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
//     return BannersResponse(banners: bannersList);
//   }
// }

// // GetX Controller
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   RxList<String> bannerImages = <String>[].obs;

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchBanners();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 30 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) return;

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
//         if (currentUnread > _previousUnreadCount) {
//           // New notifications arrived
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//           showToast('You have ${currentUnread - _previousUnreadCount} new notification${currentUnread - _previousUnreadCount > 1 ? 's' : ''}!');
//         } else {
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//         }
//       }
//     } catch (e) {
//       print('Error checking for new notifications: $e');
//     }
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchBanners() async {
//     try {
//       String? token = await getToken();
//       print('Fetching banners...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/banners'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Banners Response Status Code: ${response.statusCode}');
//       print('Banners Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final BannersResponse bannersResponse = BannersResponse.fromJson(data);
//         bannerImages.value = bannersResponse.banners
//             .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
//             .map((banner) => banner.imageUrl!)
//             .toList();
//         print('Total banners loaded: ${bannerImages.length}');
//       } else {
//         showToast('Failed to load banners', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching banners: $e');
//       showToast('An error occurred while loading banners', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) => SeriesResponse.fromJson(json))
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchBanners();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'Sahyadri OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 child: Icon(
//                   Icons.search,
//                   color: Colors.white,
//                   size: width * (isLandscape ? 0.04 : 0.06),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.02 : 0.04)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     child: Icon(
//                       Icons.notifications_outlined,
//                       color: Colors.white,
//                       size: width * (isLandscape ? 0.04 : 0.06),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: 0,
//                         top: 0,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return Container(
//               height: height * (isLandscape ? 0.65 : 0.5),
//               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xFF1A1A1A),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xFF00A8E8),
//                   strokeWidth: 3,
//                 ),
//               ),
//             );
//           }
//           return SizedBox(
//             height: height * (isLandscape ? 0.65 : 0.5),
//             child: PageView.builder(
//               onPageChanged: (index) => controller.changeBanner(index),
//               itemCount: controller.bannerImages.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     image: DecorationImage(
//                       image: NetworkImage(controller.bannerImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                               Row(
//                                 children: [
//                                   // Container(
//                                   //   padding: EdgeInsets.symmetric(
//                                   //     horizontal: width * (isLandscape ? 0.015 : 0.02),
//                                   //     vertical: height * (isLandscape ? 0.008 : 0.005),
//                                   //   ),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.blue,
//                                   //     borderRadius: BorderRadius.circular(4),
//                                   //   ),
//                                   //   child: Row(
//                                   //     mainAxisSize: MainAxisSize.min,
//                                   //     children: [
//                                   //       Icon(
//                                   //         Icons.check_circle,
//                                   //         color: Colors.white,
//                                   //         size: width * (isLandscape ? 0.025 : 0.035),
//                                   //       ),
//                                   //       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
//                                   //       Text(
//                                   //         'Included with prime',
//                                   //         style: TextStyle(
//                                   //           color: Colors.white,
//                                   //           fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                   //           fontWeight: FontWeight.w500,
//                                   //         ),
//                                   //       ),
//                                   //     ],
//                                   //   ),
//                                   // ),
//                                   // const Spacer(),
//                                   // Container(
//                                   //   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.black.withOpacity(0.3),
//                                   //     shape: BoxShape.circle,
//                                   //   ),
//                                   //   child: Icon(
//                                   //     Icons.add,
//                                   //     color: Colors.white,
//                                   //     size: width * (isLandscape ? 0.03 : 0.05),
//                                   //   ),
//                                   // ),
//                                   // SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
//                                   // Container(
//                                   //   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.black.withOpacity(0.3),
//                                   //     shape: BoxShape.circle,
//                                   //   ),
//                                   //   child: Icon(
//                                   //     Icons.info_outline,
//                                   //     color: Colors.white,
//                                   //     size: width * (isLandscape ? 0.03 : 0.05),
//                                   //   ),
//                                   // ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return const SizedBox.shrink();
//           }
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               controller.bannerImages.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                 width: width * (isLandscape ? 0.015 : 0.02),
//                 height: width * (isLandscape ? 0.015 : 0.02),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: controller.currentBannerIndex.value == index
//                       ? Colors.blue
//                       : Colors.grey[600],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Container(
//                 //   padding: EdgeInsets.symmetric(
//                 //     horizontal: width * 0.025,
//                 //     vertical: height * 0.008,
//                 //   ),
//                 //   decoration: BoxDecoration(
//                 //     color: const Color(0xFF00A8E8).withOpacity(0.2),
//                 //     borderRadius: BorderRadius.circular(16),
//                 //     border: Border.all(
//                 //       color: const Color(0xFF00A8E8).withOpacity(0.5),
//                 //       width: 1.5,
//                 //     ),
//                 //   ),
//                 //   child: Row(
//                 //     mainAxisSize: MainAxisSize.min,
//                 //     children: [
//                 //       // Icon(
//                 //       //   Icons.filter_list_rounded,
//                 //       //   color: const Color(0xFF00A8E8),
//                 //       //   size: width * (isLandscape ? 0.025 : 0.04),
//                 //       // ),
//                 //       // SizedBox(width: width * 0.012),
//                 //       // Text(
//                 //       //   'Filter',
//                 //       //   style: TextStyle(
//                 //       //     color: const Color(0xFF00A8E8),
//                 //       //     fontSize: width * (isLandscape ? 0.018 : 0.03),
//                 //       //     fontWeight: FontWeight.w600,
//                 //       //   ),
//                 //       // ),
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // Banner Data Models
// class Banner {
//   final String? id;
//   final String? imageKey;
//   final String? imageMime;
//   final int? imageSize;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final int? v;
//   final String? imageUrl;

//   Banner({
//     this.id,
//     this.imageKey,
//     this.imageMime,
//     this.imageSize,
//     this.createdAt,
//     this.updatedAt,
//     this.v,
//     this.imageUrl,
//   });

//   factory Banner.fromJson(Map<String, dynamic> json) {
//     return Banner(
//       id: json['_id'] as String?,
//       imageKey: json['imageKey'] as String?,
//       imageMime: json['imageMime'] as String?,
//       imageSize: json['imageSize'] as int?,
//       createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
//       updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
//       v: json['__v'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//     );
//   }
// }

// class BannersResponse {
//   final List<Banner> banners;

//   BannersResponse({required this.banners});

//   factory BannersResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['banners'] as List<dynamic>? ?? [];
//     List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
//     return BannersResponse(banners: bannersList);
//   }
// }

// // GetX Controller
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   RxList<String> bannerImages = <String>[].obs;

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchBanners();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 30 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) return;

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
//         if (currentUnread > _previousUnreadCount) {
//           // New notifications arrived
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//           showToast('You have ${currentUnread - _previousUnreadCount} new notification${currentUnread - _previousUnreadCount > 1 ? 's' : ''}!');
//         } else {
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//         }
//       }
//     } catch (e) {
//       print('Error checking for new notifications: $e');
//     }
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchBanners() async {
//     try {
//       String? token = await getToken();
//       print('Fetching banners...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/banners'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Banners Response Status Code: ${response.statusCode}');
//       print('Banners Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final BannersResponse bannersResponse = BannersResponse.fromJson(data);
//         bannerImages.value = bannersResponse.banners
//             .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
//             .map((banner) => banner.imageUrl!)
//             .toList();
//         print('Total banners loaded: ${bannerImages.length}');
//       } else {
//         showToast('Failed to load banners', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching banners: $e');
//       showToast('An error occurred while loading banners', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) => SeriesResponse.fromJson(json))
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchBanners();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'Sahyadri OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 borderRadius: BorderRadius.circular(50),
//                 child: Padding(
//                   padding: EdgeInsets.all(width * 0.02),
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                     size: width * (isLandscape ? 0.04 : 0.06),
//                   ),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     borderRadius: BorderRadius.circular(50),
//                     child: Padding(
//                       padding: EdgeInsets.all(width * 0.02),
//                       child: Icon(
//                         Icons.notifications_outlined,
//                         color: Colors.white,
//                         size: width * (isLandscape ? 0.04 : 0.06),
//                       ),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: width * 0.01,
//                         top: width * 0.01,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return Container(
//               height: height * (isLandscape ? 0.65 : 0.5),
//               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xFF1A1A1A),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xFF00A8E8),
//                   strokeWidth: 3,
//                 ),
//               ),
//             );
//           }
//           return SizedBox(
//             height: height * (isLandscape ? 0.65 : 0.5),
//             child: PageView.builder(
//               onPageChanged: (index) => controller.changeBanner(index),
//               itemCount: controller.bannerImages.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     image: DecorationImage(
//                       image: NetworkImage(controller.bannerImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: width * (isLandscape? 0.02 : 0.03),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                               Row(
//                                 children: [
//                                   // Container(
//                                   //   padding: EdgeInsets.symmetric(
//                                   //     horizontal: width * (isLandscape ? 0.015 : 0.02),
//                                   //     vertical: height * (isLandscape ? 0.008 : 0.005),
//                                   //   ),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.blue,
//                                   //     borderRadius: BorderRadius.circular(4),
//                                   //   ),
//                                   //   child: Row(
//                                   //     mainAxisSize: MainAxisSize.min,
//                                   //     children: [
//                                   //       Icon(
//                                   //         Icons.check_circle,
//                                   //         color: Colors.white,
//                                   //         size: width * (isLandscape ? 0.025 : 0.035),
//                                   //       ),
//                                   //       SizedBox(width: width * (isLandscape ? 0.008 : 0.01)),
//                                   //       Text(
//                                   //         'Included with prime',
//                                   //         style: TextStyle(
//                                   //           color: Colors.white,
//                                   //           fontSize: width * (isLandscape ? 0.02 : 0.03),
//                                   //           fontWeight: FontWeight.w500,
//                                   //         ),
//                                   //       ),
//                                   //     ],
//                                   //   ),
//                                   // ),
//                                   // const Spacer(),
//                                   // Container(
//                                   //   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.black.withOpacity(0.3),
//                                   //     shape: BoxShape.circle,
//                                   //   ),
//                                   //   child: Icon(
//                                   //     Icons.add,
//                                   //     color: Colors.white,
//                                   //     size: width * (isLandscape ? 0.03 : 0.05),
//                                   //   ),
//                                   // ),
//                                   // SizedBox(width: width * (isLandscape ? 0.02 : 0.03)),
//                                   // Container(
//                                   //   padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.02)),
//                                   //   decoration: BoxDecoration(
//                                   //     color: Colors.black.withOpacity(0.3),
//                                   //     shape: BoxShape.circle,
//                                   //   ),
//                                   //   child: Icon(
//                                   //     Icons.info_outline,
//                                   //     color: Colors.white,
//                                   //     size: width * (isLandscape ? 0.03 : 0.05),
//                                   //   ),
//                                   // ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return const SizedBox.shrink();
//           }
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               controller.bannerImages.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                 width: width * (isLandscape ? 0.015 : 0.02),
//                 height: width * (isLandscape ? 0.015 : 0.02),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: controller.currentBannerIndex.value == index
//                       ? Colors.blue
//                       : Colors.grey[600],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Container(
//                 //   padding: EdgeInsets.symmetric(
//                 //     horizontal: width * 0.025,
//                 //     vertical: height * 0.008,
//                 //   ),
//                 //   decoration: BoxDecoration(
//                 //     color: const Color(0xFF00A8E8).withOpacity(0.2),
//                 //     borderRadius: BorderRadius.circular(16),
//                 //     border: Border.all(
//                 //       color: const Color(0xFF00A8E8).withOpacity(0.5),
//                 //       width: 1.5,
//                 //     ),
//                 //   ),
//                 //   child: Row(
//                 //     mainAxisSize: MainAxisSize.min,
//                 //     children: [
//                 //       // Icon(
//                 //       //   Icons.filter_list_rounded,
//                 //       //   color: const Color(0xFF00A8E8),
//                 //       //   size: width * (isLandscape ? 0.025 : 0.04),
//                 //       // ),
//                 //       // SizedBox(width: width * 0.012),
//                 //       // Text(
//                 //       //   'Filter',
//                 //       //   style: TextStyle(
//                 //       //     color: const Color(0xFF00A8E8),
//                 //       //     fontSize: width * (isLandscape ? 0.018 : 0.03),
//                 //       //     fontWeight: FontWeight.w600,
//                 //       //   ),
//                 //       // ),
//                 //     ],
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }


// // Updated Homescreen.dart - Add this import at the top, remove the local models section
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // Banner Data Models (keep these as they are unique to Home)
// class Banner {
//   final String? id;
//   final String? imageKey;
//   final String? imageMime;
//   final int? imageSize;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final int? v;
//   final String? imageUrl;

//   Banner({
//     this.id,
//     this.imageKey,
//     this.imageMime,
//     this.imageSize,
//     this.createdAt,
//     this.updatedAt,
//     this.v,
//     this.imageUrl,
//   });

//   factory Banner.fromJson(Map<String, dynamic> json) {
//     return Banner(
//       id: json['_id'] as String?,
//       imageKey: json['imageKey'] as String?,
//       imageMime: json['imageMime'] as String?,
//       imageSize: json['imageSize'] as int?,
//       createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
//       updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
//       v: json['__v'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//     );
//   }
// }

// class BannersResponse {
//   final List<Banner> banners;

//   BannersResponse({required this.banners});

//   factory BannersResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['banners'] as List<dynamic>? ?? [];
//     List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
//     return BannersResponse(banners: bannersList);
//   }
// }

// // GetX Controller (updated fromJson in fetchAllSeries to use shared model mapping)
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   RxList<String> bannerImages = <String>[].obs;

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchBanners();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 30 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) return;

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
//         if (currentUnread > _previousUnreadCount) {
//           // New notifications arrived
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//           showToast('You have ${currentUnread - _previousUnreadCount} new notification${currentUnread - _previousUnreadCount > 1 ? 's' : ''}!');
//         } else {
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//         }
//       }
//     } catch (e) {
//       print('Error checking for new notifications: $e');
//     }
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchBanners() async {
//     try {
//       String? token = await getToken();
//       print('Fetching banners...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/banners'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Banners Response Status Code: ${response.statusCode}');
//       print('Banners Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final BannersResponse bannersResponse = BannersResponse.fromJson(data);
//         bannerImages.value = bannersResponse.banners
//             .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
//             .map((banner) => banner.imageUrl!)
//             .toList();
//         print('Total banners loaded: ${bannerImages.length}');
//       } else {
//         showToast('Failed to load banners', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching banners: $e');
//       showToast('An error occurred while loading banners', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) {
//               // Custom mapping for /videos/all API response
//               return SeriesResponse(
//                 episodeName: json['episodeName']?.toString(),
//                 totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
//                 seriesPosterUrl: json['posterUrl']?.toString(),
//                 seriesThumbUrl: json['thumbUrl']?.toString(),
//                 seriesTrailerUrl: json['trailerUrl']?.toString(),
//                 videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
//               );
//             })
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchBanners();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget (no changes)
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'Sahyadri OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 borderRadius: BorderRadius.circular(50),
//                 child: Padding(
//                   padding: EdgeInsets.all(width * 0.02),
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                     size: width * (isLandscape ? 0.04 : 0.06),
//                   ),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     borderRadius: BorderRadius.circular(50),
//                     child: Padding(
//                       padding: EdgeInsets.all(width * 0.02),
//                       child: Icon(
//                         Icons.notifications_outlined,
//                         color: Colors.white,
//                         size: width * (isLandscape ? 0.04 : 0.06),
//                       ),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: width * 0.01,
//                         top: width * 0.01,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return Container(
//               height: height * (isLandscape ? 0.65 : 0.5),
//               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xFF1A1A1A),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xFF00A8E8),
//                   strokeWidth: 3,
//                 ),
//               ),
//             );
//           }
//           return SizedBox(
//             height: height * (isLandscape ? 0.65 : 0.5),
//             child: PageView.builder(
//               onPageChanged: (index) => controller.changeBanner(index),
//               itemCount: controller.bannerImages.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     image: DecorationImage(
//                       image: NetworkImage(controller.bannerImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: width * (isLandscape? 0.02 : 0.03),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                               Row(
//                                 children: [
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return const SizedBox.shrink();
//           }
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               controller.bannerImages.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                 width: width * (isLandscape ? 0.015 : 0.02),
//                 height: width * (isLandscape ? 0.015 : 0.02),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: controller.currentBannerIndex.value == index
//                       ? Colors.blue
//                       : Colors.grey[600],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // Banner Data Models (keep these as they are unique to Home)
// class Banner {
//   final String? id;
//   final String? imageKey;
//   final String? imageMime;
//   final int? imageSize;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final int? v;
//   final String? imageUrl;

//   Banner({
//     this.id,
//     this.imageKey,
//     this.imageMime,
//     this.imageSize,
//     this.createdAt,
//     this.updatedAt,
//     this.v,
//     this.imageUrl,
//   });

//   factory Banner.fromJson(Map<String, dynamic> json) {
//     return Banner(
//       id: json['_id'] as String?,
//       imageKey: json['imageKey'] as String?,
//       imageMime: json['imageMime'] as String?,
//       imageSize: json['imageSize'] as int?,
//       createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
//       updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
//       v: json['__v'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//     );
//   }
// }

// class BannersResponse {
//   final List<Banner> banners;

//   BannersResponse({required this.banners});

//   factory BannersResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['banners'] as List<dynamic>? ?? [];
//     List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
//     return BannersResponse(banners: bannersList);
//   }
// }

// // GetX Controller (updated fromJson in fetchAllSeries to use shared model mapping)
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   RxList<String> bannerImages = <String>[].obs;

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchBanners();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 30 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) return;

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
//         if (currentUnread > _previousUnreadCount) {
//           // New notifications arrived
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//           showToast('You have ${currentUnread - _previousUnreadCount} new notification${currentUnread - _previousUnreadCount > 1 ? 's' : ''}!');
//         } else {
//           unreadCount.value = currentUnread;
//           _previousUnreadCount = currentUnread;
//         }
//       }
//     } catch (e) {
//       print('Error checking for new notifications: $e');
//     }
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         print('No token found for notifications');
//         return;
//       }

//       print('Fetching unread count...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       print('Unread Count Response Status Code: ${response.statusCode}');
//       print('Unread Count Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         print('Unread count loaded: ${unreadCount.value}');
//       } else {
//         showToast('Failed to load unread count', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching unread count: $e');
//       showToast('An error occurred while loading unread count', isError: true);
//     }
//   }

//   Future<void> fetchBanners() async {
//     try {
//       String? token = await getToken();
//       print('Fetching banners...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/banners'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Banners Response Status Code: ${response.statusCode}');
//       print('Banners Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final BannersResponse bannersResponse = BannersResponse.fromJson(data);
//         bannerImages.value = bannersResponse.banners
//             .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
//             .map((banner) => banner.imageUrl!)
//             .toList();
//         print('Total banners loaded: ${bannerImages.length}');
//       } else {
//         showToast('Failed to load banners', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching banners: $e');
//       showToast('An error occurred while loading banners', isError: true);
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       print('Fetching series...');
//       print('Token: $token');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       print('Response Status Code: ${response.statusCode}');
//       print('Response Body: ${response.body}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) {
//               // Custom mapping for /videos/all API response
//               return SeriesResponse(
//                 episodeName: json['episodeName']?.toString(),
//                 totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
//                 seriesPosterUrl: json['posterUrl']?.toString(),
//                 seriesThumbUrl: json['thumbUrl']?.toString(),
//                 seriesTrailerUrl: json['trailerUrl']?.toString(),
//                 videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
//               );
//             })
//             .toList();
//         print('Total series loaded: ${seriesList.length}');
//       } else {
//         showToast('Failed to load series', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//       showToast('An error occurred while loading series', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await fetchAllSeries();
//     await fetchBanners();
//     await fetchUnreadCount();
//   }
// }

// // Enhanced Series Item Widget (no changes)
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       print('Error loading trailer: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'Sahyadri OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 borderRadius: BorderRadius.circular(50),
//                 child: Padding(
//                   padding: EdgeInsets.all(width * 0.02),
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                     size: width * (isLandscape ? 0.05 : 0.08),
//                   ),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               InkWell(
//                 onTap: () => controller.refreshSeries(),
//                 borderRadius: BorderRadius.circular(50),
//                 child: Padding(
//                   padding: EdgeInsets.all(width * 0.02),
//                   child: Icon(
//                     Icons.refresh,
//                     color: Colors.white,
//                     size: width * (isLandscape ? 0.05 : 0.08),
//                   ),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               Stack(
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Get.to(() => NotificationScreen());
//                     },
//                     borderRadius: BorderRadius.circular(50),
//                     child: Padding(
//                       padding: EdgeInsets.all(width * 0.02),
//                       child: Icon(
//                         Icons.notifications_outlined,
//                         color: Colors.white,
//                         size: width * (isLandscape ? 0.05 : 0.08),
//                       ),
//                     ),
//                   ),
//                   Obx(() {
//                     if (controller.unreadCount.value > 0) {
//                       return Positioned(
//                         right: width * 0.01,
//                         top: width * 0.01,
//                         child: Container(
//                           padding: EdgeInsets.all(width * 0.015),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             shape: BoxShape.circle,
//                           ),
//                           constraints: BoxConstraints(
//                             minWidth: width * 0.03,
//                             minHeight: width * 0.03,
//                           ),
//                           child: Text(
//                             '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.025,
//                               fontWeight: FontWeight.bold,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       );
//                     }
//                     return const SizedBox.shrink();
//                   }),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return Container(
//               height: height * (isLandscape ? 0.65 : 0.5),
//               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xFF1A1A1A),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xFF00A8E8),
//                   strokeWidth: 3,
//                 ),
//               ),
//             );
//           }
//           return SizedBox(
//             height: height * (isLandscape ? 0.65 : 0.5),
//             child: PageView.builder(
//               onPageChanged: (index) => controller.changeBanner(index),
//               itemCount: controller.bannerImages.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     image: DecorationImage(
//                       image: NetworkImage(controller.bannerImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(width * (isLandscape ? 0.03 : 0.04)),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: width * (isLandscape? 0.02 : 0.03),
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.015 : 0.01)),
//                               Text(
//                                 '',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: width * (isLandscape ? 0.05 : 0.08),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: height * (isLandscape ? 0.02 : 0.015)),
//                               Row(
//                                 children: [
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return const SizedBox.shrink();
//           }
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               controller.bannerImages.length,
//               (index) => Container(
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                 width: width * (isLandscape ? 0.015 : 0.02),
//                 height: width * (isLandscape ? 0.015 : 0.02),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: controller.currentBannerIndex.value == index
//                       ? Colors.blue
//                       : Colors.grey[600],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'package:ott/View/Screen/Notifiaction.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:video_player/video_player.dart';
// import 'dart:async';

// // Banner Data Models
// class Banner {
//   final String? id;
//   final String? imageKey;
//   final String? imageMime;
//   final int? imageSize;
//   final DateTime? createdAt;
//   final DateTime? updatedAt;
//   final int? v;
//   final String? imageUrl;

//   Banner({
//     this.id,
//     this.imageKey,
//     this.imageMime,
//     this.imageSize,
//     this.createdAt,
//     this.updatedAt,
//     this.v,
//     this.imageUrl,
//   });

//   factory Banner.fromJson(Map<String, dynamic> json) {
//     return Banner(
//       id: json['_id'] as String?,
//       imageKey: json['imageKey'] as String?,
//       imageMime: json['imageMime'] as String?,
//       imageSize: json['imageSize'] as int?,
//       createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
//       updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
//       v: json['__v'] as int?,
//       imageUrl: json['imageUrl'] as String?,
//     );
//   }
// }

// class BannersResponse {
//   final List<Banner> banners;

//   BannersResponse({required this.banners});

//   factory BannersResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['banners'] as List<dynamic>? ?? [];
//     List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
//     return BannersResponse(banners: bannersList);
//   }
// }

// // GetX Controller
// class HomeController extends GetxController {
//   RxInt currentBannerIndex = 0.obs;
//   RxBool isLoading = false.obs;
//   RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
//   RxInt unreadCount = 0.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
//   RxList<String> bannerImages = <String>[].obs;

//   Timer? _notificationPollingTimer;
//   int _previousUnreadCount = 0;

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//     fetchBanners();
//     fetchUnreadCount();
//     _startNotificationPolling();
//   }

//   @override
//   void onClose() {
//     _notificationPollingTimer?.cancel();
//     super.onClose();
//   }

//   void _startNotificationPolling() {
//     // Poll every 15 seconds for new notifications
//     _notificationPollingTimer = Timer.periodic(const Duration(seconds: 15), (timer) {
//       _checkForNewNotifications();
//     });
//   }

//   Future<void> _checkForNewNotifications() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         debugPrint('[Notification Polling] No token found');
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       debugPrint('[Notification Polling] Status Code: ${response.statusCode}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int currentUnread = data['unreadCount'] ?? 0;
        
//         debugPrint('[Notification Polling] Current Unread: $currentUnread, Previous: $_previousUnreadCount');
        
//         if (currentUnread > _previousUnreadCount && _previousUnreadCount > 0) {
//           int newNotifications = currentUnread - _previousUnreadCount;
//           _showNotificationSnackbar(newNotifications);
//         }
        
//         unreadCount.value = currentUnread;
//         _previousUnreadCount = currentUnread;
//       }
//     } catch (e) {
//       debugPrint('[Notification Polling] Error: $e');
//     }
//   }

//   void _showNotificationSnackbar(int count) {
//     Get.showSnackbar(
//       GetSnackBar(
//         message: count == 1 
//             ? '🔔 You have 1 new notification!' 
//             : '🔔 You have $count new notifications!',
//         duration: const Duration(seconds: 3),
//         backgroundColor: const Color(0xFF00A8E8),
//         borderRadius: 12,
//         snackPosition: SnackPosition.TOP,
//         margin: const EdgeInsets.all(16),
//         icon: const Icon(
//           Icons.notifications_active,
//           color: Colors.white,
//           size: 28,
//         ),
//         mainButton: TextButton(
//           onPressed: () {
//             Get.back();
//             Get.to(() => NotificationScreen());
//           },
//           child: const Text(
//             'VIEW',
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         isDismissible: true,
//         dismissDirection: DismissDirection.horizontal,
//         animationDuration: const Duration(milliseconds: 400),
//       ),
//     );
//   }

//   void changeBanner(int index) {
//     currentBannerIndex.value = index;
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       debugPrint('[Token] Error getting token: $e');
//       return null;
//     }
//   }

//   Future<void> fetchUnreadCount() async {
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         debugPrint('[Unread Count] No token found');
//         return;
//       }

//       debugPrint('[Unread Count] Fetching...');

//       final response = await http.get(
//         Uri.parse('$baseUrl/notifications'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       debugPrint('[Unread Count] Status Code: ${response.statusCode}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final int fetchedUnread = data['unreadCount'] ?? 0;
//         unreadCount.value = fetchedUnread;
//         _previousUnreadCount = fetchedUnread;
//         debugPrint('[Unread Count] Loaded: ${unreadCount.value}');
//       }
//     } catch (e) {
//       debugPrint('[Unread Count] Error: $e');
//     }
//   }

//   Future<void> fetchBanners() async {
//     try {
//       String? token = await getToken();
//       debugPrint('[Banners] Fetching...');

//       final response = await http.get(
//         Uri.parse('$baseUrl/banners'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       debugPrint('[Banners] Status Code: ${response.statusCode}');

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final BannersResponse bannersResponse = BannersResponse.fromJson(data);
//         bannerImages.value = bannersResponse.banners
//             .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
//             .map((banner) => banner.imageUrl!)
//             .toList();
//         debugPrint('[Banners] Total loaded: ${bannerImages.length}');
//       }
//     } catch (e) {
//       debugPrint('[Banners] Error: $e');
//     }
//   }

//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;
//     try {
//       String? token = await getToken();
//       debugPrint('[Series] Fetching...');

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       debugPrint('[Series] Status Code: ${response.statusCode}');

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
//         seriesList.value = data
//             .map((json) {
//               return SeriesResponse(
//                 episodeName: json['episodeName']?.toString(),
//                 totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
//                 seriesPosterUrl: json['posterUrl']?.toString(),
//                 seriesThumbUrl: json['thumbUrl']?.toString(),
//                 seriesTrailerUrl: json['trailerUrl']?.toString(),
//                 videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
//               );
//             })
//             .toList();
//         debugPrint('[Series] Total loaded: ${seriesList.length}');
//       }
//     } catch (e) {
//       debugPrint('[Series] Error: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   Future<void> refreshSeries() async {
//     await Future.wait([
//       fetchAllSeries(),
//       fetchBanners(),
//       fetchUnreadCount(),
//     ]);
//   }
// }

// // Enhanced Series Item Widget
// class SeriesItem extends StatefulWidget {
//   final SeriesResponse series;
//   final double width;
//   final double height;
//   final bool isLandscape;

//   const SeriesItem({
//     super.key,
//     required this.series,
//     required this.width,
//     required this.height,
//     required this.isLandscape,
//   });

//   @override
//   State<SeriesItem> createState() => _SeriesItemState();
// }

// class _SeriesItemState extends State<SeriesItem> {
//   VideoPlayerController? _controller;
//   bool _showTrailer = false;
//   bool _isVideoLoading = false;
//   Timer? _timer;

//   @override
//   void initState() {
//     super.initState();
//     _startPreviewTimer();
//   }

//   void _startPreviewTimer() {
//     _timer = Timer(const Duration(seconds: 2), () {
//       if (widget.series.seriesTrailerUrl != null &&
//           widget.series.seriesTrailerUrl!.isNotEmpty) {
//         _loadTrailer();
//       }
//     });
//   }

//   Future<void> _loadTrailer() async {
//     if (mounted) {
//       setState(() {
//         _isVideoLoading = true;
//       });
//     }

//     try {
//       _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
//       await _controller!.initialize();
//       if (mounted) {
//         setState(() {
//           _showTrailer = true;
//           _isVideoLoading = false;
//         });
//         _controller!.play();
//         _controller!.setLooping(true);
//         _controller!.setVolume(0.0);
//       }
//     } catch (e) {
//       debugPrint('[Trailer] Error loading: $e');
//       if (mounted) {
//         setState(() {
//           _isVideoLoading = false;
//         });
//       }
//     }
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     _controller?.dispose();
//     super.dispose();
//   }

//   Widget _buildPlaceholderImage() {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             const Color(0xFF1A1A2E),
//             const Color(0xFF16213E),
//           ],
//         ),
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie_outlined,
//           color: Colors.white.withOpacity(0.3),
//           size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final firstVideo = widget.series.videos?.isNotEmpty == true
//         ? widget.series.videos![0]
//         : null;

//     return GestureDetector(
//       onTap: () {
//         Get.to(() => SeriesDetailScreen(seriesData: widget.series));
//       },
//       child: Container(
//         margin: EdgeInsets.only(
//           bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
//         ),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Container(
//             height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
//             decoration: BoxDecoration(
//               color: const Color(0xFF1A1A1A),
//             ),
//             child: Stack(
//               children: [
//                 // Thumbnail / Trailer
//                 Positioned.fill(
//                   child: Stack(
//                     children: [
//                       // Thumbnail
//                       if (widget.series.seriesThumbUrl != null &&
//                           widget.series.seriesThumbUrl!.isNotEmpty)
//                         Image.network(
//                           widget.series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage();
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Stack(
//                               fit: StackFit.expand,
//                               children: [
//                                 _buildPlaceholderImage(),
//                                 Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                     strokeWidth: 3,
//                                     value: loadingProgress.expectedTotalBytes != null
//                                         ? loadingProgress.cumulativeBytesLoaded /
//                                             loadingProgress.expectedTotalBytes!
//                                         : null,
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         )
//                       else
//                         _buildPlaceholderImage(),
//                       // Trailer Video Overlay
//                       if (_showTrailer &&
//                           _controller != null &&
//                           _controller!.value.isInitialized)
//                         Positioned.fill(
//                           child: FittedBox(
//                             fit: BoxFit.cover,
//                             child: SizedBox(
//                               width: _controller!.value.size.width,
//                               height: _controller!.value.size.height,
//                               child: VideoPlayer(_controller!),
//                             ),
//                           ),
//                         ),
//                       // Loading indicator
//                       if (_isVideoLoading)
//                         const Positioned.fill(
//                           child: Center(
//                             child: CircularProgressIndicator(
//                               color: Color(0xFF00A8E8),
//                               strokeWidth: 3,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Gradient Overlays
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.3),
//                           Colors.black.withOpacity(0.9),
//                         ],
//                         stops: const [0.0, 0.5, 1.0],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // Top Bar with Rating & Episodes
//                 Positioned(
//                   top: widget.height * 0.01,
//                   left: widget.width * 0.025,
//                   right: widget.width * 0.025,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // IMDb Rating Badge
//                       if (firstVideo?.imdbRating != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.amber.withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.amber.withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.star_rounded,
//                                 color: Colors.black87,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 firstVideo!.imdbRating!.toStringAsFixed(1),
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       // Episodes Badge
//                       if (widget.series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: widget.width * 0.02,
//                             vertical: widget.height * 0.006,
//                           ),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF00A8E8).withOpacity(0.95),
//                             borderRadius: BorderRadius.circular(6),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: const Color(0xFF00A8E8).withOpacity(0.2),
//                                 blurRadius: 6,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Icon(
//                                 Icons.play_circle_outline_rounded,
//                                 color: Colors.white,
//                                 size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
//                               ),
//                               SizedBox(width: widget.width * 0.008),
//                               Text(
//                                 '${widget.series.totalEpisodes} EP',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//                 // Play Button Center
//                 Center(
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
//                     decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.25),
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.white.withOpacity(0.5),
//                         width: 2,
//                       ),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           blurRadius: 15,
//                           spreadRadius: 1,
//                         ),
//                       ],
//                     ),
//                     child: Icon(
//                       Icons.play_arrow_rounded,
//                       color: Colors.white,
//                       size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
//                     ),
//                   ),
//                 ),
//                 // Bottom Content
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     padding: EdgeInsets.all(widget.width * 0.03),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         // Series Title
//                         Text(
//                           widget.series.episodeName ?? 'Unknown Series',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
//                             fontWeight: FontWeight.bold,
//                             letterSpacing: 0.3,
//                             height: 1.2,
//                             shadows: [
//                               Shadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 blurRadius: 8,
//                                 offset: const Offset(0, 2),
//                               ),
//                             ],
//                           ),
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         SizedBox(height: widget.height * 0.008),
//                         // Year & Genre Info
//                         Row(
//                           children: [
//                             if (firstVideo?.releaseDate != null) ...[
//                               Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: widget.width * 0.015,
//                                   vertical: widget.height * 0.004,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   color: Colors.white.withOpacity(0.2),
//                                   borderRadius: BorderRadius.circular(4),
//                                   border: Border.all(
//                                     color: Colors.white.withOpacity(0.3),
//                                     width: 1,
//                                   ),
//                                 ),
//                                 child: Text(
//                                   _formatYear(firstVideo?.releaseDate),
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(width: widget.width * 0.015),
//                             ],
//                             Expanded(
//                               child: Text(
//                                 firstVideo?.description ?? 'No description available',
//                                 style: TextStyle(
//                                   color: Colors.grey[300],
//                                   fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
//                                   height: 1.2,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.black.withOpacity(0.8),
//                                       blurRadius: 6,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 1,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Homescreen extends StatelessWidget {
//   const Homescreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final HomeController controller = Get.put(HomeController());
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           bool isLandscape = orientation == Orientation.landscape;
//           return SafeArea(
//             child: RefreshIndicator(
//               onRefresh: () => controller.refreshSeries(),
//               backgroundColor: const Color(0xFF1A1A1A),
//               color: const Color(0xFF00A8E8),
//               child: Obx(() {
//                 if (controller.isLoading.value && controller.seriesList.isEmpty) {
//                   return Center(
//                     child: CircularProgressIndicator(
//                       color: const Color(0xFF00A8E8),
//                       strokeWidth: 3,
//                     ),
//                   );
//                 }
//                 return SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildHeader(width, height, isLandscape, controller),
//                       _buildBannerSlider(controller, width, height, isLandscape),
//                       SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
//                       _buildSeriesSection(controller, width, height, isLandscape),
//                       SizedBox(height: height * 0.05),
//                     ],
//                   ),
//                 );
//               }),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * (isLandscape ? 0.03 : 0.04),
//         vertical: height * (isLandscape ? 0.03 : 0.02),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Image.asset(
//             'assets/prime_logo.png',
//             width: width * (isLandscape ? 0.15 : 0.25),
//             height: height * (isLandscape ? 0.06 : 0.04),
//             errorBuilder: (context, error, stackTrace) {
//               return Text(
//                 'Sahyadri OTT',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: width * (isLandscape ? 0.03 : 0.05),
//                   fontWeight: FontWeight.bold,
//                 ),
//               );
//             },
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Get.to(Searchscreen());
//                 },
//                 borderRadius: BorderRadius.circular(50),
//                 child: Padding(
//                   padding: EdgeInsets.all(width * 0.02),
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.white,
//                     size: width * (isLandscape ? 0.05 : 0.08),
//                   ),
//                 ),
//               ),
//               SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               // InkWell(
//               //   onTap: () => controller.refreshSeries(),
//               //   borderRadius: BorderRadius.circular(50),
//               //   child: Padding(
//               //     padding: EdgeInsets.all(width * 0.02),
//               //     child: Icon(
//               //       Icons.refresh,
//               //       color: Colors.white,
//               //       size: width * (isLandscape ? 0.05 : 0.08),
//               //     ),
//               //   ),
//               // ),
//               // SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
//               Obx(() => Stack(
//                 children: [
//                   InkWell(
//                     onTap: () async {
//                       await Get.to(() => NotificationScreen());
//                       // Refresh count when returning from notification screen
//                       controller.fetchUnreadCount();
//                     },
//                     borderRadius: BorderRadius.circular(50),
//                     child: Container(
//                       padding: EdgeInsets.all(width * 0.02),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: controller.unreadCount.value > 0 
//                             ? const Color(0xFF00A8E8).withOpacity(0.15)
//                             : Colors.transparent,
//                       ),
//                       child: Icon(
//                         controller.unreadCount.value > 0 
//                             ? Icons.notifications_active
//                             : Icons.notifications_outlined,
//                         color: controller.unreadCount.value > 0 
//                             ? const Color(0xFF00A8E8)
//                             : Colors.white,
//                         size: width * (isLandscape ? 0.05 : 0.08),
//                       ),
//                     ),
//                   ),
//                   if (controller.unreadCount.value > 0)
//                     Positioned(
//                       right: width * 0.01,
//                       top: width * 0.01,
//                       child: Container(
//                         padding: EdgeInsets.all(width * 0.012),
//                         decoration: BoxDecoration(
//                           color: Colors.red,
//                           shape: BoxShape.circle,
//                           border: Border.all(
//                             color: const Color(0xFF0A0A0A),
//                             width: 2,
//                           ),
//                         ),
//                         constraints: BoxConstraints(
//                           minWidth: width * 0.045,
//                           minHeight: width * 0.045,
//                         ),
//                         child: Center(
//                           child: Text(
//                             controller.unreadCount.value > 99 
//                                 ? '99+' 
//                                 : '${controller.unreadCount.value}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.022,
//                               fontWeight: FontWeight.bold,
//                               height: 1.0,
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               )),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
//     return Column(
//       children: [
//         SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return Container(
//               height: height * (isLandscape ? 0.65 : 0.5),
//               margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 color: const Color(0xFF1A1A1A),
//               ),
//               child: const Center(
//                 child: CircularProgressIndicator(
//                   color: Color(0xFF00A8E8),
//                   strokeWidth: 3,
//                 ),
//               ),
//             );
//           }
//           return SizedBox(
//             height: height * (isLandscape ? 0.65 : 0.5),
//             child: PageView.builder(
//               onPageChanged: (index) => controller.changeBanner(index),
//               itemCount: controller.bannerImages.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     image: DecorationImage(
//                       image: NetworkImage(controller.bannerImages[index]),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.8),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         }),
//         SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
//         Obx(() {
//           if (controller.bannerImages.isEmpty) {
//             return const SizedBox.shrink();
//           }
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               controller.bannerImages.length,
//               (index) => AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
//                 width: controller.currentBannerIndex.value == index 
//                     ? width * (isLandscape ? 0.025 : 0.035) 
//                     : width * (isLandscape ? 0.015 : 0.02),
//                 height: width * (isLandscape ? 0.015 : 0.02),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: controller.currentBannerIndex.value == index
//                       ? const Color(0xFF00A8E8)
//                       : Colors.grey[600],
//                 ),
//               ),
//             ),
//           );
//         }),
//       ],
//     );
//   }

//   Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.seriesList.isEmpty) {
//         return Center(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: height * 0.1),
//             child: Column(
//               children: [
//                 Icon(
//                   Icons.movie_filter_outlined,
//                   size: width * 0.12,
//                   color: Colors.grey[700],
//                 ),
//                 SizedBox(height: height * 0.015),
//                 Text(
//                   'No series available',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: width * (isLandscape ? 0.025 : 0.04),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.008),
//                 Text(
//                   'Check back later for new content',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: width * (isLandscape ? 0.02 : 0.03),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Available Series',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: width * (isLandscape ? 0.032 : 0.05),
//                         fontWeight: FontWeight.bold,
//                         letterSpacing: 0.3,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.004),
//                     Text(
//                       '${controller.seriesList.length} series to watch',
//                       style: TextStyle(
//                         color: Colors.grey[500],
//                         fontSize: width * (isLandscape ? 0.018 : 0.03),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
//             itemCount: controller.seriesList.length,
//             itemBuilder: (context, index) {
//               return SeriesItem(
//                 series: controller.seriesList[index],
//                 width: width,
//                 height: height,
//                 isLandscape: isLandscape,
//               );
//             },
//           ),
//         ],
//       );
//     });
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott/View/Screen/Episodedeailpage.dart';
import 'package:ott/View/Screen/Movieplayerscreen.dart';
import 'package:ott/View/Screen/Notifiaction.dart';
import 'package:ott/View/Screen/Searchscreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

// Banner Data Models
class Banner {
  final String? id;
  final String? imageKey;
  final String? imageMime;
  final int? imageSize;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;
  final String? imageUrl;

  Banner({
    this.id,
    this.imageKey,
    this.imageMime,
    this.imageSize,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.imageUrl,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['_id'] as String?,
      imageKey: json['imageKey'] as String?,
      imageMime: json['imageMime'] as String?,
      imageSize: json['imageSize'] as int?,
      createdAt: json['createdAt'] != null ? DateTime.tryParse(json['createdAt']) : null,
      updatedAt: json['updatedAt'] != null ? DateTime.tryParse(json['updatedAt']) : null,
      v: json['__v'] as int?,
      imageUrl: json['imageUrl'] as String?,
    );
  }
}

class BannersResponse {
  final List<Banner> banners;

  BannersResponse({required this.banners});

  factory BannersResponse.fromJson(Map<String, dynamic> json) {
    var list = json['banners'] as List<dynamic>? ?? [];
    List<Banner> bannersList = list.map((item) => Banner.fromJson(item as Map<String, dynamic>)).toList();
    return BannersResponse(banners: bannersList);
  }
}

// GetX Controller
class HomeController extends GetxController {
  RxInt currentBannerIndex = 0.obs;
  RxBool isLoading = false.obs;
  RxList<SeriesResponse> seriesList = <SeriesResponse>[].obs;
  RxInt unreadCount = 0.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  RxList<String> bannerImages = <String>[].obs;

  Timer? _notificationPollingTimer;
  int _previousUnreadCount = 0;

  @override
  void onInit() {
    super.onInit();
    fetchAllSeries();
    fetchBanners();
    fetchUnreadCount();
    _startNotificationPolling();
  }

  @override
  void onClose() {
    _notificationPollingTimer?.cancel();
    super.onClose();
  }

  void _startNotificationPolling() {
    // Poll every 15 seconds for new notifications
    _notificationPollingTimer = Timer.periodic(const Duration(seconds: 15), (timer) {
      _checkForNewNotifications();
    });
  }

  Future<void> _checkForNewNotifications() async {
    try {
      String? token = await getToken();
      if (token == null) {
        debugPrint('[Notification Polling] No token found');
        return;
      }

      final response = await http.get(
        Uri.parse('$baseUrl/notifications'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      debugPrint('[Notification Polling] Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final int currentUnread = data['unreadCount'] ?? 0;
        
        debugPrint('[Notification Polling] Current Unread: $currentUnread, Previous: $_previousUnreadCount');
        
        if (currentUnread > _previousUnreadCount && _previousUnreadCount > 0) {
          int newNotifications = currentUnread - _previousUnreadCount;
          _showNotificationSnackbar(newNotifications);
        }
        
        unreadCount.value = currentUnread;
        _previousUnreadCount = currentUnread;
      }
    } catch (e) {
      debugPrint('[Notification Polling] Error: $e');
    }
  }

  void _showNotificationSnackbar(int count) {
    Get.showSnackbar(
      GetSnackBar(
        message: count == 1 
            ? '🔔 You have 1 new notification!' 
            : '🔔 You have $count new notifications!',
        duration: const Duration(seconds: 3),
        backgroundColor: const Color(0xFF00A8E8),
        borderRadius: 12,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.all(16),
        icon: const Icon(
          Icons.notifications_active,
          color: Colors.white,
          size: 28,
        ),
        mainButton: TextButton(
          onPressed: () {
            Get.back();
            Get.to(() => NotificationScreen());
          },
          child: const Text(
            'VIEW',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        isDismissible: true,
        dismissDirection: DismissDirection.horizontal,
        animationDuration: const Duration(milliseconds: 400),
      ),
    );
  }

  void changeBanner(int index) {
    currentBannerIndex.value = index;
  }

  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('auth_token');
    } catch (e) {
      debugPrint('[Token] Error getting token: $e');
      return null;
    }
  }

  Future<void> fetchUnreadCount() async {
    try {
      String? token = await getToken();
      if (token == null) {
        debugPrint('[Unread Count] No token found');
        return;
      }

      debugPrint('[Unread Count] Fetching...');

      final response = await http.get(
        Uri.parse('$baseUrl/notifications'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      debugPrint('[Unread Count] Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final int fetchedUnread = data['unreadCount'] ?? 0;
        unreadCount.value = fetchedUnread;
        _previousUnreadCount = fetchedUnread;
        debugPrint('[Unread Count] Loaded: ${unreadCount.value}');
      }
    } catch (e) {
      debugPrint('[Unread Count] Error: $e');
    }
  }

  Future<void> fetchBanners() async {
    try {
      String? token = await getToken();
      debugPrint('[Banners] Fetching...');

      final response = await http.get(
        Uri.parse('$baseUrl/banners'),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      );

      debugPrint('[Banners] Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final BannersResponse bannersResponse = BannersResponse.fromJson(data);
        bannerImages.value = bannersResponse.banners
            .where((banner) => banner.imageUrl != null && banner.imageUrl!.isNotEmpty)
            .map((banner) => banner.imageUrl!)
            .toList();
        debugPrint('[Banners] Total loaded: ${bannerImages.length}');
      }
    } catch (e) {
      debugPrint('[Banners] Error: $e');
    }
  }

  Future<void> fetchAllSeries() async {
    isLoading.value = true;
    try {
      String? token = await getToken();
      debugPrint('[Series] Fetching...');

      final response = await http.get(
        Uri.parse('$baseUrl/videos/all'),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      );

      debugPrint('[Series] Status Code: ${response.statusCode}');

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        seriesList.value = data
            .map((json) {
              return SeriesResponse(
                episodeName: json['episodeName']?.toString(),
                totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
                seriesPosterUrl: json['posterUrl']?.toString(),
                seriesThumbUrl: json['thumbUrl']?.toString(),
                seriesTrailerUrl: json['trailerUrl']?.toString(),
                videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
              );
            })
            .toList();
        debugPrint('[Series] Total loaded: ${seriesList.length}');
      }
    } catch (e) {
      debugPrint('[Series] Error: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshSeries() async {
    await Future.wait([
      fetchAllSeries(),
      fetchBanners(),
      fetchUnreadCount(),
    ]);
  }
}

// Enhanced Series Item Widget
class SeriesItem extends StatefulWidget {
  final SeriesResponse series;
  final double width;
  final double height;
  final bool isLandscape;

  const SeriesItem({
    super.key,
    required this.series,
    required this.width,
    required this.height,
    required this.isLandscape,
  });

  @override
  State<SeriesItem> createState() => _SeriesItemState();
}

class _SeriesItemState extends State<SeriesItem> {
  VideoPlayerController? _controller;
  bool _showTrailer = false;
  bool _isVideoLoading = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startPreviewTimer();
  }

  void _startPreviewTimer() {
    _timer = Timer(const Duration(seconds: 2), () {
      if (widget.series.seriesTrailerUrl != null &&
          widget.series.seriesTrailerUrl!.isNotEmpty) {
        _loadTrailer();
      }
    });
  }

  Future<void> _loadTrailer() async {
    if (mounted) {
      setState(() {
        _isVideoLoading = true;
      });
    }

    try {
      _controller = VideoPlayerController.network(widget.series.seriesTrailerUrl!);
      await _controller!.initialize();
      if (mounted) {
        setState(() {
          _showTrailer = true;
          _isVideoLoading = false;
        });
        _controller!.play();
        _controller!.setLooping(true);
        _controller!.setVolume(0.0);
      }
    } catch (e) {
      debugPrint('[Trailer] Error loading: $e');
      if (mounted) {
        setState(() {
          _isVideoLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller?.dispose();
    super.dispose();
  }

  Widget _buildPlaceholderImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1A1A2E),
            const Color(0xFF16213E),
          ],
        ),
      ),
      child: Center(
        child: Icon(
          Icons.movie_outlined,
          color: Colors.white.withOpacity(0.3),
          size: widget.width * (widget.isLandscape ? 0.06 : 0.09),
        ),
      ),
    );
  }

  String _formatYear(String? dateString) {
    if (dateString == null) return 'N/A';
    try {
      final date = DateTime.parse(dateString);
      return date.year.toString();
    } catch (e) {
      return 'N/A';
    }
  }

  @override
  Widget build(BuildContext context) {
    final firstVideo = widget.series.videos?.isNotEmpty == true
        ? widget.series.videos![0]
        : null;

    return GestureDetector(
      onTap: () {
        Get.to(() => SeriesDetailScreen(seriesData: widget.series));
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: widget.height * (widget.isLandscape ? 0.025 : 0.02),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            height: widget.height * (widget.isLandscape ? 0.4 : 0.25),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
            ),
            child: Stack(
              children: [
                // Thumbnail / Trailer
                Positioned.fill(
                  child: Stack(
                    children: [
                      // Thumbnail
                      if (widget.series.seriesThumbUrl != null &&
                          widget.series.seriesThumbUrl!.isNotEmpty)
                        Image.network(
                          widget.series.seriesThumbUrl!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return _buildPlaceholderImage();
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Stack(
                              fit: StackFit.expand,
                              children: [
                                _buildPlaceholderImage(),
                                Center(
                                  child: CircularProgressIndicator(
                                    color: const Color(0xFF00A8E8),
                                    strokeWidth: 3,
                                    value: loadingProgress.expectedTotalBytes != null
                                        ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  ),
                                ),
                              ],
                            );
                          },
                        )
                      else
                        _buildPlaceholderImage(),
                      // Trailer Video Overlay
                      if (_showTrailer &&
                          _controller != null &&
                          _controller!.value.isInitialized)
                        Positioned.fill(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: _controller!.value.size.width,
                              height: _controller!.value.size.height,
                              child: VideoPlayer(_controller!),
                            ),
                          ),
                        ),
                      // Loading indicator
                      if (_isVideoLoading)
                        const Positioned.fill(
                          child: Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF00A8E8),
                              strokeWidth: 3,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                // Gradient Overlays
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.9),
                        ],
                        stops: const [0.0, 0.5, 1.0],
                      ),
                    ),
                  ),
                ),
                // Top Bar with Rating & Episodes
                Positioned(
                  top: widget.height * 0.01,
                  left: widget.width * 0.025,
                  right: widget.width * 0.025,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // IMDb Rating Badge
                      if (firstVideo?.imdbRating != null)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: widget.width * 0.02,
                            vertical: widget.height * 0.006,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.amber.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.withOpacity(0.2),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: Colors.black87,
                                size: widget.width * (widget.isLandscape ? 0.02 : 0.032),
                              ),
                              SizedBox(width: widget.width * 0.008),
                              Text(
                                firstVideo!.imdbRating!.toStringAsFixed(1),
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.028),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                // Play Button Center
                Center(
                  child: Container(
                    padding: EdgeInsets.all(widget.width * (widget.isLandscape ? 0.02 : 0.03)),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white.withOpacity(0.5),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: widget.width * (widget.isLandscape ? 0.05 : 0.08),
                    ),
                  ),
                ),
                // Bottom Content
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(widget.width * 0.03),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Series Title
                        Text(
                          widget.series.episodeName ?? 'Unknown Series',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: widget.width * (widget.isLandscape ? 0.035 : 0.05),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3,
                            height: 1.2,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.8),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: widget.height * 0.008),
                        // Year & Genre Info
                        Row(
                          children: [
                            if (firstVideo?.releaseDate != null) ...[
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: widget.width * 0.015,
                                  vertical: widget.height * 0.004,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3),
                                    width: 1,
                                  ),
                                ),
                                child: Text(
                                  _formatYear(firstVideo?.releaseDate),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: widget.width * (widget.isLandscape ? 0.018 : 0.026),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: widget.width * 0.015),
                            ],
                            Expanded(
                              child: Text(
                                firstVideo?.description ?? 'No description available',
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: widget.width * (widget.isLandscape ? 0.016 : 0.026),
                                  height: 1.2,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.8),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: OrientationBuilder(
        builder: (context, orientation) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;
          bool isLandscape = orientation == Orientation.landscape;
          return SafeArea(
            child: RefreshIndicator(
              onRefresh: () => controller.refreshSeries(),
              backgroundColor: const Color(0xFF1A1A1A),
              color: const Color(0xFF00A8E8),
              child: Obx(() {
                if (controller.isLoading.value && controller.seriesList.isEmpty) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: const Color(0xFF00A8E8),
                      strokeWidth: 3,
                    ),
                  );
                }
                return SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(width, height, isLandscape, controller),
                      _buildBannerSlider(controller, width, height, isLandscape),
                      SizedBox(height: height * (isLandscape ? 0.05 : 0.04)),
                      _buildSeriesSection(controller, width, height, isLandscape),
                      SizedBox(height: height * 0.05),
                    ],
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader(double width, double height, bool isLandscape, HomeController controller) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * (isLandscape ? 0.03 : 0.04),
        vertical: height * (isLandscape ? 0.03 : 0.02),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/prime_logo.png',
            width: width * (isLandscape ? 0.15 : 0.25),
            height: height * (isLandscape ? 0.06 : 0.04),
            errorBuilder: (context, error, stackTrace) {
              return Text(
                'Sahyadri OTT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * (isLandscape ? 0.03 : 0.05),
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.to(Searchscreen());
                },
                borderRadius: BorderRadius.circular(50),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.02),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: width * (isLandscape ? 0.05 : 0.08),
                  ),
                ),
              ),
              SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
              // InkWell(
              //   onTap: () => controller.refreshSeries(),
              //   borderRadius: BorderRadius.circular(50),
              //   child: Padding(
              //     padding: EdgeInsets.all(width * 0.02),
              //     child: Icon(
              //       Icons.refresh,
              //       color: Colors.white,
              //       size: width * (isLandscape ? 0.05 : 0.08),
              //     ),
              //   ),
              // ),
              // SizedBox(width: width * (isLandscape ? 0.01 : 0.02)),
              Obx(() => Stack(
                children: [
                  InkWell(
                    onTap: () async {
                      await Get.to(() => NotificationScreen());
                      // Refresh count when returning from notification screen
                      controller.fetchUnreadCount();
                    },
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(width * 0.02),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.unreadCount.value > 0 
                            ? const Color(0xFF00A8E8).withOpacity(0.15)
                            : Colors.transparent,
                      ),
                      child: Icon(
                        controller.unreadCount.value > 0 
                            ? Icons.notifications_active
                            : Icons.notifications_outlined,
                        color: controller.unreadCount.value > 0 
                            ? const Color(0xFF00A8E8)
                            : Colors.white,
                        size: width * (isLandscape ? 0.05 : 0.08),
                      ),
                    ),
                  ),
                  if (controller.unreadCount.value > 0)
                    Positioned(
                      right: width * 0.01,
                      top: width * 0.01,
                      child: Container(
                        padding: EdgeInsets.all(width * 0.012),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF0A0A0A),
                            width: 2,
                          ),
                        ),
                        constraints: BoxConstraints(
                          minWidth: width * 0.045,
                          minHeight: width * 0.045,
                        ),
                        child: Center(
                          child: Text(
                            controller.unreadCount.value > 99 
                                ? '99+' 
                                : '${controller.unreadCount.value}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.022,
                              fontWeight: FontWeight.bold,
                              height: 1.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBannerSlider(HomeController controller, double width, double height, bool isLandscape) {
    return Column(
      children: [
        SizedBox(height: height * (isLandscape ? 0.02 : 0.01)),
        Obx(() {
          if (controller.bannerImages.isEmpty) {
            return Container(
              height: height * (isLandscape ? 0.65 : 0.5),
              margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF1A1A1A),
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Color(0xFF00A8E8),
                  strokeWidth: 3,
                ),
              ),
            );
          }
          return SizedBox(
            height: height * (isLandscape ? 0.65 : 0.5),
            child: PageView.builder(
              onPageChanged: (index) => controller.changeBanner(index),
              itemCount: controller.bannerImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(controller.bannerImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
        SizedBox(height: height * (isLandscape ? 0.03 : 0.02)),
        Obx(() {
          if (controller.bannerImages.isEmpty) {
            return const SizedBox.shrink();
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              controller.bannerImages.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.008 : 0.01)),
                width: controller.currentBannerIndex.value == index 
                    ? width * (isLandscape ? 0.025 : 0.035) 
                    : width * (isLandscape ? 0.015 : 0.02),
                height: width * (isLandscape ? 0.015 : 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: controller.currentBannerIndex.value == index
                      ? const Color(0xFF00A8E8)
                      : Colors.grey[600],
                ),
              ),
            ),
          );
        }),
      ],
    );
  }

  Widget _buildSeriesSection(HomeController controller, double width, double height, bool isLandscape) {
    return Obx(() {
      if (controller.seriesList.isEmpty) {
        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.1),
            child: Column(
              children: [
                Icon(
                  Icons.movie_filter_outlined,
                  size: width * 0.12,
                  color: Colors.grey[700],
                ),
                SizedBox(height: height * 0.015),
                Text(
                  'No series available',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: width * (isLandscape ? 0.025 : 0.04),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.008),
                Text(
                  'Check back later for new content',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: width * (isLandscape ? 0.02 : 0.03),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Series',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: width * (isLandscape ? 0.032 : 0.05),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: height * 0.004),
                    Text(
                      '${controller.seriesList.length} series to watch',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: width * (isLandscape ? 0.018 : 0.03),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height * (isLandscape ? 0.03 : 0.025)),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: width * (isLandscape ? 0.03 : 0.04)),
            itemCount: controller.seriesList.length,
            itemBuilder: (context, index) {
              return SeriesItem(
                series: controller.seriesList[index],
                width: width,
                height: height,
                isLandscape: isLandscape,
              );
            },
          ),
        ],
      );
    });
  }
}