// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class StreamDownloadController extends GetxController {
//   var downloadOnWifiOnly = true.obs;
//   var streamOnWifiOnly = false.obs;
//   var notifyOnMobileData = true.obs;
//   var useHardwareAcceleration = true.obs;
// }

// class Streamanddownload extends StatelessWidget {
//   const Streamanddownload({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(StreamDownloadController());
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         double height = MediaQuery.of(context).size.height;
//         double width = MediaQuery.of(context).size.width;
        
//         return Scaffold(
//           backgroundColor: Colors.black,
//           appBar: AppBar(
//             backgroundColor: Colors.black,
//             elevation: 0,
//             leading: IconButton(
//               icon: Icon(Icons.arrow_back, color: Colors.white, size: width * 0.06),
//               onPressed: () => Get.back(),
//             ),
//             title: Text(
//               'Stream & download',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: width * 0.055,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedBox(height: height * 0.02),
                
//                 // Streaming quality
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Streaming quality',
//                   subtitle: 'Better; Use highest quality when on Wi-Fi',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Download quality
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Download quality',
//                   subtitle: 'Good',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Manage downloads by device
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Manage downloads by device',
//                   subtitle: 'You have no devices with downloads',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Download audio language
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Download audio language',
//                   subtitle: 'Original language only',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Auto Downloads
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Auto Downloads',
//                   subtitle: 'On',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Cast data usage
//                 _buildListTile(
//                   width: width,
//                   height: height,
//                   title: 'Cast data usage',
//                   subtitle: 'Unlimited',
//                 ),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Download on Wi-Fi only
//                 Obx(() => _buildSwitchTile(
//                   width: width,
//                   height: height,
//                   title: 'Download on Wi-Fi only',
//                   value: controller.downloadOnWifiOnly.value,
//                   onChanged: (val) => controller.downloadOnWifiOnly.value = val,
//                 )),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Stream on Wi-Fi only
//                 Obx(() => _buildSwitchTile(
//                   width: width,
//                   height: height,
//                   title: 'Stream on Wi-Fi only',
//                   value: controller.streamOnWifiOnly.value,
//                   onChanged: (val) => controller.streamOnWifiOnly.value = val,
//                 )),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Notify when watching on mobile data
//                 Obx(() => _buildSwitchTile(
//                   width: width,
//                   height: height,
//                   title: 'Notify when watching on mobile data',
//                   value: controller.notifyOnMobileData.value,
//                   onChanged: (val) => controller.notifyOnMobileData.value = val,
//                 )),
                
//                 Divider(color: Colors.grey[900], thickness: 1, height: 1),
                
//                 // Use hardware acceleration
//                 Obx(() => _buildSwitchTile(
//                   width: width,
//                   height: height,
//                   title: 'Use hardware acceleration',
//                   value: controller.useHardwareAcceleration.value,
//                   onChanged: (val) => controller.useHardwareAcceleration.value = val,
//                 )),
                
//                 SizedBox(height: height * 0.02),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
  
//   Widget _buildListTile({
//     required double width,
//     required double height,
//     required String title,
//     required String subtitle,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.055,
//         vertical: height * 0.02,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: width * 0.042,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           SizedBox(height: height * 0.005),
//           Text(
//             subtitle,
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: width * 0.038,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
  
//   Widget _buildSwitchTile({
//     required double width,
//     required double height,
//     required String title,
//     required bool value,
//     required Function(bool) onChanged,
//   }) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.055,
//         vertical: height * 0.015,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title,
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: width * 0.042,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//           Transform.scale(
//             scale: width * 0.002,
//             child: Switch(
//               value: value,
//               onChanged: onChanged,
//               activeColor: Colors.blue,
//               activeTrackColor: Colors.blue[200],
//               inactiveThumbColor: Colors.grey[400],
//               inactiveTrackColor: Colors.grey[700],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StreamDownloadController extends GetxController {
  var downloadOnWifiOnly = true.obs;
  var streamOnWifiOnly = false.obs;
  var notifyOnMobileData = true.obs;
  var useHardwareAcceleration = true.obs;
}

class Streamanddownload extends StatelessWidget {
  const Streamanddownload({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StreamDownloadController());
    
    return OrientationBuilder(
      builder: (context, orientation) {
        double height = MediaQuery.of(context).size.height;
        double width = MediaQuery.of(context).size.width;
        
        return Scaffold(
          backgroundColor: const Color(0xFF0F0F0F),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.055,
                    vertical: height * 0.02,
                  ),
                  child: Text(
                    'Stream & download',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      SizedBox(height: height * 0.015),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Streaming quality',
                        subtitle: 'Better; Use highest quality when on Wi-Fi',
                      ),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Download quality',
                        subtitle: 'Good',
                      ),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Manage downloads by device',
                        subtitle: 'You have no devices with downloads',
                      ),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Download audio language',
                        subtitle: 'Original language only',
                      ),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Auto Downloads',
                        subtitle: 'On',
                      ),
                      
                      _buildListTile(
                        width: width,
                        height: height,
                        title: 'Cast data usage',
                        subtitle: 'Unlimited',
                      ),
                      
                      Obx(() => _buildSwitchTile(
                        width: width,
                        height: height,
                        title: 'Download on Wi-Fi only',
                        value: controller.downloadOnWifiOnly.value,
                        onChanged: (val) => controller.downloadOnWifiOnly.value = val,
                      )),
                      
                      Obx(() => _buildSwitchTile(
                        width: width,
                        height: height,
                        title: 'Stream on Wi-Fi only',
                        value: controller.streamOnWifiOnly.value,
                        onChanged: (val) => controller.streamOnWifiOnly.value = val,
                      )),
                      
                      Obx(() => _buildSwitchTile(
                        width: width,
                        height: height,
                        title: 'Notify when watching on mobile data',
                        value: controller.notifyOnMobileData.value,
                        onChanged: (val) => controller.notifyOnMobileData.value = val,
                      )),
                      
                      Obx(() => _buildSwitchTile(
                        width: width,
                        height: height,
                        title: 'Use hardware acceleration',
                        value: controller.useHardwareAcceleration.value,
                        onChanged: (val) => controller.useHardwareAcceleration.value = val,
                      )),
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
  
  Widget _buildListTile({
    required double width,
    required double height,
    required String title,
    required String subtitle,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.055,
          vertical: height * 0.018,
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: const Color(0xFF1A1A1A),
              width: 0.5,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.041,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.1,
              ),
            ),
            SizedBox(height: height * 0.004),
            Text(
              subtitle,
              style: TextStyle(
                color: const Color(0xFF999999),
                fontSize: width * 0.036,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSwitchTile({
    required double width,
    required double height,
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.055,
        vertical: height * 0.018,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xFF1A1A1A),
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: width * 0.041,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.1,
              ),
            ),
          ),
          Transform.scale(
            scale: width * 0.0018,
            child: Switch(
              value: value,
              onChanged: onChanged,
              activeColor: const Color(0xFF0A84FF),
              activeTrackColor: const Color(0xFF0A84FF).withOpacity(0.5),
              inactiveThumbColor: const Color(0xFFE5E5E5),
              inactiveTrackColor: const Color(0xFF4A4A4A),
            ),
          ),
        ],
      ),
    );
  }
}