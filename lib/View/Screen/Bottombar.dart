// // // import 'package:flutter/material.dart';

// // // class Bottombar extends StatefulWidget {
// // //   const Bottombar({super.key});

// // //   @override
// // //   State<Bottombar> createState() => _BottombarState();
// // // }

// // // class _BottombarState extends State<Bottombar> {
// // //   int _currentIndex = 0;

// // //   // Placeholder pages - ye baad me replace ho jayenge
// // //   final List<Widget> _pages = [
// // //     const Center(child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24))),
// // //     const Center(child: Text('Search', style: TextStyle(color: Colors.white, fontSize: 24))),
// // //     const Center(child: Text('Watch List', style: TextStyle(color: Colors.white, fontSize: 24))),
// // //     const Center(child: Text('Profile', style: TextStyle(color: Colors.white, fontSize: 24))),
// // //   ];

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return OrientationBuilder(
// // //       builder: (context, orientation) {
// // //         double height = MediaQuery.of(context).size.height;
// // //         double width = MediaQuery.of(context).size.width;
        
// // //         return Scaffold(
// // //           backgroundColor: const Color(0xFF0A0A0A),
// // //           body: _pages[_currentIndex],
// // //           bottomNavigationBar: Container(
// // //             decoration: BoxDecoration(
// // //               color: const Color(0xFF1A1A1A),
// // //               boxShadow: [
// // //                 BoxShadow(
// // //                   color: Colors.black.withOpacity(0.3),
// // //                   blurRadius: 10,
// // //                   offset: const Offset(0, -2),
// // //                 ),
// // //               ],
// // //             ),
// // //             child: SafeArea(
// // //               child: Container(
// // //                 height: orientation == Orientation.portrait 
// // //                     ? height * 0.08 
// // //                     : height * 0.12,
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: width * 0.02,
// // //                   vertical: height * 0.005,
// // //                 ),
// // //                 child: Row(
// // //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //                   children: [
// // //                     _buildNavItem(
// // //                       icon: Icons.home,
// // //                       label: 'Home',
// // //                       index: 0,
// // //                       width: width,
// // //                       height: height,
// // //                       orientation: orientation,
// // //                     ),
// // //                     _buildNavItem(
// // //                       icon: Icons.search,
// // //                       label: 'Search',
// // //                       index: 1,
// // //                       width: width,
// // //                       height: height,
// // //                       orientation: orientation,
// // //                     ),
// // //                     _buildNavItem(
// // //                       icon: Icons.video_library_outlined,
// // //                       label: 'Watch List',
// // //                       index: 2,
// // //                       width: width,
// // //                       height: height,
// // //                       orientation: orientation,
// // //                     ),
// // //                     _buildNavItem(
// // //                       icon: Icons.person_outline,
// // //                       label: 'Profile',
// // //                       index: 3,
// // //                       width: width,
// // //                       height: height,
// // //                       orientation: orientation,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //     );
// // //   }

// // //   Widget _buildNavItem({
// // //     required IconData icon,
// // //     required String label,
// // //     required int index,
// // //     required double width,
// // //     required double height,
// // //     required Orientation orientation,
// // //   }) {
// // //     bool isSelected = _currentIndex == index;
    
// // //     return GestureDetector(
// // //       onTap: () {
// // //         setState(() {
// // //           _currentIndex = index;
// // //         });
// // //       },
// // //       child: Container(
// // //         color: Colors.transparent,
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           mainAxisSize: MainAxisSize.min,
// // //           children: [
// // //             Icon(
// // //               icon,
// // //               color: isSelected ? Colors.white : Colors.grey[600],
// // //               size: orientation == Orientation.portrait 
// // //                   ? width * 0.065 
// // //                   : width * 0.04,
// // //             ),
// // //             SizedBox(height: height * 0.004),
// // //             Text(
// // //               label,
// // //               style: TextStyle(
// // //                 color: isSelected ? Colors.white : Colors.grey[600],
// // //                 fontSize: orientation == Orientation.portrait 
// // //                     ? width * 0.032 
// // //                     : width * 0.02,
// // //                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }


// // import 'package:flutter/material.dart';
// // import 'package:ott/Homescreen.dart';
// // import 'package:ott/Profile.dart';
// // import 'package:ott/Searchscreen.dart';

// // class Bottombar extends StatefulWidget {
// //   const Bottombar({super.key});

// //   @override
// //   State<Bottombar> createState() => _BottombarState();
// // }

// // class _BottombarState extends State<Bottombar> {
// //   int _currentIndex = 0;

// //   // Placeholder pages - ye baad me replace ho jayenge
// //   final List<Widget> _pages = [
// //     // const Center(child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24))),
// //     Homescreen(),
// //     // const Center(child: Text('Search', style: TextStyle(color: Colors.white, fontSize: 24))),

// //     Searchscreen(),
// //     const Center(child: Text('Watch List', style: TextStyle(color: Colors.white, fontSize: 24))),
// //     Profile()
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return OrientationBuilder(
// //       builder: (context, orientation) {
// //         double height = MediaQuery.of(context).size.height;
// //         double width = MediaQuery.of(context).size.width;
        
// //         return Scaffold(
// //           backgroundColor: const Color(0xFF0A0A0A),
// //           body: _pages[_currentIndex],
// //           bottomNavigationBar: Container(
// //             decoration: BoxDecoration(
// //               color: const Color(0xFF1A1A1A),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.black.withOpacity(0.3),
// //                   blurRadius: 10,
// //                   offset: const Offset(0, -2),
// //                 ),
// //               ],
// //             ),
// //             child: SafeArea(
// //               child: Container(
// //                 height: orientation == Orientation.portrait 
// //                     ? height * 0.08 
// //                     : height * 0.15,
// //                 padding: EdgeInsets.symmetric(
// //                   horizontal: width * 0.02,
// //                   vertical: orientation == Orientation.portrait 
// //                       ? height * 0.005 
// //                       : height * 0.008,
// //                 ),
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                   children: [
// //                     _buildNavItem(
// //                       icon: Icons.home,
// //                       label: 'Home',
// //                       index: 0,
// //                       width: width,
// //                       height: height,
// //                       orientation: orientation,
// //                     ),
// //                     _buildNavItem(
// //                       icon: Icons.search,
// //                       label: 'Search',
// //                       index: 1,
// //                       width: width,
// //                       height: height,
// //                       orientation: orientation,
// //                     ),
// //                     _buildNavItem(
// //                       icon: Icons.video_library_outlined,
// //                       label: 'Watch List',
// //                       index: 2,
// //                       width: width,
// //                       height: height,
// //                       orientation: orientation,
// //                     ),
// //                     _buildNavItem(
// //                       icon: Icons.person_outline,
// //                       label: 'Profile',
// //                       index: 3,
// //                       width: width,
// //                       height: height,
// //                       orientation: orientation,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildNavItem({
// //     required IconData icon,
// //     required String label,
// //     required int index,
// //     required double width,
// //     required double height,
// //     required Orientation orientation,
// //   }) {
// //     bool isSelected = _currentIndex == index;
    
// //     return GestureDetector(
// //       onTap: () {
// //         setState(() {
// //           _currentIndex = index;
// //         });
// //       },
// //       child: Container(
// //         color: Colors.transparent,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Icon(
// //               icon,
// //               color: isSelected ? Colors.white : Colors.grey[600],
// //               size: orientation == Orientation.portrait 
// //                   ? width * 0.065 
// //                   : width * 0.035,
// //             ),
// //             SizedBox(height: orientation == Orientation.portrait 
// //                 ? height * 0.004 
// //                 : height * 0.008),
// //             Text(
// //               label,
// //               style: TextStyle(
// //                 color: isSelected ? Colors.white : Colors.grey[600],
// //                 fontSize: orientation == Orientation.portrait 
// //                     ? width * 0.032 
// //                     : width * 0.018,
// //                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:get/get.dart';
// // import 'package:ott/Controllers/Bottombarcontroller.dart';
// // import 'package:ott/View/Screen/Homescreen.dart';
// // import 'package:ott/View/Screen/Profile.dart';
// // import 'package:ott/View/Screen/Searchscreen.dart';


// // class Bottombar extends StatelessWidget {
// //   const Bottombar({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final BottomNavController controller = Get.put(BottomNavController());

// //     final List<Widget> pages = [
// //       Homescreen(),
// //       Searchscreen(),
  
// //       Profile()
// //     ];

// //     return PopScope(
// //       canPop: false,
// //       onPopInvoked: (bool didPop) {
// //         if (didPop) return;
// //         if (controller.history.length > 1) {
// //           controller.history.removeLast();
// //           controller.selectedIndex.value = controller.history.last;
// //         } else {
// //           SystemNavigator.pop();
// //         }
// //       },
// //       child: OrientationBuilder(
// //         builder: (context, orientation) {
// //           double height = MediaQuery.of(context).size.height;
// //           double width = MediaQuery.of(context).size.width;
          
// //           return Scaffold(
// //             backgroundColor: const Color(0xFF0A0A0A),
// //             body: Obx(() => pages[controller.selectedIndex.value]),
// //             bottomNavigationBar: Container(
// //               decoration: BoxDecoration(
// //                 color: const Color(0xFF1A1A1A),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.black.withOpacity(0.3),
// //                     blurRadius: 10,
// //                     offset: const Offset(0, -2),
// //                   ),
// //                 ],
// //               ),
// //               child: SafeArea(
// //                 child: Obx(() => Container(
// //                   height: orientation == Orientation.portrait 
// //                       ? height * 0.08 
// //                       : height * 0.15,
// //                   padding: EdgeInsets.symmetric(
// //                     horizontal: width * 0.02,
// //                     vertical: orientation == Orientation.portrait 
// //                         ? height * 0.005 
// //                         : height * 0.008,
// //                   ),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                       _buildNavItem(
// //                         icon: Icons.home,
// //                         label: 'Home',
// //                         index: 0,
// //                         width: width,
// //                         height: height,
// //                         orientation: orientation,
// //                       ),
// //                       _buildNavItem(
// //                         icon: Icons.search,
// //                         label: 'Search',
// //                         index: 1,
// //                         width: width,
// //                         height: height,
// //                         orientation: orientation,
// //                       ),
// //                       // _buildNavItem(
// //                       //   icon: Icons.video_library_outlined,
// //                       //   label: 'Watch List',
// //                       //   index: 2,
// //                       //   width: width,
// //                       //   height: height,
// //                       //   orientation: orientation,
// //                       // ),
// //                       _buildNavItem(
// //                         icon: Icons.person_outline,
// //                         label: 'Profile',
// //                         index: 3,
// //                         width: width,
// //                         height: height,
// //                         orientation: orientation,
// //                       ),
// //                     ],
// //                   ),
// //                 )),
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }

// //   Widget _buildNavItem({
// //     required IconData icon,
// //     required String label,
// //     required int index,
// //     required double width,
// //     required double height,
// //     required Orientation orientation,
// //   }) {
// //     final BottomNavController controller = Get.find<BottomNavController>();
// //     bool isSelected = controller.selectedIndex.value == index;
    
// //     return GestureDetector(
// //       onTap: () {
// //         controller.changeTab(index);
// //       },
// //       child: Container(
// //         color: Colors.transparent,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Icon(
// //               icon,
// //               color: isSelected ? Colors.white : Colors.grey[600],
// //               size: orientation == Orientation.portrait 
// //                   ? width * 0.065 
// //                   : width * 0.035,
// //             ),
// //             SizedBox(height: orientation == Orientation.portrait 
// //                 ? height * 0.004 
// //                 : height * 0.008),
// //             Text(
// //               label,
// //               style: TextStyle(
// //                 color: isSelected ? Colors.white : Colors.grey[600],
// //                 fontSize: orientation == Orientation.portrait 
// //                     ? width * 0.032 
// //                     : width * 0.018,
// //                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }




// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:ott/Controllers/Bottombarcontroller.dart';
// import 'package:ott/View/Screen/Homescreen.dart';
// import 'package:ott/View/Screen/Profile.dart';
// import 'package:ott/View/Screen/Searchscreen.dart';

// class Bottombar extends StatelessWidget {
//   const Bottombar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final BottomNavController controller = Get.put(BottomNavController());

//     final List<Widget> pages = [
//       Homescreen(),
//       Searchscreen(),
//       Profile()
//     ];

//     return PopScope(
//       canPop: false,
//       onPopInvoked: (bool didPop) { 
//         if (didPop) return;
//         if (controller.history.length > 1) {
//           controller.history.removeLast();
//           controller.selectedIndex.value = controller.history.last;
//         } else {
//           SystemNavigator.pop();
//         }
//       },
//       child: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
          
//           return Scaffold(
//             backgroundColor: const Color(0xFF0A0A0A),
//             body: Obx(() => pages[controller.selectedIndex.value]),
//             bottomNavigationBar: Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1A1A1A),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 10,
//                     offset: const Offset(0, -2),
//                   ),
//                 ],
//               ),
//               child: SafeArea(
//                 child: Obx(() => Container(
//                   height: orientation == Orientation.portrait 
//                       ? height * 0.08 
//                       : height * 0.15,
//                   padding: EdgeInsets.symmetric(
//                     horizontal: width * 0.02,
//                     vertical: orientation == Orientation.portrait 
//                         ? height * 0.005 
//                         : height * 0.008,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       _buildNavItem(
//                         icon: Icons.home,
//                         label: 'Home',
//                         index: 0,
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                       ),
//                       _buildNavItem(
//                         icon: Icons.search,
//                         label: 'Search',
//                         index: 1,
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                       ),
//                       _buildNavItem(
//                         icon: Icons.person_outline,
//                         label: 'Profile',
//                         index: 2,
//                         width: width,
//                         height: height,
//                         orientation: orientation,
//                       ),
//                     ],
//                   ),
//                 )),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildNavItem({
//     required IconData icon,
//     required String label,
//     required int index,
//     required double width,
//     required double height,
//     required Orientation orientation,
//   }) {
//     final BottomNavController controller = Get.find<BottomNavController>();
//     bool isSelected = controller.selectedIndex.value == index;
    
//     return GestureDetector(
//       onTap: () {
//         controller.changeTab(index);
//       },
//       child: Container(
//         color: Colors.transparent,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               color: isSelected ? Colors.white : Colors.grey[600],
//               size: orientation == Orientation.portrait 
//                   ? width * 0.065 
//                   : width * 0.035,
//             ),
//             SizedBox(height: orientation == Orientation.portrait 
//                 ? height * 0.004 
//                 : height * 0.008),
//             Text(
//               label,
//               style: TextStyle(
//                 color: isSelected ? Colors.white : Colors.grey[600],
//                 fontSize: orientation == Orientation.portrait 
//                     ? width * 0.032 
//                     : width * 0.018,
//                 fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ott/Controllers/Bottombarcontroller.dart';
import 'package:ott/View/Screen/Homescreen.dart';
import 'package:ott/View/Screen/Profile.dart';
import 'package:ott/View/Screen/Searchscreen.dart';

class Bottombar extends StatelessWidget {
  final int? initialIndex;
  const Bottombar({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    final List<Widget> pages = [
      Homescreen(),
      Searchscreen(),
      Profile()
    ];

    // Set initial index if provided (e.g., from login navigation)
    if (initialIndex != null && initialIndex! >= 0 && initialIndex! < pages.length) {
      controller.selectedIndex.value = initialIndex!;
      // Update history to reflect the initial index
      if (controller.history.isEmpty || controller.history.last != initialIndex!) {
        controller.history.add(initialIndex!);
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) { 
        if (didPop) return;
        if (controller.history.length > 1) {
          controller.history.removeLast();
          controller.selectedIndex.value = controller.history.last;
        } else {
          SystemNavigator.pop();
        }
      },
      child: OrientationBuilder(
        builder: (context, orientation) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;
          
          return Scaffold(
            backgroundColor: const Color(0xFF0A0A0A),
            body: Obx(() => pages[controller.selectedIndex.value]),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: SafeArea(
                child: Obx(() => Container(
                  height: orientation == Orientation.portrait 
                      ? height * 0.08 
                      : height * 0.15,
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.02,
                    vertical: orientation == Orientation.portrait 
                        ? height * 0.005 
                        : height * 0.008,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildNavItem(
                        icon: Icons.home,
                        label: 'Home',
                        index: 0,
                        width: width,
                        height: height,
                        orientation: orientation,
                      ),
                      _buildNavItem(
                        icon: Icons.search,
                        label: 'Search',
                        index: 1,
                        width: width,
                        height: height,
                        orientation: orientation,
                      ),
                      _buildNavItem(
                        icon: Icons.person_outline,
                        label: 'Profile',
                        index: 2,
                        width: width,
                        height: height,
                        orientation: orientation,
                      ),
                    ],
                  ),
                )),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    required double width,
    required double height,
    required Orientation orientation,
  }) {
    final BottomNavController controller = Get.find<BottomNavController>();
    bool isSelected = controller.selectedIndex.value == index;
    
    return GestureDetector(
      onTap: () {
        controller.changeTab(index);
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.grey[600],
              size: orientation == Orientation.portrait 
                  ? width * 0.065 
                  : width * 0.035,
            ),
            SizedBox(height: orientation == Orientation.portrait 
                ? height * 0.004 
                : height * 0.008),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[600],
                fontSize: orientation == Orientation.portrait 
                    ? width * 0.032 
                    : width * 0.018,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}