// import 'package:flutter/material.dart';

// class Aboutandlegal extends StatelessWidget {
//   const Aboutandlegal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'About & Legal',
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.black,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           return SingleChildScrollView(
//             child: SafeArea(
//               child: Container(
//                 height: orientation == Orientation.portrait ? height * 0.9 : height * 0.8,
//                 width: width,
//                 padding: EdgeInsets.all(width * 0.05),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'About Sahyadri OTT',
//                       style: TextStyle(
//                         fontSize: width * 0.06,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Container(
//                       width: width,
//                       padding: EdgeInsets.all(width * 0.04),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[900],
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: const Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Sahyadri OTT is your gateway to premium Kannada entertainment. Stream movies, shows, and more anytime, anywhere.',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             'Version: 1.0.0 | Developed with ❤️ for Sahyadri fans.',
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     const Text(
//                       'Legal',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.01),
//                     _buildLegalItem('Privacy Policy', 'Read our privacy policy.', height * 0.01, width),
//                     _buildLegalItem('Terms of Service', 'View terms and conditions.', height * 0.01, width),
//                     _buildLegalItem('Contact Us', 'support@sahyadriott.com', height * 0.01, width),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildLegalItem(String title, String desc, double spacing, double width) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: spacing),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w600,
//               color: Colors.white,
//             ),
//           ),
//           Text(
//             desc,
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.grey[300],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class Aboutandlegal extends StatelessWidget {
//   const Aboutandlegal({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'About & Legal',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: OrientationBuilder(
//         builder: (context, orientation) {
//           double height = MediaQuery.of(context).size.height;
//           double width = MediaQuery.of(context).size.width;
//           return SingleChildScrollView(
//             child: SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.all(width * 0.05),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // About Section with Logo/Icon
//                     Container(
//                       width: double.infinity,
//                       padding: EdgeInsets.all(width * 0.05),
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [Colors.red.shade900, Colors.red.shade700],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(width * 0.04),
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.2),
//                               shape: BoxShape.circle,
//                             ),
//                             child: Icon(
//                               Icons.play_circle_filled,
//                               size: width * 0.15,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.02),
//                           Text(
//                             'Sahyadri OTT',
//                             style: TextStyle(
//                               fontSize: width * 0.065,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Your Entertainment Platform',
//                             style: TextStyle(
//                               fontSize: width * 0.04,
//                               color: Colors.white.withOpacity(0.9),
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),

//                     // Description Card
//                     Container(
//                       width: double.infinity,
//                       padding: EdgeInsets.all(width * 0.045),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[900],
//                         borderRadius: BorderRadius.circular(12),
//                         border: Border.all(color: Colors.grey[800]!, width: 1),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.info_outline,
//                                 color: Colors.red[400],
//                                 size: width * 0.055,
//                               ),
//                               SizedBox(width: width * 0.02),
//                               Text(
//                                 'About Us',
//                                 style: TextStyle(
//                                   fontSize: width * 0.045,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.015),
//                           Text(
//                             'Sahyadri OTT brings you the best of entertainment with a vast collection of movies, TV shows, and original content. Experience seamless streaming with high-quality video and audio, accessible anytime and anywhere on your favorite devices.',
//                             style: TextStyle(
//                               fontSize: width * 0.038,
//                               color: Colors.grey[300],
//                               height: 1.5,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.02),
//                           Divider(color: Colors.grey[800], thickness: 1),
//                           SizedBox(height: height * 0.015),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.code,
//                                 color: Colors.grey[500],
//                                 size: width * 0.045,
//                               ),
//                               SizedBox(width: width * 0.02),
//                               Text(
//                                 'Version 1.0.0',
//                                 style: TextStyle(
//                                   fontSize: width * 0.035,
//                                   color: Colors.grey[400],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.devices,
//                                 color: Colors.red[400],
//                                 size: width * 0.045,
//                               ),
//                               SizedBox(width: width * 0.02),
//                               Text(
//                                 'Available on all platforms',
//                                 style: TextStyle(
//                                   fontSize: width * 0.035,
//                                   color: Colors.grey[400],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),

//                     // Legal Section Header
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.gavel_rounded,
//                           color: Colors.white,
//                           size: width * 0.055,
//                         ),
//                         SizedBox(width: width * 0.02),
//                         Text(
//                           'Legal Information',
//                           style: TextStyle(
//                             fontSize: width * 0.05,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: height * 0.015),

//                     // Legal Items
//                     _buildLegalCard(
//                       icon: Icons.privacy_tip_outlined,
//                       title: 'Privacy Policy',
//                       desc: 'Read our privacy policy',
//                       width: width,
//                       height: height,
//                     ),
//                     SizedBox(height: height * 0.015),
//                     _buildLegalCard(
//                       icon: Icons.description_outlined,
//                       title: 'Terms of Service',
//                       desc: 'View terms and conditions',
//                       width: width,
//                       height: height,
//                     ),
//                     SizedBox(height: height * 0.015),
//                     _buildLegalCard(
//                       icon: Icons.contact_support_outlined,
//                       title: 'Contact Us',
//                       desc: 'support@sahyadriott.com',
//                       width: width,
//                       height: height,
//                       isContact: true,
//                     ),
//                     SizedBox(height: height * 0.02),

//                     // Footer
//                     Center(
//                       child: Text(
//                         '© 2025 Sahyadri OTT. All rights reserved.',
//                         style: TextStyle(
//                           fontSize: width * 0.032,
//                           color: Colors.grey[600],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: height * 0.01),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildLegalCard({
//     required IconData icon,
//     required String title,
//     required String desc,
//     required double width,
//     required double height,
//     bool isContact = false,
//   }) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.all(width * 0.04),
//       decoration: BoxDecoration(
//         color: Colors.grey[900],
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey[800]!, width: 1),
//       ),
//       child: Row(
//         children: [
//           Container(
//             padding: EdgeInsets.all(width * 0.025),
//             decoration: BoxDecoration(
//               color: Colors.red.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Icon(
//               icon,
//               color: Colors.red[400],
//               size: width * 0.055,
//             ),
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: width * 0.042,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white,
//                   ),
//                 ),
//                 SizedBox(height: height * 0.005),
//                 Text(
//                   desc,
//                   style: TextStyle(
//                     fontSize: width * 0.036,
//                     color: isContact ? Colors.red[400] : Colors.grey[400],
//                     fontWeight: isContact ? FontWeight.w500 : FontWeight.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Icon(
//             Icons.arrow_forward_ios_rounded,
//             color: Colors.grey[600],
//             size: width * 0.04,
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class Aboutandlegal extends StatelessWidget {
  const Aboutandlegal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'About & Legal',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          double height = MediaQuery.of(context).size.height;
          double width = MediaQuery.of(context).size.width;
          return SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // About Section with Logo/Icon
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(width * 0.05),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade900, Colors.blue.shade700],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(width * 0.04),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.play_circle_filled,
                              size: width * 0.15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            'Sahyadri OTT',
                            style: TextStyle(
                              fontSize: width * 0.065,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Your Entertainment Platform',
                            style: TextStyle(
                              fontSize: width * 0.04,
                              color: Colors.white.withOpacity(0.9),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),

                    // Description Card
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(width * 0.045),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey[800]!, width: 1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.blue[400],
                                size: width * 0.055,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: width * 0.045,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.015),
                          Text(
                            'Sahyadri OTT brings you the best of entertainment with a vast collection of movies, TV shows, and original content. Experience seamless streaming with high-quality video and audio, accessible anytime and anywhere on your favorite devices.',
                            style: TextStyle(
                              fontSize: width * 0.038,
                              color: Colors.grey[300],
                              height: 1.5,
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Divider(color: Colors.grey[800], thickness: 1),
                          SizedBox(height: height * 0.015),
                          Row(
                            children: [
                              Icon(
                                Icons.code,
                                color: Colors.grey[500],
                                size: width * 0.045,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Version 1.0.0',
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              Icon(
                                Icons.devices,
                                color: Colors.blue[400],
                                size: width * 0.045,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                'Available on all platforms',
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),

                    // Legal Section Header
                    Row(
                      children: [
                        Icon(
                          Icons.gavel_rounded,
                          color: Colors.white,
                          size: width * 0.055,
                        ),
                        SizedBox(width: width * 0.02),
                        Text(
                          'Legal Information',
                          style: TextStyle(
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.015),

                    // Legal Items
                    _buildLegalCard(
                      icon: Icons.privacy_tip_outlined,
                      title: 'Privacy Policy',
                      desc: 'Read our privacy policy',
                      width: width,
                      height: height,
                    ),
                    SizedBox(height: height * 0.015),
                    _buildLegalCard(
                      icon: Icons.description_outlined,
                      title: 'Terms of Service',
                      desc: 'View terms and conditions',
                      width: width,
                      height: height,
                    ),
                    SizedBox(height: height * 0.015),
                    _buildLegalCard(
                      icon: Icons.contact_support_outlined,
                      title: 'Contact Us',
                      desc: 'support@sahyadriott.com',
                      width: width,
                      height: height,
                      isContact: true,
                    ),
                    SizedBox(height: height * 0.02),

                    // Footer
                    Center(
                      child: Text(
                        '© 2025 Sahyadri OTT. All rights reserved.',
                        style: TextStyle(
                          fontSize: width * 0.032,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildLegalCard({
    required IconData icon,
    required String title,
    required String desc,
    required double width,
    required double height,
    bool isContact = false,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(width * 0.04),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[800]!, width: 1),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(width * 0.025),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.blue[400],
              size: width * 0.055,
            ),
          ),
          SizedBox(width: width * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: width * 0.042,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: height * 0.005),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: width * 0.036,
                    color: isContact ? Colors.blue[400] : Colors.grey[400],
                    fontWeight: isContact ? FontWeight.w500 : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey[600],
            size: width * 0.04,
          ),
        ],
      ),
    );
  }
}