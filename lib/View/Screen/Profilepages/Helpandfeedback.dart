// import 'package:flutter/material.dart';

// class Helpandfeedback extends StatelessWidget {
//   const Helpandfeedback({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Help & Feedback',
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
//                       'Sahyadri OTT Help',
//                       style: TextStyle(
//                         fontSize: width * 0.06,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     const Text(
//                       'Common Questions:',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.01),
//                     _buildHelpItem('How to stream?', 'Tap on any movie or show to start streaming.', height * 0.01, width),
//                     _buildHelpItem('Subscription issues?', 'Contact support@sahyadriott.com', height * 0.01, width),
//                     _buildHelpItem('App not loading?', 'Check your internet connection and restart the app.', height * 0.01, width),
//                     SizedBox(height: height * 0.03),
//                     const Text(
//                       'Feedback',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.01),
//                     Container(
//                       width: width,
//                       padding: EdgeInsets.all(width * 0.04),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[900],
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: const Text(
//                         'Share your thoughts with us! Email: feedback@sahyadriott.com',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildHelpItem(String title, String desc, double spacing, double width) {
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

// class Helpandfeedback extends StatelessWidget {
//   const Helpandfeedback({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           'Help & Feedback',
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
//                     // Header Section with Icon
//                     Container(
//                       padding: EdgeInsets.all(width * 0.04),
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                           colors: [Colors.red.shade900, Colors.red.shade700],
//                           begin: Alignment.topLeft,
//                           end: Alignment.bottomRight,
//                         ),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Row(
//                         children: [
//                           Icon(
//                             Icons.help_outline_rounded,
//                             color: Colors.white,
//                             size: width * 0.08,
//                           ),
//                           SizedBox(width: width * 0.03),
//                           Expanded(
//                             child: Text(
//                               'Sahyadri OTT Help Center',
//                               style: TextStyle(
//                                 fontSize: width * 0.055,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),

//                     // Common Questions Section
//                     Text(
//                       'Common Questions',
//                       style: TextStyle(
//                         fontSize: width * 0.05,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.015),
//                     _buildHelpCard(
//                       icon: Icons.play_circle_outline,
//                       title: 'How to stream?',
//                       desc: 'Tap on any movie or show to start streaming instantly.',
//                       width: width,
//                     ),
//                     SizedBox(height: height * 0.015),
//                     _buildHelpCard(
//                       icon: Icons.credit_card,
//                       title: 'Subscription issues?',
//                       desc: 'Contact us at support@sahyadriott.com for assistance.',
//                       width: width,
//                     ),
//                     SizedBox(height: height * 0.015),
//                     _buildHelpCard(
//                       icon: Icons.wifi_off_rounded,
//                       title: 'App not loading?',
//                       desc: 'Check your internet connection and restart the app.',
//                       width: width,
//                     ),
//                     SizedBox(height: height * 0.03),

//                     // Feedback Section
//                     Text(
//                       'Share Your Feedback',
//                       style: TextStyle(
//                         fontSize: width * 0.05,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.015),
//                     Container(
//                       width: width,
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
//                                 Icons.feedback_outlined,
//                                 color: Colors.red[400],
//                                 size: width * 0.06,
//                               ),
//                               SizedBox(width: width * 0.03),
//                               Expanded(
//                                 child: Text(
//                                   'We value your opinion!',
//                                   style: TextStyle(
//                                     fontSize: width * 0.045,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: height * 0.01),
//                           Text(
//                             'Share your thoughts, suggestions, or report issues. Your feedback helps us improve.',
//                             style: TextStyle(
//                               fontSize: width * 0.038,
//                               color: Colors.grey[400],
//                               height: 1.4,
//                             ),
//                           ),
//                           SizedBox(height: height * 0.015),
//                           Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.03,
//                               vertical: height * 0.01,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.email_outlined,
//                                   color: Colors.red[400],
//                                   size: width * 0.045,
//                                 ),
//                                 SizedBox(width: width * 0.02),
//                                 Text(
//                                   'feedback@sahyadriott.com',
//                                   style: TextStyle(
//                                     fontSize: width * 0.038,
//                                     color: Colors.red[400],
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
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

//   Widget _buildHelpCard({
//     required IconData icon,
//     required String title,
//     required String desc,
//     required double width,
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
//         crossAxisAlignment: CrossAxisAlignment.start,
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
//               size: width * 0.06,
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
//                 SizedBox(height: width * 0.01),
//                 Text(
//                   desc,
//                   style: TextStyle(
//                     fontSize: width * 0.036,
//                     color: Colors.grey[400],
//                     height: 1.3,
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

class Helpandfeedback extends StatelessWidget {
  const Helpandfeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Help & Feedback',
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
                    // Header Section with Icon
                    Container(
                      padding: EdgeInsets.all(width * 0.04),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.blue.shade900, Colors.blue.shade700],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline_rounded,
                            color: Colors.white,
                            size: width * 0.08,
                          ),
                          SizedBox(width: width * 0.03),
                          Expanded(
                            child: Text(
                              'Sahyadri OTT Help Center',
                              style: TextStyle(
                                fontSize: width * 0.055,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.03),

                    // Common Questions Section
                    Text(
                      'Common Questions',
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    _buildHelpCard(
                      icon: Icons.play_circle_outline,
                      title: 'How to stream?',
                      desc: 'Tap on any movie or show to start streaming instantly.',
                      width: width,
                    ),
                    SizedBox(height: height * 0.015),
                    _buildHelpCard(
                      icon: Icons.credit_card,
                      title: 'Subscription issues?',
                      desc: 'Contact us at support@sahyadriott.com for assistance.',
                      width: width,
                    ),
                    SizedBox(height: height * 0.015),
                    _buildHelpCard(
                      icon: Icons.wifi_off_rounded,
                      title: 'App not loading?',
                      desc: 'Check your internet connection and restart the app.',
                      width: width,
                    ),
                    SizedBox(height: height * 0.03),

                    // Feedback Section
                    Text(
                      'Share Your Feedback',
                      style: TextStyle(
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: height * 0.015),
                    Container(
                      width: width,
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
                                Icons.feedback_outlined,
                                color: Colors.blue[400],
                                size: width * 0.06,
                              ),
                              SizedBox(width: width * 0.03),
                              Expanded(
                                child: Text(
                                  'We value your opinion!',
                                  style: TextStyle(
                                    fontSize: width * 0.045,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Text(
                            'Share your thoughts, suggestions, or report issues. Your feedback helps us improve.',
                            style: TextStyle(
                              fontSize: width * 0.038,
                              color: Colors.grey[400],
                              height: 1.4,
                            ),
                          ),
                          SizedBox(height: height * 0.015),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.03,
                              vertical: height * 0.01,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.blue[400],
                                  size: width * 0.045,
                                ),
                                SizedBox(width: width * 0.02),
                                Text(
                                  'feedback@sahyadriott.com',
                                  style: TextStyle(
                                    fontSize: width * 0.038,
                                    color: Colors.blue[400],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

  Widget _buildHelpCard({
    required IconData icon,
    required String title,
    required String desc,
    required double width,
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              size: width * 0.06,
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
                SizedBox(height: width * 0.01),
                Text(
                  desc,
                  style: TextStyle(
                    fontSize: width * 0.036,
                    color: Colors.grey[400],
                    height: 1.3,
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