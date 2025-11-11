// // // // // // // Series Detail Screen
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:flutter/widgets.dart';
// // // // // // import 'package:get/get.dart';
// // // // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';

// // // // // // class SeriesDetailScreen extends StatefulWidget {
// // // // // //   final Map<String, dynamic> seriesData;

// // // // // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // // // // //   @override
// // // // // //   State<SeriesDetailScreen> createState() => _SeriesDetailScreenState();
// // // // // // }

// // // // // // class _SeriesDetailScreenState extends State<SeriesDetailScreen> {
// // // // // //   int selectedSeason = 1;

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     double height = MediaQuery.of(context).size.height;
// // // // // //     double width = MediaQuery.of(context).size.width;

// // // // // //     return Scaffold(
// // // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // // //       body: SafeArea(
// // // // // //         child: SingleChildScrollView(
// // // // // //           child: Column(
// // // // // //             crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //             children: [
// // // // // //               // Header with Back Button
// // // // // //               Padding(
// // // // // //                 padding: EdgeInsets.all(width * 0.04),
// // // // // //                 child: Row(
// // // // // //                   children: [
// // // // // //                     GestureDetector(
// // // // // //                       onTap: () => Get.back(),
// // // // // //                       child: Container(
// // // // // //                         padding: EdgeInsets.all(width * 0.02),
// // // // // //                         decoration: BoxDecoration(
// // // // // //                           color: Colors.white.withOpacity(0.1),
// // // // // //                           borderRadius: BorderRadius.circular(8),
// // // // // //                         ),
// // // // // //                         child: Icon(
// // // // // //                           Icons.arrow_back,
// // // // // //                           color: Colors.white,
// // // // // //                           size: width * 0.06,
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     SizedBox(width: width * 0.04),
// // // // // //                     Text(
// // // // // //                       widget.seriesData['title'],
// // // // // //                       style: TextStyle(
// // // // // //                         color: Colors.white,
// // // // // //                         fontSize: width * 0.05,
// // // // // //                         fontWeight: FontWeight.bold,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),

// // // // // //               // Series Banner
// // // // // //               Container(
// // // // // //                 height: height * 0.35,
// // // // // //                 margin: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // // //                 decoration: BoxDecoration(
// // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // //                   image: DecorationImage(
// // // // // //                     image: AssetImage(widget.seriesData['image']),
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
// // // // // //                 ),
// // // // // //               ),

// // // // // //               SizedBox(height: height * 0.03),

// // // // // //               // Series Info
// // // // // //               Padding(
// // // // // //                 padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // // //                 child: Column(
// // // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                   children: [
// // // // // //                     Row(
// // // // // //                       children: [
// // // // // //                         Icon(
// // // // // //                           Icons.star,
// // // // // //                           color: Colors.amber,
// // // // // //                           size: width * 0.05,
// // // // // //                         ),
// // // // // //                         SizedBox(width: width * 0.015),
// // // // // //                         Text(
// // // // // //                           widget.seriesData['rating'],
// // // // // //                           style: TextStyle(
// // // // // //                             color: Colors.white,
// // // // // //                             fontSize: width * 0.04,
// // // // // //                             fontWeight: FontWeight.bold,
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         SizedBox(width: width * 0.04),
// // // // // //                         Text(
// // // // // //                           widget.seriesData['year'],
// // // // // //                           style: TextStyle(
// // // // // //                             color: Colors.grey[400],
// // // // // //                             fontSize: width * 0.04,
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         SizedBox(width: width * 0.04),
// // // // // //                         Container(
// // // // // //                           padding: EdgeInsets.symmetric(
// // // // // //                             horizontal: width * 0.025,
// // // // // //                             vertical: height * 0.008,
// // // // // //                           ),
// // // // // //                           decoration: BoxDecoration(
// // // // // //                             color: Colors.blue,
// // // // // //                             borderRadius: BorderRadius.circular(6),
// // // // // //                           ),
// // // // // //                           child: Text(
// // // // // //                             '${widget.seriesData['seasons']} Season${widget.seriesData['seasons'] > 1 ? 's' : ''}',
// // // // // //                             style: TextStyle(
// // // // // //                               color: Colors.white,
// // // // // //                               fontSize: width * 0.035,
// // // // // //                               fontWeight: FontWeight.w600,
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                     SizedBox(height: height * 0.02),
// // // // // //                     Text(
// // // // // //                       widget.seriesData['description'],
// // // // // //                       style: TextStyle(
// // // // // //                         color: Colors.grey[300],
// // // // // //                         fontSize: width * 0.04,
// // // // // //                         height: 1.5,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     SizedBox(height: height * 0.03),

// // // // // //                     // Action Buttons
// // // // // //                     Row(
// // // // // //                       children: [
// // // // // //                         Expanded(
// // // // // //                           child: ElevatedButton.icon(
// // // // // //                             onPressed: () {
// // // // // //                               Get.to(() => Movieplayerscreen());
// // // // // //                             },
// // // // // //                             icon: Icon(Icons.play_arrow, size: width * 0.06),
// // // // // //                             label: Text(
// // // // // //                               'Play',
// // // // // //                               style: TextStyle(
// // // // // //                                 fontSize: width * 0.045,
// // // // // //                                 fontWeight: FontWeight.bold,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             style: ElevatedButton.styleFrom(
// // // // // //                               backgroundColor: Colors.white,
// // // // // //                               foregroundColor: Colors.black,
// // // // // //                               padding: EdgeInsets.symmetric(vertical: height * 0.018),
// // // // // //                               shape: RoundedRectangleBorder(
// // // // // //                                 borderRadius: BorderRadius.circular(8),
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         SizedBox(width: width * 0.03),
// // // // // //                         Container(
// // // // // //                           decoration: BoxDecoration(
// // // // // //                             color: Colors.grey[800],
// // // // // //                             borderRadius: BorderRadius.circular(8),
// // // // // //                           ),
// // // // // //                           child: IconButton(
// // // // // //                             onPressed: () {},
// // // // // //                             icon: Icon(Icons.add, color: Colors.white, size: width * 0.07),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                         SizedBox(width: width * 0.03),
// // // // // //                         Container(
// // // // // //                           decoration: BoxDecoration(
// // // // // //                             color: Colors.grey[800],
// // // // // //                             borderRadius: BorderRadius.circular(8),
// // // // // //                           ),
// // // // // //                           child: IconButton(
// // // // // //                             onPressed: () {},
// // // // // //                             icon: Icon(Icons.share, color: Colors.white, size: width * 0.06),
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                       ],
// // // // // //                     ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ),

// // // // // //               SizedBox(height: height * 0.04),

// // // // // //               // Season Selector
// // // // // //               if (widget.seriesData['seasons'] > 1)
// // // // // //                 Padding(
// // // // // //                   padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // // //                   child: Container(
// // // // // //                     height: height * 0.06,
// // // // // //                     decoration: BoxDecoration(
// // // // // //                       color: Colors.grey[900],
// // // // // //                       borderRadius: BorderRadius.circular(8),
// // // // // //                     ),
// // // // // //                     child: Row(
// // // // // //                       children: List.generate(
// // // // // //                         widget.seriesData['seasons'],
// // // // // //                         (index) {
// // // // // //                           int season = index + 1;
// // // // // //                           bool isSelected = selectedSeason == season;
// // // // // //                           return Expanded(
// // // // // //                             child: GestureDetector(
// // // // // //                               onTap: () {
// // // // // //                                 setState(() {
// // // // // //                                   selectedSeason = season;
// // // // // //                                 });
// // // // // //                               },
// // // // // //                               child: Container(
// // // // // //                                 margin: EdgeInsets.all(width * 0.01),
// // // // // //                                 decoration: BoxDecoration(
// // // // // //                                   color: isSelected ? Colors.blue : Colors.transparent,
// // // // // //                                   borderRadius: BorderRadius.circular(6),
// // // // // //                                 ),
// // // // // //                                 child: Center(
// // // // // //                                   child: Text(
// // // // // //                                     'Season $season',
// // // // // //                                     style: TextStyle(
// // // // // //                                       color: Colors.white,
// // // // // //                                       fontSize: width * 0.04,
// // // // // //                                       fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           );
// // // // // //                         },
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ),

// // // // // //               SizedBox(height: height * 0.03),

// // // // // //               // Episodes List
// // // // // //               Padding(
// // // // // //                 padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // // //                 child: Text(
// // // // // //                   'Episodes',
// // // // // //                   style: TextStyle(
// // // // // //                     color: Colors.white,
// // // // // //                     fontSize: width * 0.05,
// // // // // //                     fontWeight: FontWeight.bold,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),

// // // // // //               SizedBox(height: height * 0.02),

// // // // // //               ListView.builder(
// // // // // //                 shrinkWrap: true,
// // // // // //                 physics: const NeverScrollableScrollPhysics(),
// // // // // //                 padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // // //                 itemCount: widget.seriesData['episodes'][selectedSeason - 1]['episodeList'].length,
// // // // // //                 itemBuilder: (context, index) {
// // // // // //                   final episode = widget.seriesData['episodes'][selectedSeason - 1]['episodeList'][index];
// // // // // //                   return GestureDetector(
// // // // // //                     onTap: () {
// // // // // //                       Get.to(() => Movieplayerscreen());
// // // // // //                     },
// // // // // //                     child: Container(
// // // // // //                       margin: EdgeInsets.only(bottom: height * 0.02),
// // // // // //                       child: Row(
// // // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                         children: [
// // // // // //                           // Episode Thumbnail
// // // // // //                           Container(
// // // // // //                             width: width * 0.4,
// // // // // //                             height: height * 0.12,
// // // // // //                             decoration: BoxDecoration(
// // // // // //                               borderRadius: BorderRadius.circular(8),
// // // // // //                               image: DecorationImage(
// // // // // //                                 image: AssetImage(episode['thumbnail']),
// // // // // //                                 fit: BoxFit.cover,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             child: Stack(
// // // // // //                               children: [
// // // // // //                                 Container(
// // // // // //                                   decoration: BoxDecoration(
// // // // // //                                     borderRadius: BorderRadius.circular(8),
// // // // // //                                     color: Colors.black.withOpacity(0.3),
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                                 Center(
// // // // // //                                   child: Container(
// // // // // //                                     padding: EdgeInsets.all(width * 0.02),
// // // // // //                                     decoration: BoxDecoration(
// // // // // //                                       color: Colors.black.withOpacity(0.6),
// // // // // //                                       shape: BoxShape.circle,
// // // // // //                                     ),
// // // // // //                                     child: Icon(
// // // // // //                                       Icons.play_arrow,
// // // // // //                                       color: Colors.white,
// // // // // //                                       size: width * 0.08,
// // // // // //                                     ),
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ],
// // // // // //                             ),
// // // // // //                           ),

// // // // // //                           SizedBox(width: width * 0.04),

// // // // // //                           // Episode Info
// // // // // //                           Expanded(
// // // // // //                             child: Column(
// // // // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // // // //                               children: [
// // // // // //                                 Text(
// // // // // //                                   '${episode['number']}. ${episode['title']}',
// // // // // //                                   style: TextStyle(
// // // // // //                                     color: Colors.white,
// // // // // //                                     fontSize: width * 0.042,
// // // // // //                                     fontWeight: FontWeight.w600,
// // // // // //                                   ),
// // // // // //                                   maxLines: 2,
// // // // // //                                   overflow: TextOverflow.ellipsis,
// // // // // //                                 ),
// // // // // //                                 SizedBox(height: height * 0.008),
// // // // // //                                 Text(
// // // // // //                                   episode['duration'],
// // // // // //                                   style: TextStyle(
// // // // // //                                     color: Colors.grey[400],
// // // // // //                                     fontSize: width * 0.035,
// // // // // //                                   ),
// // // // // //                                 ),
// // // // // //                               ],
// // // // // //                             ),
// // // // // //                           ),

// // // // // //                           // Download Icon
// // // // // //                           Icon(
// // // // // //                             Icons.download_outlined,
// // // // // //                             color: Colors.white,
// // // // // //                             size: width * 0.06,
// // // // // //                           ),
// // // // // //                         ],
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                   );
// // // // // //                 },
// // // // // //               ),

// // // // // //               SizedBox(height: height * 0.05),
// // // // // //             ],
// // // // // //           ),
// // // // // //         ),
// // // // // //         )
// // // // // //       );
// // // // // //     }
// // // // // //   }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:get/get.dart';
// // // // // import 'package:http/http.dart' as http;
// // // // // import 'dart:convert';
// // // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // // Controller for Series Detail
// // // // // class SeriesDetailController extends GetxController {
// // // // //   RxBool isLoading = false.obs;
// // // // //   RxList<Video> episodes = <Video>[].obs;
// // // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // // //   late SeriesResponse seriesData;

// // // // //   void initSeriesData(SeriesResponse data) {
// // // // //     seriesData = data;
// // // // //     if (data.videos != null && data.videos!.isNotEmpty) {
// // // // //       // Sort episodes by release date (newest first) and episode sequence
// // // // //       episodes.value = List.from(data.videos!)
// // // // //         ..sort((a, b) {
// // // // //           // First sort by release date
// // // // //           if (a.releaseDate != null && b.releaseDate != null) {
// // // // //             final dateComparison = DateTime.parse(b.releaseDate!)
// // // // //                 .compareTo(DateTime.parse(a.releaseDate!));
// // // // //             if (dateComparison != 0) return dateComparison;
// // // // //           }
// // // // //           // Then by episode sequence
// // // // //           if (a.episodeSeq != null && b.episodeSeq != null) {
// // // // //             return a.episodeSeq!.compareTo(b.episodeSeq!);
// // // // //           }
// // // // //           return 0;
// // // // //         });
// // // // //     }
// // // // //   }

// // // // //   Future<String?> getToken() async {
// // // // //     try {
// // // // //       final prefs = await SharedPreferences.getInstance();
// // // // //       return prefs.getString('auth_token');
// // // // //     } catch (e) {
// // // // //       print('Error getting token: $e');
// // // // //       return null;
// // // // //     }
// // // // //   }

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

// // // // //   String formatDuration(int? minutes) {
// // // // //     if (minutes == null) return 'N/A';
// // // // //     if (minutes < 60) return '${minutes}m';
// // // // //     final hours = minutes ~/ 60;
// // // // //     final mins = minutes % 60;
// // // // //     return '${hours}h ${mins}m';
// // // // //   }

// // // // //   String formatDate(String? dateString) {
// // // // //     if (dateString == null) return 'N/A';
// // // // //     try {
// // // // //       final date = DateTime.parse(dateString);
// // // // //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// // // // //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// // // // //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// // // // //     } catch (e) {
// // // // //       return 'N/A';
// // // // //     }
// // // // //   }
// // // // // }

// // // // // class SeriesDetailScreen extends StatelessWidget {
// // // // //   final SeriesResponse seriesData;

// // // // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// // // // //     controller.initSeriesData(seriesData);

// // // // //     double height = MediaQuery.of(context).size.height;
// // // // //     double width = MediaQuery.of(context).size.width;

// // // // //     return Scaffold(
// // // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // // //       body: SafeArea(
// // // // //         child: Obx(() {
// // // // //           if (controller.isLoading.value) {
// // // // //             return Center(
// // // // //               child: CircularProgressIndicator(
// // // // //                 color: const Color(0xFF00A8E8),
// // // // //               ),
// // // // //             );
// // // // //           }

// // // // //           return CustomScrollView(
// // // // //             slivers: [
// // // // //               // App Bar with Back Button
// // // // //               SliverAppBar(
// // // // //                 expandedHeight: height * 0.35,
// // // // //                 floating: false,
// // // // //                 pinned: true,
// // // // //                 backgroundColor: const Color(0xFF0A0A0A),
// // // // //                 leading: GestureDetector(
// // // // //                   onTap: () => Get.back(),
// // // // //                   child: Container(
// // // // //                     margin: EdgeInsets.all(width * 0.02),
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.black.withOpacity(0.5),
// // // // //                       borderRadius: BorderRadius.circular(8),
// // // // //                     ),
// // // // //                     child: Icon(
// // // // //                       Icons.arrow_back,
// // // // //                       color: Colors.white,
// // // // //                       size: width * 0.06,
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 flexibleSpace: FlexibleSpaceBar(
// // // // //                   background: Stack(
// // // // //                     fit: StackFit.expand,
// // // // //                     children: [
// // // // //                       // Series Thumbnail
// // // // //                       if (seriesData.seriesThumbUrl != null && 
// // // // //                           seriesData.seriesThumbUrl!.isNotEmpty)
// // // // //                         Image.network(
// // // // //                           seriesData.seriesThumbUrl!,
// // // // //                           fit: BoxFit.cover,
// // // // //                           errorBuilder: (context, error, stackTrace) {
// // // // //                             return _buildPlaceholder();
// // // // //                           },
// // // // //                           loadingBuilder: (context, child, loadingProgress) {
// // // // //                             if (loadingProgress == null) return child;
// // // // //                             return Center(
// // // // //                               child: CircularProgressIndicator(
// // // // //                                 color: const Color(0xFF00A8E8),
// // // // //                               ),
// // // // //                             );
// // // // //                           },
// // // // //                         )
// // // // //                       else
// // // // //                         _buildPlaceholder(),
                      
// // // // //                       // Gradient Overlay
// // // // //                       Container(
// // // // //                         decoration: BoxDecoration(
// // // // //                           gradient: LinearGradient(
// // // // //                             begin: Alignment.topCenter,
// // // // //                             end: Alignment.bottomCenter,
// // // // //                             colors: [
// // // // //                               Colors.transparent,
// // // // //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// // // // //                               const Color(0xFF0A0A0A),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ),

// // // // //               // Series Info and Episodes
// // // // //               SliverToBoxAdapter(
// // // // //                 child: Column(
// // // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                   children: [
// // // // //                     // Series Title and Info
// // // // //                     Padding(
// // // // //                       padding: EdgeInsets.all(width * 0.04),
// // // // //                       child: Column(
// // // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                         children: [
// // // // //                           Text(
// // // // //                             seriesData.episodeName ?? 'Unknown Series',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.white,
// // // // //                               fontSize: width * 0.07,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                             ),
// // // // //                           ),
// // // // //                           SizedBox(height: height * 0.015),
                          
// // // // //                           // Series Stats
// // // // //                           Wrap(
// // // // //                             spacing: width * 0.03,
// // // // //                             runSpacing: height * 0.01,
// // // // //                             children: [
// // // // //                               if (controller.episodes.isNotEmpty && 
// // // // //                                   controller.episodes[0].imdbRating != null)
// // // // //                                 _buildStatChip(
// // // // //                                   Icons.star,
// // // // //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// // // // //                                   Colors.amber,
// // // // //                                   width,
// // // // //                                 ),
// // // // //                               if (controller.episodes.isNotEmpty && 
// // // // //                                   controller.episodes[0].releaseDate != null)
// // // // //                                 _buildStatChip(
// // // // //                                   Icons.calendar_today,
// // // // //                                   DateTime.parse(controller.episodes[0].releaseDate!)
// // // // //                                       .year.toString(),
// // // // //                                   Colors.grey,
// // // // //                                   width,
// // // // //                                 ),
// // // // //                               _buildStatChip(
// // // // //                                 Icons.video_library,
// // // // //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// // // // //                                 Colors.blue,
// // // // //                                 width,
// // // // //                               ),
// // // // //                               if (controller.episodes.isNotEmpty && 
// // // // //                                   controller.episodes[0].quality != null)
// // // // //                                 _buildStatChip(
// // // // //                                   Icons.hd,
// // // // //                                   controller.episodes[0].quality!,
// // // // //                                   Colors.purple,
// // // // //                                   width,
// // // // //                                 ),
// // // // //                             ],
// // // // //                           ),
                          
// // // // //                           SizedBox(height: height * 0.02),
                          
// // // // //                           // Description
// // // // //                           if (controller.episodes.isNotEmpty && 
// // // // //                               controller.episodes[0].description != null)
// // // // //                             Text(
// // // // //                               controller.episodes[0].description!,
// // // // //                               style: TextStyle(
// // // // //                                 color: Colors.grey[300],
// // // // //                                 fontSize: width * 0.04,
// // // // //                                 height: 1.5,
// // // // //                               ),
// // // // //                             ),
                          
// // // // //                           SizedBox(height: height * 0.02),
                          
// // // // //                           // Genre and Languages
// // // // //                           if (controller.episodes.isNotEmpty)
// // // // //                             Column(
// // // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                               children: [
// // // // //                                 if (controller.episodes[0].genre != null) ...[
// // // // //                                   Row(
// // // // //                                     children: [
// // // // //                                       Icon(
// // // // //                                         Icons.category,
// // // // //                                         color: Colors.grey[400],
// // // // //                                         size: width * 0.045,
// // // // //                                       ),
// // // // //                                       SizedBox(width: width * 0.02),
// // // // //                                       Text(
// // // // //                                         controller.episodes[0].genre!,
// // // // //                                         style: TextStyle(
// // // // //                                           color: Colors.grey[400],
// // // // //                                           fontSize: width * 0.038,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                   SizedBox(height: height * 0.01),
// // // // //                                 ],
// // // // //                                 if (controller.episodes[0].languages != null && 
// // // // //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// // // // //                                   Row(
// // // // //                                     children: [
// // // // //                                       Icon(
// // // // //                                         Icons.language,
// // // // //                                         color: Colors.grey[400],
// // // // //                                         size: width * 0.045,
// // // // //                                       ),
// // // // //                                       SizedBox(width: width * 0.02),
// // // // //                                       Text(
// // // // //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// // // // //                                         style: TextStyle(
// // // // //                                           color: Colors.grey[400],
// // // // //                                           fontSize: width * 0.038,
// // // // //                                         ),
// // // // //                                       ),
// // // // //                                     ],
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ],
// // // // //                             ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),

// // // // //                     SizedBox(height: height * 0.02),

// // // // //                     // Episodes Section Header
// // // // //                     Padding(
// // // // //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // //                       child: Row(
// // // // //                         children: [
// // // // //                           Text(
// // // // //                             'Episodes',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.white,
// // // // //                               fontSize: width * 0.05,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                             ),
// // // // //                           ),
// // // // //                           const Spacer(),
// // // // //                           Text(
// // // // //                             '${controller.episodes.length} total',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.grey[400],
// // // // //                               fontSize: width * 0.038,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),

// // // // //                     SizedBox(height: height * 0.02),

// // // // //                     // Episodes List
// // // // //                     if (controller.episodes.isEmpty)
// // // // //                       Center(
// // // // //                         child: Padding(
// // // // //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // // //                           child: Text(
// // // // //                             'No episodes available',
// // // // //                             style: TextStyle(
// // // // //                               color: Colors.grey[400],
// // // // //                               fontSize: width * 0.045,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       )
// // // // //                     else
// // // // //                       ListView.builder(
// // // // //                         shrinkWrap: true,
// // // // //                         physics: const NeverScrollableScrollPhysics(),
// // // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // // //                         itemCount: controller.episodes.length,
// // // // //                         itemBuilder: (context, index) {
// // // // //                           final episode = controller.episodes[index];
// // // // //                           return _buildEpisodeCard(
// // // // //                             episode, 
// // // // //                             index, 
// // // // //                             width, 
// // // // //                             height,
// // // // //                             controller,
// // // // //                           );
// // // // //                         },
// // // // //                       ),

// // // // //                     SizedBox(height: height * 0.05),
// // // // //                   ],
// // // // //                 ),
// // // // //               ),
// // // // //             ],
// // // // //           );
// // // // //         }),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// // // // //     return Container(
// // // // //       padding: EdgeInsets.symmetric(
// // // // //         horizontal: width * 0.025,
// // // // //         vertical: width * 0.015,
// // // // //       ),
// // // // //       decoration: BoxDecoration(
// // // // //         color: color.withOpacity(0.15),
// // // // //         borderRadius: BorderRadius.circular(8),
// // // // //         border: Border.all(
// // // // //           color: color.withOpacity(0.3),
// // // // //           width: 1,
// // // // //         ),
// // // // //       ),
// // // // //       child: Row(
// // // // //         mainAxisSize: MainAxisSize.min,
// // // // //         children: [
// // // // //           Icon(icon, color: color, size: width * 0.04),
// // // // //           SizedBox(width: width * 0.015),
// // // // //           Text(
// // // // //             text,
// // // // //             style: TextStyle(
// // // // //               color: color,
// // // // //               fontSize: width * 0.035,
// // // // //               fontWeight: FontWeight.w600,
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildEpisodeCard(
// // // // //     Video episode, 
// // // // //     int index, 
// // // // //     double width, 
// // // // //     double height,
// // // // //     SeriesDetailController controller,
// // // // //   ) {
// // // // //     // Build thumbnail URL
// // // // //     String? thumbnailUrl;
// // // // //     if (episode.thumbKey != null && episode.thumbKey!.isNotEmpty) {
// // // // //       thumbnailUrl = 'http://103.180.212.106:9000/ott-vods/${episode.thumbKey}';
// // // // //     }

// // // // //     return GestureDetector(
// // // // //       onTap: () {
// // // // //         // Navigate to player - you can add your video player navigation here
// // // // //         // Get.to(() => Movieplayerscreen(videoData: episode));
// // // // //         controller.showToast('Episode ${index + 1} selected');
// // // // //       },
// // // // //       child: Container(
// // // // //         margin: EdgeInsets.only(bottom: height * 0.02),
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.grey[900]?.withOpacity(0.3),
// // // // //           borderRadius: BorderRadius.circular(12),
// // // // //         ),
// // // // //         child: Column(
// // // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // // //           children: [
// // // // //             // Episode Thumbnail
// // // // //             Stack(
// // // // //               children: [
// // // // //                 Container(
// // // // //                   height: height * 0.22,
// // // // //                   decoration: BoxDecoration(
// // // // //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // // //                     color: Colors.grey[800],
// // // // //                   ),
// // // // //                   child: thumbnailUrl != null
// // // // //                       ? ClipRRect(
// // // // //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // // //                           child: Image.network(
// // // // //                             thumbnailUrl,
// // // // //                             width: double.infinity,
// // // // //                             height: double.infinity,
// // // // //                             fit: BoxFit.cover,
// // // // //                             errorBuilder: (context, error, stackTrace) {
// // // // //                               return _buildEpisodePlaceholder(width);
// // // // //                             },
// // // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // // //                               if (loadingProgress == null) return child;
// // // // //                               return Center(
// // // // //                                 child: CircularProgressIndicator(
// // // // //                                   color: const Color(0xFF00A8E8),
// // // // //                                 ),
// // // // //                               );
// // // // //                             },
// // // // //                           ),
// // // // //                         )
// // // // //                       : _buildEpisodePlaceholder(width),
// // // // //                 ),
                
// // // // //                 // Play Button Overlay
// // // // //                 Positioned.fill(
// // // // //                   child: Container(
// // // // //                     decoration: BoxDecoration(
// // // // //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // // //                       gradient: LinearGradient(
// // // // //                         begin: Alignment.topCenter,
// // // // //                         end: Alignment.bottomCenter,
// // // // //                         colors: [
// // // // //                           Colors.transparent,
// // // // //                           Colors.black.withOpacity(0.6),
// // // // //                         ],
// // // // //                       ),
// // // // //                     ),
// // // // //                     child: Center(
// // // // //                       child: Container(
// // // // //                         padding: EdgeInsets.all(width * 0.03),
// // // // //                         decoration: BoxDecoration(
// // // // //                           color: Colors.white.withOpacity(0.3),
// // // // //                           shape: BoxShape.circle,
// // // // //                         ),
// // // // //                         child: Icon(
// // // // //                           Icons.play_arrow,
// // // // //                           color: Colors.white,
// // // // //                           size: width * 0.1,
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
                
// // // // //                 // Episode Number Badge
// // // // //                 Positioned(
// // // // //                   top: width * 0.03,
// // // // //                   left: width * 0.03,
// // // // //                   child: Container(
// // // // //                     padding: EdgeInsets.symmetric(
// // // // //                       horizontal: width * 0.025,
// // // // //                       vertical: width * 0.015,
// // // // //                     ),
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.black.withOpacity(0.7),
// // // // //                       borderRadius: BorderRadius.circular(6),
// // // // //                     ),
// // // // //                     child: Text(
// // // // //                       'EP ${episode.episodeSeq ?? index + 1}',
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.white,
// // // // //                         fontSize: width * 0.035,
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
                
// // // // //                 // Duration Badge
// // // // //                 if (episode.runtimeMinutes != null)
// // // // //                   Positioned(
// // // // //                     top: width * 0.03,
// // // // //                     right: width * 0.03,
// // // // //                     child: Container(
// // // // //                       padding: EdgeInsets.symmetric(
// // // // //                         horizontal: width * 0.025,
// // // // //                         vertical: width * 0.015,
// // // // //                       ),
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.black.withOpacity(0.7),
// // // // //                         borderRadius: BorderRadius.circular(6),
// // // // //                       ),
// // // // //                       child: Text(
// // // // //                         controller.formatDuration(episode.runtimeMinutes),
// // // // //                         style: TextStyle(
// // // // //                           color: Colors.white,
// // // // //                           fontSize: width * 0.035,
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //               ],
// // // // //             ),
            
// // // // //             // Episode Info
// // // // //             Padding(
// // // // //               padding: EdgeInsets.all(width * 0.04),
// // // // //               child: Column(
// // // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                 children: [
// // // // //                   Text(
// // // // //                     episode.videoTitle ?? 'Episode ${index + 1}',
// // // // //                     style: TextStyle(
// // // // //                       color: Colors.white,
// // // // //                       fontSize: width * 0.045,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                     ),
// // // // //                     maxLines: 2,
// // // // //                     overflow: TextOverflow.ellipsis,
// // // // //                   ),
// // // // //                   SizedBox(height: height * 0.01),
                  
// // // // //                   Row(
// // // // //                     children: [
// // // // //                       if (episode.releaseDate != null) ...[
// // // // //                         Icon(
// // // // //                           Icons.calendar_today,
// // // // //                           color: Colors.grey[400],
// // // // //                           size: width * 0.035,
// // // // //                         ),
// // // // //                         SizedBox(width: width * 0.015),
// // // // //                         Text(
// // // // //                           controller.formatDate(episode.releaseDate),
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.grey[400],
// // // // //                             fontSize: width * 0.035,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                       if (episode.imdbRating != null) ...[
// // // // //                         SizedBox(width: width * 0.03),
// // // // //                         Icon(
// // // // //                           Icons.star,
// // // // //                           color: Colors.amber,
// // // // //                           size: width * 0.04,
// // // // //                         ),
// // // // //                         SizedBox(width: width * 0.01),
// // // // //                         Text(
// // // // //                           episode.imdbRating!.toStringAsFixed(1),
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.white,
// // // // //                             fontSize: width * 0.035,
// // // // //                             fontWeight: FontWeight.w600,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ],
// // // // //                   ),
                  
// // // // //                   if (episode.description != null) ...[
// // // // //                     SizedBox(height: height * 0.01),
// // // // //                     Text(
// // // // //                       episode.description!,
// // // // //                       style: TextStyle(
// // // // //                         color: Colors.grey[400],
// // // // //                         fontSize: width * 0.037,
// // // // //                         height: 1.4,
// // // // //                       ),
// // // // //                       maxLines: 2,
// // // // //                       overflow: TextOverflow.ellipsis,
// // // // //                     ),
// // // // //                   ],
// // // // //                 ],
// // // // //               ),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildPlaceholder() {
// // // // //     return Container(
// // // // //       color: Colors.grey[900],
// // // // //       child: Center(
// // // // //         child: Icon(
// // // // //           Icons.movie,
// // // // //           color: Colors.grey[700],
// // // // //           size: 80,
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildEpisodePlaceholder(double width) {
// // // // //     return Container(
// // // // //       decoration: BoxDecoration(
// // // // //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // // //         color: Colors.grey[800],
// // // // //       ),
// // // // //       child: Center(
// // // // //         child: Icon(
// // // // //           Icons.video_library,
// // // // //           color: Colors.grey[600],
// // // // //           size: width * 0.15,
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // // // Models (same as before - include these in your project)
// // // // // class SeriesResponse {
// // // // //   final String? episodeName;
// // // // //   final int? totalEpisodes;
// // // // //   final String? latestRelease;
// // // // //   final String? seriesPosterKey;
// // // // //   final String? seriesThumbKey;
// // // // //   final String? seriesPosterUrl;
// // // // //   final String? seriesThumbUrl;
// // // // //   final List<Video>? videos;

// // // // //   SeriesResponse({
// // // // //     this.episodeName,
// // // // //     this.totalEpisodes,
// // // // //     this.latestRelease,
// // // // //     this.seriesPosterKey,
// // // // //     this.seriesThumbKey,
// // // // //     this.seriesPosterUrl,
// // // // //     this.seriesThumbUrl,
// // // // //     this.videos,
// // // // //   });

// // // // //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// // // // //     return SeriesResponse(
// // // // //       episodeName: json['episodeName']?.toString(),
// // // // //       totalEpisodes: json['totalEpisodes'] != null 
// // // // //           ? int.tryParse(json['totalEpisodes'].toString()) 
// // // // //           : null,
// // // // //       latestRelease: json['latestRelease']?.toString(),
// // // // //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// // // // //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// // // // //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// // // // //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// // // // //       videos: json['videos'] != null
// // // // //           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
// // // // //           : null,
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class Video {
// // // // //   final String? id;
// // // // //   final String? episodeName;
// // // // //   final String? videoTitle;
// // // // //   final String? description;
// // // // //   final List<String>? actors;
// // // // //   final List<String>? writers;
// // // // //   final double? imdbRating;
// // // // //   final String? releaseDate;
// // // // //   final List<String>? countries;
// // // // //   final String? genre;
// // // // //   final List<String>? languages;
// // // // //   final String? videoType;
// // // // //   final int? runtimeMinutes;
// // // // //   final String? quality;
// // // // //   final String? posterKey;
// // // // //   final String? thumbKey;
// // // // //   final int? episodeSeq;
// // // // //   final String? episodeCode;
// // // // //   final List<String>? resolutions;
// // // // //   final Mp4Keys? mp4Keys;

// // // // //   Video({
// // // // //     this.id,
// // // // //     this.episodeName,
// // // // //     this.videoTitle,
// // // // //     this.description,
// // // // //     this.actors,
// // // // //     this.writers,
// // // // //     this.imdbRating,
// // // // //     this.releaseDate,
// // // // //     this.countries,
// // // // //     this.genre,
// // // // //     this.languages,
// // // // //     this.videoType,
// // // // //     this.runtimeMinutes,
// // // // //     this.quality,
// // // // //     this.posterKey,
// // // // //     this.thumbKey,
// // // // //     this.episodeSeq,
// // // // //     this.episodeCode,
// // // // //     this.resolutions,
// // // // //     this.mp4Keys,
// // // // //   });

// // // // //   factory Video.fromJson(Map<String, dynamic> json) {
// // // // //     return Video(
// // // // //       id: json['_id']?.toString(),
// // // // //       episodeName: json['episodeName']?.toString(),
// // // // //       videoTitle: json['videoTitle']?.toString(),
// // // // //       description: json['description']?.toString(),
// // // // //       actors: json['actors'] != null
// // // // //           ? List<String>.from(json['actors'].map((x) => x.toString()))
// // // // //           : null,
// // // // //       writers: json['writers'] != null
// // // // //           ? List<String>.from(json['writers'].map((x) => x.toString()))
// // // // //           : null,
// // // // //       imdbRating: json['imdbRating'] != null
// // // // //           ? double.tryParse(json['imdbRating'].toString())
// // // // //           : null,
// // // // //       releaseDate: json['releaseDate']?.toString(),
// // // // //       countries: json['countries'] != null
// // // // //           ? List<String>.from(json['countries'].map((x) => x.toString()))
// // // // //           : null,
// // // // //       genre: json['genre']?.toString(),
// // // // //       languages: json['languages'] != null
// // // // //           ? List<String>.from(json['languages'].map((x) => x.toString()))
// // // // //           : null,
// // // // //       videoType: json['videoType']?.toString(),
// // // // //       runtimeMinutes: json['runtimeMinutes'] != null
// // // // //           ? int.tryParse(json['runtimeMinutes'].toString())
// // // // //           : null,
// // // // //       quality: json['quality']?.toString(),
// // // // //       posterKey: json['posterKey']?.toString(),
// // // // //       thumbKey: json['thumbKey']?.toString(),
// // // // //       episodeSeq: json['episodeSeq'] != null
// // // // //           ? int.tryParse(json['episodeSeq'].toString())
// // // // //           : null,
// // // // //       episodeCode: json['episodeCode']?.toString(),
// // // // //       resolutions: json['resolutions'] != null
// // // // //           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
// // // // //           : null,
// // // // //       mp4Keys: json['mp4Keys'] != null
// // // // //           ? Mp4Keys.fromJson(json['mp4Keys'])
// // // // //           : null,
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class Mp4Keys {
// // // // //   final String? quality360p;
// // // // //   final String? quality480p;
// // // // //   final String? quality720p;

// // // // //   Mp4Keys({
// // // // //     this.quality360p,
// // // // //     this.quality480p,
// // // // //     this.quality720p,
// // // // //   });

// // // // //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// // // // //     return Mp4Keys(
// // // // //       quality360p: json['360p']?.toString(),
// // // // //       quality480p: json['480p']?.toString(),
// // // // //       quality720p: json['720p']?.toString(),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // Controller for Series Detail
// // // // class SeriesDetailController extends GetxController {
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<Video> episodes = <Video>[].obs;
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // //   late SeriesResponse seriesData;

// // // //   void initSeriesData(SeriesResponse data) {
// // // //     seriesData = data;
// // // //     if (data.videos != null && data.videos!.isNotEmpty) {
// // // //       // Sort episodes by release date (newest first) and episode sequence
// // // //       episodes.value = List.from(data.videos!)
// // // //         ..sort((a, b) {
// // // //           // First sort by release date
// // // //           if (a.releaseDate != null && b.releaseDate != null) {
// // // //             final dateComparison = DateTime.parse(b.releaseDate!)
// // // //                 .compareTo(DateTime.parse(a.releaseDate!));
// // // //             if (dateComparison != 0) return dateComparison;
// // // //           }
// // // //           // Then by episode sequence
// // // //           if (a.episodeSeq != null && b.episodeSeq != null) {
// // // //             return a.episodeSeq!.compareTo(b.episodeSeq!);
// // // //           }
// // // //           return 0;
// // // //         });
// // // //     }
// // // //   }

// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

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

// // // //   String formatDuration(int? minutes) {
// // // //     if (minutes == null) return 'N/A';
// // // //     if (minutes < 60) return '${minutes}m';
// // // //     final hours = minutes ~/ 60;
// // // //     final mins = minutes % 60;
// // // //     return '${hours}h ${mins}m';
// // // //   }

// // // //   String formatDate(String? dateString) {
// // // //     if (dateString == null) return 'N/A';
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// // // //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// // // //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }
// // // // }

// // // // class SeriesDetailScreen extends StatelessWidget {
// // // //   final SeriesResponse seriesData;

// // // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// // // //     controller.initSeriesData(seriesData);

// // // //     double height = MediaQuery.of(context).size.height;
// // // //     double width = MediaQuery.of(context).size.width;

// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: SafeArea(
// // // //         child: Obx(() {
// // // //           if (controller.isLoading.value) {
// // // //             return Center(
// // // //               child: CircularProgressIndicator(
// // // //                 color: const Color(0xFF00A8E8),
// // // //               ),
// // // //             );
// // // //           }

// // // //           return CustomScrollView(
// // // //             slivers: [
// // // //               // App Bar with Back Button
// // // //               SliverAppBar(
// // // //                 expandedHeight: height * 0.35,
// // // //                 floating: false,
// // // //                 pinned: true,
// // // //                 backgroundColor: const Color(0xFF0A0A0A),
// // // //                 leading: GestureDetector(
// // // //                   onTap: () => Get.back(),
// // // //                   child: Container(
// // // //                     margin: EdgeInsets.all(width * 0.02),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.5),
// // // //                       borderRadius: BorderRadius.circular(8),
// // // //                     ),
// // // //                     child: Icon(
// // // //                       Icons.arrow_back,
// // // //                       color: Colors.white,
// // // //                       size: width * 0.06,
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 flexibleSpace: FlexibleSpaceBar(
// // // //                   background: Stack(
// // // //                     fit: StackFit.expand,
// // // //                     children: [
// // // //                       // Series Thumbnail
// // // //                       if (seriesData.seriesThumbUrl != null && 
// // // //                           seriesData.seriesThumbUrl!.isNotEmpty)
// // // //                         Image.network(
// // // //                           seriesData.seriesThumbUrl!,
// // // //                           fit: BoxFit.cover,
// // // //                           errorBuilder: (context, error, stackTrace) {
// // // //                             return _buildPlaceholder();
// // // //                           },
// // // //                           loadingBuilder: (context, child, loadingProgress) {
// // // //                             if (loadingProgress == null) return child;
// // // //                             return Center(
// // // //                               child: CircularProgressIndicator(
// // // //                                 color: const Color(0xFF00A8E8),
// // // //                               ),
// // // //                             );
// // // //                           },
// // // //                         )
// // // //                       else
// // // //                         _buildPlaceholder(),
                      
// // // //                       // Gradient Overlay
// // // //                       Container(
// // // //                         decoration: BoxDecoration(
// // // //                           gradient: LinearGradient(
// // // //                             begin: Alignment.topCenter,
// // // //                             end: Alignment.bottomCenter,
// // // //                             colors: [
// // // //                               Colors.transparent,
// // // //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// // // //                               const Color(0xFF0A0A0A),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),

// // // //               // Series Info and Episodes
// // // //               SliverToBoxAdapter(
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     // Series Title and Info
// // // //                     Padding(
// // // //                       padding: EdgeInsets.all(width * 0.04),
// // // //                       child: Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: [
// // // //                           Text(
// // // //                             seriesData.episodeName ?? 'Unknown Series',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.07,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           SizedBox(height: height * 0.015),
                          
// // // //                           // Series Stats
// // // //                           Wrap(
// // // //                             spacing: width * 0.03,
// // // //                             runSpacing: height * 0.01,
// // // //                             children: [
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].imdbRating != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.star,
// // // //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// // // //                                   Colors.amber,
// // // //                                   width,
// // // //                                 ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].releaseDate != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.calendar_today,
// // // //                                   DateTime.parse(controller.episodes[0].releaseDate!)
// // // //                                       .year.toString(),
// // // //                                   Colors.grey,
// // // //                                   width,
// // // //                                 ),
// // // //                               _buildStatChip(
// // // //                                 Icons.video_library,
// // // //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// // // //                                 Colors.blue,
// // // //                                 width,
// // // //                               ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].quality != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.hd,
// // // //                                   controller.episodes[0].quality!,
// // // //                                   Colors.purple,
// // // //                                   width,
// // // //                                 ),
// // // //                             ],
// // // //                           ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Description
// // // //                           if (controller.episodes.isNotEmpty && 
// // // //                               controller.episodes[0].description != null)
// // // //                             Text(
// // // //                               controller.episodes[0].description!,
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * 0.04,
// // // //                                 height: 1.5,
// // // //                               ),
// // // //                             ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Genre and Languages
// // // //                           if (controller.episodes.isNotEmpty)
// // // //                             Column(
// // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // //                               children: [
// // // //                                 if (controller.episodes[0].genre != null) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.category,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].genre!,
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                   SizedBox(height: height * 0.01),
// // // //                                 ],
// // // //                                 if (controller.episodes[0].languages != null && 
// // // //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.language,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ],
// // // //                               ],
// // // //                             ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes Section Header
// // // //                     Padding(
// // // //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                       child: Row(
// // // //                         children: [
// // // //                           Text(
// // // //                             'Episodes',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.05,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           const Spacer(),
// // // //                           Text(
// // // //                             '${controller.episodes.length} total',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.038,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes List
// // // //                     if (controller.episodes.isEmpty)
// // // //                       Center(
// // // //                         child: Padding(
// // // //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //                           child: Text(
// // // //                             'No episodes available',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.045,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       )
// // // //                     else
// // // //                       ListView.builder(
// // // //                         shrinkWrap: true,
// // // //                         physics: const NeverScrollableScrollPhysics(),
// // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                         itemCount: controller.episodes.length,
// // // //                         itemBuilder: (context, index) {
// // // //                           final episode = controller.episodes[index];
// // // //                           return _buildEpisodeCard(
// // // //                             episode, 
// // // //                             index, 
// // // //                             width, 
// // // //                             height,
// // // //                             controller,
// // // //                           );
// // // //                         },
// // // //                       ),

// // // //                     SizedBox(height: height * 0.05),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           );
// // // //         }),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * 0.025,
// // // //         vertical: width * 0.015,
// // // //       ),
// // // //       decoration: BoxDecoration(
// // // //         color: color.withOpacity(0.15),
// // // //         borderRadius: BorderRadius.circular(8),
// // // //         border: Border.all(
// // // //           color: color.withOpacity(0.3),
// // // //           width: 1,
// // // //         ),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisSize: MainAxisSize.min,
// // // //         children: [
// // // //           Icon(icon, color: color, size: width * 0.04),
// // // //           SizedBox(width: width * 0.015),
// // // //           Text(
// // // //             text,
// // // //             style: TextStyle(
// // // //               color: color,
// // // //               fontSize: width * 0.035,
// // // //               fontWeight: FontWeight.w600,
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodeCard(
// // // //     Video episode, 
// // // //     int index, 
// // // //     double width, 
// // // //     double height,
// // // //     SeriesDetailController controller,
// // // //   ) {
// // // //     // Build thumbnail URL
// // // //     String? thumbnailUrl;
// // // //     if (episode.thumbKey != null && episode.thumbKey!.isNotEmpty) {
// // // //       thumbnailUrl = 'http://103.180.212.106:9000/ott-vods/${episode.thumbKey}';
// // // //     }

// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         if (episode.id != null) {
// // // //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// // // //         } else {
// // // //           controller.showToast('Invalid episode ID', isError: true);
// // // //         }
// // // //       },
// // // //       child: Container(
// // // //         margin: EdgeInsets.only(bottom: height * 0.02),
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.grey[900]?.withOpacity(0.3),
// // // //           borderRadius: BorderRadius.circular(12),
// // // //         ),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             // Episode Thumbnail
// // // //             Stack(
// // // //               children: [
// // // //                 Container(
// // // //                   height: height * 0.22,
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                     color: Colors.grey[800],
// // // //                   ),
// // // //                   child: thumbnailUrl != null
// // // //                       ? ClipRRect(
// // // //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                           child: Image.network(
// // // //                             thumbnailUrl,
// // // //                             width: double.infinity,
// // // //                             height: double.infinity,
// // // //                             fit: BoxFit.cover,
// // // //                             errorBuilder: (context, error, stackTrace) {
// // // //                               return _buildEpisodePlaceholder(width);
// // // //                             },
// // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // //                               if (loadingProgress == null) return child;
// // // //                               return Center(
// // // //                                 child: CircularProgressIndicator(
// // // //                                   color: const Color(0xFF00A8E8),
// // // //                                 ),
// // // //                               );
// // // //                             },
// // // //                           ),
// // // //                         )
// // // //                       : _buildEpisodePlaceholder(width),
// // // //                 ),
                
// // // //                 // Play Button Overlay
// // // //                 Positioned.fill(
// // // //                   child: Container(
// // // //                     decoration: BoxDecoration(
// // // //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.6),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                     child: Center(
// // // //                       child: Container(
// // // //                         padding: EdgeInsets.all(width * 0.03),
// // // //                         decoration: BoxDecoration(
// // // //                           color: Colors.white.withOpacity(0.3),
// // // //                           shape: BoxShape.circle,
// // // //                         ),
// // // //                         child: Icon(
// // // //                           Icons.play_arrow,
// // // //                           color: Colors.white,
// // // //                           size: width * 0.1,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Episode Number Badge
// // // //                 Positioned(
// // // //                   top: width * 0.03,
// // // //                   left: width * 0.03,
// // // //                   child: Container(
// // // //                     padding: EdgeInsets.symmetric(
// // // //                       horizontal: width * 0.025,
// // // //                       vertical: width * 0.015,
// // // //                     ),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.7),
// // // //                       borderRadius: BorderRadius.circular(6),
// // // //                     ),
// // // //                     child: Text(
// // // //                       'EP ${episode.episodeSeq ?? index + 1}',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: width * 0.035,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Duration Badge
// // // //                 if (episode.runtimeMinutes != null)
// // // //                   Positioned(
// // // //                     top: width * 0.03,
// // // //                     right: width * 0.03,
// // // //                     child: Container(
// // // //                       padding: EdgeInsets.symmetric(
// // // //                         horizontal: width * 0.025,
// // // //                         vertical: width * 0.015,
// // // //                       ),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.black.withOpacity(0.7),
// // // //                         borderRadius: BorderRadius.circular(6),
// // // //                       ),
// // // //                       child: Text(
// // // //                         controller.formatDuration(episode.runtimeMinutes),
// // // //                         style: TextStyle(
// // // //                           color: Colors.white,
// // // //                           fontSize: width * 0.035,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //               ],
// // // //             ),
            
// // // //             // Episode Info
// // // //             Padding(
// // // //               padding: EdgeInsets.all(width * 0.04),
// // // //               child: Column(
// // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                 children: [
// // // //                   Text(
// // // //                     episode.videoTitle ?? 'Episode ${index + 1}',
// // // //                     style: TextStyle(
// // // //                       color: Colors.white,
// // // //                       fontSize: width * 0.045,
// // // //                       fontWeight: FontWeight.bold,
// // // //                     ),
// // // //                     maxLines: 2,
// // // //                     overflow: TextOverflow.ellipsis,
// // // //                   ),
// // // //                   SizedBox(height: height * 0.01),
                  
// // // //                   Row(
// // // //                     children: [
// // // //                       if (episode.releaseDate != null) ...[
// // // //                         Icon(
// // // //                           Icons.calendar_today,
// // // //                           color: Colors.grey[400],
// // // //                           size: width * 0.035,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.015),
// // // //                         Text(
// // // //                           controller.formatDate(episode.releaseDate),
// // // //                           style: TextStyle(
// // // //                             color: Colors.grey[400],
// // // //                             fontSize: width * 0.035,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                       if (episode.imdbRating != null) ...[
// // // //                         SizedBox(width: width * 0.03),
// // // //                         Icon(
// // // //                           Icons.star,
// // // //                           color: Colors.amber,
// // // //                           size: width * 0.04,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.01),
// // // //                         Text(
// // // //                           episode.imdbRating!.toStringAsFixed(1),
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: width * 0.035,
// // // //                             fontWeight: FontWeight.w600,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ],
// // // //                   ),
                  
// // // //                   if (episode.description != null) ...[
// // // //                     SizedBox(height: height * 0.01),
// // // //                     Text(
// // // //                       episode.description!,
// // // //                       style: TextStyle(
// // // //                         color: Colors.grey[400],
// // // //                         fontSize: width * 0.037,
// // // //                         height: 1.4,
// // // //                       ),
// // // //                       maxLines: 2,
// // // //                       overflow: TextOverflow.ellipsis,
// // // //                     ),
// // // //                   ],
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildPlaceholder() {
// // // //     return Container(
// // // //       color: Colors.grey[900],
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: 80,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodePlaceholder(double width) {
// // // //     return Container(
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //         color: Colors.grey[800],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.video_library,
// // // //           color: Colors.grey[600],
// // // //           size: width * 0.15,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // Models (updated for 'id' field)
// // // // class SeriesResponse {
// // // //   final String? episodeName;
// // // //   final int? totalEpisodes;
// // // //   final String? latestRelease;
// // // //   final String? seriesPosterKey;
// // // //   final String? seriesThumbKey;
// // // //   final String? seriesPosterUrl;
// // // //   final String? seriesThumbUrl;
// // // //   final List<Video>? videos;

// // // //   SeriesResponse({
// // // //     this.episodeName,
// // // //     this.totalEpisodes,
// // // //     this.latestRelease,
// // // //     this.seriesPosterKey,
// // // //     this.seriesThumbKey,
// // // //     this.seriesPosterUrl,
// // // //     this.seriesThumbUrl,
// // // //     this.videos,
// // // //   });

// // // //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// // // //     return SeriesResponse(
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       totalEpisodes: json['totalEpisodes'] != null 
// // // //           ? int.tryParse(json['totalEpisodes'].toString()) 
// // // //           : null,
// // // //       latestRelease: json['latestRelease']?.toString(),
// // // //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// // // //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// // // //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// // // //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// // // //       videos: json['videos'] != null
// // // //           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Video {
// // // //   final String? id;
// // // //   final String? episodeName;
// // // //   final String? videoTitle;
// // // //   final String? description;
// // // //   final List<String>? actors;
// // // //   final List<String>? writers;
// // // //   final double? imdbRating;
// // // //   final String? releaseDate;
// // // //   final List<String>? countries;
// // // //   final String? genre;
// // // //   final List<String>? languages;
// // // //   final String? videoType;
// // // //   final int? runtimeMinutes;
// // // //   final String? quality;
// // // //   final String? posterKey;
// // // //   final String? thumbKey;
// // // //   final int? episodeSeq;
// // // //   final String? episodeCode;
// // // //   final List<String>? resolutions;
// // // //   final Mp4Keys? mp4Keys;

// // // //   Video({
// // // //     this.id,
// // // //     this.episodeName,
// // // //     this.videoTitle,
// // // //     this.description,
// // // //     this.actors,
// // // //     this.writers,
// // // //     this.imdbRating,
// // // //     this.releaseDate,
// // // //     this.countries,
// // // //     this.genre,
// // // //     this.languages,
// // // //     this.videoType,
// // // //     this.runtimeMinutes,
// // // //     this.quality,
// // // //     this.posterKey,
// // // //     this.thumbKey,
// // // //     this.episodeSeq,
// // // //     this.episodeCode,
// // // //     this.resolutions,
// // // //     this.mp4Keys,
// // // //   });

// // // //   factory Video.fromJson(Map<String, dynamic> json) {
// // // //     return Video(
// // // //       id: json['id']?.toString(), // Updated to use 'id' instead of '_id'
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       videoTitle: json['videoTitle']?.toString(),
// // // //       description: json['description']?.toString(),
// // // //       actors: json['actors'] != null
// // // //           ? List<String>.from(json['actors'].map((x) => x.toString()))
// // // //           : null,
// // // //       writers: json['writers'] != null
// // // //           ? List<String>.from(json['writers'].map((x) => x.toString()))
// // // //           : null,
// // // //       imdbRating: json['imdbRating'] != null
// // // //           ? double.tryParse(json['imdbRating'].toString())
// // // //           : null,
// // // //       releaseDate: json['releaseDate']?.toString(),
// // // //       countries: json['countries'] != null
// // // //           ? List<String>.from(json['countries'].map((x) => x.toString()))
// // // //           : null,
// // // //       genre: json['genre']?.toString(),
// // // //       languages: json['languages'] != null
// // // //           ? List<String>.from(json['languages'].map((x) => x.toString()))
// // // //           : null,
// // // //       videoType: json['videoType']?.toString(),
// // // //       runtimeMinutes: json['runtimeMinutes'] != null
// // // //           ? int.tryParse(json['runtimeMinutes'].toString())
// // // //           : null,
// // // //       quality: json['quality']?.toString(),
// // // //       posterKey: json['posterKey']?.toString(),
// // // //       thumbKey: json['thumbKey']?.toString(),
// // // //       episodeSeq: json['episodeSeq'] != null
// // // //           ? int.tryParse(json['episodeSeq'].toString())
// // // //           : null,
// // // //       episodeCode: json['episodeCode']?.toString(),
// // // //       resolutions: json['resolutions'] != null
// // // //           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
// // // //           : null,
// // // //       mp4Keys: json['mp4Keys'] != null
// // // //           ? Mp4Keys.fromJson(json['mp4Keys'])
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Mp4Keys {
// // // //   final String? quality360p;
// // // //   final String? quality480p;
// // // //   final String? quality720p;

// // // //   Mp4Keys({
// // // //     this.quality360p,
// // // //     this.quality480p,
// // // //     this.quality720p,
// // // //   });

// // // //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// // // //     return Mp4Keys(
// // // //       quality360p: json['360p']?.toString(),
// // // //       quality480p: json['480p']?.toString(),
// // // //       quality720p: json['720p']?.toString(),
// // // //     );
// // // //   }
// // // // }



// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // Controller for Series Detail
// // // // class SeriesDetailController extends GetxController {
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<Video> episodes = <Video>[].obs;
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // //   late SeriesResponse seriesData;

// // // //   void initSeriesData(SeriesResponse data) {
// // // //     seriesData = data;
// // // //     if (data.videos != null && data.videos!.isNotEmpty) {
// // // //       // Sort episodes by release date (newest first) and episode sequence
// // // //       episodes.value = List.from(data.videos!)
// // // //         ..sort((a, b) {
// // // //           // First sort by release date
// // // //           if (a.releaseDate != null && b.releaseDate != null) {
// // // //             final dateComparison = DateTime.parse(b.releaseDate!)
// // // //                 .compareTo(DateTime.parse(a.releaseDate!));
// // // //             if (dateComparison != 0) return dateComparison;
// // // //           }
// // // //           // Then by episode sequence
// // // //           if (a.episodeSeq != null && b.episodeSeq != null) {
// // // //             return a.episodeSeq!.compareTo(b.episodeSeq!);
// // // //           }
// // // //           return 0;
// // // //         });
// // // //     }
// // // //   }

// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

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

// // // //   String formatDuration(int? minutes) {
// // // //     if (minutes == null) return 'N/A';
// // // //     if (minutes < 60) return '${minutes}m';
// // // //     final hours = minutes ~/ 60;
// // // //     final mins = minutes % 60;
// // // //     return '${hours}h ${mins}m';
// // // //   }

// // // //   String formatDate(String? dateString) {
// // // //     if (dateString == null) return 'N/A';
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// // // //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// // // //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }
// // // // }

// // // // class SeriesDetailScreen extends StatelessWidget {
// // // //   final SeriesResponse seriesData;

// // // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// // // //     controller.initSeriesData(seriesData);

// // // //     double height = MediaQuery.of(context).size.height;
// // // //     double width = MediaQuery.of(context).size.width;

// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: SafeArea(
// // // //         child: Obx(() {
// // // //           if (controller.isLoading.value) {
// // // //             return Center(
// // // //               child: CircularProgressIndicator(
// // // //                 color: const Color(0xFF00A8E8),
// // // //               ),
// // // //             );
// // // //           }

// // // //           return CustomScrollView(
// // // //             slivers: [
// // // //               // App Bar with Back Button
// // // //               SliverAppBar(
// // // //                 expandedHeight: height * 0.35,
// // // //                 floating: false,
// // // //                 pinned: true,
// // // //                 backgroundColor: const Color(0xFF0A0A0A),
// // // //                 leading: GestureDetector(
// // // //                   onTap: () => Get.back(),
// // // //                   child: Container(
// // // //                     margin: EdgeInsets.all(width * 0.02),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.5),
// // // //                       borderRadius: BorderRadius.circular(8),
// // // //                     ),
// // // //                     child: Icon(
// // // //                       Icons.arrow_back,
// // // //                       color: Colors.white,
// // // //                       size: width * 0.06,
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 flexibleSpace: FlexibleSpaceBar(
// // // //                   background: Stack(
// // // //                     fit: StackFit.expand,
// // // //                     children: [
// // // //                       // Series Thumbnail
// // // //                       if (seriesData.seriesThumbUrl != null && 
// // // //                           seriesData.seriesThumbUrl!.isNotEmpty)
// // // //                         Image.network(
// // // //                           seriesData.seriesThumbUrl!,
// // // //                           fit: BoxFit.cover,
// // // //                           errorBuilder: (context, error, stackTrace) {
// // // //                             return _buildPlaceholder();
// // // //                           },
// // // //                           loadingBuilder: (context, child, loadingProgress) {
// // // //                             if (loadingProgress == null) return child;
// // // //                             return Center(
// // // //                               child: CircularProgressIndicator(
// // // //                                 color: const Color(0xFF00A8E8),
// // // //                               ),
// // // //                             );
// // // //                           },
// // // //                         )
// // // //                       else
// // // //                         _buildPlaceholder(),
                      
// // // //                       // Gradient Overlay
// // // //                       Container(
// // // //                         decoration: BoxDecoration(
// // // //                           gradient: LinearGradient(
// // // //                             begin: Alignment.topCenter,
// // // //                             end: Alignment.bottomCenter,
// // // //                             colors: [
// // // //                               Colors.transparent,
// // // //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// // // //                               const Color(0xFF0A0A0A),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),

// // // //               // Series Info and Episodes
// // // //               SliverToBoxAdapter(
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     // Series Title and Info
// // // //                     Padding(
// // // //                       padding: EdgeInsets.all(width * 0.04),
// // // //                       child: Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: [
// // // //                           Text(
// // // //                             seriesData.episodeName ?? 'Unknown Series',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.07,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           SizedBox(height: height * 0.015),
                          
// // // //                           // Series Stats
// // // //                           Wrap(
// // // //                             spacing: width * 0.03,
// // // //                             runSpacing: height * 0.01,
// // // //                             children: [
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].imdbRating != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.star,
// // // //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// // // //                                   Colors.amber,
// // // //                                   width,
// // // //                                 ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].releaseDate != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.calendar_today,
// // // //                                   DateTime.parse(controller.episodes[0].releaseDate!)
// // // //                                       .year.toString(),
// // // //                                   Colors.grey,
// // // //                                   width,
// // // //                                 ),
// // // //                               _buildStatChip(
// // // //                                 Icons.video_library,
// // // //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// // // //                                 Colors.blue,
// // // //                                 width,
// // // //                               ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].quality != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.hd,
// // // //                                   controller.episodes[0].quality!,
// // // //                                   Colors.purple,
// // // //                                   width,
// // // //                                 ),
// // // //                             ],
// // // //                           ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Description
// // // //                           if (controller.episodes.isNotEmpty && 
// // // //                               controller.episodes[0].description != null)
// // // //                             Text(
// // // //                               controller.episodes[0].description!,
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * 0.04,
// // // //                                 height: 1.5,
// // // //                               ),
// // // //                             ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Genre and Languages
// // // //                           if (controller.episodes.isNotEmpty)
// // // //                             Column(
// // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // //                               children: [
// // // //                                 if (controller.episodes[0].genre != null) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.category,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].genre!,
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                   SizedBox(height: height * 0.01),
// // // //                                 ],
// // // //                                 if (controller.episodes[0].languages != null && 
// // // //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.language,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ],
// // // //                               ],
// // // //                             ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes Section Header
// // // //                     Padding(
// // // //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                       child: Row(
// // // //                         children: [
// // // //                           Text(
// // // //                             'Episodes',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.05,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           const Spacer(),
// // // //                           Text(
// // // //                             '${controller.episodes.length} total',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.038,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes List
// // // //                     if (controller.episodes.isEmpty)
// // // //                       Center(
// // // //                         child: Padding(
// // // //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //                           child: Text(
// // // //                             'No episodes available',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.045,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       )
// // // //                     else
// // // //                       ListView.builder(
// // // //                         shrinkWrap: true,
// // // //                         physics: const NeverScrollableScrollPhysics(),
// // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                         itemCount: controller.episodes.length,
// // // //                         itemBuilder: (context, index) {
// // // //                           final episode = controller.episodes[index];
// // // //                           return _buildEpisodeCard(
// // // //                             episode, 
// // // //                             index, 
// // // //                             width, 
// // // //                             height,
// // // //                             controller,
// // // //                           );
// // // //                         },
// // // //                       ),

// // // //                     SizedBox(height: height * 0.05),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           );
// // // //         }),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * 0.025,
// // // //         vertical: width * 0.015,
// // // //       ),
// // // //       decoration: BoxDecoration(
// // // //         color: color.withOpacity(0.15),
// // // //         borderRadius: BorderRadius.circular(8),
// // // //         border: Border.all(
// // // //           color: color.withOpacity(0.3),
// // // //           width: 1,
// // // //         ),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisSize: MainAxisSize.min,
// // // //         children: [
// // // //           Icon(icon, color: color, size: width * 0.04),
// // // //           SizedBox(width: width * 0.015),
// // // //           Text(
// // // //             text,
// // // //             style: TextStyle(
// // // //               color: color,
// // // //               fontSize: width * 0.035,
// // // //               fontWeight: FontWeight.w600,
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodeCard(
// // // //     Video episode, 
// // // //     int index, 
// // // //     double width, 
// // // //     double height,
// // // //     SeriesDetailController controller,
// // // //   ) {
// // // //     // Build thumbnail URL
// // // //     String? thumbnailUrl;
// // // //     if (episode.thumbKey != null && episode.thumbKey!.isNotEmpty) {
// // // //       thumbnailUrl = 'http://103.180.212.106:9000/ott-vods/${episode.thumbKey}';
// // // //     }

// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         if (episode.id != null) {
// // // //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// // // //         } else {
// // // //           controller.showToast('Invalid episode ID', isError: true);
// // // //         }
// // // //       },
// // // //       child: Container(
// // // //         margin: EdgeInsets.only(bottom: height * 0.02),
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.grey[900]?.withOpacity(0.3),
// // // //           borderRadius: BorderRadius.circular(12),
// // // //         ),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             // Episode Thumbnail
// // // //             Stack(
// // // //               children: [
// // // //                 Container(
// // // //                   height: height * 0.22,
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                     color: Colors.grey[800],
// // // //                   ),
// // // //                   child: thumbnailUrl != null
// // // //                       ? ClipRRect(
// // // //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                           child: Image.network(
// // // //                             thumbnailUrl,
// // // //                             width: double.infinity,
// // // //                             height: double.infinity,
// // // //                             fit: BoxFit.cover,
// // // //                             errorBuilder: (context, error, stackTrace) {
// // // //                               return _buildEpisodePlaceholder(width);
// // // //                             },
// // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // //                               if (loadingProgress == null) return child;
// // // //                               return Center(
// // // //                                 child: CircularProgressIndicator(
// // // //                                   color: const Color(0xFF00A8E8),
// // // //                                 ),
// // // //                               );
// // // //                             },
// // // //                           ),
// // // //                         )
// // // //                       : _buildEpisodePlaceholder(width),
// // // //                 ),
                
// // // //                 // Play Button Overlay
// // // //                 Positioned.fill(
// // // //                   child: Container(
// // // //                     decoration: BoxDecoration(
// // // //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.6),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                     child: Center(
// // // //                       child: Container(
// // // //                         padding: EdgeInsets.all(width * 0.03),
// // // //                         decoration: BoxDecoration(
// // // //                           color: Colors.white.withOpacity(0.3),
// // // //                           shape: BoxShape.circle,
// // // //                         ),
// // // //                         child: Icon(
// // // //                           Icons.play_arrow,
// // // //                           color: Colors.white,
// // // //                           size: width * 0.1,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Episode Number Badge
// // // //                 Positioned(
// // // //                   top: width * 0.03,
// // // //                   left: width * 0.03,
// // // //                   child: Container(
// // // //                     padding: EdgeInsets.symmetric(
// // // //                       horizontal: width * 0.025,
// // // //                       vertical: width * 0.015,
// // // //                     ),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.7),
// // // //                       borderRadius: BorderRadius.circular(6),
// // // //                     ),
// // // //                     child: Text(
// // // //                       'EP ${episode.episodeSeq ?? index + 1}',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: width * 0.035,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Duration Badge
// // // //                 if (episode.runtimeMinutes != null)
// // // //                   Positioned(
// // // //                     top: width * 0.03,
// // // //                     right: width * 0.03,
// // // //                     child: Container(
// // // //                       padding: EdgeInsets.symmetric(
// // // //                         horizontal: width * 0.025,
// // // //                         vertical: width * 0.015,
// // // //                       ),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.black.withOpacity(0.7),
// // // //                         borderRadius: BorderRadius.circular(6),
// // // //                       ),
// // // //                       child: Text(
// // // //                         controller.formatDuration(episode.runtimeMinutes),
// // // //                         style: TextStyle(
// // // //                           color: Colors.white,
// // // //                           fontSize: width * 0.035,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //               ],
// // // //             ),
            
// // // //             // Episode Info
// // // //             Padding(
// // // //               padding: EdgeInsets.all(width * 0.04),
// // // //               child: Column(
// // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                 children: [
// // // //                   Text(
// // // //                     episode.videoTitle ?? 'Episode ${index + 1}',
// // // //                     style: TextStyle(
// // // //                       color: Colors.white,
// // // //                       fontSize: width * 0.045,
// // // //                       fontWeight: FontWeight.bold,
// // // //                     ),
// // // //                     maxLines: 2,
// // // //                     overflow: TextOverflow.ellipsis,
// // // //                   ),
// // // //                   SizedBox(height: height * 0.01),
                  
// // // //                   Row(
// // // //                     children: [
// // // //                       if (episode.releaseDate != null) ...[
// // // //                         Icon(
// // // //                           Icons.calendar_today,
// // // //                           color: Colors.grey[400],
// // // //                           size: width * 0.035,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.015),
// // // //                         Text(
// // // //                           controller.formatDate(episode.releaseDate),
// // // //                           style: TextStyle(
// // // //                             color: Colors.grey[400],
// // // //                             fontSize: width * 0.035,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                       if (episode.imdbRating != null) ...[
// // // //                         SizedBox(width: width * 0.03),
// // // //                         Icon(
// // // //                           Icons.star,
// // // //                           color: Colors.amber,
// // // //                           size: width * 0.04,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.01),
// // // //                         Text(
// // // //                           episode.imdbRating!.toStringAsFixed(1),
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: width * 0.035,
// // // //                             fontWeight: FontWeight.w600,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ],
// // // //                   ),
                  
// // // //                   if (episode.description != null) ...[
// // // //                     SizedBox(height: height * 0.01),
// // // //                     Text(
// // // //                       episode.description!,
// // // //                       style: TextStyle(
// // // //                         color: Colors.grey[400],
// // // //                         fontSize: width * 0.037,
// // // //                         height: 1.4,
// // // //                       ),
// // // //                       maxLines: 2,
// // // //                       overflow: TextOverflow.ellipsis,
// // // //                     ),
// // // //                   ],
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildPlaceholder() {
// // // //     return Container(
// // // //       color: Colors.grey[900],
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: 80,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodePlaceholder(double width) {
// // // //     return Container(
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //         color: Colors.grey[800],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.video_library,
// // // //           color: Colors.grey[600],
// // // //           size: width * 0.15,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // Models (updated for '_id' field in Video)
// // // // class SeriesResponse {
// // // //   final String? episodeName;
// // // //   final int? totalEpisodes;
// // // //   final String? latestRelease;
// // // //   final String? seriesPosterKey;
// // // //   final String? seriesThumbKey;
// // // //   final String? seriesPosterUrl;
// // // //   final String? seriesThumbUrl;
// // // //   final List<Video>? videos;

// // // //   SeriesResponse({
// // // //     this.episodeName,
// // // //     this.totalEpisodes,
// // // //     this.latestRelease,
// // // //     this.seriesPosterKey,
// // // //     this.seriesThumbKey,
// // // //     this.seriesPosterUrl,
// // // //     this.seriesThumbUrl,
// // // //     this.videos,
// // // //   });

// // // //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// // // //     return SeriesResponse(
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       totalEpisodes: json['totalEpisodes'] != null 
// // // //           ? int.tryParse(json['totalEpisodes'].toString()) 
// // // //           : null,
// // // //       latestRelease: json['latestRelease']?.toString(),
// // // //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// // // //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// // // //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// // // //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// // // //       videos: json['videos'] != null
// // // //           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Video {
// // // //   final String? id;
// // // //   final String? episodeName;
// // // //   final String? videoTitle;
// // // //   final String? description;
// // // //   final List<String>? actors;
// // // //   final List<String>? writers;
// // // //   final double? imdbRating;
// // // //   final String? releaseDate;
// // // //   final List<String>? countries;
// // // //   final String? genre;
// // // //   final List<String>? languages;
// // // //   final String? videoType;
// // // //   final int? runtimeMinutes;
// // // //   final String? quality;
// // // //   final String? posterKey;
// // // //   final String? thumbKey;
// // // //   final int? episodeSeq;
// // // //   final String? episodeCode;
// // // //   final List<String>? resolutions;
// // // //   final Mp4Keys? mp4Keys;

// // // //   Video({
// // // //     this.id,
// // // //     this.episodeName,
// // // //     this.videoTitle,
// // // //     this.description,
// // // //     this.actors,
// // // //     this.writers,
// // // //     this.imdbRating,
// // // //     this.releaseDate,
// // // //     this.countries,
// // // //     this.genre,
// // // //     this.languages,
// // // //     this.videoType,
// // // //     this.runtimeMinutes,
// // // //     this.quality,
// // // //     this.posterKey,
// // // //     this.thumbKey,
// // // //     this.episodeSeq,
// // // //     this.episodeCode,
// // // //     this.resolutions,
// // // //     this.mp4Keys,
// // // //   });

// // // //   factory Video.fromJson(Map<String, dynamic> json) {
// // // //     return Video(
// // // //       id: json['_id']?.toString(), // Updated to use '_id' for episodes list
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       videoTitle: json['videoTitle']?.toString(),
// // // //       description: json['description']?.toString(),
// // // //       actors: json['actors'] != null
// // // //           ? List<String>.from(json['actors'].map((x) => x.toString()))
// // // //           : null,
// // // //       writers: json['writers'] != null
// // // //           ? List<String>.from(json['writers'].map((x) => x.toString()))
// // // //           : null,
// // // //       imdbRating: json['imdbRating'] != null
// // // //           ? double.tryParse(json['imdbRating'].toString())
// // // //           : null,
// // // //       releaseDate: json['releaseDate']?.toString(),
// // // //       countries: json['countries'] != null
// // // //           ? List<String>.from(json['countries'].map((x) => x.toString()))
// // // //           : null,
// // // //       genre: json['genre']?.toString(),
// // // //       languages: json['languages'] != null
// // // //           ? List<String>.from(json['languages'].map((x) => x.toString()))
// // // //           : null,
// // // //       videoType: json['videoType']?.toString(),
// // // //       runtimeMinutes: json['runtimeMinutes'] != null
// // // //           ? int.tryParse(json['runtimeMinutes'].toString())
// // // //           : null,
// // // //       quality: json['quality']?.toString(),
// // // //       posterKey: json['posterKey']?.toString(),
// // // //       thumbKey: json['thumbKey']?.toString(),
// // // //       episodeSeq: json['episodeSeq'] != null
// // // //           ? int.tryParse(json['episodeSeq'].toString())
// // // //           : null,
// // // //       episodeCode: json['episodeCode']?.toString(),
// // // //       resolutions: json['resolutions'] != null
// // // //           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
// // // //           : null,
// // // //       mp4Keys: json['mp4Keys'] != null
// // // //           ? Mp4Keys.fromJson(json['mp4Keys'])
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Mp4Keys {
// // // //   final String? quality360p;
// // // //   final String? quality480p;
// // // //   final String? quality720p;

// // // //   Mp4Keys({
// // // //     this.quality360p,
// // // //     this.quality480p,
// // // //     this.quality720p,
// // // //   });

// // // //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// // // //     return Mp4Keys(
// // // //       quality360p: json['360p']?.toString(),
// // // //       quality480p: json['480p']?.toString(),
// // // //       quality720p: json['720p']?.toString(),
// // // //     );
// // // //   }
// // // // }

// // // // import 'package:flutter/material.dart';
// // // // import 'package:get/get.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // // import 'dart:convert';
// // // // import 'package:shared_preferences/shared_preferences.dart';
// // // // import 'package:fluttertoast/fluttertoast.dart';

// // // // // Controller for Series Detail
// // // // class SeriesDetailController extends GetxController {
// // // //   RxBool isLoading = false.obs;
// // // //   RxList<Video> episodes = <Video>[].obs;
// // // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // // //   late SeriesResponse seriesData;

// // // //   void initSeriesData(SeriesResponse initialData) {
// // // //     seriesData = initialData;
// // // //     fetchEpisodes(initialData.episodeName ?? '');
// // // //   }

// // // //   Future<void> fetchEpisodes(String episodeName) async {
// // // //     if (episodeName.isEmpty) {
// // // //       showToast('Invalid series name', isError: true);
// // // //       isLoading.value = false;
// // // //       return;
// // // //     }

// // // //     isLoading.value = true;

// // // //     try {
// // // //       final token = await getToken();
// // // //       if (token == null) {
// // // //         showToast('Authentication required', isError: true);
// // // //         isLoading.value = false;
// // // //         return;
// // // //       }

// // // //       final response = await http.get(
// // // //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// // // //         headers: {
// // // //           'Content-Type': 'application/json',
// // // //           'Authorization': 'Bearer $token',
// // // //         },
// // // //       );

// // // //       if (response.statusCode == 200) {
// // // //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// // // //         final List<dynamic>? parts = data['parts'];
// // // //         if (parts != null && parts.isNotEmpty) {
// // // //           seriesData = SeriesResponse(
// // // //             episodeName: episodeName,
// // // //             totalEpisodes: parts.length,
// // // //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// // // //           );

// // // //           // Sort episodes by createdAt (newest first) and episode sequence
// // // //           episodes.value = List<Video>.from(seriesData.videos!)
// // // //             ..sort((a, b) {
// // // //               // First sort by createdAt
// // // //               if (a.createdAt != null && b.createdAt != null) {
// // // //                 final dateComparison = DateTime.parse(b.createdAt!)
// // // //                     .compareTo(DateTime.parse(a.createdAt!));
// // // //                 if (dateComparison != 0) return dateComparison;
// // // //               }
// // // //               // Then by episode sequence
// // // //               if (a.episodeSeq != null && b.episodeSeq != null) {
// // // //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// // // //               }
// // // //               return 0;
// // // //             });

// // // //           // Set series thumb to first episode's thumb
// // // //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// // // //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// // // //           }
// // // //         } else {
// // // //           showToast('No episodes found', isError: true);
// // // //         }
// // // //       } else {
// // // //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// // // //       }
// // // //     } catch (e) {
// // // //       print('Error fetching episodes: $e');
// // // //       showToast('An error occurred while loading episodes', isError: true);
// // // //     } finally {
// // // //       isLoading.value = false;
// // // //     }
// // // //   }

// // // //   Future<String?> getToken() async {
// // // //     try {
// // // //       final prefs = await SharedPreferences.getInstance();
// // // //       return prefs.getString('auth_token');
// // // //     } catch (e) {
// // // //       print('Error getting token: $e');
// // // //       return null;
// // // //     }
// // // //   }

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

// // // //   String formatDuration(int? minutes) {
// // // //     if (minutes == null) return 'N/A';
// // // //     if (minutes < 60) return '${minutes}m';
// // // //     final hours = minutes ~/ 60;
// // // //     final mins = minutes % 60;
// // // //     return '${hours}h ${mins}m';
// // // //   }

// // // //   String formatDate(String? dateString) {
// // // //     if (dateString == null) return 'N/A';
// // // //     try {
// // // //       final date = DateTime.parse(dateString);
// // // //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// // // //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// // // //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// // // //     } catch (e) {
// // // //       return 'N/A';
// // // //     }
// // // //   }
// // // // }

// // // // class SeriesDetailScreen extends StatelessWidget {
// // // //   final SeriesResponse seriesData;

// // // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// // // //     controller.initSeriesData(seriesData);

// // // //     double height = MediaQuery.of(context).size.height;
// // // //     double width = MediaQuery.of(context).size.width;

// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF0A0A0A),
// // // //       body: SafeArea(
// // // //         child: Obx(() {
// // // //           if (controller.isLoading.value) {
// // // //             return Center(
// // // //               child: CircularProgressIndicator(
// // // //                 color: const Color(0xFF00A8E8),
// // // //               ),
// // // //             );
// // // //           }

// // // //           return CustomScrollView(
// // // //             slivers: [
// // // //               // App Bar with Back Button
// // // //               SliverAppBar(
// // // //                 expandedHeight: height * 0.35,
// // // //                 floating: false,
// // // //                 pinned: true,
// // // //                 backgroundColor: const Color(0xFF0A0A0A),
// // // //                 leading: GestureDetector(
// // // //                   onTap: () => Get.back(),
// // // //                   child: Container(
// // // //                     margin: EdgeInsets.all(width * 0.02),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.5),
// // // //                       borderRadius: BorderRadius.circular(8),
// // // //                     ),
// // // //                     child: Icon(
// // // //                       Icons.arrow_back,
// // // //                       color: Colors.white,
// // // //                       size: width * 0.06,
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 flexibleSpace: FlexibleSpaceBar(
// // // //                   background: Stack(
// // // //                     fit: StackFit.expand,
// // // //                     children: [
// // // //                       // Series Thumbnail
// // // //                       if (seriesData.seriesThumbUrl != null && 
// // // //                           seriesData.seriesThumbUrl!.isNotEmpty)
// // // //                         Image.network(
// // // //                           seriesData.seriesThumbUrl!,
// // // //                           fit: BoxFit.cover,
// // // //                           errorBuilder: (context, error, stackTrace) {
// // // //                             return _buildPlaceholder();
// // // //                           },
// // // //                           loadingBuilder: (context, child, loadingProgress) {
// // // //                             if (loadingProgress == null) return child;
// // // //                             return Center(
// // // //                               child: CircularProgressIndicator(
// // // //                                 color: const Color(0xFF00A8E8),
// // // //                               ),
// // // //                             );
// // // //                           },
// // // //                         )
// // // //                       else
// // // //                         _buildPlaceholder(),
                      
// // // //                       // Gradient Overlay
// // // //                       Container(
// // // //                         decoration: BoxDecoration(
// // // //                           gradient: LinearGradient(
// // // //                             begin: Alignment.topCenter,
// // // //                             end: Alignment.bottomCenter,
// // // //                             colors: [
// // // //                               Colors.transparent,
// // // //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// // // //                               const Color(0xFF0A0A0A),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),

// // // //               // Series Info and Episodes
// // // //               SliverToBoxAdapter(
// // // //                 child: Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     // Series Title and Info
// // // //                     Padding(
// // // //                       padding: EdgeInsets.all(width * 0.04),
// // // //                       child: Column(
// // // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // // //                         children: [
// // // //                           Text(
// // // //                             seriesData.episodeName ?? 'Unknown Series',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.07,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           SizedBox(height: height * 0.015),
                          
// // // //                           // Series Stats
// // // //                           Wrap(
// // // //                             spacing: width * 0.03,
// // // //                             runSpacing: height * 0.01,
// // // //                             children: [
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].imdbRating != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.star,
// // // //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// // // //                                   Colors.amber,
// // // //                                   width,
// // // //                                 ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].createdAt != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.calendar_today,
// // // //                                   DateTime.parse(controller.episodes[0].createdAt!)
// // // //                                       .year.toString(),
// // // //                                   Colors.grey,
// // // //                                   width,
// // // //                                 ),
// // // //                               _buildStatChip(
// // // //                                 Icons.video_library,
// // // //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// // // //                                 Colors.blue,
// // // //                                 width,
// // // //                               ),
// // // //                               if (controller.episodes.isNotEmpty && 
// // // //                                   controller.episodes[0].quality != null)
// // // //                                 _buildStatChip(
// // // //                                   Icons.hd,
// // // //                                   controller.episodes[0].quality!,
// // // //                                   Colors.purple,
// // // //                                   width,
// // // //                                 ),
// // // //                             ],
// // // //                           ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Description
// // // //                           if (controller.episodes.isNotEmpty && 
// // // //                               controller.episodes[0].description != null)
// // // //                             Text(
// // // //                               controller.episodes[0].description!,
// // // //                               style: TextStyle(
// // // //                                 color: Colors.grey[300],
// // // //                                 fontSize: width * 0.04,
// // // //                                 height: 1.5,
// // // //                               ),
// // // //                             ),
                          
// // // //                           SizedBox(height: height * 0.02),
                          
// // // //                           // Genre and Languages
// // // //                           if (controller.episodes.isNotEmpty)
// // // //                             Column(
// // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // //                               children: [
// // // //                                 if (controller.episodes[0].genre != null) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.category,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].genre!,
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                   SizedBox(height: height * 0.01),
// // // //                                 ],
// // // //                                 if (controller.episodes[0].languages != null && 
// // // //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// // // //                                   Row(
// // // //                                     children: [
// // // //                                       Icon(
// // // //                                         Icons.language,
// // // //                                         color: Colors.grey[400],
// // // //                                         size: width * 0.045,
// // // //                                       ),
// // // //                                       SizedBox(width: width * 0.02),
// // // //                                       Text(
// // // //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// // // //                                         style: TextStyle(
// // // //                                           color: Colors.grey[400],
// // // //                                           fontSize: width * 0.038,
// // // //                                         ),
// // // //                                       ),
// // // //                                     ],
// // // //                                   ),
// // // //                                 ],
// // // //                               ],
// // // //                             ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes Section Header
// // // //                     Padding(
// // // //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                       child: Row(
// // // //                         children: [
// // // //                           Text(
// // // //                             'Episodes',
// // // //                             style: TextStyle(
// // // //                               color: Colors.white,
// // // //                               fontSize: width * 0.05,
// // // //                               fontWeight: FontWeight.bold,
// // // //                             ),
// // // //                           ),
// // // //                           const Spacer(),
// // // //                           Text(
// // // //                             '${controller.episodes.length} total',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.038,
// // // //                             ),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ),

// // // //                     SizedBox(height: height * 0.02),

// // // //                     // Episodes List
// // // //                     if (controller.episodes.isEmpty)
// // // //                       Center(
// // // //                         child: Padding(
// // // //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // // //                           child: Text(
// // // //                             'No episodes available',
// // // //                             style: TextStyle(
// // // //                               color: Colors.grey[400],
// // // //                               fontSize: width * 0.045,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       )
// // // //                     else
// // // //                       ListView.builder(
// // // //                         shrinkWrap: true,
// // // //                         physics: const NeverScrollableScrollPhysics(),
// // // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // // //                         itemCount: controller.episodes.length,
// // // //                         itemBuilder: (context, index) {
// // // //                           final episode = controller.episodes[index];
// // // //                           return _buildEpisodeCard(
// // // //                             episode, 
// // // //                             index, 
// // // //                             width, 
// // // //                             height,
// // // //                             controller,
// // // //                           );
// // // //                         },
// // // //                       ),

// // // //                     SizedBox(height: height * 0.05),
// // // //                   ],
// // // //                 ),
// // // //               ),
// // // //             ],
// // // //           );
// // // //         }),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// // // //     return Container(
// // // //       padding: EdgeInsets.symmetric(
// // // //         horizontal: width * 0.025,
// // // //         vertical: width * 0.015,
// // // //       ),
// // // //       decoration: BoxDecoration(
// // // //         color: color.withOpacity(0.15),
// // // //         borderRadius: BorderRadius.circular(8),
// // // //         border: Border.all(
// // // //           color: color.withOpacity(0.3),
// // // //           width: 1,
// // // //         ),
// // // //       ),
// // // //       child: Row(
// // // //         mainAxisSize: MainAxisSize.min,
// // // //         children: [
// // // //           Icon(icon, color: color, size: width * 0.04),
// // // //           SizedBox(width: width * 0.015),
// // // //           Text(
// // // //             text,
// // // //             style: TextStyle(
// // // //               color: color,
// // // //               fontSize: width * 0.035,
// // // //               fontWeight: FontWeight.w600,
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodeCard(
// // // //     Video episode, 
// // // //     int index, 
// // // //     double width, 
// // // //     double height,
// // // //     SeriesDetailController controller,
// // // //   ) {
// // // //     // Build thumbnail URL
// // // //     String? thumbnailUrl = episode.thumbUrl;

// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         if (episode.id != null) {
// // // //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// // // //         } else {
// // // //           controller.showToast('Invalid episode ID', isError: true);
// // // //         }
// // // //       },
// // // //       child: Container(
// // // //         margin: EdgeInsets.only(bottom: height * 0.02),
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.grey[900]?.withOpacity(0.3),
// // // //           borderRadius: BorderRadius.circular(12),
// // // //         ),
// // // //         child: Column(
// // // //           crossAxisAlignment: CrossAxisAlignment.start,
// // // //           children: [
// // // //             // Episode Thumbnail
// // // //             Stack(
// // // //               children: [
// // // //                 Container(
// // // //                   height: height * 0.22,
// // // //                   decoration: BoxDecoration(
// // // //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                     color: Colors.grey[800],
// // // //                   ),
// // // //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// // // //                       ? ClipRRect(
// // // //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                           child: Image.network(
// // // //                             thumbnailUrl,
// // // //                             width: double.infinity,
// // // //                             height: double.infinity,
// // // //                             fit: BoxFit.cover,
// // // //                             errorBuilder: (context, error, stackTrace) {
// // // //                               return _buildEpisodePlaceholder(width);
// // // //                             },
// // // //                             loadingBuilder: (context, child, loadingProgress) {
// // // //                               if (loadingProgress == null) return child;
// // // //                               return Center(
// // // //                                 child: CircularProgressIndicator(
// // // //                                   color: const Color(0xFF00A8E8),
// // // //                                 ),
// // // //                               );
// // // //                             },
// // // //                           ),
// // // //                         )
// // // //                       : _buildEpisodePlaceholder(width),
// // // //                 ),
                
// // // //                 // Play Button Overlay
// // // //                 Positioned.fill(
// // // //                   child: Container(
// // // //                     decoration: BoxDecoration(
// // // //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.6),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                     child: Center(
// // // //                       child: Container(
// // // //                         padding: EdgeInsets.all(width * 0.03),
// // // //                         decoration: BoxDecoration(
// // // //                           color: Colors.white.withOpacity(0.3),
// // // //                           shape: BoxShape.circle,
// // // //                         ),
// // // //                         child: Icon(
// // // //                           Icons.play_arrow,
// // // //                           color: Colors.white,
// // // //                           size: width * 0.1,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Episode Number Badge
// // // //                 Positioned(
// // // //                   top: width * 0.03,
// // // //                   left: width * 0.03,
// // // //                   child: Container(
// // // //                     padding: EdgeInsets.symmetric(
// // // //                       horizontal: width * 0.025,
// // // //                       vertical: width * 0.015,
// // // //                     ),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.black.withOpacity(0.7),
// // // //                       borderRadius: BorderRadius.circular(6),
// // // //                     ),
// // // //                     child: Text(
// // // //                       'EP ${episode.episodeSeq ?? index + 1}',
// // // //                       style: TextStyle(
// // // //                         color: Colors.white,
// // // //                         fontSize: width * 0.035,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
                
// // // //                 // Duration Badge
// // // //                 if (episode.runtimeMinutes != null)
// // // //                   Positioned(
// // // //                     top: width * 0.03,
// // // //                     right: width * 0.03,
// // // //                     child: Container(
// // // //                       padding: EdgeInsets.symmetric(
// // // //                         horizontal: width * 0.025,
// // // //                         vertical: width * 0.015,
// // // //                       ),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.black.withOpacity(0.7),
// // // //                         borderRadius: BorderRadius.circular(6),
// // // //                       ),
// // // //                       child: Text(
// // // //                         controller.formatDuration(episode.runtimeMinutes),
// // // //                         style: TextStyle(
// // // //                           color: Colors.white,
// // // //                           fontSize: width * 0.035,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //               ],
// // // //             ),
            
// // // //             // Episode Info
// // // //             Padding(
// // // //               padding: EdgeInsets.all(width * 0.04),
// // // //               child: Column(
// // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                 children: [
// // // //                   Text(
// // // //                     episode.videoTitle ?? 'Episode ${index + 1}',
// // // //                     style: TextStyle(
// // // //                       color: Colors.white,
// // // //                       fontSize: width * 0.045,
// // // //                       fontWeight: FontWeight.bold,
// // // //                     ),
// // // //                     maxLines: 2,
// // // //                     overflow: TextOverflow.ellipsis,
// // // //                   ),
// // // //                   SizedBox(height: height * 0.01),
                  
// // // //                   Row(
// // // //                     children: [
// // // //                       if (episode.createdAt != null) ...[
// // // //                         Icon(
// // // //                           Icons.calendar_today,
// // // //                           color: Colors.grey[400],
// // // //                           size: width * 0.035,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.015),
// // // //                         Text(
// // // //                           controller.formatDate(episode.createdAt),
// // // //                           style: TextStyle(
// // // //                             color: Colors.grey[400],
// // // //                             fontSize: width * 0.035,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                       if (episode.imdbRating != null) ...[
// // // //                         SizedBox(width: width * 0.03),
// // // //                         Icon(
// // // //                           Icons.star,
// // // //                           color: Colors.amber,
// // // //                           size: width * 0.04,
// // // //                         ),
// // // //                         SizedBox(width: width * 0.01),
// // // //                         Text(
// // // //                           episode.imdbRating!.toStringAsFixed(1),
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontSize: width * 0.035,
// // // //                             fontWeight: FontWeight.w600,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ],
// // // //                   ),
                  
// // // //                   if (episode.description != null) ...[
// // // //                     SizedBox(height: height * 0.01),
// // // //                     Text(
// // // //                       episode.description!,
// // // //                       style: TextStyle(
// // // //                         color: Colors.grey[400],
// // // //                         fontSize: width * 0.037,
// // // //                         height: 1.4,
// // // //                       ),
// // // //                       maxLines: 2,
// // // //                       overflow: TextOverflow.ellipsis,
// // // //                     ),
// // // //                   ],
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildPlaceholder() {
// // // //     return Container(
// // // //       color: Colors.grey[900],
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.movie,
// // // //           color: Colors.grey[700],
// // // //           size: 80,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildEpisodePlaceholder(double width) {
// // // //     return Container(
// // // //       decoration: BoxDecoration(
// // // //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // // //         color: Colors.grey[800],
// // // //       ),
// // // //       child: Center(
// // // //         child: Icon(
// // // //           Icons.video_library,
// // // //           color: Colors.grey[600],
// // // //           size: width * 0.15,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // Models (updated for new API fields)
// // // // class SeriesResponse {
// // // //   final String? episodeName;
// // // //   final int? totalEpisodes;
// // // //   final String? latestRelease;
// // // //   final String? seriesPosterKey;
// // // //   final String? seriesThumbKey;
// // // //   final String? seriesPosterUrl;
// // // //   String? seriesThumbUrl;
// // // //   final List<Video>? videos;

// // // //   SeriesResponse({
// // // //     this.episodeName,
// // // //     this.totalEpisodes,
// // // //     this.latestRelease,
// // // //     this.seriesPosterKey,
// // // //     this.seriesThumbKey,
// // // //     this.seriesPosterUrl,
// // // //     this.seriesThumbUrl,
// // // //     this.videos,
// // // //   });

// // // //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// // // //     return SeriesResponse(
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       totalEpisodes: json['totalEpisodes'] != null 
// // // //           ? int.tryParse(json['totalEpisodes'].toString()) 
// // // //           : null,
// // // //       latestRelease: json['latestRelease']?.toString(),
// // // //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// // // //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// // // //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// // // //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// // // //       videos: json['videos'] != null
// // // //           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Video {
// // // //   final String? id;
// // // //   final String? episodeName;
// // // //   final String? videoTitle;
// // // //   final String? description;
// // // //   final List<String>? actors;
// // // //   final List<String>? writers;
// // // //   final double? imdbRating;
// // // //   final String? releaseDate;
// // // //   final List<String>? countries;
// // // //   final String? genre;
// // // //   final List<String>? languages;
// // // //   final String? videoType;
// // // //   final int? runtimeMinutes;
// // // //   final String? quality;
// // // //   final String? posterKey;
// // // //   final String? thumbKey;
// // // //   final String? thumbUrl;
// // // //   final String? posterUrl;
// // // //   final int? episodeSeq;
// // // //   final String? episodeCode;
// // // //   final List<String>? resolutions;
// // // //   final Mp4Keys? mp4Keys;
// // // //   final String? createdAt;
// // // //   final List<String>? qualities;

// // // //   Video({
// // // //     this.id,
// // // //     this.episodeName,
// // // //     this.videoTitle,
// // // //     this.description,
// // // //     this.actors,
// // // //     this.writers,
// // // //     this.imdbRating,
// // // //     this.releaseDate,
// // // //     this.countries,
// // // //     this.genre,
// // // //     this.languages,
// // // //     this.videoType,
// // // //     this.runtimeMinutes,
// // // //     this.quality,
// // // //     this.posterKey,
// // // //     this.thumbKey,
// // // //     this.thumbUrl,
// // // //     this.posterUrl,
// // // //     this.episodeSeq,
// // // //     this.episodeCode,
// // // //     this.resolutions,
// // // //     this.mp4Keys,
// // // //     this.createdAt,
// // // //     this.qualities,
// // // //   });

// // // //   factory Video.fromJson(Map<String, dynamic> json) {
// // // //     return Video(
// // // //       id: json['id']?.toString(),
// // // //       episodeName: json['episodeName']?.toString(),
// // // //       videoTitle: json['title']?.toString(),
// // // //       description: json['description']?.toString(),
// // // //       actors: json['actors'] != null
// // // //           ? List<String>.from(json['actors'].map((x) => x.toString()))
// // // //           : null,
// // // //       writers: json['writers'] != null
// // // //           ? List<String>.from(json['writers'].map((x) => x.toString()))
// // // //           : null,
// // // //       imdbRating: json['imdbRating'] != null
// // // //           ? double.tryParse(json['imdbRating'].toString())
// // // //           : null,
// // // //       releaseDate: json['releaseDate']?.toString(),
// // // //       countries: json['countries'] != null
// // // //           ? List<String>.from(json['countries'].map((x) => x.toString()))
// // // //           : null,
// // // //       genre: json['genre']?.toString(),
// // // //       languages: json['languages'] != null
// // // //           ? List<String>.from(json['languages'].map((x) => x.toString()))
// // // //           : null,
// // // //       videoType: json['videoType']?.toString(),
// // // //       runtimeMinutes: json['runtimeMinutes'] != null
// // // //           ? int.tryParse(json['runtimeMinutes'].toString())
// // // //           : null,
// // // //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty
// // // //           ? (json['qualities'] as List).first.toString()
// // // //           : null,
// // // //       posterKey: json['posterKey']?.toString(),
// // // //       thumbKey: json['thumbKey']?.toString(),
// // // //       thumbUrl: json['thumbUrl']?.toString(),
// // // //       posterUrl: json['posterUrl']?.toString(),
// // // //       episodeSeq: json['episodeSeq'] != null
// // // //           ? int.tryParse(json['episodeSeq'].toString())
// // // //           : null,
// // // //       episodeCode: json['episodeCode']?.toString(),
// // // //       resolutions: json['resolutions'] != null
// // // //           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
// // // //           : null,
// // // //       mp4Keys: json['mp4Keys'] != null
// // // //           ? Mp4Keys.fromJson(json['mp4Keys'])
// // // //           : null,
// // // //       createdAt: json['createdAt']?.toString(),
// // // //       qualities: json['qualities'] != null
// // // //           ? List<String>.from(json['qualities'].map((x) => x.toString()))
// // // //           : null,
// // // //     );
// // // //   }
// // // // }

// // // // class Mp4Keys {
// // // //   final String? quality360p;
// // // //   final String? quality480p;
// // // //   final String? quality720p;

// // // //   Mp4Keys({
// // // //     this.quality360p,
// // // //     this.quality480p,
// // // //     this.quality720p,
// // // //   });

// // // //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// // // //     return Mp4Keys(
// // // //       quality360p: json['360p']?.toString(),
// // // //       quality480p: json['480p']?.toString(),
// // // //       quality720p: json['720p']?.toString(),
// // // //     );
// // // //   }
// // // // }


// // // import 'package:flutter/material.dart';
// // // import 'package:get/get.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // // import 'dart:convert';
// // // import 'package:shared_preferences/shared_preferences.dart';
// // // import 'package:fluttertoast/fluttertoast.dart';

// // // // Controller for Series Detail
// // // class SeriesDetailController extends GetxController {
// // //   RxBool isLoading = false.obs;
// // //   RxList<Video> episodes = <Video>[].obs;
// // //   RxBool isSubscriptionRequired = false.obs;
// // //   RxString subscriptionMessage = ''.obs;
// // //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// // //   late SeriesResponse seriesData;

// // //   void initSeriesData(SeriesResponse initialData) {
// // //     seriesData = initialData;
// // //     fetchEpisodes(initialData.episodeName ?? '');
// // //   }

// // //   Future<void> fetchEpisodes(String episodeName) async {
// // //     if (episodeName.isEmpty) {
// // //       showToast('Invalid series name', isError: true);
// // //       isLoading.value = false;
// // //       return;
// // //     }

// // //     isLoading.value = true;
// // //     isSubscriptionRequired.value = false;
// // //     subscriptionMessage.value = '';

// // //     try {
// // //       final token = await getToken();
// // //       if (token == null) {
// // //         showToast('Authentication required', isError: true);
// // //         isLoading.value = false;
// // //         return;
// // //       }

// // //       final response = await http.get(
// // //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// // //         headers: {
// // //           'Content-Type': 'application/json',
// // //           'Authorization': 'Bearer $token',
// // //         },
// // //       );

// // //       if (response.statusCode == 200) {
// // //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// // //         // Check for subscription required message
// // //         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// // //           isSubscriptionRequired.value = true;
// // //           subscriptionMessage.value = data['message'].toString();
// // //           isLoading.value = false;
// // //           return;
// // //         }
        
// // //         final List<dynamic>? parts = data['parts'];
// // //         if (parts != null && parts.isNotEmpty) {
// // //           seriesData = SeriesResponse(
// // //             episodeName: episodeName,
// // //             totalEpisodes: parts.length,
// // //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// // //           );

// // //           // Sort episodes by createdAt (newest first) and episode sequence
// // //           episodes.value = List<Video>.from(seriesData.videos!)
// // //             ..sort((a, b) {
// // //               // First sort by createdAt
// // //               if (a.createdAt != null && b.createdAt != null) {
// // //                 final dateComparison = DateTime.parse(b.createdAt!)
// // //                     .compareTo(DateTime.parse(a.createdAt!));
// // //                 if (dateComparison != 0) return dateComparison;
// // //               }
// // //               // Then by episode sequence
// // //               if (a.episodeSeq != null && b.episodeSeq != null) {
// // //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// // //               }
// // //               return 0;
// // //             });

// // //           // Set series thumb to first episode's thumb
// // //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// // //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// // //           }
// // //         } else {
// // //           showToast('No episodes found', isError: true);
// // //         }
// // //       } else {
// // //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching episodes: $e');
// // //       showToast('An error occurred while loading episodes', isError: true);
// // //     } finally {
// // //       isLoading.value = false;
// // //     }
// // //   }

// // //   Future<String?> getToken() async {
// // //     try {
// // //       final prefs = await SharedPreferences.getInstance();
// // //       return prefs.getString('auth_token');
// // //     } catch (e) {
// // //       print('Error getting token: $e');
// // //       return null;
// // //     }
// // //   }

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

// // //   String formatDuration(int? minutes) {
// // //     if (minutes == null) return 'N/A';
// // //     if (minutes < 60) return '${minutes}m';
// // //     final hours = minutes ~/ 60;
// // //     final mins = minutes % 60;
// // //     return '${hours}h ${mins}m';
// // //   }

// // //   String formatDate(String? dateString) {
// // //     if (dateString == null) return 'N/A';
// // //     try {
// // //       final date = DateTime.parse(dateString);
// // //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// // //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// // //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// // //     } catch (e) {
// // //       return 'N/A';
// // //     }
// // //   }
// // // }

// // // class SeriesDetailScreen extends StatelessWidget {
// // //   final SeriesResponse seriesData;

// // //   const SeriesDetailScreen({super.key, required this.seriesData});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// // //     controller.initSeriesData(seriesData);

// // //     double height = MediaQuery.of(context).size.height;
// // //     double width = MediaQuery.of(context).size.width;

// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF0A0A0A),
// // //       body: SafeArea(
// // //         child: Obx(() {
// // //           if (controller.isLoading.value) {
// // //             return Center(
// // //               child: CircularProgressIndicator(
// // //                 color: const Color(0xFF00A8E8),
// // //               ),
// // //             );
// // //           }

// // //           if (controller.isSubscriptionRequired.value) {
// // //             return Center(
// // //               child: Padding(
// // //                 padding: EdgeInsets.all(width * 0.05),
// // //                 child: Column(
// // //                   mainAxisAlignment: MainAxisAlignment.center,
// // //                   children: [
// // //                     Icon(
// // //                       Icons.lock_outline,
// // //                       color: Colors.red,
// // //                       size: width * 0.2,
// // //                     ),
// // //                     SizedBox(height: height * 0.03),
// // //                     Text(
// // //                       controller.subscriptionMessage.value,
// // //                       style: TextStyle(
// // //                         color: Colors.white,
// // //                         fontSize: width * 0.05,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                       textAlign: TextAlign.center,
// // //                     ),
// // //                     SizedBox(height: height * 0.02),
// // //                     Text(
// // //                       'Please subscribe to access this series.',
// // //                       style: TextStyle(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * 0.04,
// // //                       ),
// // //                       textAlign: TextAlign.center,
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             );
// // //           }

// // //           return CustomScrollView(
// // //             slivers: [
// // //               // App Bar with Back Button
// // //               SliverAppBar(
// // //                 expandedHeight: height * 0.35,
// // //                 floating: false,
// // //                 pinned: true,
// // //                 backgroundColor: const Color(0xFF0A0A0A),
// // //                 leading: GestureDetector(
// // //                   onTap: () => Get.back(),
// // //                   child: Container(
// // //                     margin: EdgeInsets.all(width * 0.02),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.black.withOpacity(0.5),
// // //                       borderRadius: BorderRadius.circular(8),
// // //                     ),
// // //                     child: Icon(
// // //                       Icons.arrow_back,
// // //                       color: Colors.white,
// // //                       size: width * 0.06,
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 flexibleSpace: FlexibleSpaceBar(
// // //                   background: Stack(
// // //                     fit: StackFit.expand,
// // //                     children: [
// // //                       // Series Thumbnail
// // //                       if (seriesData.seriesThumbUrl != null && 
// // //                           seriesData.seriesThumbUrl!.isNotEmpty)
// // //                         Image.network(
// // //                           seriesData.seriesThumbUrl!,
// // //                           fit: BoxFit.cover,
// // //                           errorBuilder: (context, error, stackTrace) {
// // //                             return _buildPlaceholder();
// // //                           },
// // //                           loadingBuilder: (context, child, loadingProgress) {
// // //                             if (loadingProgress == null) return child;
// // //                             return Center(
// // //                               child: CircularProgressIndicator(
// // //                                 color: const Color(0xFF00A8E8),
// // //                               ),
// // //                             );
// // //                           },
// // //                         )
// // //                       else
// // //                         _buildPlaceholder(),
                      
// // //                       // Gradient Overlay
// // //                       Container(
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             begin: Alignment.topCenter,
// // //                             end: Alignment.bottomCenter,
// // //                             colors: [
// // //                               Colors.transparent,
// // //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// // //                               const Color(0xFF0A0A0A),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),

// // //               // Series Info and Episodes
// // //               SliverToBoxAdapter(
// // //                 child: Column(
// // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                   children: [
// // //                     // Series Title and Info
// // //                     Padding(
// // //                       padding: EdgeInsets.all(width * 0.04),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             seriesData.episodeName ?? 'Unknown Series',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: width * 0.07,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: height * 0.015),
                          
// // //                           // Series Stats
// // //                           Wrap(
// // //                             spacing: width * 0.03,
// // //                             runSpacing: height * 0.01,
// // //                             children: [
// // //                               if (controller.episodes.isNotEmpty && 
// // //                                   controller.episodes[0].imdbRating != null)
// // //                                 _buildStatChip(
// // //                                   Icons.star,
// // //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// // //                                   Colors.amber,
// // //                                   width,
// // //                                 ),
// // //                               if (controller.episodes.isNotEmpty && 
// // //                                   controller.episodes[0].createdAt != null)
// // //                                 _buildStatChip(
// // //                                   Icons.calendar_today,
// // //                                   DateTime.parse(controller.episodes[0].createdAt!)
// // //                                       .year.toString(),
// // //                                   Colors.grey,
// // //                                   width,
// // //                                 ),
// // //                               _buildStatChip(
// // //                                 Icons.video_library,
// // //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// // //                                 Colors.blue,
// // //                                 width,
// // //                               ),
// // //                               if (controller.episodes.isNotEmpty && 
// // //                                   controller.episodes[0].quality != null)
// // //                                 _buildStatChip(
// // //                                   Icons.hd,
// // //                                   controller.episodes[0].quality!,
// // //                                   Colors.purple,
// // //                                   width,
// // //                                 ),
// // //                             ],
// // //                           ),
                          
// // //                           SizedBox(height: height * 0.02),
                          
// // //                           // Description
// // //                           if (controller.episodes.isNotEmpty && 
// // //                               controller.episodes[0].description != null)
// // //                             Text(
// // //                               controller.episodes[0].description!,
// // //                               style: TextStyle(
// // //                                 color: Colors.grey[300],
// // //                                 fontSize: width * 0.04,
// // //                                 height: 1.5,
// // //                               ),
// // //                             ),
                          
// // //                           SizedBox(height: height * 0.02),
                          
// // //                           // Genre and Languages
// // //                           if (controller.episodes.isNotEmpty)
// // //                             Column(
// // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // //                               children: [
// // //                                 if (controller.episodes[0].genre != null) ...[
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.category,
// // //                                         color: Colors.grey[400],
// // //                                         size: width * 0.045,
// // //                                       ),
// // //                                       SizedBox(width: width * 0.02),
// // //                                       Text(
// // //                                         controller.episodes[0].genre!,
// // //                                         style: TextStyle(
// // //                                           color: Colors.grey[400],
// // //                                           fontSize: width * 0.038,
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                   SizedBox(height: height * 0.01),
// // //                                 ],
// // //                                 if (controller.episodes[0].languages != null && 
// // //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// // //                                   Row(
// // //                                     children: [
// // //                                       Icon(
// // //                                         Icons.language,
// // //                                         color: Colors.grey[400],
// // //                                         size: width * 0.045,
// // //                                       ),
// // //                                       SizedBox(width: width * 0.02),
// // //                                       Text(
// // //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// // //                                         style: TextStyle(
// // //                                           color: Colors.grey[400],
// // //                                           fontSize: width * 0.038,
// // //                                         ),
// // //                                       ),
// // //                                     ],
// // //                                   ),
// // //                                 ],
// // //                               ],
// // //                             ),
// // //                         ],
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: height * 0.02),

// // //                     // Episodes Section Header
// // //                     Padding(
// // //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // //                       child: Row(
// // //                         children: [
// // //                           Text(
// // //                             'Episodes',
// // //                             style: TextStyle(
// // //                               color: Colors.white,
// // //                               fontSize: width * 0.05,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                           ),
// // //                           const Spacer(),
// // //                           Text(
// // //                             '${controller.episodes.length} total',
// // //                             style: TextStyle(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * 0.038,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),

// // //                     SizedBox(height: height * 0.02),

// // //                     // Episodes List
// // //                     if (controller.episodes.isEmpty)
// // //                       Center(
// // //                         child: Padding(
// // //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// // //                           child: Text(
// // //                             'No episodes available',
// // //                             style: TextStyle(
// // //                               color: Colors.grey[400],
// // //                               fontSize: width * 0.045,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       )
// // //                     else
// // //                       ListView.builder(
// // //                         shrinkWrap: true,
// // //                         physics: const NeverScrollableScrollPhysics(),
// // //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// // //                         itemCount: controller.episodes.length,
// // //                         itemBuilder: (context, index) {
// // //                           final episode = controller.episodes[index];
// // //                           return _buildEpisodeCard(
// // //                             episode, 
// // //                             index, 
// // //                             width, 
// // //                             height,
// // //                             controller,
// // //                           );
// // //                         },
// // //                       ),

// // //                     SizedBox(height: height * 0.05),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         }),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// // //     return Container(
// // //       padding: EdgeInsets.symmetric(
// // //         horizontal: width * 0.025,
// // //         vertical: width * 0.015,
// // //       ),
// // //       decoration: BoxDecoration(
// // //         color: color.withOpacity(0.15),
// // //         borderRadius: BorderRadius.circular(8),
// // //         border: Border.all(
// // //           color: color.withOpacity(0.3),
// // //           width: 1,
// // //         ),
// // //       ),
// // //       child: Row(
// // //         mainAxisSize: MainAxisSize.min,
// // //         children: [
// // //           Icon(icon, color: color, size: width * 0.04),
// // //           SizedBox(width: width * 0.015),
// // //           Text(
// // //             text,
// // //             style: TextStyle(
// // //               color: color,
// // //               fontSize: width * 0.035,
// // //               fontWeight: FontWeight.w600,
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildEpisodeCard(
// // //     Video episode, 
// // //     int index, 
// // //     double width, 
// // //     double height,
// // //     SeriesDetailController controller,
// // //   ) {
// // //     // Build thumbnail URL
// // //     String? thumbnailUrl = episode.thumbUrl;

// // //     return GestureDetector(
// // //       onTap: () {
// // //         if (episode.id != null) {
// // //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// // //         } else {
// // //           controller.showToast('Invalid episode ID', isError: true);
// // //         }
// // //       },
// // //       child: Container(
// // //         margin: EdgeInsets.only(bottom: height * 0.02),
// // //         decoration: BoxDecoration(
// // //           color: Colors.grey[900]?.withOpacity(0.3),
// // //           borderRadius: BorderRadius.circular(12),
// // //         ),
// // //         child: Column(
// // //           crossAxisAlignment: CrossAxisAlignment.start,
// // //           children: [
// // //             // Episode Thumbnail
// // //             Stack(
// // //               children: [
// // //                 Container(
// // //                   height: height * 0.22,
// // //                   decoration: BoxDecoration(
// // //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // //                     color: Colors.grey[800],
// // //                   ),
// // //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// // //                       ? ClipRRect(
// // //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // //                           child: Image.network(
// // //                             thumbnailUrl,
// // //                             width: double.infinity,
// // //                             height: double.infinity,
// // //                             fit: BoxFit.cover,
// // //                             errorBuilder: (context, error, stackTrace) {
// // //                               return _buildEpisodePlaceholder(width);
// // //                             },
// // //                             loadingBuilder: (context, child, loadingProgress) {
// // //                               if (loadingProgress == null) return child;
// // //                               return Center(
// // //                                 child: CircularProgressIndicator(
// // //                                   color: const Color(0xFF00A8E8),
// // //                                 ),
// // //                               );
// // //                             },
// // //                           ),
// // //                         )
// // //                       : _buildEpisodePlaceholder(width),
// // //                 ),
                
// // //                 // Play Button Overlay
// // //                 Positioned.fill(
// // //                   child: Container(
// // //                     decoration: BoxDecoration(
// // //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // //                       gradient: LinearGradient(
// // //                         begin: Alignment.topCenter,
// // //                         end: Alignment.bottomCenter,
// // //                         colors: [
// // //                           Colors.transparent,
// // //                           Colors.black.withOpacity(0.6),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                     child: Center(
// // //                       child: Container(
// // //                         padding: EdgeInsets.all(width * 0.03),
// // //                         decoration: BoxDecoration(
// // //                           color: Colors.white.withOpacity(0.3),
// // //                           shape: BoxShape.circle,
// // //                         ),
// // //                         child: Icon(
// // //                           Icons.play_arrow,
// // //                           color: Colors.white,
// // //                           size: width * 0.1,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
                
// // //                 // Episode Number Badge
// // //                 Positioned(
// // //                   top: width * 0.03,
// // //                   left: width * 0.03,
// // //                   child: Container(
// // //                     padding: EdgeInsets.symmetric(
// // //                       horizontal: width * 0.025,
// // //                       vertical: width * 0.015,
// // //                     ),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.black.withOpacity(0.7),
// // //                       borderRadius: BorderRadius.circular(6),
// // //                     ),
// // //                     child: Text(
// // //                       'EP ${episode.episodeSeq ?? index + 1}',
// // //                       style: TextStyle(
// // //                         color: Colors.white,
// // //                         fontSize: width * 0.035,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                   ),
// // //                 ),
                
// // //                 // Duration Badge
// // //                 if (episode.runtimeMinutes != null)
// // //                   Positioned(
// // //                     top: width * 0.03,
// // //                     right: width * 0.03,
// // //                     child: Container(
// // //                       padding: EdgeInsets.symmetric(
// // //                         horizontal: width * 0.025,
// // //                         vertical: width * 0.015,
// // //                       ),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.black.withOpacity(0.7),
// // //                         borderRadius: BorderRadius.circular(6),
// // //                       ),
// // //                       child: Text(
// // //                         controller.formatDuration(episode.runtimeMinutes),
// // //                         style: TextStyle(
// // //                           color: Colors.white,
// // //                           fontSize: width * 0.035,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),
// // //               ],
// // //             ),
            
// // //             // Episode Info
// // //             Padding(
// // //               padding: EdgeInsets.all(width * 0.04),
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   Text(
// // //                     episode.videoTitle ?? 'Episode ${index + 1}',
// // //                     style: TextStyle(
// // //                       color: Colors.white,
// // //                       fontSize: width * 0.045,
// // //                       fontWeight: FontWeight.bold,
// // //                     ),
// // //                     maxLines: 2,
// // //                     overflow: TextOverflow.ellipsis,
// // //                   ),
// // //                   SizedBox(height: height * 0.01),
                  
// // //                   Row(
// // //                     children: [
// // //                       if (episode.createdAt != null) ...[
// // //                         Icon(
// // //                           Icons.calendar_today,
// // //                           color: Colors.grey[400],
// // //                           size: width * 0.035,
// // //                         ),
// // //                         SizedBox(width: width * 0.015),
// // //                         Text(
// // //                           controller.formatDate(episode.createdAt),
// // //                           style: TextStyle(
// // //                             color: Colors.grey[400],
// // //                             fontSize: width * 0.035,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                       if (episode.imdbRating != null) ...[
// // //                         SizedBox(width: width * 0.03),
// // //                         Icon(
// // //                           Icons.star,
// // //                           color: Colors.amber,
// // //                           size: width * 0.04,
// // //                         ),
// // //                         SizedBox(width: width * 0.01),
// // //                         Text(
// // //                           episode.imdbRating!.toStringAsFixed(1),
// // //                           style: TextStyle(
// // //                             color: Colors.white,
// // //                             fontSize: width * 0.035,
// // //                             fontWeight: FontWeight.w600,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ],
// // //                   ),
                  
// // //                   if (episode.description != null) ...[
// // //                     SizedBox(height: height * 0.01),
// // //                     Text(
// // //                       episode.description!,
// // //                       style: TextStyle(
// // //                         color: Colors.grey[400],
// // //                         fontSize: width * 0.037,
// // //                         height: 1.4,
// // //                       ),
// // //                       maxLines: 2,
// // //                       overflow: TextOverflow.ellipsis,
// // //                     ),
// // //                   ],
// // //                 ],
// // //               ),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildPlaceholder() {
// // //     return Container(
// // //       color: Colors.grey[900],
// // //       child: Center(
// // //         child: Icon(
// // //           Icons.movie,
// // //           color: Colors.grey[700],
// // //           size: 80,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildEpisodePlaceholder(double width) {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// // //         color: Colors.grey[800],
// // //       ),
// // //       child: Center(
// // //         child: Icon(
// // //           Icons.video_library,
// // //           color: Colors.grey[600],
// // //           size: width * 0.15,
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // Models (updated for new API fields)
// // // class SeriesResponse {
// // //   final String? episodeName;
// // //   final int? totalEpisodes;
// // //   final String? latestRelease;
// // //   final String? seriesPosterKey;
// // //   final String? seriesThumbKey;
// // //   final String? seriesPosterUrl;
// // //   String? seriesThumbUrl;
// // //   final List<Video>? videos;

// // //   SeriesResponse({
// // //     this.episodeName,
// // //     this.totalEpisodes,
// // //     this.latestRelease,
// // //     this.seriesPosterKey,
// // //     this.seriesThumbKey,
// // //     this.seriesPosterUrl,
// // //     this.seriesThumbUrl,
// // //     this.videos,
// // //   });

// // //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// // //     return SeriesResponse(
// // //       episodeName: json['episodeName']?.toString(),
// // //       totalEpisodes: json['totalEpisodes'] != null 
// // //           ? int.tryParse(json['totalEpisodes'].toString()) 
// // //           : null,
// // //       latestRelease: json['latestRelease']?.toString(),
// // //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// // //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// // //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// // //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// // //       videos: json['videos'] != null
// // //           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
// // //           : null,
// // //     );
// // //   }
// // // }

// // // class Video {
// // //   final String? id;
// // //   final String? episodeName;
// // //   final String? videoTitle;
// // //   final String? description;
// // //   final List<String>? actors;
// // //   final List<String>? writers;
// // //   final double? imdbRating;
// // //   final String? releaseDate;
// // //   final List<String>? countries;
// // //   final String? genre;
// // //   final List<String>? languages;
// // //   final String? videoType;
// // //   final int? runtimeMinutes;
// // //   final String? quality;
// // //   final String? posterKey;
// // //   final String? thumbKey;
// // //   final String? thumbUrl;
// // //   final String? posterUrl;
// // //   final int? episodeSeq;
// // //   final String? episodeCode;
// // //   final List<String>? resolutions;
// // //   final Mp4Keys? mp4Keys;
// // //   final String? createdAt;
// // //   final List<String>? qualities;

// // //   Video({
// // //     this.id,
// // //     this.episodeName,
// // //     this.videoTitle,
// // //     this.description,
// // //     this.actors,
// // //     this.writers,
// // //     this.imdbRating,
// // //     this.releaseDate,
// // //     this.countries,
// // //     this.genre,
// // //     this.languages,
// // //     this.videoType,
// // //     this.runtimeMinutes,
// // //     this.quality,
// // //     this.posterKey,
// // //     this.thumbKey,
// // //     this.thumbUrl,
// // //     this.posterUrl,
// // //     this.episodeSeq,
// // //     this.episodeCode,
// // //     this.resolutions,
// // //     this.mp4Keys,
// // //     this.createdAt,
// // //     this.qualities,
// // //   });

// // //   factory Video.fromJson(Map<String, dynamic> json) {
// // //     return Video(
// // //       id: json['id']?.toString(),
// // //       episodeName: json['episodeName']?.toString(),
// // //       videoTitle: json['title']?.toString(),
// // //       description: json['description']?.toString(),
// // //       actors: json['actors'] != null
// // //           ? List<String>.from(json['actors'].map((x) => x.toString()))
// // //           : null,
// // //       writers: json['writers'] != null
// // //           ? List<String>.from(json['writers'].map((x) => x.toString()))
// // //           : null,
// // //       imdbRating: json['imdbRating'] != null
// // //           ? double.tryParse(json['imdbRating'].toString())
// // //           : null,
// // //       releaseDate: json['releaseDate']?.toString(),
// // //       countries: json['countries'] != null
// // //           ? List<String>.from(json['countries'].map((x) => x.toString()))
// // //           : null,
// // //       genre: json['genre']?.toString(),
// // //       languages: json['languages'] != null
// // //           ? List<String>.from(json['languages'].map((x) => x.toString()))
// // //           : null,
// // //       videoType: json['videoType']?.toString(),
// // //       runtimeMinutes: json['runtimeMinutes'] != null
// // //           ? int.tryParse(json['runtimeMinutes'].toString())
// // //           : null,
// // //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty
// // //           ? (json['qualities'] as List).first.toString()
// // //           : null,
// // //       posterKey: json['posterKey']?.toString(),
// // //       thumbKey: json['thumbKey']?.toString(),
// // //       thumbUrl: json['thumbUrl']?.toString(),
// // //       posterUrl: json['posterUrl']?.toString(),
// // //       episodeSeq: json['episodeSeq'] != null
// // //           ? int.tryParse(json['episodeSeq'].toString())
// // //           : null,
// // //       episodeCode: json['episodeCode']?.toString(),
// // //       resolutions: json['resolutions'] != null
// // //           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
// // //           : null,
// // //       mp4Keys: json['mp4Keys'] != null
// // //           ? Mp4Keys.fromJson(json['mp4Keys'])
// // //           : null,
// // //       createdAt: json['createdAt']?.toString(),
// // //       qualities: json['qualities'] != null
// // //           ? List<String>.from(json['qualities'].map((x) => x.toString()))
// // //           : null,
// // //     );
// // //   }
// // // }

// // // class Mp4Keys {
// // //   final String? quality360p;
// // //   final String? quality480p;
// // //   final String? quality720p;

// // //   Mp4Keys({
// // //     this.quality360p,
// // //     this.quality480p,
// // //     this.quality720p,
// // //   });

// // //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// // //     return Mp4Keys(
// // //       quality360p: json['360p']?.toString(),
// // //       quality480p: json['480p']?.toString(),
// // //       quality720p: json['720p']?.toString(),
// // //     );
// // //   }
// // // }




// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Controller for Series Detail
// // class SeriesDetailController extends GetxController {
// //   RxBool isLoading = false.obs;
// //   RxList<Video> episodes = <Video>[].obs;
// //   RxBool isSubscriptionRequired = false.obs;
// //   RxString subscriptionMessage = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// //   late SeriesResponse seriesData;

// //   void initSeriesData(SeriesResponse initialData) {
// //     seriesData = initialData;
// //     fetchEpisodes(initialData.episodeName ?? '');
// //   }

// //   Future<void> fetchEpisodes(String episodeName) async {
// //     if (episodeName.isEmpty) {
// //       showToast('Invalid series name', isError: true);
// //       isLoading.value = false;
// //       return;
// //     }

// //     isLoading.value = true;
// //     isSubscriptionRequired.value = false;
// //     subscriptionMessage.value = '';

// //     try {
// //       final token = await getToken();
// //       if (token == null) {
// //         showToast('Authentication required', isError: true);
// //         isLoading.value = false;
// //         return;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       // Handle subscription required for 403 status
// //       if (response.statusCode == 403) {
// //         try {
// //           final Map<String, dynamic> data = jsonDecode(response.body);
// //           if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //             isSubscriptionRequired.value = true;
// //             subscriptionMessage.value = data['message'].toString();
// //             isLoading.value = false;
// //             return;
// //           }
// //         } catch (e) {
// //           print('Error parsing 403 response: $e');
// //         }
// //       }

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// //         // Check for subscription required message in 200 (fallback)
// //         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //           isSubscriptionRequired.value = true;
// //           subscriptionMessage.value = data['message'].toString();
// //           isLoading.value = false;
// //           return;
// //         }
        
// //         final List<dynamic>? parts = data['parts'];
// //         if (parts != null && parts.isNotEmpty) {
// //           seriesData = SeriesResponse(
// //             episodeName: episodeName,
// //             totalEpisodes: parts.length,
// //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// //           );

// //           // Sort episodes by createdAt (newest first) and episode sequence
// //           episodes.value = List<Video>.from(seriesData.videos!)
// //             ..sort((a, b) {
// //               // First sort by createdAt
// //               if (a.createdAt != null && b.createdAt != null) {
// //                 final dateComparison = DateTime.parse(b.createdAt!)
// //                     .compareTo(DateTime.parse(a.createdAt!));
// //                 if (dateComparison != 0) return dateComparison;
// //               }
// //               // Then by episode sequence
// //               if (a.episodeSeq != null && b.episodeSeq != null) {
// //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// //               }
// //               return 0;
// //             });

// //           // Set series thumb to first episode's thumb
// //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// //           }
// //         } else {
// //           showToast('No episodes found', isError: true);
// //         }
// //       } else {
// //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching episodes: $e');
// //       showToast('An error occurred while loading episodes', isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
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

// //   String formatDuration(int? minutes) {
// //     if (minutes == null) return 'N/A';
// //     if (minutes < 60) return '${minutes}m';
// //     final hours = minutes ~/ 60;
// //     final mins = minutes % 60;
// //     return '${hours}h ${mins}m';
// //   }

// //   String formatDate(String? dateString) {
// //     if (dateString == null) return 'N/A';
// //     try {
// //       final date = DateTime.parse(dateString);
// //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// //     } catch (e) {
// //       return 'N/A';
// //     }
// //   }
// // }

// // class SeriesDetailScreen extends StatelessWidget {
// //   final SeriesResponse seriesData;

// //   const SeriesDetailScreen({super.key, required this.seriesData});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// //     controller.initSeriesData(seriesData);

// //     double height = MediaQuery.of(context).size.height;
// //     double width = MediaQuery.of(context).size.width;

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: SafeArea(
// //         child: Obx(() {
// //           if (controller.isLoading.value) {
// //             return Center(
// //               child: CircularProgressIndicator(
// //                 color: const Color(0xFF00A8E8),
// //               ),
// //             );
// //           }

// //           if (controller.isSubscriptionRequired.value) {
// //             return Center(
// //               child: Padding(
// //                 padding: EdgeInsets.all(width * 0.05),
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Icon(
// //                       Icons.lock_outline,
// //                       color: Colors.red,
// //                       size: width * 0.2,
// //                     ),
// //                     SizedBox(height: height * 0.03),
// //                     Text(
// //                       controller.subscriptionMessage.value,
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: width * 0.05,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                       textAlign: TextAlign.center,
// //                     ),
// //                     SizedBox(height: height * 0.02),
// //                     Text(
// //                       'Please subscribe to access this series.',
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.04,
// //                       ),
// //                       textAlign: TextAlign.center,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             );
// //           }

// //           return CustomScrollView(
// //             slivers: [
// //               // App Bar with Back Button
// //               SliverAppBar(
// //                 expandedHeight: height * 0.35,
// //                 floating: false,
// //                 pinned: true,
// //                 backgroundColor: const Color(0xFF0A0A0A),
// //                 leading: GestureDetector(
// //                   onTap: () => Get.back(),
// //                   child: Container(
// //                     margin: EdgeInsets.all(width * 0.02),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.5),
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Icon(
// //                       Icons.arrow_back,
// //                       color: Colors.white,
// //                       size: width * 0.06,
// //                     ),
// //                   ),
// //                 ),
// //                 flexibleSpace: FlexibleSpaceBar(
// //                   background: Stack(
// //                     fit: StackFit.expand,
// //                     children: [
// //                       // Series Thumbnail
// //                       if (seriesData.seriesThumbUrl != null && 
// //                           seriesData.seriesThumbUrl!.isNotEmpty)
// //                         Image.network(
// //                           seriesData.seriesThumbUrl!,
// //                           fit: BoxFit.cover,
// //                           errorBuilder: (context, error, stackTrace) {
// //                             return _buildPlaceholder();
// //                           },
// //                           loadingBuilder: (context, child, loadingProgress) {
// //                             if (loadingProgress == null) return child;
// //                             return Center(
// //                               child: CircularProgressIndicator(
// //                                 color: const Color(0xFF00A8E8),
// //                               ),
// //                             );
// //                           },
// //                         )
// //                       else
// //                         _buildPlaceholder(),
                      
// //                       // Gradient Overlay
// //                       Container(
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter,
// //                             colors: [
// //                               Colors.transparent,
// //                               const Color(0xFF0A0A0A).withOpacity(0.7),
// //                               const Color(0xFF0A0A0A),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),

// //               // Series Info and Episodes
// //               SliverToBoxAdapter(
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     // Series Title and Info
// //                     Padding(
// //                       padding: EdgeInsets.all(width * 0.04),
// //                       child: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             seriesData.episodeName ?? 'Unknown Series',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: width * 0.07,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                           SizedBox(height: height * 0.015),
                          
// //                           // Series Stats
// //                           Wrap(
// //                             spacing: width * 0.03,
// //                             runSpacing: height * 0.01,
// //                             children: [
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].imdbRating != null)
// //                                 _buildStatChip(
// //                                   Icons.star,
// //                                   controller.episodes[0].imdbRating!.toStringAsFixed(1),
// //                                   Colors.amber,
// //                                   width,
// //                                 ),
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].createdAt != null)
// //                                 _buildStatChip(
// //                                   Icons.calendar_today,
// //                                   DateTime.parse(controller.episodes[0].createdAt!)
// //                                       .year.toString(),
// //                                   Colors.grey,
// //                                   width,
// //                                 ),
// //                               _buildStatChip(
// //                                 Icons.video_library,
// //                                 '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// //                                 Colors.blue,
// //                                 width,
// //                               ),
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].quality != null)
// //                                 _buildStatChip(
// //                                   Icons.hd,
// //                                   controller.episodes[0].quality!,
// //                                   Colors.purple,
// //                                   width,
// //                                 ),
// //                             ],
// //                           ),
                          
// //                           SizedBox(height: height * 0.02),
                          
// //                           // Description
// //                           if (controller.episodes.isNotEmpty && 
// //                               controller.episodes[0].description != null)
// //                             Text(
// //                               controller.episodes[0].description!,
// //                               style: TextStyle(
// //                                 color: Colors.grey[300],
// //                                 fontSize: width * 0.04,
// //                                 height: 1.5,
// //                               ),
// //                             ),
                          
// //                           SizedBox(height: height * 0.02),
                          
// //                           // Genre and Languages
// //                           if (controller.episodes.isNotEmpty)
// //                             Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               children: [
// //                                 if (controller.episodes[0].genre != null) ...[
// //                                   Row(
// //                                     children: [
// //                                       Icon(
// //                                         Icons.category,
// //                                         color: Colors.grey[400],
// //                                         size: width * 0.045,
// //                                       ),
// //                                       SizedBox(width: width * 0.02),
// //                                       Text(
// //                                         controller.episodes[0].genre!,
// //                                         style: TextStyle(
// //                                           color: Colors.grey[400],
// //                                           fontSize: width * 0.038,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                   SizedBox(height: height * 0.01),
// //                                 ],
// //                                 if (controller.episodes[0].languages != null && 
// //                                     controller.episodes[0].languages!.isNotEmpty) ...[
// //                                   Row(
// //                                     children: [
// //                                       Icon(
// //                                         Icons.language,
// //                                         color: Colors.grey[400],
// //                                         size: width * 0.045,
// //                                       ),
// //                                       SizedBox(width: width * 0.02),
// //                                       Text(
// //                                         controller.episodes[0].languages!.join(', ').toUpperCase(),
// //                                         style: TextStyle(
// //                                           color: Colors.grey[400],
// //                                           fontSize: width * 0.038,
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                 ],
// //                               ],
// //                             ),
// //                         ],
// //                       ),
// //                     ),

// //                     SizedBox(height: height * 0.02),

// //                     // Episodes Section Header
// //                     Padding(
// //                       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                       child: Row(
// //                         children: [
// //                           Text(
// //                             'Episodes',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: width * 0.05,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                           const Spacer(),
// //                           Text(
// //                             '${controller.episodes.length} total',
// //                             style: TextStyle(
// //                               color: Colors.grey[400],
// //                               fontSize: width * 0.038,
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),

// //                     SizedBox(height: height * 0.02),

// //                     // Episodes List
// //                     if (controller.episodes.isEmpty)
// //                       Center(
// //                         child: Padding(
// //                           padding: EdgeInsets.symmetric(vertical: height * 0.1),
// //                           child: Text(
// //                             'No episodes available',
// //                             style: TextStyle(
// //                               color: Colors.grey[400],
// //                               fontSize: width * 0.045,
// //                             ),
// //                           ),
// //                         ),
// //                       )
// //                     else
// //                       ListView.builder(
// //                         shrinkWrap: true,
// //                         physics: const NeverScrollableScrollPhysics(),
// //                         padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                         itemCount: controller.episodes.length,
// //                         itemBuilder: (context, index) {
// //                           final episode = controller.episodes[index];
// //                           return _buildEpisodeCard(
// //                             episode, 
// //                             index, 
// //                             width, 
// //                             height,
// //                             controller,
// //                           );
// //                         },
// //                       ),

// //                     SizedBox(height: height * 0.05),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           );
// //         }),
// //       ),
// //     );
// //   }

// //   Widget _buildStatChip(IconData icon, String text, Color color, double width) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         horizontal: width * 0.025,
// //         vertical: width * 0.015,
// //       ),
// //       decoration: BoxDecoration(
// //         color: color.withOpacity(0.15),
// //         borderRadius: BorderRadius.circular(8),
// //         border: Border.all(
// //           color: color.withOpacity(0.3),
// //           width: 1,
// //         ),
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(icon, color: color, size: width * 0.04),
// //           SizedBox(width: width * 0.015),
// //           Text(
// //             text,
// //             style: TextStyle(
// //               color: color,
// //               fontSize: width * 0.035,
// //               fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodeCard(
// //     Video episode, 
// //     int index, 
// //     double width, 
// //     double height,
// //     SeriesDetailController controller,
// //   ) {
// //     // Build thumbnail URL
// //     String? thumbnailUrl = episode.thumbUrl;

// //     return GestureDetector(
// //       onTap: () {
// //         if (episode.id != null) {
// //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// //         } else {
// //           controller.showToast('Invalid episode ID', isError: true);
// //         }
// //       },
// //       child: Container(
// //         margin: EdgeInsets.only(bottom: height * 0.02),
// //         decoration: BoxDecoration(
// //           color: Colors.grey[900]?.withOpacity(0.3),
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             // Episode Thumbnail
// //             Stack(
// //               children: [
// //                 Container(
// //                   height: height * 0.22,
// //                   decoration: BoxDecoration(
// //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                     color: Colors.grey[800],
// //                   ),
// //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// //                       ? ClipRRect(
// //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                           child: Image.network(
// //                             thumbnailUrl,
// //                             width: double.infinity,
// //                             height: double.infinity,
// //                             fit: BoxFit.cover,
// //                             errorBuilder: (context, error, stackTrace) {
// //                               return _buildEpisodePlaceholder(width);
// //                             },
// //                             loadingBuilder: (context, child, loadingProgress) {
// //                               if (loadingProgress == null) return child;
// //                               return Center(
// //                                 child: CircularProgressIndicator(
// //                                   color: const Color(0xFF00A8E8),
// //                                 ),
// //                               );
// //                             },
// //                           ),
// //                         )
// //                       : _buildEpisodePlaceholder(width),
// //                 ),
                
// //                 // Play Button Overlay
// //                 Positioned.fill(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.transparent,
// //                           Colors.black.withOpacity(0.6),
// //                         ],
// //                       ),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         padding: EdgeInsets.all(width * 0.03),
// //                         decoration: BoxDecoration(
// //                           color: Colors.white.withOpacity(0.3),
// //                           shape: BoxShape.circle,
// //                         ),
// //                         child: Icon(
// //                           Icons.play_arrow,
// //                           color: Colors.white,
// //                           size: width * 0.1,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 // Episode Number Badge
// //                 Positioned(
// //                   top: width * 0.03,
// //                   left: width * 0.03,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(
// //                       horizontal: width * 0.025,
// //                       vertical: width * 0.015,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.7),
// //                       borderRadius: BorderRadius.circular(6),
// //                     ),
// //                     child: Text(
// //                       'EP ${episode.episodeSeq ?? index + 1}',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: width * 0.035,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 // Duration Badge
// //                 if (episode.runtimeMinutes != null)
// //                   Positioned(
// //                     top: width * 0.03,
// //                     right: width * 0.03,
// //                     child: Container(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: width * 0.025,
// //                         vertical: width * 0.015,
// //                       ),
// //                       decoration: BoxDecoration(
// //                         color: Colors.black.withOpacity(0.7),
// //                         borderRadius: BorderRadius.circular(6),
// //                       ),
// //                       child: Text(
// //                         controller.formatDuration(episode.runtimeMinutes),
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: width * 0.035,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //               ],
// //             ),
            
// //             // Episode Info
// //             Padding(
// //               padding: EdgeInsets.all(width * 0.04),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     episode.videoTitle ?? 'Episode ${index + 1}',
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: width * 0.045,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                     maxLines: 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                   SizedBox(height: height * 0.01),
                  
// //                   Row(
// //                     children: [
// //                       if (episode.createdAt != null) ...[
// //                         Icon(
// //                           Icons.calendar_today,
// //                           color: Colors.grey[400],
// //                           size: width * 0.035,
// //                         ),
// //                         SizedBox(width: width * 0.015),
// //                         Text(
// //                           controller.formatDate(episode.createdAt),
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: width * 0.035,
// //                           ),
// //                         ),
// //                       ],
// //                       if (episode.imdbRating != null) ...[
// //                         SizedBox(width: width * 0.03),
// //                         Icon(
// //                           Icons.star,
// //                           color: Colors.amber,
// //                           size: width * 0.04,
// //                         ),
// //                         SizedBox(width: width * 0.01),
// //                         Text(
// //                           episode.imdbRating!.toStringAsFixed(1),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: width * 0.035,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ],
// //                   ),
                  
// //                   if (episode.description != null) ...[
// //                     SizedBox(height: height * 0.01),
// //                     Text(
// //                       episode.description!,
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.037,
// //                         height: 1.4,
// //                       ),
// //                       maxLines: 2,
// //                       overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ],
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildPlaceholder() {
// //     return Container(
// //       color: Colors.grey[900],
// //       child: Center(
// //         child: Icon(
// //           Icons.movie,
// //           color: Colors.grey[700],
// //           size: 80,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodePlaceholder(double width) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //         color: Colors.grey[800],
// //       ),
// //       child: Center(
// //         child: Icon(
// //           Icons.video_library,
// //           color: Colors.grey[600],
// //           size: width * 0.15,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Updated Models (added seriesTrailerUrl field)
// // class SeriesResponse {
// //   final String? episodeName;
// //   final int? totalEpisodes;
// //   final String? latestRelease;
// //   final String? seriesPosterKey;
// //   final String? seriesThumbKey;
// //   final String? seriesPosterUrl;
// //   String? seriesThumbUrl;
// //   final String? seriesTrailerUrl; // Added for trailer support
// //   final List<Video>? videos;

// //   SeriesResponse({
// //     this.episodeName,
// //     this.totalEpisodes,
// //     this.latestRelease,
// //     this.seriesPosterKey,
// //     this.seriesThumbKey,
// //     this.seriesPosterUrl,
// //     this.seriesThumbUrl,
// //     this.seriesTrailerUrl,
// //     this.videos,
// //   });

// //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// //     return SeriesResponse(
// //       episodeName: json['episodeName']?.toString(),
// //       totalEpisodes: json['totalEpisodes'] != null ? int.tryParse(json['totalEpisodes'].toString()) : null,
// //       latestRelease: json['latestRelease']?.toString(),
// //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// //       seriesTrailerUrl: json['seriesTrailerUrl']?.toString(), // Added parsing
// //       videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
// //     );
// //   }
// // }

// // class Video {
// //   final String? id;
// //   final String? episodeName;
// //   final String? videoTitle;
// //   final String? description;
// //   final List<String>? actors;
// //   final List<String>? writers;
// //   final double? imdbRating;
// //   final String? releaseDate;
// //   final List<String>? countries;
// //   final String? genre;
// //   final List<String>? languages;
// //   final String? videoType;
// //   final int? runtimeMinutes;
// //   final String? quality;
// //   final String? posterKey;
// //   final String? thumbKey;
// //   final String? thumbUrl;
// //   final String? posterUrl;
// //   final int? episodeSeq;
// //   final String? episodeCode;
// //   final List<String>? resolutions;
// //   final Mp4Keys? mp4Keys;
// //   final String? createdAt;
// //   final List<String>? qualities;

// //   Video({
// //     this.id,
// //     this.episodeName,
// //     this.videoTitle,
// //     this.description,
// //     this.actors,
// //     this.writers,
// //     this.imdbRating,
// //     this.releaseDate,
// //     this.countries,
// //     this.genre,
// //     this.languages,
// //     this.videoType,
// //     this.runtimeMinutes,
// //     this.quality,
// //     this.posterKey,
// //     this.thumbKey,
// //     this.thumbUrl,
// //     this.posterUrl,
// //     this.episodeSeq,
// //     this.episodeCode,
// //     this.resolutions,
// //     this.mp4Keys,
// //     this.createdAt,
// //     this.qualities,
// //   });

// //   factory Video.fromJson(Map<String, dynamic> json) {
// //     return Video(
// //       id: json['id']?.toString(),
// //       episodeName: json['episodeName']?.toString(),
// //       videoTitle: json['title']?.toString(),
// //       description: json['description']?.toString(),
// //       actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
// //       writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
// //       imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
// //       releaseDate: json['releaseDate']?.toString(),
// //       countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
// //       genre: json['genre']?.toString(),
// //       languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
// //       videoType: json['videoType']?.toString(),
// //       runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
// //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
// //       posterKey: json['posterKey']?.toString(),
// //       thumbKey: json['thumbKey']?.toString(),
// //       thumbUrl: json['thumbUrl']?.toString(),
// //       posterUrl: json['posterUrl']?.toString(),
// //       episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
// //       episodeCode: json['episodeCode']?.toString(),
// //       resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
// //       mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
// //       createdAt: json['createdAt']?.toString(),
// //       qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
// //     );
// //   }
// // }

// // class Mp4Keys {
// //   final String? quality360p;
// //   final String? quality480p;
// //   final String? quality720p;

// //   Mp4Keys({
// //     this.quality360p,
// //     this.quality480p,
// //     this.quality720p,
// //   });

// //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// //     return Mp4Keys(
// //       quality360p: json['360p']?.toString(),
// //       quality480p: json['480p']?.toString(),
// //       quality720p: json['720p']?.toString(),
// //     );
// //   }
// // }




// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Controller for Series Detail
// // class SeriesDetailController extends GetxController {
// //   RxBool isLoading = false.obs;
// //   RxList<Video> episodes = <Video>[].obs;
// //   RxBool isSubscriptionRequired = false.obs;
// //   RxString subscriptionMessage = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// //   late SeriesResponse seriesData;

// //   void initSeriesData(SeriesResponse initialData) {
// //     seriesData = initialData;
// //     fetchEpisodes(initialData.episodeName ?? '');
// //   }

// //   Future<void> fetchEpisodes(String episodeName) async {
// //     if (episodeName.isEmpty) {
// //       showToast('Invalid series name', isError: true);
// //       isLoading.value = false;
// //       return;
// //     }

// //     isLoading.value = true;
// //     isSubscriptionRequired.value = false;
// //     subscriptionMessage.value = '';

// //     try {
// //       final token = await getToken();
// //       if (token == null) {
// //         showToast('Authentication required', isError: true);
// //         isLoading.value = false;
// //         return;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       if (response.statusCode == 403) {
// //         try {
// //           final Map<String, dynamic> data = jsonDecode(response.body);
// //           if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //             isSubscriptionRequired.value = true;
// //             subscriptionMessage.value = data['message'].toString();
// //             isLoading.value = false;
// //             return;
// //           }
// //         } catch (e) {
// //           print('Error parsing 403 response: $e');
// //         }
// //       }

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// //         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //           isSubscriptionRequired.value = true;
// //           subscriptionMessage.value = data['message'].toString();
// //           isLoading.value = false;
// //           return;
// //         }
        
// //         final List<dynamic>? parts = data['parts'];
// //         if (parts != null && parts.isNotEmpty) {
// //           seriesData = SeriesResponse(
// //             episodeName: episodeName,
// //             totalEpisodes: parts.length,
// //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// //           );

// //           episodes.value = List<Video>.from(seriesData.videos!)
// //             ..sort((a, b) {
// //               if (a.createdAt != null && b.createdAt != null) {
// //                 final dateComparison = DateTime.parse(b.createdAt!)
// //                     .compareTo(DateTime.parse(a.createdAt!));
// //                 if (dateComparison != 0) return dateComparison;
// //               }
// //               if (a.episodeSeq != null && b.episodeSeq != null) {
// //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// //               }
// //               return 0;
// //             });

// //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// //           }
// //         } else {
// //           showToast('No episodes found', isError: true);
// //         }
// //       } else {
// //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching episodes: $e');
// //       showToast('An error occurred while loading episodes', isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
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

// //   String formatDuration(int? minutes) {
// //     if (minutes == null) return 'N/A';
// //     if (minutes < 60) return '${minutes}m';
// //     final hours = minutes ~/ 60;
// //     final mins = minutes % 60;
// //     return '${hours}h ${mins}m';
// //   }

// //   String formatDate(String? dateString) {
// //     if (dateString == null) return 'N/A';
// //     try {
// //       final date = DateTime.parse(dateString);
// //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// //     } catch (e) {
// //       return 'N/A';
// //     }
// //   }
// // }

// // class SeriesDetailScreen extends StatelessWidget {
// //   final SeriesResponse seriesData;

// //   const SeriesDetailScreen({super.key, required this.seriesData});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// //     controller.initSeriesData(seriesData);

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: SafeArea(
// //         child: OrientationBuilder(
// //           builder: (context, orientation) {
// //             final size = MediaQuery.of(context).size;
// //             final isLandscape = orientation == Orientation.landscape;
            
// //             // Dynamic sizing based on orientation
// //             final height = size.height;
// //             final width = size.width;
// //             final crossAxisCount = isLandscape ? 2 : 1;
// //             final headerHeight = isLandscape ? height * 0.5 : height * 0.35;
            
// //             return Obx(() {
// //               if (controller.isLoading.value) {
// //                 return Center(
// //                   child: CircularProgressIndicator(
// //                     color: const Color(0xFF00A8E8),
// //                   ),
// //                 );
// //               }

// //               if (controller.isSubscriptionRequired.value) {
// //                 return SingleChildScrollView(
// //                   child: Container(
// //                     height: height,
// //                     padding: EdgeInsets.all(width * 0.05),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Icon(
// //                           Icons.lock_outline,
// //                           color: Colors.red,
// //                           size: isLandscape ? width * 0.1 : width * 0.2,
// //                         ),
// //                         SizedBox(height: height * 0.03),
// //                         Text(
// //                           controller.subscriptionMessage.value,
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         SizedBox(height: height * 0.02),
// //                         Text(
// //                           'Please subscribe to access this series.',
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               }

// //               return CustomScrollView(
// //                 slivers: [
// //                   // App Bar with Back Button
// //                   SliverAppBar(
// //                     expandedHeight: headerHeight,
// //                     floating: false,
// //                     pinned: true,
// //                     backgroundColor: const Color(0xFF0A0A0A),
// //                     leading: GestureDetector(
// //                       onTap: () => Get.back(),
// //                       child: Container(
// //                         margin: EdgeInsets.all(width * 0.02),
// //                         decoration: BoxDecoration(
// //                           color: Colors.black.withOpacity(0.5),
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         child: Icon(
// //                           Icons.arrow_back,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.04 : width * 0.06,
// //                         ),
// //                       ),
// //                     ),
// //                     flexibleSpace: FlexibleSpaceBar(
// //                       background: Stack(
// //                         fit: StackFit.expand,
// //                         children: [
// //                           if (seriesData.seriesThumbUrl != null && 
// //                               seriesData.seriesThumbUrl!.isNotEmpty)
// //                             Image.network(
// //                               seriesData.seriesThumbUrl!,
// //                               fit: BoxFit.cover,
// //                               errorBuilder: (context, error, stackTrace) {
// //                                 return _buildPlaceholder();
// //                               },
// //                               loadingBuilder: (context, child, loadingProgress) {
// //                                 if (loadingProgress == null) return child;
// //                                 return Center(
// //                                   child: CircularProgressIndicator(
// //                                     color: const Color(0xFF00A8E8),
// //                                   ),
// //                                 );
// //                               },
// //                             )
// //                           else
// //                             _buildPlaceholder(),
                          
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 begin: Alignment.topCenter,
// //                                 end: Alignment.bottomCenter,
// //                                 colors: [
// //                                   Colors.transparent,
// //                                   const Color(0xFF0A0A0A).withOpacity(0.7),
// //                                   const Color(0xFF0A0A0A),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   // Series Info and Episodes
// //                   SliverToBoxAdapter(
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(width * 0.04),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 seriesData.episodeName ?? 'Unknown Series',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.04 : width * 0.07,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                               SizedBox(height: height * 0.015),
                              
// //                               Wrap(
// //                                 spacing: width * 0.02,
// //                                 runSpacing: height * 0.01,
// //                                 children: [
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].imdbRating != null)
// //                                     _buildStatChip(
// //                                       Icons.star,
// //                                       controller.episodes[0].imdbRating!.toStringAsFixed(1),
// //                                       Colors.amber,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].createdAt != null)
// //                                     _buildStatChip(
// //                                       Icons.calendar_today,
// //                                       DateTime.parse(controller.episodes[0].createdAt!)
// //                                           .year.toString(),
// //                                       Colors.grey,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   _buildStatChip(
// //                                     Icons.video_library,
// //                                     '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// //                                     Colors.blue,
// //                                     width,
// //                                     isLandscape,
// //                                   ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].quality != null)
// //                                     _buildStatChip(
// //                                       Icons.hd,
// //                                       controller.episodes[0].quality!,
// //                                       Colors.purple,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                 ],
// //                               ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].description != null)
// //                                 Text(
// //                                   controller.episodes[0].description!,
// //                                   style: TextStyle(
// //                                     color: Colors.grey[300],
// //                                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                                     height: 1.5,
// //                                   ),
// //                                   maxLines: isLandscape ? 3 : 4,
// //                                   overflow: TextOverflow.ellipsis,
// //                                 ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty)
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     if (controller.episodes[0].genre != null) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.category,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].genre!,
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                       SizedBox(height: height * 0.01),
// //                                     ],
// //                                     if (controller.episodes[0].languages != null && 
// //                                         controller.episodes[0].languages!.isNotEmpty) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.language,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].languages!.join(', ').toUpperCase(),
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ],
// //                                   ],
// //                                 ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         Padding(
// //                           padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                           child: Row(
// //                             children: [
// //                               Text(
// //                                 'Episodes',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               const Spacer(),
// //                               Text(
// //                                 '${controller.episodes.length} total',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         if (controller.episodes.isEmpty)
// //                           Center(
// //                             child: Padding(
// //                               padding: EdgeInsets.symmetric(vertical: height * 0.1),
// //                               child: Text(
// //                                 'No episodes available',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.045,
// //                                 ),
// //                               ),
// //                             ),
// //                           )
// //                         else
// //                           isLandscape
// //                               ? _buildLandscapeEpisodeGrid(
// //                                   controller, 
// //                                   width, 
// //                                   height, 
// //                                   crossAxisCount,
// //                                 )
// //                               : _buildPortraitEpisodeList(
// //                                   controller, 
// //                                   width, 
// //                                   height,
// //                                 ),

// //                         SizedBox(height: height * 0.05),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               );
// //             });
// //           },
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildLandscapeEpisodeGrid(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //     int crossAxisCount,
// //   ) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: crossAxisCount,
// //         crossAxisSpacing: width * 0.02,
// //         mainAxisSpacing: height * 0.02,
// //         childAspectRatio: 1.6,
// //       ),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: true,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildPortraitEpisodeList(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //   ) {
// //     return ListView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: false,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildStatChip(IconData icon, String text, Color color, double width, bool isLandscape) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         horizontal: width * 0.02,
// //         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //       ),
// //       decoration: BoxDecoration(
// //         color: color.withOpacity(0.15),
// //         borderRadius: BorderRadius.circular(8),
// //         border: Border.all(
// //           color: color.withOpacity(0.3),
// //           width: 1,
// //         ),
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(icon, color: color, size: isLandscape ? width * 0.025 : width * 0.04),
// //           SizedBox(width: width * 0.01),
// //           Text(
// //             text,
// //             style: TextStyle(
// //               color: color,
// //               fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //               fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodeCard(
// //     Video episode,
// //     int index,
// //     double width,
// //     double height,
// //     SeriesDetailController controller, {
// //     required bool isLandscape,
// //   }) {
// //     String? thumbnailUrl = episode.thumbUrl;
// //     final cardHeight = isLandscape ? height * 0.35 : height * 0.22;

// //     return GestureDetector(
// //       onTap: () {
// //         if (episode.id != null) {
// //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// //         } else {
// //           controller.showToast('Invalid episode ID', isError: true);
// //         }
// //       },
// //       child: Container(
// //         margin: EdgeInsets.only(bottom: isLandscape ? 0 : height * 0.02),
// //         decoration: BoxDecoration(
// //           color: Colors.grey[900]?.withOpacity(0.3),
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Stack(
// //               children: [
// //                 Container(
// //                   height: cardHeight,
// //                   decoration: BoxDecoration(
// //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                     color: Colors.grey[800],
// //                   ),
// //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// //                       ? ClipRRect(
// //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                           child: Image.network(
// //                             thumbnailUrl,
// //                             width: double.infinity,
// //                             height: double.infinity,
// //                             fit: BoxFit.cover,
// //                             errorBuilder: (context, error, stackTrace) {
// //                               return _buildEpisodePlaceholder(width, isLandscape);
// //                             },
// //                             loadingBuilder: (context, child, loadingProgress) {
// //                               if (loadingProgress == null) return child;
// //                               return Center(
// //                                 child: CircularProgressIndicator(
// //                                   color: const Color(0xFF00A8E8),
// //                                 ),
// //                               );
// //                             },
// //                           ),
// //                         )
// //                       : _buildEpisodePlaceholder(width, isLandscape),
// //                 ),
                
// //                 Positioned.fill(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.transparent,
// //                           Colors.black.withOpacity(0.6),
// //                         ],
// //                       ),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
// //                         decoration: BoxDecoration(
// //                           color: Colors.white.withOpacity(0.3),
// //                           shape: BoxShape.circle,
// //                         ),
// //                         child: Icon(
// //                           Icons.play_arrow,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.05 : width * 0.1,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 Positioned(
// //                   top: width * 0.02,
// //                   left: width * 0.02,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(
// //                       horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                       vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.7),
// //                       borderRadius: BorderRadius.circular(6),
// //                     ),
// //                     child: Text(
// //                       'EP ${episode.episodeSeq ?? index + 1}',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 if (episode.runtimeMinutes != null)
// //                   Positioned(
// //                     top: width * 0.02,
// //                     right: width * 0.02,
// //                     child: Container(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                       ),
// //                       decoration: BoxDecoration(
// //                         color: Colors.black.withOpacity(0.7),
// //                         borderRadius: BorderRadius.circular(6),
// //                       ),
// //                       child: Text(
// //                         controller.formatDuration(episode.runtimeMinutes),
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //               ],
// //             ),
            
// //             Padding(
// //               padding: EdgeInsets.all(isLandscape ? width * 0.025 : width * 0.04),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     episode.videoTitle ?? 'Episode ${index + 1}',
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                     maxLines: isLandscape ? 1 : 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                   SizedBox(height: isLandscape ? height * 0.005 : height * 0.01),
                  
// //                   Row(
// //                     children: [
// //                       if (episode.createdAt != null) ...[
// //                         Icon(
// //                           Icons.calendar_today,
// //                           color: Colors.grey[400],
// //                           size: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                         SizedBox(width: width * 0.01),
// //                         Text(
// //                           controller.formatDate(episode.createdAt),
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                           ),
// //                         ),
// //                       ],
// //                       if (episode.imdbRating != null) ...[
// //                         SizedBox(width: width * 0.02),
// //                         Icon(
// //                           Icons.star,
// //                           color: Colors.amber,
// //                           size: isLandscape ? width * 0.025 : width * 0.04,
// //                         ),
// //                         SizedBox(width: width * 0.008),
// //                         Text(
// //                           episode.imdbRating!.toStringAsFixed(1),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ],
// //                   ),
                  
// //                   if (episode.description != null && !isLandscape) ...[
// //                     SizedBox(height: height * 0.01),
// //                     Text(
// //                       episode.description!,
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.037,
// //                         height: 1.4,
// //                       ),
// //                       maxLines: 2,
// //                       overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ],
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildPlaceholder() {
// //     return Container(
// //       color: Colors.grey[900],
// //       child: Center(
// //         child: Icon(
// //           Icons.movie,
// //           color: Colors.grey[700],
// //           size: 80,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodePlaceholder(double width, bool isLandscape) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //         color: Colors.grey[800],
// //       ),
// //       child: Center(
// //         child: Icon(
// //           Icons.video_library,
// //           color: Colors.grey[600],
// //           size: isLandscape ? width * 0.08 : width * 0.15,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Models
// // class SeriesResponse {
// //   final String? episodeName;
// //   final int? totalEpisodes;
// //   final String? latestRelease;
// //   final String? seriesPosterKey;
// //   final String? seriesThumbKey;
// //   final String? seriesPosterUrl;
// //   String? seriesThumbUrl;
// //   final String? seriesTrailerUrl;
// //   final List<Video>? videos;

// //   SeriesResponse({
// //     this.episodeName,
// //     this.totalEpisodes,
// //     this.latestRelease,
// //     this.seriesPosterKey,
// //     this.seriesThumbKey,
// //     this.seriesPosterUrl,
// //     this.seriesThumbUrl,
// //     this.seriesTrailerUrl,
// //     this.videos,
// //   });

// //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// //     return SeriesResponse(
// //       episodeName: json['episodeName']?.toString(),
// //       totalEpisodes: json['totalEpisodes'] != null ? int.tryParse(json['totalEpisodes'].toString()) : null,
// //       latestRelease: json['latestRelease']?.toString(),
// //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// //       seriesTrailerUrl: json['seriesTrailerUrl']?.toString(),
// //       videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
// //     );
// //   }
// // }

// // class Video {
// //   final String? id;
// //   final String? episodeName;
// //   final String? videoTitle;
// //   final String? description;
// //   final List<String>? actors;
// //   final List<String>? writers;
// //   final double? imdbRating;
// //   final String? releaseDate;
// //   final List<String>? countries;
// //   final String? genre;
// //   final List<String>? languages;
// //   final String? videoType;
// //   final int? runtimeMinutes;
// //   final String? quality;
// //   final String? posterKey;
// //   final String? thumbKey;
// //   final String? thumbUrl;
// //   final String? posterUrl;
// //   final int? episodeSeq;
// //   final String? episodeCode;
// //   final List<String>? resolutions;
// //   final Mp4Keys? mp4Keys;
// //   final String? createdAt;
// //   final List<String>? qualities;

// //   Video({
// //     this.id,
// //     this.episodeName,
// //     this.videoTitle,
// //     this.description,
// //     this.actors,
// //     this.writers,
// //     this.imdbRating,
// //     this.releaseDate,
// //     this.countries,
// //     this.genre,
// //     this.languages,
// //     this.videoType,
// //     this.runtimeMinutes,
// //     this.quality,
// //     this.posterKey,
// //     this.thumbKey,
// //     this.thumbUrl,
// //     this.posterUrl,
// //     this.episodeSeq,
// //     this.episodeCode,
// //     this.resolutions,
// //     this.mp4Keys,
// //     this.createdAt,
// //     this.qualities,
// //   });

// //   factory Video.fromJson(Map<String, dynamic> json) {
// //     return Video(
// //       id: json['id']?.toString(),
// //       episodeName: json['episodeName']?.toString(),
// //       videoTitle: json['title']?.toString(),
// //       description: json['description']?.toString(),
// //       actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
// //       writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
// //       imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
// //       releaseDate: json['releaseDate']?.toString(),
// //       countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
// //       genre: json['genre']?.toString(),
// //       languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
// //       videoType: json['videoType']?.toString(),
// //       runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
// //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
// //       posterKey: json['posterKey']?.toString(),
// //       thumbKey: json['thumbKey']?.toString(),
// //       thumbUrl: json['thumbUrl']?.toString(),
// //       posterUrl: json['posterUrl']?.toString(),
// //       episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
// //       episodeCode: json['episodeCode']?.toString(),
// //       resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
// //       mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
// //       createdAt: json['createdAt']?.toString(),
// //       qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
// //     );
// //   }
// // }

// // class Mp4Keys {
// //   final String? quality360p;
// //   final String? quality480p;
// //   final String? quality720p;

// //   Mp4Keys({
// //     this.quality360p,
// //     this.quality480p,
// //     this.quality720p,
// //   });

// //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// //     return Mp4Keys(
// //       quality360p: json['360p']?.toString(),
// //       quality480p: json['480p']?.toString(),
// //       quality720p: json['720p']?.toString(),
// //     );
// //   }
// // }




// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Controller for Series Detail
// // class SeriesDetailController extends GetxController {
// //   RxBool isLoading = false.obs;
// //   RxList<Video> episodes = <Video>[].obs;
// //   RxBool isSubscriptionRequired = false.obs;
// //   RxString subscriptionMessage = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// //   late SeriesResponse seriesData;

// //   void initSeriesData(SeriesResponse initialData) {
// //     seriesData = initialData;
// //     fetchEpisodes(initialData.episodeName ?? '');
// //   }

// //   Future<void> fetchEpisodes(String episodeName) async {
// //     if (episodeName.isEmpty) {
// //       showToast('Invalid series name', isError: true);
// //       isLoading.value = false;
// //       return;
// //     }

// //     isLoading.value = true;
// //     isSubscriptionRequired.value = false;
// //     subscriptionMessage.value = '';

// //     try {
// //       final token = await getToken();
// //       if (token == null) {
// //         showToast('Authentication required', isError: true);
// //         isLoading.value = false;
// //         return;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       if (response.statusCode == 403) {
// //         try {
// //           final Map<String, dynamic> data = jsonDecode(response.body);
// //           if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //             isSubscriptionRequired.value = true;
// //             subscriptionMessage.value = data['message'].toString();
// //             isLoading.value = false;
// //             return;
// //           }
// //         } catch (e) {
// //           print('Error parsing 403 response: $e');
// //         }
// //       }

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// //         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //           isSubscriptionRequired.value = true;
// //           subscriptionMessage.value = data['message'].toString();
// //           isLoading.value = false;
// //           return;
// //         }
        
// //         final List<dynamic>? parts = data['parts'];
// //         if (parts != null && parts.isNotEmpty) {
// //           seriesData = SeriesResponse(
// //             episodeName: episodeName,
// //             totalEpisodes: parts.length,
// //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// //           );

// //           episodes.value = List<Video>.from(seriesData.videos!)
// //             ..sort((a, b) {
// //               if (a.createdAt != null && b.createdAt != null) {
// //                 final dateComparison = DateTime.parse(b.createdAt!)
// //                     .compareTo(DateTime.parse(a.createdAt!));
// //                 if (dateComparison != 0) return dateComparison;
// //               }
// //               if (a.episodeSeq != null && b.episodeSeq != null) {
// //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// //               }
// //               return 0;
// //             });

// //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// //           }
// //         } else {
// //           showToast('No episodes found', isError: true);
// //         }
// //       } else {
// //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching episodes: $e');
// //       showToast('An error occurred while loading episodes', isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
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

// //   String formatDuration(int? minutes) {
// //     if (minutes == null) return 'N/A';
// //     if (minutes < 60) return '${minutes}m';
// //     final hours = minutes ~/ 60;
// //     final mins = minutes % 60;
// //     return '${hours}h ${mins}m';
// //   }

// //   String formatDate(String? dateString) {
// //     if (dateString == null) return 'N/A';
// //     try {
// //       final date = DateTime.parse(dateString);
// //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// //     } catch (e) {
// //       return 'N/A';
// //     }
// //   }
// // }

// // class SeriesDetailScreen extends StatelessWidget {
// //   final SeriesResponse seriesData;

// //   const SeriesDetailScreen({super.key, required this.seriesData});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// //     controller.initSeriesData(seriesData);

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: SafeArea(
// //         child: OrientationBuilder(
// //           builder: (context, orientation) {
// //             final size = MediaQuery.of(context).size;
// //             final isLandscape = orientation == Orientation.landscape;
            
// //             // Dynamic sizing based on orientation
// //             final height = size.height;
// //             final width = size.width;
// //             final crossAxisCount = isLandscape ? 2 : 1;
// //             final headerHeight = isLandscape ? height * 0.5 : height * 0.35;
            
// //             return Obx(() {
// //               if (controller.isLoading.value) {
// //                 return Center(
// //                   child: CircularProgressIndicator(
// //                     color: const Color(0xFF00A8E8),
// //                   ),
// //                 );
// //               }

// //               if (controller.isSubscriptionRequired.value) {
// //                 return SingleChildScrollView(
// //                   child: Container(
// //                     height: height,
// //                     padding: EdgeInsets.all(width * 0.05),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Icon(
// //                           Icons.lock_outline,
// //                           color: Colors.red,
// //                           size: isLandscape ? width * 0.1 : width * 0.2,
// //                         ),
// //                         SizedBox(height: height * 0.03),
// //                         Text(
// //                           controller.subscriptionMessage.value,
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         SizedBox(height: height * 0.02),
// //                         Text(
// //                           'Please subscribe to access this series.',
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               }

// //               return CustomScrollView(
// //                 slivers: [
// //                   // App Bar with Back Button
// //                   SliverAppBar(
// //                     expandedHeight: headerHeight,
// //                     floating: false,
// //                     pinned: true,
// //                     backgroundColor: const Color(0xFF0A0A0A),
// //                     leading: GestureDetector(
// //                       onTap: () => Get.back(),
// //                       child: Container(
// //                         margin: EdgeInsets.all(width * 0.02),
// //                         decoration: BoxDecoration(
// //                           color: Colors.black.withOpacity(0.5),
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         child: Icon(
// //                           Icons.arrow_back,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.04 : width * 0.06,
// //                         ),
// //                       ),
// //                     ),
// //                     flexibleSpace: FlexibleSpaceBar(
// //                       background: Stack(
// //                         fit: StackFit.expand,
// //                         children: [
// //                           if (seriesData.seriesThumbUrl != null && 
// //                               seriesData.seriesThumbUrl!.isNotEmpty)
// //                             Image.network(
// //                               seriesData.seriesThumbUrl!,
// //                               fit: BoxFit.cover,
// //                               errorBuilder: (context, error, stackTrace) {
// //                                 return _buildPlaceholder();
// //                               },
// //                               loadingBuilder: (context, child, loadingProgress) {
// //                                 if (loadingProgress == null) return child;
// //                                 return Center(
// //                                   child: CircularProgressIndicator(
// //                                     color: const Color(0xFF00A8E8),
// //                                   ),
// //                                 );
// //                               },
// //                             )
// //                           else
// //                             _buildPlaceholder(),
                          
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 begin: Alignment.topCenter,
// //                                 end: Alignment.bottomCenter,
// //                                 colors: [
// //                                   Colors.transparent,
// //                                   const Color(0xFF0A0A0A).withOpacity(0.7),
// //                                   const Color(0xFF0A0A0A),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   // Series Info and Episodes
// //                   SliverToBoxAdapter(
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(width * 0.04),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 seriesData.episodeName ?? 'Unknown Series',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.04 : width * 0.07,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                               SizedBox(height: height * 0.015),
                              
// //                               Wrap(
// //                                 spacing: width * 0.02,
// //                                 runSpacing: height * 0.01,
// //                                 children: [
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].imdbRating != null)
// //                                     _buildStatChip(
// //                                       Icons.star,
// //                                       controller.episodes[0].imdbRating!.toStringAsFixed(1),
// //                                       Colors.amber,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].createdAt != null)
// //                                     _buildStatChip(
// //                                       Icons.calendar_today,
// //                                       DateTime.parse(controller.episodes[0].createdAt!)
// //                                           .year.toString(),
// //                                       Colors.grey,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   _buildStatChip(
// //                                     Icons.video_library,
// //                                     '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// //                                     Colors.blue,
// //                                     width,
// //                                     isLandscape,
// //                                   ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].quality != null)
// //                                     _buildStatChip(
// //                                       Icons.hd,
// //                                       'HD',
// //                                       Colors.purple,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                 ],
// //                               ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].description != null)
// //                                 Text(
// //                                   controller.episodes[0].description!,
// //                                   style: TextStyle(
// //                                     color: Colors.grey[300],
// //                                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                                     height: 1.5,
// //                                   ),
// //                                   maxLines: isLandscape ? 3 : 4,
// //                                   overflow: TextOverflow.ellipsis,
// //                                 ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty)
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     if (controller.episodes[0].genre != null) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.category,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].genre!,
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                       SizedBox(height: height * 0.01),
// //                                     ],
// //                                     if (controller.episodes[0].languages != null && 
// //                                         controller.episodes[0].languages!.isNotEmpty) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.language,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].languages!.join(', ').toUpperCase(),
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ],
// //                                   ],
// //                                 ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         Padding(
// //                           padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                           child: Row(
// //                             children: [
// //                               Text(
// //                                 'Episodes',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               const Spacer(),
// //                               Text(
// //                                 '${controller.episodes.length} total',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         if (controller.episodes.isEmpty)
// //                           Center(
// //                             child: Padding(
// //                               padding: EdgeInsets.symmetric(vertical: height * 0.1),
// //                               child: Text(
// //                                 'No episodes available',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.045,
// //                                 ),
// //                               ),
// //                             ),
// //                           )
// //                         else
// //                           isLandscape
// //                               ? _buildLandscapeEpisodeGrid(
// //                                   controller, 
// //                                   width, 
// //                                   height, 
// //                                   crossAxisCount,
// //                                 )
// //                               : _buildPortraitEpisodeList(
// //                                   controller, 
// //                                   width, 
// //                                   height,
// //                                 ),

// //                         SizedBox(height: height * 0.05),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               );
// //             });
// //           },
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildLandscapeEpisodeGrid(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //     int crossAxisCount,
// //   ) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: crossAxisCount,
// //         crossAxisSpacing: width * 0.02,
// //         mainAxisSpacing: height * 0.02,
// //         childAspectRatio: 1.6,
// //       ),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: true,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildPortraitEpisodeList(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //   ) {
// //     return ListView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: false,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildStatChip(IconData icon, String text, Color color, double width, bool isLandscape) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         horizontal: width * 0.02,
// //         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //       ),
// //       decoration: BoxDecoration(
// //         color: color.withOpacity(0.15),
// //         borderRadius: BorderRadius.circular(8),
// //         border: Border.all(
// //           color: color.withOpacity(0.3),
// //           width: 1,
// //         ),
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(icon, color: color, size: isLandscape ? width * 0.025 : width * 0.04),
// //           SizedBox(width: width * 0.01),
// //           Text(
// //             text,
// //             style: TextStyle(
// //               color: color,
// //               fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //               fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodeCard(
// //     Video episode,
// //     int index,
// //     double width,
// //     double height,
// //     SeriesDetailController controller, {
// //     required bool isLandscape,
// //   }) {
// //     String? thumbnailUrl = episode.thumbUrl;
// //     final cardHeight = isLandscape ? height * 0.35 : height * 0.22;

// //     return GestureDetector(
// //       onTap: () {
// //         if (episode.id != null) {
// //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// //         } else {
// //           controller.showToast('Invalid episode ID', isError: true);
// //         }
// //       },
// //       child: Container(
// //         margin: EdgeInsets.only(bottom: isLandscape ? 0 : height * 0.02),
// //         decoration: BoxDecoration(
// //           color: Colors.grey[900]?.withOpacity(0.3),
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Stack(
// //               children: [
// //                 Container(
// //                   height: cardHeight,
// //                   decoration: BoxDecoration(
// //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                     color: Colors.grey[800],
// //                   ),
// //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// //                       ? ClipRRect(
// //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                           child: Image.network(
// //                             thumbnailUrl,
// //                             width: double.infinity,
// //                             height: double.infinity,
// //                             fit: BoxFit.cover,
// //                             errorBuilder: (context, error, stackTrace) {
// //                               return _buildEpisodePlaceholder(width, isLandscape);
// //                             },
// //                             loadingBuilder: (context, child, loadingProgress) {
// //                               if (loadingProgress == null) return child;
// //                               return Center(
// //                                 child: CircularProgressIndicator(
// //                                   color: const Color(0xFF00A8E8),
// //                                 ),
// //                               );
// //                             },
// //                           ),
// //                         )
// //                       : _buildEpisodePlaceholder(width, isLandscape),
// //                 ),
                
// //                 Positioned.fill(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.transparent,
// //                           Colors.black.withOpacity(0.6),
// //                         ],
// //                       ),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
// //                         decoration: BoxDecoration(
// //                           color: Colors.white.withOpacity(0.3),
// //                           shape: BoxShape.circle,
// //                         ),
// //                         child: Icon(
// //                           Icons.play_arrow,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.05 : width * 0.1,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 Positioned(
// //                   top: width * 0.02,
// //                   left: width * 0.02,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(
// //                       horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                       vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.7),
// //                       borderRadius: BorderRadius.circular(6),
// //                     ),
// //                     child: Text(
// //                       'EP ${episode.episodeSeq ?? index + 1}',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 if (episode.runtimeMinutes != null)
// //                   Positioned(
// //                     top: width * 0.02,
// //                     right: width * 0.02,
// //                     child: Container(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                       ),
// //                       decoration: BoxDecoration(
// //                         color: Colors.black.withOpacity(0.7),
// //                         borderRadius: BorderRadius.circular(6),
// //                       ),
// //                       child: Text(
// //                         controller.formatDuration(episode.runtimeMinutes),
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //               ],
// //             ),
            
// //             Padding(
// //               padding: EdgeInsets.all(isLandscape ? width * 0.025 : width * 0.04),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     episode.videoTitle ?? 'Episode ${index + 1}',
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                     maxLines: isLandscape ? 1 : 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                   SizedBox(height: isLandscape ? height * 0.005 : height * 0.01),
                  
// //                   Row(
// //                     children: [
// //                       if (episode.createdAt != null) ...[
// //                         Icon(
// //                           Icons.calendar_today,
// //                           color: Colors.grey[400],
// //                           size: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                         SizedBox(width: width * 0.01),
// //                         Text(
// //                           controller.formatDate(episode.createdAt),
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                           ),
// //                         ),
// //                       ],
// //                       if (episode.imdbRating != null) ...[
// //                         SizedBox(width: width * 0.02),
// //                         Icon(
// //                           Icons.star,
// //                           color: Colors.amber,
// //                           size: isLandscape ? width * 0.025 : width * 0.04,
// //                         ),
// //                         SizedBox(width: width * 0.008),
// //                         Text(
// //                           episode.imdbRating!.toStringAsFixed(1),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ],
// //                   ),
                  
// //                   if (episode.description != null && !isLandscape) ...[
// //                     SizedBox(height: height * 0.01),
// //                     Text(
// //                       episode.description!,
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.037,
// //                         height: 1.4,
// //                       ),
// //                       maxLines: 2,
// //                       overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ],
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildPlaceholder() {
// //     return Container(
// //       color: Colors.grey[900],
// //       child: Center(
// //         child: Icon(
// //           Icons.movie,
// //           color: Colors.grey[700],
// //           size: 80,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodePlaceholder(double width, bool isLandscape) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //         color: Colors.grey[800],
// //       ),
// //       child: Center(
// //         child: Icon(
// //           Icons.video_library,
// //           color: Colors.grey[600],
// //           size: isLandscape ? width * 0.08 : width * 0.15,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Models
// // class SeriesResponse {
// //   final String? episodeName;
// //   final int? totalEpisodes;
// //   final String? latestRelease;
// //   final String? seriesPosterKey;
// //   final String? seriesThumbKey;
// //   final String? seriesPosterUrl;
// //   String? seriesThumbUrl;
// //   final String? seriesTrailerUrl;
// //   final List<Video>? videos;

// //   SeriesResponse({
// //     this.episodeName,
// //     this.totalEpisodes,
// //     this.latestRelease,
// //     this.seriesPosterKey,
// //     this.seriesThumbKey,
// //     this.seriesPosterUrl,
// //     this.seriesThumbUrl,
// //     this.seriesTrailerUrl,
// //     this.videos,
// //   });

// //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// //     return SeriesResponse(
// //       episodeName: json['episodeName']?.toString(),
// //       totalEpisodes: json['totalEpisodes'] != null ? int.tryParse(json['totalEpisodes'].toString()) : null,
// //       latestRelease: json['latestRelease']?.toString(),
// //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// //       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
// //       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
// //       seriesTrailerUrl: json['seriesTrailerUrl']?.toString(),
// //       videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
// //     );
// //   }
// // }

// // class Video {
// //   final String? id;
// //   final String? episodeName;
// //   final String? videoTitle;
// //   final String? description;
// //   final List<String>? actors;
// //   final List<String>? writers;
// //   final double? imdbRating;
// //   final String? releaseDate;
// //   final List<String>? countries;
// //   final String? genre;
// //   final List<String>? languages;
// //   final String? videoType;
// //   final int? runtimeMinutes;
// //   final String? quality;
// //   final String? posterKey;
// //   final String? thumbKey;
// //   final String? thumbUrl;
// //   final String? posterUrl;
// //   final int? episodeSeq;
// //   final String? episodeCode;
// //   final List<String>? resolutions;
// //   final Mp4Keys? mp4Keys;
// //   final String? createdAt;
// //   final List<String>? qualities;

// //   Video({
// //     this.id,
// //     this.episodeName,
// //     this.videoTitle,
// //     this.description,
// //     this.actors,
// //     this.writers,
// //     this.imdbRating,
// //     this.releaseDate,
// //     this.countries,
// //     this.genre,
// //     this.languages,
// //     this.videoType,
// //     this.runtimeMinutes,
// //     this.quality,
// //     this.posterKey,
// //     this.thumbKey,
// //     this.thumbUrl,
// //     this.posterUrl,
// //     this.episodeSeq,
// //     this.episodeCode,
// //     this.resolutions,
// //     this.mp4Keys,
// //     this.createdAt,
// //     this.qualities,
// //   });

// //   factory Video.fromJson(Map<String, dynamic> json) {
// //     return Video(
// //       id: json['id']?.toString(),
// //       episodeName: json['episodeName']?.toString(),
// //       videoTitle: json['title']?.toString(),
// //       description: json['description']?.toString(),
// //       actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
// //       writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
// //       imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
// //       releaseDate: json['releaseDate']?.toString(),
// //       countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
// //       genre: json['genre']?.toString(),
// //       languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
// //       videoType: json['videoType']?.toString(),
// //       runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
// //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
// //       posterKey: json['posterKey']?.toString(),
// //       thumbKey: json['thumbKey']?.toString(),
// //       thumbUrl: json['thumbUrl']?.toString(),
// //       posterUrl: json['posterUrl']?.toString(),
// //       episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
// //       episodeCode: json['episodeCode']?.toString(),
// //       resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
// //       mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
// //       createdAt: json['createdAt']?.toString(),
// //       qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
// //     );
// //   }
// // }

// // class Mp4Keys {
// //   final String? quality360p;
// //   final String? quality480p;
// //   final String? quality720p;

// //   Mp4Keys({
// //     this.quality360p,
// //     this.quality480p,
// //     this.quality720p,
// //   });

// //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// //     return Mp4Keys(
// //       quality360p: json['360p']?.toString(),
// //       quality480p: json['480p']?.toString(),
// //       quality720p: json['720p']?.toString(),
// //     );
// //   }
// // }



// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:ott/View/Screen/Movieplayerscreen.dart';
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // // Controller for Series Detail
// // class SeriesDetailController extends GetxController {
// //   RxBool isLoading = false.obs;
// //   RxList<Video> episodes = <Video>[].obs;
// //   RxBool isSubscriptionRequired = false.obs;
// //   RxString subscriptionMessage = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
// //   late SeriesResponse seriesData;

// //   void initSeriesData(SeriesResponse initialData) {
// //     seriesData = initialData;
// //     fetchEpisodes(initialData.episodeName ?? '');
// //   }

// //   Future<void> fetchEpisodes(String episodeName) async {
// //     if (episodeName.isEmpty) {
// //       showToast('Invalid series name', isError: true);
// //       isLoading.value = false;
// //       return;
// //     }

// //     isLoading.value = true;
// //     isSubscriptionRequired.value = false;
// //     subscriptionMessage.value = '';

// //     try {
// //       final token = await getToken();
// //       if (token == null) {
// //         showToast('Authentication required', isError: true);
// //         isLoading.value = false;
// //         return;
// //       }

// //       final response = await http.get(
// //         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
// //         headers: {
// //           'Content-Type': 'application/json',
// //           'Authorization': 'Bearer $token',
// //         },
// //       );

// //       if (response.statusCode == 403) {
// //         try {
// //           final Map<String, dynamic> data = jsonDecode(response.body);
// //           if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //             isSubscriptionRequired.value = true;
// //             subscriptionMessage.value = data['message'].toString();
// //             isLoading.value = false;
// //             return;
// //           }
// //         } catch (e) {
// //           print('Error parsing 403 response: $e');
// //         }
// //       }

// //       if (response.statusCode == 200) {
// //         final Map<String, dynamic> data = jsonDecode(response.body);
        
// //         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
// //           isSubscriptionRequired.value = true;
// //           subscriptionMessage.value = data['message'].toString();
// //           isLoading.value = false;
// //           return;
// //         }
        
// //         final List<dynamic>? parts = data['parts'];
// //         if (parts != null && parts.isNotEmpty) {
// //           seriesData = SeriesResponse(
// //             episodeName: episodeName,
// //             totalEpisodes: parts.length,
// //             videos: parts.map((v) => Video.fromJson(v)).toList(),
// //           );

// //           episodes.value = List<Video>.from(seriesData.videos!)
// //             ..sort((a, b) {
// //               if (a.createdAt != null && b.createdAt != null) {
// //                 final dateComparison = DateTime.parse(b.createdAt!)
// //                     .compareTo(DateTime.parse(a.createdAt!));
// //                 if (dateComparison != 0) return dateComparison;
// //               }
// //               if (a.episodeSeq != null && b.episodeSeq != null) {
// //                 return a.episodeSeq!.compareTo(b.episodeSeq!);
// //               }
// //               return 0;
// //             });

// //           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
// //             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
// //           }
// //         } else {
// //           showToast('No episodes found', isError: true);
// //         }
// //       } else {
// //         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
// //       }
// //     } catch (e) {
// //       print('Error fetching episodes: $e');
// //       showToast('An error occurred while loading episodes', isError: true);
// //     } finally {
// //       isLoading.value = false;
// //     }
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

// //   String formatDuration(int? minutes) {
// //     if (minutes == null) return 'N/A';
// //     if (minutes < 60) return '${minutes}m';
// //     final hours = minutes ~/ 60;
// //     final mins = minutes % 60;
// //     return '${hours}h ${mins}m';
// //   }

// //   String formatDate(String? dateString) {
// //     if (dateString == null) return 'N/A';
// //     try {
// //       final date = DateTime.parse(dateString);
// //       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
// //                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
// //       return '${months[date.month - 1]} ${date.day}, ${date.year}';
// //     } catch (e) {
// //       return 'N/A';
// //     }
// //   }
// // }

// // class SeriesDetailScreen extends StatelessWidget {
// //   final SeriesResponse seriesData;

// //   const SeriesDetailScreen({super.key, required this.seriesData});

// //   @override
// //   Widget build(BuildContext context) {
// //     final SeriesDetailController controller = Get.put(SeriesDetailController());
// //     controller.initSeriesData(seriesData);

// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0A0A0A),
// //       body: SafeArea(
// //         child: OrientationBuilder(
// //           builder: (context, orientation) {
// //             final size = MediaQuery.of(context).size;
// //             final isLandscape = orientation == Orientation.landscape;
            
// //             // Dynamic sizing based on orientation
// //             final height = size.height;
// //             final width = size.width;
// //             final crossAxisCount = isLandscape ? 2 : 1;
// //             final headerHeight = isLandscape ? height * 0.5 : height * 0.35;
            
// //             return Obx(() {
// //               if (controller.isLoading.value) {
// //                 return Center(
// //                   child: CircularProgressIndicator(
// //                     color: const Color(0xFF00A8E8),
// //                   ),
// //                 );
// //               }

// //               if (controller.isSubscriptionRequired.value) {
// //                 return SingleChildScrollView(
// //                   child: Container(
// //                     height: height,
// //                     padding: EdgeInsets.all(width * 0.05),
// //                     child: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Icon(
// //                           Icons.lock_outline,
// //                           color: Colors.red,
// //                           size: isLandscape ? width * 0.1 : width * 0.2,
// //                         ),
// //                         SizedBox(height: height * 0.03),
// //                         Text(
// //                           controller.subscriptionMessage.value,
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                         SizedBox(height: height * 0.02),
// //                         Text(
// //                           'Please subscribe to access this series.',
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                           ),
// //                           textAlign: TextAlign.center,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               }

// //               return CustomScrollView(
// //                 slivers: [
// //                   // App Bar with Back Button
// //                   SliverAppBar(
// //                     expandedHeight: headerHeight,
// //                     floating: false,
// //                     pinned: true,
// //                     backgroundColor: const Color(0xFF0A0A0A),
// //                     leading: GestureDetector(
// //                       onTap: () => Get.back(),
// //                       child: Container(
// //                         margin: EdgeInsets.all(width * 0.02),
// //                         decoration: BoxDecoration(
// //                           color: Colors.black.withOpacity(0.5),
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                         child: Icon(
// //                           Icons.arrow_back,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.04 : width * 0.06,
// //                         ),
// //                       ),
// //                     ),
// //                     flexibleSpace: FlexibleSpaceBar(
// //                       background: Stack(
// //                         fit: StackFit.expand,
// //                         children: [
// //                           if (seriesData.seriesThumbUrl != null && 
// //                               seriesData.seriesThumbUrl!.isNotEmpty)
// //                             Image.network(
// //                               seriesData.seriesThumbUrl!,
// //                               fit: BoxFit.cover,
// //                               errorBuilder: (context, error, stackTrace) {
// //                                 return _buildPlaceholder();
// //                               },
// //                               loadingBuilder: (context, child, loadingProgress) {
// //                                 if (loadingProgress == null) return child;
// //                                 return Center(
// //                                   child: CircularProgressIndicator(
// //                                     color: const Color(0xFF00A8E8),
// //                                   ),
// //                                 );
// //                               },
// //                             )
// //                           else
// //                             _buildPlaceholder(),
                          
// //                           Container(
// //                             decoration: BoxDecoration(
// //                               gradient: LinearGradient(
// //                                 begin: Alignment.topCenter,
// //                                 end: Alignment.bottomCenter,
// //                                 colors: [
// //                                   Colors.transparent,
// //                                   const Color(0xFF0A0A0A).withOpacity(0.7),
// //                                   const Color(0xFF0A0A0A),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),

// //                   // Series Info and Episodes
// //                   SliverToBoxAdapter(
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         Padding(
// //                           padding: EdgeInsets.all(width * 0.04),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 seriesData.episodeName ?? 'Unknown Series',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.04 : width * 0.07,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                               SizedBox(height: height * 0.015),
                              
// //                               Wrap(
// //                                 spacing: width * 0.02,
// //                                 runSpacing: height * 0.01,
// //                                 children: [
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].imdbRating != null)
// //                                     _buildStatChip(
// //                                       Icons.star,
// //                                       controller.episodes[0].imdbRating!.toStringAsFixed(1),
// //                                       Colors.amber,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].createdAt != null)
// //                                     _buildStatChip(
// //                                       Icons.calendar_today,
// //                                       DateTime.parse(controller.episodes[0].createdAt!)
// //                                           .year.toString(),
// //                                       Colors.grey,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                   _buildStatChip(
// //                                     Icons.video_library,
// //                                     '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
// //                                     Colors.blue,
// //                                     width,
// //                                     isLandscape,
// //                                   ),
// //                                   if (controller.episodes.isNotEmpty && 
// //                                       controller.episodes[0].quality != null)
// //                                     _buildStatChip(
// //                                       Icons.hd,
// //                                       'HD',
// //                                       Colors.purple,
// //                                       width,
// //                                       isLandscape,
// //                                     ),
// //                                 ],
// //                               ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty && 
// //                                   controller.episodes[0].description != null)
// //                                 Text(
// //                                   controller.episodes[0].description!,
// //                                   style: TextStyle(
// //                                     color: Colors.grey[300],
// //                                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                                     height: 1.5,
// //                                   ),
// //                                   maxLines: isLandscape ? 3 : 4,
// //                                   overflow: TextOverflow.ellipsis,
// //                                 ),
                              
// //                               SizedBox(height: height * 0.02),
                              
// //                               if (controller.episodes.isNotEmpty)
// //                                 Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     if (controller.episodes[0].genre != null) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.category,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].genre!,
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                       SizedBox(height: height * 0.01),
// //                                     ],
// //                                     if (controller.episodes[0].languages != null && 
// //                                         controller.episodes[0].languages!.isNotEmpty) ...[
// //                                       Row(
// //                                         children: [
// //                                           Icon(
// //                                             Icons.language,
// //                                             color: Colors.grey[400],
// //                                             size: isLandscape ? width * 0.03 : width * 0.045,
// //                                           ),
// //                                           SizedBox(width: width * 0.02),
// //                                           Flexible(
// //                                             child: Text(
// //                                               controller.episodes[0].languages!.join(', ').toUpperCase(),
// //                                               style: TextStyle(
// //                                                 color: Colors.grey[400],
// //                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                               ),
// //                                               overflow: TextOverflow.ellipsis,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ],
// //                                   ],
// //                                 ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         Padding(
// //                           padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //                           child: Row(
// //                             children: [
// //                               Text(
// //                                 'Episodes',
// //                                 style: TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.05,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                               const Spacer(),
// //                               Text(
// //                                 '${controller.episodes.length} total',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.025 : width * 0.038,
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),

// //                         SizedBox(height: height * 0.02),

// //                         if (controller.episodes.isEmpty)
// //                           Center(
// //                             child: Padding(
// //                               padding: EdgeInsets.symmetric(vertical: height * 0.1),
// //                               child: Text(
// //                                 'No episodes available',
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: isLandscape ? width * 0.03 : width * 0.045,
// //                                 ),
// //                               ),
// //                             ),
// //                           )
// //                         else
// //                           isLandscape
// //                               ? _buildLandscapeEpisodeGrid(
// //                                   controller, 
// //                                   width, 
// //                                   height, 
// //                                   crossAxisCount,
// //                                 )
// //                               : _buildPortraitEpisodeList(
// //                                   controller, 
// //                                   width, 
// //                                   height,
// //                                 ),

// //                         SizedBox(height: height * 0.05),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               );
// //             });
// //           },
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildLandscapeEpisodeGrid(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //     int crossAxisCount,
// //   ) {
// //     return GridView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //         crossAxisCount: crossAxisCount,
// //         crossAxisSpacing: width * 0.02,
// //         mainAxisSpacing: height * 0.02,
// //         childAspectRatio: 1.6,
// //       ),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: true,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildPortraitEpisodeList(
// //     SeriesDetailController controller,
// //     double width,
// //     double height,
// //   ) {
// //     return ListView.builder(
// //       shrinkWrap: true,
// //       physics: const NeverScrollableScrollPhysics(),
// //       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
// //       itemCount: controller.episodes.length,
// //       itemBuilder: (context, index) {
// //         final episode = controller.episodes[index];
// //         return _buildEpisodeCard(
// //           episode,
// //           index,
// //           width,
// //           height,
// //           controller,
// //           isLandscape: false,
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildStatChip(IconData icon, String text, Color color, double width, bool isLandscape) {
// //     return Container(
// //       padding: EdgeInsets.symmetric(
// //         horizontal: width * 0.02,
// //         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //       ),
// //       decoration: BoxDecoration(
// //         color: color.withOpacity(0.15),
// //         borderRadius: BorderRadius.circular(8),
// //         border: Border.all(
// //           color: color.withOpacity(0.3),
// //           width: 1,
// //         ),
// //       ),
// //       child: Row(
// //         mainAxisSize: MainAxisSize.min,
// //         children: [
// //           Icon(icon, color: color, size: isLandscape ? width * 0.025 : width * 0.04),
// //           SizedBox(width: width * 0.01),
// //           Text(
// //             text,
// //             style: TextStyle(
// //               color: color,
// //               fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //               fontWeight: FontWeight.w600,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodeCard(
// //     Video episode,
// //     int index,
// //     double width,
// //     double height,
// //     SeriesDetailController controller, {
// //     required bool isLandscape,
// //   }) {
// //     String? thumbnailUrl = episode.thumbUrl;
// //     final cardHeight = isLandscape ? height * 0.35 : height * 0.22;

// //     return GestureDetector(
// //       onTap: () {
// //         if (episode.id != null) {
// //           Get.to(() => Movieplayerscreen(videoId: episode.id!));
// //         } else {
// //           controller.showToast('Invalid episode ID', isError: true);
// //         }
// //       },
// //       child: Container(
// //         margin: EdgeInsets.only(bottom: isLandscape ? 0 : height * 0.02),
// //         decoration: BoxDecoration(
// //           color: Colors.grey[900]?.withOpacity(0.3),
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Stack(
// //               children: [
// //                 Container(
// //                   height: cardHeight,
// //                   decoration: BoxDecoration(
// //                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                     color: Colors.grey[800],
// //                   ),
// //                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
// //                       ? ClipRRect(
// //                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                           child: Image.network(
// //                             thumbnailUrl,
// //                             width: double.infinity,
// //                             height: double.infinity,
// //                             fit: BoxFit.cover,
// //                             errorBuilder: (context, error, stackTrace) {
// //                               return _buildEpisodePlaceholder(width, isLandscape);
// //                             },
// //                             loadingBuilder: (context, child, loadingProgress) {
// //                               if (loadingProgress == null) return child;
// //                               return Center(
// //                                 child: CircularProgressIndicator(
// //                                   color: const Color(0xFF00A8E8),
// //                                 ),
// //                               );
// //                             },
// //                           ),
// //                         )
// //                       : _buildEpisodePlaceholder(width, isLandscape),
// //                 ),
                
// //                 Positioned.fill(
// //                   child: Container(
// //                     decoration: BoxDecoration(
// //                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.transparent,
// //                           Colors.black.withOpacity(0.6),
// //                         ],
// //                       ),
// //                     ),
// //                     child: Center(
// //                       child: Container(
// //                         padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
// //                         decoration: BoxDecoration(
// //                           color: Colors.white.withOpacity(0.3),
// //                           shape: BoxShape.circle,
// //                         ),
// //                         child: Icon(
// //                           Icons.play_arrow,
// //                           color: Colors.white,
// //                           size: isLandscape ? width * 0.05 : width * 0.1,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 Positioned(
// //                   top: width * 0.02,
// //                   left: width * 0.02,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(
// //                       horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                       vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                     ),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.7),
// //                       borderRadius: BorderRadius.circular(6),
// //                     ),
// //                     child: Text(
// //                       'EP ${episode.episodeSeq ?? index + 1}',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
                
// //                 if (episode.runtimeMinutes != null)
// //                   Positioned(
// //                     top: width * 0.02,
// //                     right: width * 0.02,
// //                     child: Container(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: isLandscape ? width * 0.015 : width * 0.025,
// //                         vertical: isLandscape ? width * 0.008 : width * 0.015,
// //                       ),
// //                       decoration: BoxDecoration(
// //                         color: Colors.black.withOpacity(0.7),
// //                         borderRadius: BorderRadius.circular(6),
// //                       ),
// //                       child: Text(
// //                         controller.formatDuration(episode.runtimeMinutes),
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //               ],
// //             ),
            
// //             Padding(
// //               padding: EdgeInsets.all(isLandscape ? width * 0.025 : width * 0.04),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     episode.videoTitle ?? 'Episode ${index + 1}',
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                     maxLines: isLandscape ? 1 : 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                   SizedBox(height: isLandscape ? height * 0.005 : height * 0.01),
                  
// //                   Row(
// //                     children: [
// //                       if (episode.createdAt != null) ...[
// //                         Icon(
// //                           Icons.calendar_today,
// //                           color: Colors.grey[400],
// //                           size: isLandscape ? width * 0.022 : width * 0.035,
// //                         ),
// //                         SizedBox(width: width * 0.01),
// //                         Text(
// //                           controller.formatDate(episode.createdAt),
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                           ),
// //                         ),
// //                       ],
// //                       if (episode.imdbRating != null) ...[
// //                         SizedBox(width: width * 0.02),
// //                         Icon(
// //                           Icons.star,
// //                           color: Colors.amber,
// //                           size: isLandscape ? width * 0.025 : width * 0.04,
// //                         ),
// //                         SizedBox(width: width * 0.008),
// //                         Text(
// //                           episode.imdbRating!.toStringAsFixed(1),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
// //                             fontWeight: FontWeight.w600,
// //                           ),
// //                         ),
// //                       ],
// //                     ],
// //                   ),
                  
// //                   if (episode.description != null && !isLandscape) ...[
// //                     SizedBox(height: height * 0.01),
// //                     Text(
// //                       episode.description!,
// //                       style: TextStyle(
// //                         color: Colors.grey[400],
// //                         fontSize: width * 0.037,
// //                         height: 1.4,
// //                       ),
// //                       maxLines: 2,
// //                       overflow: TextOverflow.ellipsis,
// //                     ),
// //                   ],
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildPlaceholder() {
// //     return Container(
// //       color: Colors.grey[900],
// //       child: Center(
// //         child: Icon(
// //           Icons.movie,
// //           color: Colors.grey[700],
// //           size: 80,
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildEpisodePlaceholder(double width, bool isLandscape) {
// //     return Container(
// //       decoration: BoxDecoration(
// //         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //         color: Colors.grey[800],
// //       ),
// //       child: Center(
// //         child: Icon(
// //           Icons.video_library,
// //           color: Colors.grey[600],
// //           size: isLandscape ? width * 0.08 : width * 0.15,
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // Models
// // class SeriesResponse {
// //   final String? episodeName;
// //   final int? totalEpisodes;
// //   final String? latestRelease;
// //   final String? seriesPosterKey;
// //   final String? seriesThumbKey;
// //   final String? seriesPosterUrl;
// //   String? seriesThumbUrl;
// //   final String? seriesTrailerUrl;
// //   final List<Video>? videos;

// //   SeriesResponse({
// //     this.episodeName,
// //     this.totalEpisodes,
// //     this.latestRelease,
// //     this.seriesPosterKey,
// //     this.seriesThumbKey,
// //     this.seriesPosterUrl,
// //     this.seriesThumbUrl,
// //     this.seriesTrailerUrl,
// //     this.videos,
// //   });

// //   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
// //     return SeriesResponse(
// //       episodeName: json['episodeName']?.toString(),
// //       totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
// //       latestRelease: json['latestRelease']?.toString(),
// //       seriesPosterKey: json['seriesPosterKey']?.toString(),
// //       seriesThumbKey: json['seriesThumbKey']?.toString(),
// //       seriesPosterUrl: json['posterUrl']?.toString(),
// //       seriesThumbUrl: json['thumbUrl']?.toString(),
// //       seriesTrailerUrl: json['trailerUrl']?.toString(),
// //       videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
// //     );
// //   }
// // }

// // class Video {
// //   final String? id;
// //   final String? episodeName;
// //   final String? videoTitle;
// //   final String? description;
// //   final List<String>? actors;
// //   final List<String>? writers;
// //   final double? imdbRating;
// //   final String? releaseDate;
// //   final List<String>? countries;
// //   final String? genre;
// //   final List<String>? languages;
// //   final String? videoType;
// //   final int? runtimeMinutes;
// //   final String? quality;
// //   final String? posterKey;
// //   final String? thumbKey;
// //   final String? thumbUrl;
// //   final String? posterUrl;
// //   final int? episodeSeq;
// //   final String? episodeCode;
// //   final List<String>? resolutions;
// //   final Mp4Keys? mp4Keys;
// //   final String? createdAt;
// //   final List<String>? qualities;

// //   Video({
// //     this.id,
// //     this.episodeName,
// //     this.videoTitle,
// //     this.description,
// //     this.actors,
// //     this.writers,
// //     this.imdbRating,
// //     this.releaseDate,
// //     this.countries,
// //     this.genre,
// //     this.languages,
// //     this.videoType,
// //     this.runtimeMinutes,
// //     this.quality,
// //     this.posterKey,
// //     this.thumbKey,
// //     this.thumbUrl,
// //     this.posterUrl,
// //     this.episodeSeq,
// //     this.episodeCode,
// //     this.resolutions,
// //     this.mp4Keys,
// //     this.createdAt,
// //     this.qualities,
// //   });

// //   factory Video.fromJson(Map<String, dynamic> json) {
// //     return Video(
// //       id: json['id']?.toString(),
// //       episodeName: json['episodeName']?.toString(),
// //       videoTitle: json['title']?.toString(),
// //       description: json['description']?.toString(),
// //       actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
// //       writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
// //       imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
// //       releaseDate: json['releaseDate']?.toString(),
// //       countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
// //       genre: json['genre']?.toString(),
// //       languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
// //       videoType: json['videoType']?.toString(),
// //       runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
// //       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
// //       posterKey: json['posterKey']?.toString(),
// //       thumbKey: json['thumbKey']?.toString(),
// //       thumbUrl: json['thumbUrl']?.toString(),
// //       posterUrl: json['posterUrl']?.toString(),
// //       episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
// //       episodeCode: json['episodeCode']?.toString(),
// //       resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
// //       mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
// //       createdAt: json['createdAt']?.toString(),
// //       qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
// //     );
// //   }
// // }

// // class Mp4Keys {
// //   final String? quality360p;
// //   final String? quality480p;
// //   final String? quality720p;

// //   Mp4Keys({
// //     this.quality360p,
// //     this.quality480p,
// //     this.quality720p,
// //   });

// //   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
// //     return Mp4Keys(
// //       quality360p: json['360p']?.toString(),
// //       quality480p: json['480p']?.toString(),
// //       quality720p: json['720p']?.toString(),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:ott/View/Screen/Movieplayerscreen.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// // Controller for Series Detail
// class SeriesDetailController extends GetxController {
//   RxBool isLoading = false.obs;
//   RxList<Video> episodes = <Video>[].obs;
//   RxBool isSubscriptionRequired = false.obs;
//   RxString subscriptionMessage = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
//   late SeriesResponse seriesData;

//   void initSeriesData(SeriesResponse initialData) {
//     seriesData = initialData;
//     fetchEpisodes(initialData.episodeName ?? '');
//   }

//   Future<void> fetchEpisodes(String episodeName) async {
//     if (episodeName.isEmpty) {
//       showToast('Invalid series name', isError: true);
//       isLoading.value = false;
//       return;
//     }

//     isLoading.value = true;
//     isSubscriptionRequired.value = false;
//     subscriptionMessage.value = '';

//     try {
//       final token = await getToken();
//       if (token == null) {
//         showToast('Authentication required', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 403) {
//         try {
//           final Map<String, dynamic> data = jsonDecode(response.body);
//           if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
//             isSubscriptionRequired.value = true;
//             subscriptionMessage.value = data['message'].toString();
//             isLoading.value = false;
//             return;
//           }
//         } catch (e) {
//           print('Error parsing 403 response: $e');
//         }
//       }

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
        
//         if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
//           isSubscriptionRequired.value = true;
//           subscriptionMessage.value = data['message'].toString();
//           isLoading.value = false;
//           return;
//         }
        
//         final List<dynamic>? parts = data['parts'];
//         if (parts != null && parts.isNotEmpty) {
//           seriesData = SeriesResponse(
//             episodeName: episodeName,
//             totalEpisodes: parts.length,
//             videos: parts.map((v) => Video.fromJson(v)).toList(),
//           );

//           episodes.value = List<Video>.from(seriesData.videos!)
//             ..sort((a, b) {
//               if (a.createdAt != null && b.createdAt != null) {
//                 final dateComparison = DateTime.parse(a.createdAt!)
//                     .compareTo(DateTime.parse(b.createdAt!));
//                 if (dateComparison != 0) return dateComparison;
//               }
//               if (a.episodeSeq != null && b.episodeSeq != null) {
//                 return a.episodeSeq!.compareTo(b.episodeSeq!);
//               }
//               return 0;
//             });

//           if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
//             seriesData.seriesThumbUrl = episodes[0].thumbUrl;
//           }
//         } else {
//           showToast('No episodes found', isError: true);
//         }
//       } else {
//         showToast('Failed to load episodes: ${response.statusCode}', isError: true);
//       }
//     } catch (e) {
//       print('Error fetching episodes: $e');
//       showToast('An error occurred while loading episodes', isError: true);
//     } finally {
//       isLoading.value = false;
//     }
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

//   String formatDuration(int? minutes) {
//     if (minutes == null) return 'N/A';
//     if (minutes < 60) return '${minutes}m';
//     final hours = minutes ~/ 60;
//     final mins = minutes % 60;
//     return '${hours}h ${mins}m';
//   }

//   String formatDate(String? dateString) {
//     if (dateString == null) return 'N/A';
//     try {
//       final date = DateTime.parse(dateString);
//       final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
//                       'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
//       return '${months[date.month - 1]} ${date.day}, ${date.year}';
//     } catch (e) {
//       return 'N/A';
//     }
//   }
// }

// class SeriesDetailScreen extends StatelessWidget {
//   final SeriesResponse seriesData;

//   const SeriesDetailScreen({super.key, required this.seriesData});

//   @override
//   Widget build(BuildContext context) {
//     final SeriesDetailController controller = Get.put(SeriesDetailController());
//     controller.initSeriesData(seriesData);

//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: SafeArea(
//         child: OrientationBuilder(
//           builder: (context, orientation) {
//             final size = MediaQuery.of(context).size;
//             final isLandscape = orientation == Orientation.landscape;
            
//             // Dynamic sizing based on orientation
//             final height = size.height;
//             final width = size.width;
//             final crossAxisCount = isLandscape ? 2 : 1;
//             final headerHeight = isLandscape ? height * 0.5 : height * 0.35;
            
//             return Obx(() {
//               if (controller.isLoading.value) {
//                 return Center(
//                   child: CircularProgressIndicator(
//                     color: const Color(0xFF00A8E8),
//                   ),
//                 );
//               }

//               if (controller.isSubscriptionRequired.value) {
//                 return SingleChildScrollView(
//                   child: Container(
//                     height: height,
//                     padding: EdgeInsets.all(width * 0.05),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.lock_outline,
//                           color: Colors.red,
//                           size: isLandscape ? width * 0.1 : width * 0.2,
//                         ),
//                         SizedBox(height: height * 0.03),
//                         Text(
//                           controller.subscriptionMessage.value,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? width * 0.03 : width * 0.05,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: height * 0.02),
//                         Text(
//                           'Please subscribe to access this series.',
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }

//               return CustomScrollView(
//                 slivers: [
//                   // App Bar with Back Button
//                   SliverAppBar(
//                     expandedHeight: headerHeight,
//                     floating: false,
//                     pinned: true,
//                     backgroundColor: const Color(0xFF0A0A0A),
//                     leading: GestureDetector(
//                       onTap: () => Get.back(),
//                       child: Container(
//                         margin: EdgeInsets.all(width * 0.02),
//                         decoration: BoxDecoration(
//                           color: Colors.black.withOpacity(0.5),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Icon(
//                           Icons.arrow_back,
//                           color: Colors.white,
//                           size: isLandscape ? width * 0.04 : width * 0.06,
//                         ),
//                       ),
//                     ),
//                     flexibleSpace: FlexibleSpaceBar(
//                       background: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           if (seriesData.seriesThumbUrl != null && 
//                               seriesData.seriesThumbUrl!.isNotEmpty)
//                             Image.network(
//                               seriesData.seriesThumbUrl!,
//                               fit: BoxFit.cover,
//                               errorBuilder: (context, error, stackTrace) {
//                                 return _buildPlaceholder();
//                               },
//                               loadingBuilder: (context, child, loadingProgress) {
//                                 if (loadingProgress == null) return child;
//                                 return Center(
//                                   child: CircularProgressIndicator(
//                                     color: const Color(0xFF00A8E8),
//                                   ),
//                                 );
//                               },
//                             )
//                           else
//                             _buildPlaceholder(),
                          
//                           Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.topCenter,
//                                 end: Alignment.bottomCenter,
//                                 colors: [
//                                   Colors.transparent,
//                                   const Color(0xFF0A0A0A).withOpacity(0.7),
//                                   const Color(0xFF0A0A0A),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Series Info and Episodes
//                   SliverToBoxAdapter(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(width * 0.04),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 seriesData.episodeName ?? 'Unknown Series',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: isLandscape ? width * 0.04 : width * 0.07,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(height: height * 0.015),
                              
//                               Wrap(
//                                 spacing: width * 0.02,
//                                 runSpacing: height * 0.01,
//                                 children: [
//                                   if (controller.episodes.isNotEmpty && 
//                                       controller.episodes[0].imdbRating != null)
//                                     _buildStatChip(
//                                       Icons.star,
//                                       controller.episodes[0].imdbRating!.toStringAsFixed(1),
//                                       Colors.amber,
//                                       width,
//                                       isLandscape,
//                                     ),
//                                   if (controller.episodes.isNotEmpty && 
//                                       controller.episodes[0].createdAt != null)
//                                     _buildStatChip(
//                                       Icons.calendar_today,
//                                       DateTime.parse(controller.episodes[0].createdAt!)
//                                           .year.toString(),
//                                       Colors.grey,
//                                       width,
//                                       isLandscape,
//                                     ),
//                                   _buildStatChip(
//                                     Icons.video_library,
//                                     '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
//                                     Colors.blue,
//                                     width,
//                                     isLandscape,
//                                   ),
//                                   if (controller.episodes.isNotEmpty && 
//                                       controller.episodes[0].quality != null)
//                                     _buildStatChip(
//                                       Icons.hd,
//                                       'HD',
//                                       Colors.purple,
//                                       width,
//                                       isLandscape,
//                                     ),
//                                 ],
//                               ),
                              
//                               SizedBox(height: height * 0.02),
                              
//                               if (controller.episodes.isNotEmpty && 
//                                   controller.episodes[0].description != null)
//                                 Text(
//                                   controller.episodes[0].description!,
//                                   style: TextStyle(
//                                     color: Colors.grey[300],
//                                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                                     height: 1.5,
//                                   ),
//                                   maxLines: isLandscape ? 3 : 4,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
                              
//                               SizedBox(height: height * 0.02),
                              
//                               if (controller.episodes.isNotEmpty)
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     if (controller.episodes[0].genre != null) ...[
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.category,
//                                             color: Colors.grey[400],
//                                             size: isLandscape ? width * 0.03 : width * 0.045,
//                                           ),
//                                           SizedBox(width: width * 0.02),
//                                           Flexible(
//                                             child: Text(
//                                               controller.episodes[0].genre!,
//                                               style: TextStyle(
//                                                 color: Colors.grey[400],
//                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
//                                               ),
//                                               overflow: TextOverflow.ellipsis,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       SizedBox(height: height * 0.01),
//                                     ],
//                                     if (controller.episodes[0].languages != null && 
//                                         controller.episodes[0].languages!.isNotEmpty) ...[
//                                       Row(
//                                         children: [
//                                           Icon(
//                                             Icons.language,
//                                             color: Colors.grey[400],
//                                             size: isLandscape ? width * 0.03 : width * 0.045,
//                                           ),
//                                           SizedBox(width: width * 0.02),
//                                           Flexible(
//                                             child: Text(
//                                               controller.episodes[0].languages!.join(', ').toUpperCase(),
//                                               style: TextStyle(
//                                                 color: Colors.grey[400],
//                                                 fontSize: isLandscape ? width * 0.025 : width * 0.038,
//                                               ),
//                                               overflow: TextOverflow.ellipsis,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ],
//                                 ),
//                             ],
//                           ),
//                         ),

//                         SizedBox(height: height * 0.02),

//                         Padding(
//                           padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//                           child: Row(
//                             children: [
//                               Text(
//                                 'Episodes',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: isLandscape ? width * 0.03 : width * 0.05,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const Spacer(),
//                               Text(
//                                 '${controller.episodes.length} total',
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: isLandscape ? width * 0.025 : width * 0.038,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),

//                         SizedBox(height: height * 0.02),

//                         if (controller.episodes.isEmpty)
//                           Center(
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(vertical: height * 0.1),
//                               child: Text(
//                                 'No episodes available',
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                                 ),
//                               ),
//                             ),
//                           )
//                         else
//                           isLandscape
//                               ? _buildLandscapeEpisodeGrid(
//                                   controller, 
//                                   width, 
//                                   height, 
//                                   crossAxisCount,
//                                 )
//                               : _buildPortraitEpisodeList(
//                                   controller, 
//                                   width, 
//                                   height,
//                                 ),

//                         SizedBox(height: height * 0.05),
//                       ],
//                     ),
//                   ),
//                 ],
//               );
//             });
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildLandscapeEpisodeGrid(
//     SeriesDetailController controller,
//     double width,
//     double height,
//     int crossAxisCount,
//   ) {
//     return GridView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         crossAxisSpacing: width * 0.02,
//         mainAxisSpacing: height * 0.02,
//         childAspectRatio: 1.6,
//       ),
//       itemCount: controller.episodes.length,
//       itemBuilder: (context, index) {
//         final episode = controller.episodes[index];
//         return _buildEpisodeCard(
//           episode,
//           index,
//           width,
//           height,
//           controller,
//           isLandscape: true,
//         );
//       },
//     );
//   }

//   Widget _buildPortraitEpisodeList(
//     SeriesDetailController controller,
//     double width,
//     double height,
//   ) {
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       padding: EdgeInsets.symmetric(horizontal: width * 0.04),
//       itemCount: controller.episodes.length,
//       itemBuilder: (context, index) {
//         final episode = controller.episodes[index];
//         return _buildEpisodeCard(
//           episode,
//           index,
//           width,
//           height,
//           controller,
//           isLandscape: false,
//         );
//       },
//     );
//   }

//   Widget _buildStatChip(IconData icon, String text, Color color, double width, bool isLandscape) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.02,
//         vertical: isLandscape ? width * 0.008 : width * 0.015,
//       ),
//       decoration: BoxDecoration(
//         color: color.withOpacity(0.15),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(
//           color: color.withOpacity(0.3),
//           width: 1,
//         ),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: color, size: isLandscape ? width * 0.025 : width * 0.04),
//           SizedBox(width: width * 0.01),
//           Text(
//             text,
//             style: TextStyle(
//               color: color,
//               fontSize: isLandscape ? width * 0.022 : width * 0.035,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildEpisodeCard(
//     Video episode,
//     int index,
//     double width,
//     double height,
//     SeriesDetailController controller, {
//     required bool isLandscape,
//   }) {
//     String? thumbnailUrl = episode.thumbUrl;
//     final cardHeight = isLandscape ? height * 0.35 : height * 0.22;

//     return GestureDetector(
//       onTap: () {
//         if (episode.id != null) {
//           Get.to(() => Movieplayerscreen(videoId: episode.id!));
//         } else {
//           controller.showToast('Invalid episode ID', isError: true);
//         }
//       },
//       child: Container(
//         margin: EdgeInsets.only(bottom: isLandscape ? 0 : height * 0.02),
//         decoration: BoxDecoration(
//           color: Colors.grey[900]?.withOpacity(0.3),
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   height: cardHeight,
//                   decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                     color: Colors.grey[800],
//                   ),
//                   child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
//                       ? ClipRRect(
//                           borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                           child: Image.network(
//                             thumbnailUrl,
//                             width: double.infinity,
//                             height: double.infinity,
//                             fit: BoxFit.cover,
//                             errorBuilder: (context, error, stackTrace) {
//                               return _buildEpisodePlaceholder(width, isLandscape);
//                             },
//                             loadingBuilder: (context, child, loadingProgress) {
//                               if (loadingProgress == null) return child;
//                               return Center(
//                                 child: CircularProgressIndicator(
//                                   color: const Color(0xFF00A8E8),
//                                 ),
//                               );
//                             },
//                           ),
//                         )
//                       : _buildEpisodePlaceholder(width, isLandscape),
//                 ),
                
//                 Positioned.fill(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                       gradient: LinearGradient(
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                         colors: [
//                           Colors.transparent,
//                           Colors.black.withOpacity(0.6),
//                         ],
//                       ),
//                     ),
//                     child: Center(
//                       child: Container(
//                         padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.3),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(
//                           Icons.play_arrow,
//                           color: Colors.white,
//                           size: isLandscape ? width * 0.05 : width * 0.1,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
                
//                 Positioned(
//                   top: width * 0.02,
//                   left: width * 0.02,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: isLandscape ? width * 0.015 : width * 0.025,
//                       vertical: isLandscape ? width * 0.008 : width * 0.015,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.7),
//                       borderRadius: BorderRadius.circular(6),
//                     ),
//                     child: Text(
//                       'EP ${episode.episodeSeq ?? index + 1}',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
                
//                 if (episode.runtimeMinutes != null)
//                   Positioned(
//                     top: width * 0.02,
//                     right: width * 0.02,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: isLandscape ? width * 0.015 : width * 0.025,
//                         vertical: isLandscape ? width * 0.008 : width * 0.015,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.7),
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: Text(
//                         controller.formatDuration(episode.runtimeMinutes),
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                         ),
//                       ),
//                     ),
//                   ),
//               ],
//             ),
            
//             Padding(
//               padding: EdgeInsets.all(isLandscape ? width * 0.025 : width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     episode.videoTitle ?? 'Episode ${index + 1}',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     maxLines: isLandscape ? 1 : 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   SizedBox(height: isLandscape ? height * 0.005 : height * 0.01),
                  
//                   Row(
//                     children: [
//                       if (episode.createdAt != null) ...[
//                         Icon(
//                           Icons.calendar_today,
//                           color: Colors.grey[400],
//                           size: isLandscape ? width * 0.022 : width * 0.035,
//                         ),
//                         SizedBox(width: width * 0.01),
//                         Text(
//                           controller.formatDate(episode.createdAt),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                           ),
//                         ),
//                       ],
//                       if (episode.imdbRating != null) ...[
//                         SizedBox(width: width * 0.02),
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: isLandscape ? width * 0.025 : width * 0.04,
//                         ),
//                         SizedBox(width: width * 0.008),
//                         Text(
//                           episode.imdbRating!.toStringAsFixed(1),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ],
//                   ),
                  
//                   if (episode.description != null && !isLandscape) ...[
//                     SizedBox(height: height * 0.01),
//                     Text(
//                       episode.description!,
//                       style: TextStyle(
//                         color: Colors.grey[400],
//                         fontSize: width * 0.037,
//                         height: 1.4,
//                       ),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPlaceholder() {
//     return Container(
//       color: Colors.grey[900],
//       child: Center(
//         child: Icon(
//           Icons.movie,
//           color: Colors.grey[700],
//           size: 80,
//         ),
//       ),
//     );
//   }

//   Widget _buildEpisodePlaceholder(double width, bool isLandscape) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//         color: Colors.grey[800],
//       ),
//       child: Center(
//         child: Icon(
//           Icons.video_library,
//           color: Colors.grey[600],
//           size: isLandscape ? width * 0.08 : width * 0.15,
//         ),
//       ),
//     );
//   }
// }

// // Models
// class SeriesResponse {
//   final String? episodeName;
//   final int? totalEpisodes;
//   final String? latestRelease;
//   final String? seriesPosterKey;
//   final String? seriesThumbKey;
//   final String? seriesPosterUrl;
//   String? seriesThumbUrl;
//   final String? seriesTrailerUrl;
//   final List<Video>? videos;

//   SeriesResponse({
//     this.episodeName,
//     this.totalEpisodes,
//     this.latestRelease,
//     this.seriesPosterKey,
//     this.seriesThumbKey,
//     this.seriesPosterUrl,
//     this.seriesThumbUrl,
//     this.seriesTrailerUrl,
//     this.videos,
//   });

//   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
//     return SeriesResponse(
//       episodeName: json['episodeName']?.toString(),
//       totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
//       latestRelease: json['latestRelease']?.toString(),
//       seriesPosterKey: json['seriesPosterKey']?.toString(),
//       seriesThumbKey: json['seriesThumbKey']?.toString(),
//       seriesPosterUrl: json['posterUrl']?.toString(),
//       seriesThumbUrl: json['thumbUrl']?.toString(),
//       seriesTrailerUrl: json['trailerUrl']?.toString(),
//       videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
//     );
//   }
// }

// class Video {
//   final String? id;
//   final String? episodeName;
//   final String? videoTitle;
//   final String? description;
//   final List<String>? actors;
//   final List<String>? writers;
//   final double? imdbRating;
//   final String? releaseDate;
//   final List<String>? countries;
//   final String? genre;
//   final List<String>? languages;
//   final String? videoType;
//   final int? runtimeMinutes;
//   final String? quality;
//   final String? posterKey;
//   final String? thumbKey;
//   final String? thumbUrl;
//   final String? posterUrl;
//   final int? episodeSeq;
//   final String? episodeCode;
//   final List<String>? resolutions;
//   final Mp4Keys? mp4Keys;
//   final String? createdAt;
//   final List<String>? qualities;

//   Video({
//     this.id,
//     this.episodeName,
//     this.videoTitle,
//     this.description,
//     this.actors,
//     this.writers,
//     this.imdbRating,
//     this.releaseDate,
//     this.countries,
//     this.genre,
//     this.languages,
//     this.videoType,
//     this.runtimeMinutes,
//     this.quality,
//     this.posterKey,
//     this.thumbKey,
//     this.thumbUrl,
//     this.posterUrl,
//     this.episodeSeq,
//     this.episodeCode,
//     this.resolutions,
//     this.mp4Keys,
//     this.createdAt,
//     this.qualities,
//   });

//   factory Video.fromJson(Map<String, dynamic> json) {
//     return Video(
//       id: json['id']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       videoTitle: json['title']?.toString(),
//       description: json['description']?.toString(),
//       actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
//       writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
//       imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
//       releaseDate: json['releaseDate']?.toString(),
//       countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
//       genre: json['genre']?.toString(),
//       languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
//       videoType: json['videoType']?.toString(),
//       runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
//       quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
//       posterKey: json['posterKey']?.toString(),
//       thumbKey: json['thumbKey']?.toString(),
//       thumbUrl: json['thumbUrl']?.toString(),
//       posterUrl: json['posterUrl']?.toString(),
//       episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
//       episodeCode: json['episodeCode']?.toString(),
//       resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
//       mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
//       createdAt: json['createdAt']?.toString(),
//       qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
//     );
//   }
// }

// class Mp4Keys {
//   final String? quality360p;
//   final String? quality480p;
//   final String? quality720p;

//   Mp4Keys({
//     this.quality360p,
//     this.quality480p,
//     this.quality720p,
//   });

//   factory Mp4Keys.fromJson(Map<String, dynamic> json) {
//     return Mp4Keys(
//       quality360p: json['360p']?.toString(),
//       quality480p: json['480p']?.toString(),
//       quality720p: json['720p']?.toString(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ott/View/Screen/Movieplayerscreen.dart';
import 'package:ott/View/Screen/Subscribtion.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Controller for Series Detail
class SeriesDetailController extends GetxController {
  RxBool isLoading = false.obs;
  RxList<Video> episodes = <Video>[].obs;
  RxBool isSubscriptionRequired = false.obs;
  RxString subscriptionMessage = ''.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
  late SeriesResponse seriesData;

  void initSeriesData(SeriesResponse initialData) {
    seriesData = initialData;
    fetchEpisodes(initialData.episodeName ?? '');
  }

  Future<void> fetchEpisodes(String episodeName) async {
    if (episodeName.isEmpty) {
      showToast('Invalid series name', isError: true);
      isLoading.value = false;
      return;
    }

    isLoading.value = true;
    isSubscriptionRequired.value = false;
    subscriptionMessage.value = '';

    try {
      final token = await getToken();
      if (token == null) {
        showToast('Authentication required', isError: true);
        isLoading.value = false;
        return;
      }

      final response = await http.get(
        Uri.parse('$baseUrl/videos/episodes/by-name/$episodeName'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 403) {
        try {
          final Map<String, dynamic> data = jsonDecode(response.body);
          if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
            isSubscriptionRequired.value = true;
            subscriptionMessage.value = data['message'].toString();
            isLoading.value = false;
            return;
          }
        } catch (e) {
          print('Error parsing 403 response: $e');
        }
      }

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        
        if (data['message'] != null && data['message'].toString().contains('Subscription required')) {
          isSubscriptionRequired.value = true;
          subscriptionMessage.value = data['message'].toString();
          isLoading.value = false;
          return;
        }
        
        final List<dynamic>? parts = data['parts'];
        if (parts != null && parts.isNotEmpty) {
          seriesData = SeriesResponse(
            episodeName: episodeName,
            totalEpisodes: parts.length,
            videos: parts.map((v) => Video.fromJson(v)).toList(),
          );

          episodes.value = List<Video>.from(seriesData.videos!)
            ..sort((a, b) {
              if (a.createdAt != null && b.createdAt != null) {
                final dateComparison = DateTime.parse(a.createdAt!)
                    .compareTo(DateTime.parse(b.createdAt!));
                if (dateComparison != 0) return dateComparison;
              }
              if (a.episodeSeq != null && b.episodeSeq != null) {
                return a.episodeSeq!.compareTo(b.episodeSeq!);
              }
              return 0;
            });

          if (episodes.isNotEmpty && episodes[0].thumbUrl != null) {
            seriesData.seriesThumbUrl = episodes[0].thumbUrl;
          }
        } else {
          showToast('No episodes found', isError: true);
        }
      } else {
        showToast('Failed to load episodes: ${response.statusCode}', isError: true);
      }
    } catch (e) {
      print('Error fetching episodes: $e');
      showToast('An error occurred while loading episodes', isError: true);
    } finally {
      isLoading.value = false;
    }
  }

  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('auth_token');
    } catch (e) {
      print('Error getting token: $e');
      return null;
    }
  }

  void showToast(String message, {bool isError = false}) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: isError ? Colors.red : Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  String formatDuration(int? minutes) {
    if (minutes == null) return 'N/A';
    if (minutes < 60) return '${minutes}m';
    final hours = minutes ~/ 60;
    final mins = minutes % 60;
    return '${hours}h ${mins}m';
  }

  String formatDate(String? dateString) {
    if (dateString == null) return 'N/A';
    try {
      final date = DateTime.parse(dateString);
      final months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 
                      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
      return '${months[date.month - 1]} ${date.day}, ${date.year}';
    } catch (e) {
      return 'N/A';
    }
  }
}

class SeriesDetailScreen extends StatelessWidget {
  final SeriesResponse seriesData;

  const SeriesDetailScreen({super.key, required this.seriesData});

  @override
  Widget build(BuildContext context) {
    final SeriesDetailController controller = Get.put(SeriesDetailController());
    controller.initSeriesData(seriesData);

    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            final size = MediaQuery.of(context).size;
            final isLandscape = orientation == Orientation.landscape;
            
            // Dynamic sizing based on orientation
            final height = size.height;
            final width = size.width;
            final crossAxisCount = isLandscape ? 2 : 1;
            final headerHeight = isLandscape ? height * 0.5 : height * 0.35;
            
            return Obx(() {
              if (controller.isLoading.value) {
                return Center(
                  child: CircularProgressIndicator(
                    color: const Color(0xFF00A8E8),
                  ),
                );
              }

              if (controller.isSubscriptionRequired.value) {
                return Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock_outline,
                            color: Colors.red,
                            size: isLandscape ? width * 0.1 : width * 0.2,
                          ),
                          SizedBox(height: height * 0.03),
                          Text(
                            controller.subscriptionMessage.value,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isLandscape ? width * 0.03 : width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: height * 0.02),
                          Text(
                            'Please subscribe to access this series.',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: isLandscape ? width * 0.025 : width * 0.04,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: height * 0.04),
                          // Subscribe Button
                          ElevatedButton(
                            onPressed: () {
                              Get.to(() => Subscription());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF00A8E8),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: width * 0.1,
                                vertical: isLandscape ? height * 0.03 : height * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 5,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  size: isLandscape ? width * 0.03 : width * 0.05,
                                ),
                                SizedBox(width: width * 0.02),
                                Text(
                                  'Buy Subscription',
                                  style: TextStyle(
                                    fontSize: isLandscape ? width * 0.028 : width * 0.045,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }

              return CustomScrollView(
                slivers: [
                  // App Bar with Back Button
                  SliverAppBar(
                    expandedHeight: headerHeight,
                    floating: false,
                    pinned: true,
                    backgroundColor: const Color(0xFF0A0A0A),
                    leading: GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        margin: EdgeInsets.all(width * 0.02),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: isLandscape ? width * 0.04 : width * 0.06,
                        ),
                      ),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        fit: StackFit.expand,
                        children: [
                          if (seriesData.seriesThumbUrl != null && 
                              seriesData.seriesThumbUrl!.isNotEmpty)
                            Image.network(
                              seriesData.seriesThumbUrl!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return _buildPlaceholder();
                              },
                              loadingBuilder: (context, child, loadingProgress) {
                                if (loadingProgress == null) return child;
                                return Center(
                                  child: CircularProgressIndicator(
                                    color: const Color(0xFF00A8E8),
                                  ),
                                );
                              },
                            )
                          else
                            _buildPlaceholder(),
                          
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  const Color(0xFF0A0A0A).withOpacity(0.7),
                                  const Color(0xFF0A0A0A),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Series Info and Episodes
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(width * 0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                seriesData.episodeName ?? 'Unknown Series',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isLandscape ? width * 0.04 : width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: height * 0.015),
                              
                              Wrap(
                                spacing: width * 0.02,
                                runSpacing: height * 0.01,
                                children: [
                                  if (controller.episodes.isNotEmpty && 
                                      controller.episodes[0].imdbRating != null)
                                    _buildStatChip(
                                      Icons.star,
                                      controller.episodes[0].imdbRating!.toStringAsFixed(1),
                                      Colors.amber,
                                      width,
                                      isLandscape,
                                    ),
                                  if (controller.episodes.isNotEmpty && 
                                      controller.episodes[0].createdAt != null)
                                    _buildStatChip(
                                      Icons.calendar_today,
                                      DateTime.parse(controller.episodes[0].createdAt!)
                                          .year.toString(),
                                      Colors.grey,
                                      width,
                                      isLandscape,
                                    ),
                                  _buildStatChip(
                                    Icons.video_library,
                                    '${controller.episodes.length} Episode${controller.episodes.length > 1 ? 's' : ''}',
                                    Colors.blue,
                                    width,
                                    isLandscape,
                                  ),
                                  if (controller.episodes.isNotEmpty && 
                                      controller.episodes[0].quality != null)
                                    _buildStatChip(
                                      Icons.hd,
                                      'HD',
                                      Colors.purple,
                                      width,
                                      isLandscape,
                                    ),
                                ],
                              ),
                              
                              SizedBox(height: height * 0.02),
                              
                              if (controller.episodes.isNotEmpty && 
                                  controller.episodes[0].description != null)
                                Text(
                                  controller.episodes[0].description!,
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: isLandscape ? width * 0.025 : width * 0.04,
                                    height: 1.5,
                                  ),
                                  maxLines: isLandscape ? 3 : 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              
                              SizedBox(height: height * 0.02),
                              
                              if (controller.episodes.isNotEmpty)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (controller.episodes[0].genre != null) ...[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.category,
                                            color: Colors.grey[400],
                                            size: isLandscape ? width * 0.03 : width * 0.045,
                                          ),
                                          SizedBox(width: width * 0.02),
                                          Flexible(
                                            child: Text(
                                              controller.episodes[0].genre!,
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: isLandscape ? width * 0.025 : width * 0.038,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: height * 0.01),
                                    ],
                                    if (controller.episodes[0].languages != null && 
                                        controller.episodes[0].languages!.isNotEmpty) ...[
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.language,
                                            color: Colors.grey[400],
                                            size: isLandscape ? width * 0.03 : width * 0.045,
                                          ),
                                          SizedBox(width: width * 0.02),
                                          Flexible(
                                            child: Text(
                                              controller.episodes[0].languages!.join(', ').toUpperCase(),
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: isLandscape ? width * 0.025 : width * 0.038,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ],
                                ),
                            ],
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                          child: Row(
                            children: [
                              Text(
                                'Episodes',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: isLandscape ? width * 0.03 : width * 0.05,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '${controller.episodes.length} total',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: isLandscape ? width * 0.025 : width * 0.038,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: height * 0.02),

                        if (controller.episodes.isEmpty)
                          Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: height * 0.1),
                              child: Text(
                                'No episodes available',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: isLandscape ? width * 0.03 : width * 0.045,
                                ),
                              ),
                            ),
                          )
                        else
                          isLandscape
                              ? _buildLandscapeEpisodeGrid(
                                  controller, 
                                  width, 
                                  height, 
                                  crossAxisCount,
                                )
                              : _buildPortraitEpisodeList(
                                  controller, 
                                  width, 
                                  height,
                                ),

                        SizedBox(height: height * 0.05),
                      ],
                    ),
                  ),
                ],
              );
            });
          },
        ),
      ),
    );
  }

  Widget _buildLandscapeEpisodeGrid(
    SeriesDetailController controller,
    double width,
    double height,
    int crossAxisCount,
  ) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: width * 0.02,
        mainAxisSpacing: height * 0.02,
        childAspectRatio: 1.6,
      ),
      itemCount: controller.episodes.length,
      itemBuilder: (context, index) {
        final episode = controller.episodes[index];
        return _buildEpisodeCard(
          episode,
          index,
          width,
          height,
          controller,
          isLandscape: true,
        );
      },
    );
  }

  Widget _buildPortraitEpisodeList(
    SeriesDetailController controller,
    double width,
    double height,
  ) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      itemCount: controller.episodes.length,
      itemBuilder: (context, index) {
        final episode = controller.episodes[index];
        return _buildEpisodeCard(
          episode,
          index,
          width,
          height,
          controller,
          isLandscape: false,
        );
      },
    );
  }

  Widget _buildStatChip(IconData icon, String text, Color color, double width, bool isLandscape) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
        vertical: isLandscape ? width * 0.008 : width * 0.015,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: color.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: isLandscape ? width * 0.025 : width * 0.04),
          SizedBox(width: width * 0.01),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: isLandscape ? width * 0.022 : width * 0.035,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEpisodeCard(
    Video episode,
    int index,
    double width,
    double height,
    SeriesDetailController controller, {
    required bool isLandscape,
  }) {
    String? thumbnailUrl = episode.thumbUrl;
    final cardHeight = isLandscape ? height * 0.35 : height * 0.22;

    return GestureDetector(
      onTap: () {
        if (episode.id != null) {
          Get.to(() => Movieplayerscreen(videoId: episode.id!));
        } else {
          controller.showToast('Invalid episode ID', isError: true);
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: isLandscape ? 0 : height * 0.02),
        decoration: BoxDecoration(
          color: Colors.grey[900]?.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: cardHeight,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                    color: Colors.grey[800],
                  ),
                  child: thumbnailUrl != null && thumbnailUrl.isNotEmpty
                      ? ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                          child: Image.network(
                            thumbnailUrl,
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return _buildEpisodePlaceholder(width, isLandscape);
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  color: const Color(0xFF00A8E8),
                                ),
                              );
                            },
                          ),
                        )
                      : _buildEpisodePlaceholder(width, isLandscape),
                ),
                
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: isLandscape ? width * 0.05 : width * 0.1,
                        ),
                      ),
                    ),
                  ),
                ),
                
                Positioned(
                  top: width * 0.02,
                  left: width * 0.02,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: isLandscape ? width * 0.015 : width * 0.025,
                      vertical: isLandscape ? width * 0.008 : width * 0.015,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'EP ${episode.episodeSeq ?? index + 1}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isLandscape ? width * 0.022 : width * 0.035,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                
                if (episode.runtimeMinutes != null)
                  Positioned(
                    top: width * 0.02,
                    right: width * 0.02,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: isLandscape ? width * 0.015 : width * 0.025,
                        vertical: isLandscape ? width * 0.008 : width * 0.015,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        controller.formatDuration(episode.runtimeMinutes),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isLandscape ? width * 0.022 : width * 0.035,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            
            Padding(
              padding: EdgeInsets.all(isLandscape ? width * 0.025 : width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    episode.videoTitle ?? 'Episode ${index + 1}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLandscape ? width * 0.028 : width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: isLandscape ? 1 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: isLandscape ? height * 0.005 : height * 0.01),
                  
                  Row(
                    children: [
                      if (episode.createdAt != null) ...[
                        Icon(
                          Icons.calendar_today,
                          color: Colors.grey[400],
                          size: isLandscape ? width * 0.022 : width * 0.035,
                        ),
                        SizedBox(width: width * 0.01),
                        Text(
                          controller.formatDate(episode.createdAt),
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: isLandscape ? width * 0.022 : width * 0.035,
                          ),
                        ),
                      ],
                      if (episode.imdbRating != null) ...[
                        SizedBox(width: width * 0.02),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: isLandscape ? width * 0.025 : width * 0.04,
                        ),
                        SizedBox(width: width * 0.008),
                        Text(
                          episode.imdbRating!.toStringAsFixed(1),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isLandscape ? width * 0.022 : width * 0.035,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ],
                  ),
                  
                  if (episode.description != null && !isLandscape) ...[
                    SizedBox(height: height * 0.01),
                    Text(
                      episode.description!,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: width * 0.037,
                        height: 1.4,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: Colors.grey[900],
      child: Center(
        child: Icon(
          Icons.movie,
          color: Colors.grey[700],
          size: 80,
        ),
      ),
    );
  }

  Widget _buildEpisodePlaceholder(double width, bool isLandscape) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
        color: Colors.grey[800],
      ),
      child: Center(
        child: Icon(
          Icons.video_library,
          color: Colors.grey[600],
          size: isLandscape ? width * 0.08 : width * 0.15,
        ),
      ),
    );
  }
}

// Models
class SeriesResponse {
  final String? episodeName;
  final int? totalEpisodes;
  final String? latestRelease;
  final String? seriesPosterKey;
  final String? seriesThumbKey;
  final String? seriesPosterUrl;
  String? seriesThumbUrl;
  final String? seriesTrailerUrl;
  final List<Video>? videos;

  SeriesResponse({
    this.episodeName,
    this.totalEpisodes,
    this.latestRelease,
    this.seriesPosterKey,
    this.seriesThumbKey,
    this.seriesPosterUrl,
    this.seriesThumbUrl,
    this.seriesTrailerUrl,
    this.videos,
  });

  factory SeriesResponse.fromJson(Map<String, dynamic> json) {
    return SeriesResponse(
      episodeName: json['episodeName']?.toString(),
      totalEpisodes: json['count'] != null ? int.tryParse(json['count'].toString()) : null,
      latestRelease: json['latestRelease']?.toString(),
      seriesPosterKey: json['seriesPosterKey']?.toString(),
      seriesThumbKey: json['seriesThumbKey']?.toString(),
      seriesPosterUrl: json['posterUrl']?.toString(),
      seriesThumbUrl: json['thumbUrl']?.toString(),
      seriesTrailerUrl: json['trailerUrl']?.toString(),
      videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
    );
  }
}

class Video {
  final String? id;
  final String? episodeName;
  final String? videoTitle;
  final String? description;
  final List<String>? actors;
  final List<String>? writers;
  final double? imdbRating;
  final String? releaseDate;
  final List<String>? countries;
  final String? genre;
  final List<String>? languages;
  final String? videoType;
  final int? runtimeMinutes;
  final String? quality;
  final String? posterKey;
  final String? thumbKey;
  final String? thumbUrl;
  final String? posterUrl;
  final int? episodeSeq;
  final String? episodeCode;
  final List<String>? resolutions;
  final Mp4Keys? mp4Keys;
  final String? createdAt;
  final List<String>? qualities;

  Video({
    this.id,
    this.episodeName,
    this.videoTitle,
    this.description,
    this.actors,
    this.writers,
    this.imdbRating,
    this.releaseDate,
    this.countries,
    this.genre,
    this.languages,
    this.videoType,
    this.runtimeMinutes,
    this.quality,
    this.posterKey,
    this.thumbKey,
    this.thumbUrl,
    this.posterUrl,
    this.episodeSeq,
    this.episodeCode,
    this.resolutions,
    this.mp4Keys,
    this.createdAt,
    this.qualities,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['id']?.toString(),
      episodeName: json['episodeName']?.toString(),
      videoTitle: json['title']?.toString(),
      description: json['description']?.toString(),
      actors: json['actors'] != null ? List<String>.from(json['actors'].map((x) => x.toString())) : null,
      writers: json['writers'] != null ? List<String>.from(json['writers'].map((x) => x.toString())) : null,
      imdbRating: json['imdbRating'] != null ? double.tryParse(json['imdbRating'].toString()) : null,
      releaseDate: json['releaseDate']?.toString(),
      countries: json['countries'] != null ? List<String>.from(json['countries'].map((x) => x.toString())) : null,
      genre: json['genre']?.toString(),
      languages: json['languages'] != null ? List<String>.from(json['languages'].map((x) => x.toString())) : null,
      videoType: json['videoType']?.toString(),
      runtimeMinutes: json['runtimeMinutes'] != null ? int.tryParse(json['runtimeMinutes'].toString()) : null,
      quality: json['qualities'] != null && (json['qualities'] as List).isNotEmpty ? (json['qualities'] as List).first.toString() : null,
      posterKey: json['posterKey']?.toString(),
      thumbKey: json['thumbKey']?.toString(),
      thumbUrl: json['thumbUrl']?.toString(),
      posterUrl: json['posterUrl']?.toString(),
      episodeSeq: json['episodeSeq'] != null ? int.tryParse(json['episodeSeq'].toString()) : null,
      episodeCode: json['episodeCode']?.toString(),
      resolutions: json['resolutions'] != null ? List<String>.from(json['resolutions'].map((x) => x.toString())) : null,
      mp4Keys: json['mp4Keys'] != null ? Mp4Keys.fromJson(json['mp4Keys']) : null,
      createdAt: json['createdAt']?.toString(),
      qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
    );
  }
}

class Mp4Keys {
  final String? quality360p;
  final String? quality480p;
  final String? quality720p;

  Mp4Keys({
    this.quality360p,
    this.quality480p,
    this.quality720p,
  });

  factory Mp4Keys.fromJson(Map<String, dynamic> json) {
    return Mp4Keys(
      quality360p: json['360p']?.toString(),
      quality480p: json['480p']?.toString(),
      quality720p: json['720p']?.toString(),
    );
  }
}