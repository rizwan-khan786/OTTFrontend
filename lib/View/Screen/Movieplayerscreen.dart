



// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// // import 'package:get/get.dart';
// // import 'package:video_player/video_player.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:fluttertoast/fluttertoast.dart';

// // class VideoDetails {
// //   final String id;
// //   final String episodeName;
// //   final int episodeSeq;
// //   final String episodeCode;
// //   final String title;
// //   final String description;
// //   final String genre;
// //   final List<String> languages;
// //   final int runtimeMinutes;
// //   final String posterUrl;
// //   final String thumbUrl;
// //   final List<Source> sources;
// //   final String defaultUrl;
// //   final String expiresIn;

// //   VideoDetails({
// //     required this.id,
// //     required this.episodeName,
// //     required this.episodeSeq,
// //     required this.episodeCode,
// //     required this.title,
// //     required this.description,
// //     required this.genre,
// //     required this.languages,
// //     required this.runtimeMinutes,
// //     required this.posterUrl,
// //     required this.thumbUrl,
// //     required this.sources,
// //     required this.defaultUrl,
// //     required this.expiresIn,
// //   });

// //   factory VideoDetails.fromJson(Map<String, dynamic> json) {
// //     return VideoDetails(
// //       id: json['id'] ?? '',
// //       episodeName: json['episodeName'] ?? '',
// //       episodeSeq: json['episodeSeq'] ?? 0,
// //       episodeCode: json['episodeCode'] ?? '',
// //       title: json['title'] ?? '',
// //       description: json['description'] ?? '',
// //       genre: json['genre'] ?? '',
// //       languages: List<String>.from((json['languages'] ?? [])),
// //       runtimeMinutes: json['runtimeMinutes'] ?? 0,
// //       posterUrl: json['posterUrl'] ?? '',
// //       thumbUrl: json['thumbUrl'] ?? '',
// //       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
// //       defaultUrl: json['defaultUrl'] ?? '',
// //       expiresIn: json['expiresIn'] ?? '',
// //     );
// //   }
// // }

// // class Source {
// //   final String type;
// //   final String quality;
// //   final String url;
// //   final int ttlSeconds;

// //   Source({
// //     required this.type,
// //     required this.quality,
// //     required this.url,
// //     required this.ttlSeconds,
// //   });

// //   factory Source.fromJson(Map<String, dynamic> json) {
// //     return Source(
// //       type: json['type'] ?? '',
// //       quality: json['quality'] ?? '',
// //       url: json['url'] ?? '',
// //       ttlSeconds: json['ttlSeconds'] ?? 0,
// //     );
// //   }
// // }

// // class MoviePlayerController extends GetxController {
// //   VideoPlayerController? videoController;
// //   RxBool isPlaying = false.obs;
// //   RxBool showControls = true.obs;
// //   RxBool isFullScreen = false.obs;
// //   RxBool isMuted = false.obs;
// //   RxDouble currentPosition = 0.0.obs;
// //   RxDouble totalDuration = 0.0.obs;
// //   RxBool isLoading = true.obs;
// //   RxBool isVideoInitialized = false.obs;
// //   RxString selectedQuality = 'Auto'.obs;
// //   RxString selectedAspectRatio = 'Fit'.obs;
// //   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
// //   RxString currentVideoUrl = ''.obs;
// //   List<String> availableQualities = <String>[];
// //   RxString _videoId = ''.obs;
// //   RxString videoError = ''.obs;
// //   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

// //   @override
// //   void onInit() {
// //     super.onInit();
// //     // Listen to orientation changes
// //     ever(isFullScreen, (value) {
// //       _handleOrientationChange(value);
// //     });
// //   }

// //   void _handleOrientationChange(bool fullscreen) {
// //     if (fullscreen) {
// //       SystemChrome.setPreferredOrientations([
// //         DeviceOrientation.landscapeLeft,
// //         DeviceOrientation.landscapeRight,
// //       ]);
// //       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
// //     } else {
// //       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
// //       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
// //     }
// //   }

// //   Future<void> initWithVideoId(String videoId) async {
// //     _videoId.value = videoId;
// //     await fetchVideoDetails(videoId);
// //   }

// //   Future<String?> getToken() async {
// //     try {
// //       final prefs = await SharedPreferences.getInstance();
// //       final token = prefs.getString('auth_token');
// //       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
// //       return token;
// //     } catch (e) {
// //       print('✗ Error getting token: $e');
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

// //   Future<void> fetchVideoDetails(String videoId) async {
// //     isLoading.value = true;
// //     videoError.value = '';
// //     isVideoInitialized.value = false;
    
// //     try {
// //       String? token = await getToken();
// //       if (token == null) {
// //         showToast('No authentication token found', isError: true);
// //         print('✗ No token available');
// //         isLoading.value = false;
// //         return;
// //       }

// //       String url = '$baseUrl/videos/$videoId';
// //       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
// //       print('📡 Fetching video details...');
// //       print('URL: $url');
      
// //       final response = await http.get(
// //         Uri.parse(url),
// //         headers: {'Authorization': 'Bearer $token'},
// //       );

// //       print('Status Code: ${response.statusCode}');

// //       if (response.statusCode != 200) {
// //         print('✗ API Error: ${response.body}');
// //         showToast('Error fetching video: ${response.statusCode}', isError: true);
// //         isLoading.value = false;
// //         return;
// //       }

// //       final data = json.decode(response.body);
// //       print('✓ JSON parsed successfully');
      
// //       videoDetails.value = VideoDetails.fromJson(data);
// //       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
// //       // Extract available qualities
// //       availableQualities = ['Auto', ...videoDetails.value!.sources
// //           .where((s) => s.type == 'video')
// //           .map((s) => s.quality)
// //           .toList()];
// //       print('✓ Available qualities: $availableQualities');
      
// //       // Get default URL
// //       currentVideoUrl.value = videoDetails.value!.defaultUrl;
// //       print('✓ Default URL set');
// //       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
// //       print('⏸ Video details loaded. Auto-initializing player...');
// //       isLoading.value = false;
      
// //       // Auto-initialize video player immediately after fetching details
// //       await initializeVideoPlayer();
      
// //     } catch (e) {
// //       print('✗ Exception in fetchVideoDetails: $e');
// //       showToast('Failed to load video: $e', isError: true);
// //       videoError.value = e.toString();
// //       isLoading.value = false;
// //     }
// //   }

// //   Future<void> startPlayback() async {
// //     print('▶ Starting playback...');
// //     if (currentVideoUrl.value.isEmpty) {
// //       print('✗ No video URL available');
// //       videoError.value = 'No video URL available';
// //       showToast('No video URL found', isError: true);
// //       return;
// //     }
    
// //     if (!isVideoInitialized.value) {
// //       await initializeVideoPlayer();
// //     } else if (videoController != null && videoController!.value.isInitialized) {
// //       togglePlayPause();
// //     }
// //   }

// //   Future<void> retryFetch() async {
// //     await fetchVideoDetails(_videoId.value);
// //   }

// //   Future<void> initializeVideoPlayer() async {
// //     if (currentVideoUrl.value.isEmpty) {
// //       print('✗ No video URL to initialize');
// //       videoError.value = 'No video URL available';
// //       return;
// //     }

// //     try {
// //       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
// //       print('🎬 Initializing video player');
// //       print('URL: ${currentVideoUrl.value.substring(0, 80)}...');
      
// //       videoController = VideoPlayerController.networkUrl(
// //         Uri.parse(currentVideoUrl.value),
// //       );
      
// //       await videoController!.initialize();
// //       print('✓ Video player initialized');
      
// //       isVideoInitialized.value = true;
// //       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
// //       print('✓ Duration: ${formatDuration(totalDuration.value)}');
      
// //       videoController!.setLooping(false);
// //       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

// //       videoController!.addListener(() {
// //         if (videoController!.value.hasError) {
// //           print('✗ Playback error: ${videoController!.value.errorDescription}');
// //           videoError.value = videoController!.value.errorDescription ?? 'Unknown error';
// //         } else {
// //           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
// //           isPlaying.value = videoController!.value.isPlaying;
// //         }
// //       });

// //       videoError.value = '';
// //       print('✓ Video ready to play');
// //       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
// //       // Don't auto-play initially - let user decide
// //       print('⏸ Video initialized. Waiting for user action.');
      
// //     } catch (e) {
// //       print('✗ Error initializing player: $e');
// //       showToast('Failed to initialize video: $e', isError: true);
// //       videoError.value = e.toString();
// //       isVideoInitialized.value = false;
// //     }
// //   }

// //   void togglePlayPause() {
// //     if (videoController == null || !videoController!.value.isInitialized) {
// //       showToast('Video not initialized', isError: true);
// //       return;
// //     }
// //     if (videoController!.value.isPlaying) {
// //       videoController!.pause();
// //       print('⏸ Paused');
// //     } else {
// //       videoController!.play();
// //       print('▶ Playing');
// //     }
// //   }

// //   void toggleMute() {
// //     if (videoController != null && videoController!.value.isInitialized) {
// //       isMuted.value = !isMuted.value;
// //       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
// //       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
// //     }
// //   }

// //   void seekTo(double seconds) {
// //     if (videoController != null && 
// //         videoController!.value.isInitialized && 
// //         seconds >= 0 && 
// //         seconds <= totalDuration.value) {
// //       videoController!.seekTo(Duration(seconds: seconds.toInt()));
// //     }
// //   }

// //   void skipForward() {
// //     if (videoController == null || !videoController!.value.isInitialized) return;
// //     final newPosition = videoController!.value.position + const Duration(seconds: 10);
// //     if (newPosition <= videoController!.value.duration) {
// //       videoController!.seekTo(newPosition);
// //       print('⏩ +10s');
// //       showControlsTemporary();
// //     }
// //   }

// //   void skipBackward() {
// //     if (videoController == null || !videoController!.value.isInitialized) return;
// //     final newPosition = videoController!.value.position - const Duration(seconds: 10);
// //     if (newPosition >= Duration.zero) {
// //       videoController!.seekTo(newPosition);
// //       print('⏪ -10s');
// //       showControlsTemporary();
// //     }
// //   }

// //   void toggleFullScreen() {
// //     isFullScreen.value = !isFullScreen.value;
    
// //     // Ensure video continues playing in fullscreen
// //     if (isFullScreen.value && isVideoInitialized.value && 
// //         videoController != null && !videoController!.value.isPlaying) {
// //       videoController!.play();
// //     }
    
// //     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
// //   }

// //   void showControlsTemporary() {
// //     showControls.value = true;
// //     Future.delayed(const Duration(seconds: 3), () {
// //       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
// //         showControls.value = false;
// //       }
// //     });
// //   }

// //   void changeQuality(String quality) {
// //     if (videoController == null || !videoController!.value.isInitialized) {
// //       showToast('Initialize video first', isError: true);
// //       Get.back();
// //       return;
// //     }

// //     selectedQuality.value = quality;
// //     String newUrl;
    
// //     if (quality == 'Auto') {
// //       newUrl = videoDetails.value!.defaultUrl;
// //     } else {
// //       final source = videoDetails.value!.sources.firstWhere(
// //         (s) => s.type == 'video' && s.quality == quality,
// //         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
// //       );
// //       newUrl = source.url;
// //     }
    
// //     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
// //     print('🎬 Changing quality to $quality');
    
// //     if (newUrl != currentVideoUrl.value) {
// //       final currentPos = videoController!.value.position;
// //       final wasPlaying = videoController!.value.isPlaying;
      
// //       currentVideoUrl.value = newUrl;
// //       print('✓ New URL set');
// //       videoController!.dispose();
// //       isVideoInitialized.value = false;
      
// //       initializeVideoPlayer().then((_) {
// //         if (isVideoInitialized.value) {
// //           videoController!.seekTo(currentPos);
// //           if (wasPlaying) {
// //             videoController!.play();
// //           }
// //         }
// //       });
// //     }
// //     Get.back();
// //     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
// //   }

// //   void changeAspectRatio(String ratio) {
// //     selectedAspectRatio.value = ratio;
// //     print('Aspect ratio: $ratio');
// //     Get.back();
// //   }

// //   BoxFit getBoxFit() {
// //     switch (selectedAspectRatio.value) {
// //       case 'Fill': return BoxFit.cover;
// //       case 'Fit': return BoxFit.contain;
// //       case 'Stretch': return BoxFit.fill;
// //       case 'Zoom': return BoxFit.fitWidth;
// //       default: return BoxFit.contain;
// //     }
// //   }

// //   String formatDuration(double seconds) {
// //     final duration = Duration(seconds: seconds.toInt());
// //     final minutes = duration.inMinutes;
// //     final remainingSeconds = duration.inSeconds % 60;
// //     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
// //   }

// //   @override
// //   void onClose() {
// //     if (videoController != null) {
// //       videoController!.dispose();
// //     }
// //     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
// //     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
// //     super.onClose();
// //   }
// // }

// // class Movieplayerscreen extends StatelessWidget {
// //   final String videoId;

// //   const Movieplayerscreen({super.key, required this.videoId});

// //   @override
// //   Widget build(BuildContext context) {
// //     double height = MediaQuery.of(context).size.height;
// //     double width = MediaQuery.of(context).size.width;

// //     final MoviePlayerController controller = Get.put(MoviePlayerController());
// //     controller.initWithVideoId(videoId);

// //     return WillPopScope(
// //       onWillPop: () async {
// //         if (controller.isFullScreen.value) {
// //           controller.toggleFullScreen();
// //           return false;
// //         }
// //         return true;
// //       },
// //       child: Scaffold(
// //         backgroundColor: Colors.black,
// //         body: Obx(() {
// //           if (controller.isLoading.value) {
// //             return const Center(
// //               child: CircularProgressIndicator(color: Colors.white),
// //             );
// //           }
// //           if (controller.videoDetails.value == null) {
// //             return Center(
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
// //                   SizedBox(height: height * 0.02),
// //                   Text(
// //                     'Failed to load video details',
// //                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
// //                   ),
// //                   SizedBox(height: height * 0.01),
// //                   ElevatedButton(
// //                     onPressed: () => controller.retryFetch(),
// //                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
// //                     child: const Text('Retry'),
// //                   ),
// //                 ],
// //               ),
// //             );
// //           }
// //           return OrientationBuilder(
// //             builder: (context, orientation) {
// //               // Auto-detect landscape orientation
// //               bool isLandscape = orientation == Orientation.landscape;
              
// //               // Sync fullscreen state with orientation
// //               if (isLandscape && !controller.isFullScreen.value) {
// //                 Future.microtask(() => controller.isFullScreen.value = true);
// //               } else if (!isLandscape && controller.isFullScreen.value) {
// //                 Future.microtask(() => controller.isFullScreen.value = false);
// //               }

// //               return controller.isFullScreen.value || isLandscape
// //                   ? _buildFullScreenPlayer(controller, width, height)
// //                   : _buildNormalPlayer(controller, width, height, context);
// //             },
// //           );
// //         }),
// //       ),
// //     );
// //   }

// //   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
// //     final details = controller.videoDetails.value;
// //     if (details == null) return const SizedBox.shrink();

// //     return SafeArea(
// //       child: Column(
// //         children: [
// //           GestureDetector(
// //             onTap: () {
// //               if (controller.isVideoInitialized.value) {
// //                 controller.togglePlayPause();
// //                 controller.showControlsTemporary();
// //               }
// //             },
// //             child: Container(
// //               width: width,
// //               height: height * 0.3,
// //               color: Colors.black,
// //               child: _buildVideoPlayer(controller, width, height * 0.3),
// //             ),
// //           ),

// //           Expanded(
// //             child: Container(
// //               color: const Color(0xFF0A0A0A),
// //               padding: EdgeInsets.all(width * 0.04),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     details.title,
// //                     style: TextStyle(
// //                       color: Colors.white,
// //                       fontSize: width * 0.08,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),

// //                   SizedBox(height: height * 0.02),

// //                   Row(
// //                     children: [
// //                       Text(
// //                         details.genre,
// //                         style: TextStyle(
// //                           color: Colors.grey[400],
// //                           fontSize: width * 0.035,
// //                         ),
// //                       ),
// //                       SizedBox(width: width * 0.04),
// //                       Text(
// //                         '${details.runtimeMinutes}m',
// //                         style: TextStyle(
// //                           color: Colors.grey[400],
// //                           fontSize: width * 0.035,
// //                         ),
// //                       ),
// //                       SizedBox(width: width * 0.04),
// //                       Container(
// //                         padding: EdgeInsets.symmetric(
// //                           horizontal: width * 0.02,
// //                           vertical: height * 0.003,
// //                         ),
// //                         decoration: BoxDecoration(
// //                           border: Border.all(color: Colors.grey[600]!),
// //                           borderRadius: BorderRadius.circular(4),
// //                         ),
// //                         child: Text(
// //                           details.languages.join(', '),
// //                           style: TextStyle(
// //                             color: Colors.grey[400],
// //                             fontSize: width * 0.03,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   SizedBox(height: height * 0.03),

// //                   Row(
// //                     children: [
// //                       Expanded(
// //                         child: ElevatedButton.icon(
// //                           onPressed: () => controller.startPlayback(),
// //                           icon: Obx(() => Icon(
// //                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
// //                             color: Colors.black,
// //                             size: width * 0.05,
// //                           )),
// //                           label: Obx(() => Text(
// //                             controller.isPlaying.value ? 'Pause' : 'Play',
// //                             style: TextStyle(
// //                               color: Colors.black,
// //                               fontSize: width * 0.04,
// //                               fontWeight: FontWeight.w600,
// //                             ),
// //                           )),
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: Colors.white,
// //                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(6),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       SizedBox(width: width * 0.03),
// //                       Expanded(
// //                         child: ElevatedButton.icon(
// //                           onPressed: () {
// //                             controller.toggleFullScreen();
// //                           },
// //                           icon: Icon(
// //                             Icons.fullscreen,
// //                             color: Colors.white,
// //                             size: width * 0.05,
// //                           ),
// //                           label: Text(
// //                             'Full Screen',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: width * 0.04,
// //                               fontWeight: FontWeight.w600,
// //                             ),
// //                           ),
// //                           style: ElevatedButton.styleFrom(
// //                             backgroundColor: Colors.grey[800],
// //                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
// //                             shape: RoundedRectangleBorder(
// //                               borderRadius: BorderRadius.circular(6),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   SizedBox(height: height * 0.03),

// //                   Expanded(
// //                     child: SingleChildScrollView(
// //                       child: Text(
// //                         details.description,
// //                         style: TextStyle(
// //                           color: Colors.grey[300],
// //                           fontSize: width * 0.035,
// //                           height: 1.5,
// //                         ),
// //                       ),
// //                     ),
// //                   ),

// //                   Row(
// //                     children: [
// //                       Icon(
// //                         Icons.star,
// //                         color: Colors.orange,
// //                         size: width * 0.04,
// //                       ),
// //                       SizedBox(width: width * 0.01),
// //                       Text(
// //                         'N/A',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: width * 0.035,
// //                           fontWeight: FontWeight.w600,
// //                         ),
// //                       ),
// //                       SizedBox(width: width * 0.02),
// //                       Text(
// //                         'Episode ${details.episodeSeq}',
// //                         style: TextStyle(
// //                           color: Colors.grey[400],
// //                           fontSize: width * 0.03,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
// //     return GestureDetector(
// //       onTap: () => controller.showControlsTemporary(),
// //       child: Container(
// //         width: width,
// //         height: height,
// //         color: Colors.black,
// //         child: _buildVideoPlayer(controller, width, height),
// //       ),
// //     );
// //   }

// //   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
// //     return Obx(() {
// //       if (controller.videoError.value.isNotEmpty) {
// //         return Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               const Icon(Icons.error, color: Colors.red, size: 64),
// //               const SizedBox(height: 16),
// //               Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
// //                 child: Text(
// //                   'Video Error: ${controller.videoError.value}',
// //                   style: const TextStyle(color: Colors.white, fontSize: 14),
// //                   textAlign: TextAlign.center,
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   controller.videoController?.dispose();
// //                   controller.isVideoInitialized.value = false;
// //                   controller.videoError.value = '';
// //                   controller.currentVideoUrl.value = controller.videoDetails.value!.defaultUrl;
// //                   controller.initializeVideoPlayer();
// //                 },
// //                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
// //                 child: const Text('Retry Video'),
// //               ),
// //             ],
// //           ),
// //         );
// //       }

// //       if (!controller.isVideoInitialized.value) {
// //         return const Center(
// //           child: CircularProgressIndicator(color: Colors.blue),
// //         );
// //       }

// //       if (controller.videoController == null || !controller.videoController!.value.isInitialized) {
// //         return const Center(
// //           child: CircularProgressIndicator(color: Colors.blue),
// //         );
// //       }

// //       return Stack(
// //         children: [
// //           Center(
// //             child: SizedBox(
// //               width: width,
// //               height: height,
// //               child: FittedBox(
// //                 fit: controller.getBoxFit(),
// //                 child: SizedBox(
// //                   width: controller.videoController!.value.size.width,
// //                   height: controller.videoController!.value.size.height,
// //                   child: VideoPlayer(controller.videoController!),
// //                 ),
// //               ),
// //             ),
// //           ),

// //           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
// //         ],
// //       );
// //     });
// //   }

// //   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
// //     return Container(
// //       width: width,
// //       height: height,
// //       decoration: BoxDecoration(
// //         gradient: LinearGradient(
// //           begin: Alignment.topCenter,
// //           end: Alignment.bottomCenter,
// //           colors: [
// //             Colors.black.withOpacity(0.7),
// //             Colors.transparent,
// //             Colors.transparent,
// //             Colors.black.withOpacity(0.7),
// //           ],
// //         ),
// //       ),
// //       child: _buildControls(controller, width, height),
// //     );
// //   }

// //   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
// //     showModalBottomSheet(
// //       context: context,
// //       backgroundColor: Colors.grey[900],
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
// //       ),
// //       isScrollControlled: true,
// //       builder: (BuildContext context) {
// //         return SafeArea(
// //           child: ConstrainedBox(
// //             constraints: BoxConstraints(
// //               maxHeight: MediaQuery.of(context).size.height * 0.6,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.all(16.0),
// //                   child: Row(
// //                     children: [
// //                       const Text(
// //                         'Video Quality',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const Spacer(),
// //                       IconButton(
// //                         onPressed: () => Navigator.pop(context),
// //                         icon: const Icon(Icons.close, color: Colors.white),
// //                         padding: EdgeInsets.zero,
// //                         constraints: const BoxConstraints(),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Flexible(
// //                   child: SingleChildScrollView(
// //                     child: Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
// //                               title: Text(
// //                                 quality,
// //                                 style: const TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: 16,
// //                                 ),
// //                               ),
// //                               trailing: controller.selectedQuality.value == quality
// //                                   ? const Icon(Icons.check, color: Colors.blue)
// //                                   : null,
// //                               onTap: () => controller.changeQuality(quality),
// //                             ))).toList(),
// //                         const SizedBox(height: 8),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
// //     final aspectRatios = [
// //       {'name': 'Fit', 'description': 'Fit to screen'},
// //       {'name': 'Fill', 'description': 'Fill screen'},
// //       {'name': 'Stretch', 'description': 'Stretch to fill'},
// //       {'name': 'Zoom', 'description': 'Zoom in'},
// //     ];

// //     showModalBottomSheet(
// //       context: context,
// //       backgroundColor: Colors.grey[900],
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
// //       ),
// //       isScrollControlled: true,
// //       builder: (BuildContext context) {
// //         return SafeArea(
// //           child: ConstrainedBox(
// //             constraints: BoxConstraints(
// //               maxHeight: MediaQuery.of(context).size.height * 0.6,
// //             ),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Padding(
// //                   padding: const EdgeInsets.all(16.0),
// //                   child: Row(
// //                     children: [
// //                       const Text(
// //                         'Video Size',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       const Spacer(),
// //                       IconButton(
// //                         onPressed: () => Navigator.pop(context),
// //                         icon: const Icon(Icons.close, color: Colors.white),
// //                         padding: EdgeInsets.zero,
// //                         constraints: const BoxConstraints(),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Flexible(
// //                   child: SingleChildScrollView(
// //                     child: Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
// //                               title: Text(
// //                                 ratio['name']!,
// //                                 style: const TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: 16,
// //                                   fontWeight: FontWeight.w500,
// //                                 ),
// //                               ),
// //                               subtitle: Text(
// //                                 ratio['description']!,
// //                                 style: TextStyle(
// //                                   color: Colors.grey[400],
// //                                   fontSize: 13,
// //                                 ),
// //                               ),
// //                               trailing: controller.selectedAspectRatio.value == ratio['name']
// //                                   ? const Icon(Icons.check, color: Colors.blue)
// //                                   : null,
// //                               onTap: () => controller.changeAspectRatio(ratio['name']!),
// //                             ))).toList(),
// //                         const SizedBox(height: 8),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   Widget _buildControls(MoviePlayerController controller, double width, double height) {
// //     final details = controller.videoDetails.value;
// //     if (details == null) return const SizedBox.shrink();

// //     bool isLandscape = controller.isFullScreen.value;

// //     return Column(
// //       children: [
// //         // Top Controls
// //         Padding(
// //           padding: EdgeInsets.only(
// //             left: width * 0.015,
// //             right: width * 0.01,
// //             top: width * 0.015,
// //             bottom: width * 0.015,
// //           ),
// //           child: Row(
// //             children: [
// //               if (controller.isFullScreen.value)
// //                 IconButton(
// //                   onPressed: () {
// //                     controller.toggleFullScreen();
// //                   },
// //                   icon: const Icon(
// //                     Icons.arrow_back,
// //                     color: Colors.white,
// //                     size: 24,
// //                   ),
// //                   padding: EdgeInsets.zero,
// //                   constraints: const BoxConstraints(),
// //                 ),
// //               SizedBox(width: width * 0.015),
// //               Text(
// //                 details.episodeName,
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),

// //               const Spacer(),

// //               Flexible(
// //                 child: Text(
// //                   details.title,
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: isLandscape ? width * 0.03 : width * 0.045,
// //                     fontWeight: FontWeight.w600,
// //                   ),
// //                   overflow: TextOverflow.ellipsis,
// //                 ),
// //               ),

// //               const Spacer(),

// //               Row(
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: [
// //                   if (controller.isFullScreen.value)
// //                     IconButton(
// //                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
// //                       icon: Icon(
// //                         Icons.aspect_ratio,
// //                         color: Colors.white,
// //                         size: isLandscape ? 20 : width * 0.038,
// //                       ),
// //                       padding: EdgeInsets.all(width * 0.008),
// //                       constraints: const BoxConstraints(),
// //                     ),
// //                   IconButton(
// //                     onPressed: () {},
// //                     icon: Icon(
// //                       Icons.subtitles,
// //                       color: Colors.white,
// //                       size: isLandscape ? 20 : width * 0.038,
// //                     ),
// //                     padding: EdgeInsets.all(width * 0.008),
// //                     constraints: const BoxConstraints(),
// //                   ),
// //                   IconButton(
// //                     onPressed: () {},
// //                     icon: Icon(
// //                       Icons.settings,
// //                       color: Colors.white,
// //                       size: isLandscape ? 20 : width * 0.038,
// //                     ),
// //                     padding: EdgeInsets.all(width * 0.008),
// //                     constraints: const BoxConstraints(),
// //                   ),
// //                   Obx(() => IconButton(
// //                         onPressed: () => controller.toggleMute(),
// //                         icon: Icon(
// //                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
// //                           color: Colors.white,
// //                           size: isLandscape ? 20 : width * 0.038,
// //                         ),
// //                         padding: EdgeInsets.all(width * 0.008),
// //                         constraints: const BoxConstraints(),
// //                       )),
// //                   IconButton(
// //                     onPressed: () => controller.toggleFullScreen(),
// //                     icon: Icon(
// //                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
// //                       color: Colors.white,
// //                       size: isLandscape ? 20 : width * 0.038,
// //                     ),
// //                     padding: EdgeInsets.all(width * 0.008),
// //                     constraints: const BoxConstraints(),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),

// //         // Center Play Controls
// //         Expanded(
// //           child: Center(
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 GestureDetector(
// //                   onTap: () => controller.skipBackward(),
// //                   child: Container(
// //                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.5),
// //                       shape: BoxShape.circle,
// //                     ),
// //                     child: Icon(
// //                       Icons.replay_10,
// //                       color: Colors.white,
// //                       size: isLandscape ? 24 : 30,
// //                     ),
// //                   ),
// //                 ),

// //                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

// //                 GestureDetector(
// //                   onTap: () => controller.togglePlayPause(),
// //                   child: Container(
// //                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
// //                     decoration: const BoxDecoration(
// //                       color: Colors.white,
// //                       shape: BoxShape.circle,
// //                     ),
// //                     child: Obx(() => Icon(
// //                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
// //                       color: Colors.black,
// //                       size: isLandscape ? width * 0.05 : width * 0.1,
// //                     )),
// //                   ),
// //                 ),

// //                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

// //                 GestureDetector(
// //                   onTap: () => controller.skipForward(),
// //                   child: Container(
// //                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black.withOpacity(0.5),
// //                       shape: BoxShape.circle,
// //                     ),
// //                     child: Icon(
// //                       Icons.forward_10,
// //                       color: Colors.white,
// //                       size: isLandscape ? 24 : 30,
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),

// //         // Bottom Controls
// //         Padding(
// //           padding: EdgeInsets.symmetric(
// //             horizontal: width * 0.04,
// //             vertical: isLandscape ? height * 0.01 : height * 0.01,
// //           ),
// //           child: Column(
// //             children: [
// //               // Progress Bar with Time
// //               if (controller.totalDuration.value > 0)
// //                 Row(
// //                   children: [
// //                     Obx(() => Text(
// //                           controller.formatDuration(controller.currentPosition.value),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? 11 : 12,
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         )),

// //                     SizedBox(width: width * 0.02),

// //                     Expanded(
// //                       child: Obx(() => SliderTheme(
// //                             data: SliderTheme.of(Get.context!).copyWith(
// //                               activeTrackColor: Colors.blue,
// //                               inactiveTrackColor: Colors.grey[700],
// //                               thumbColor: Colors.blue,
// //                               trackHeight: 3,
// //                               thumbShape: const RoundSliderThumbShape(
// //                                 enabledThumbRadius: 6,
// //                               ),
// //                               overlayShape: const RoundSliderOverlayShape(
// //                                 overlayRadius: 12,
// //                               ),
// //                             ),
// //                             child: Slider(
// //                               value: controller.currentPosition.value,
// //                               max: controller.totalDuration.value,
// //                               onChanged: (value) => controller.seekTo(value),
// //                             ),
// //                           )),
// //                     ),

// //                     SizedBox(width: width * 0.02),

// //                     Obx(() => Text(
// //                           controller.formatDuration(controller.totalDuration.value),
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: isLandscape ? 11 : 12,
// //                             fontWeight: FontWeight.w500,
// //                           ),
// //                         )),
// //                   ],
// //                 ),

// //               SizedBox(height: height * 0.01),

// //               // Quality Selector
// //               Row(
// //                 children: [
// //                   const Spacer(),

// //                   if (controller.isFullScreen.value)
// //                     Padding(
// //                       padding: EdgeInsets.only(right: width * 0.02),
// //                       child: Obx(() => Container(
// //                             padding: EdgeInsets.symmetric(
// //                               horizontal: width * 0.015,
// //                               vertical: height * 0.004,
// //                             ),
// //                             decoration: BoxDecoration(
// //                               color: Colors.grey[800],
// //                               borderRadius: BorderRadius.circular(4),
// //                             ),
// //                             child: Text(
// //                               controller.selectedAspectRatio.value,
// //                               style: const TextStyle(
// //                                 color: Colors.white,
// //                                 fontSize: 11,
// //                                 fontWeight: FontWeight.w600,
// //                               ),
// //                             ),
// //                           )),
// //                     ),

// //                   GestureDetector(
// //                     onTap: () => _showQualitySelector(Get.context!, controller),
// //                     child: Container(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: width * 0.015,
// //                         vertical: height * 0.004,
// //                       ),
// //                       decoration: BoxDecoration(
// //                         color: Colors.grey[800],
// //                         borderRadius: BorderRadius.circular(4),
// //                       ),
// //                       child: Row(
// //                         mainAxisSize: MainAxisSize.min,
// //                         children: [
// //                           Obx(() => Text(
// //                                 controller.selectedQuality.value,
// //                                 style: const TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: 11,
// //                                   fontWeight: FontWeight.w600,
// //                                 ),
// //                               )),
// //                           const SizedBox(width: 3),
// //                           const Icon(
// //                             Icons.arrow_drop_up,
// //                             color: Colors.white,
// //                             size: 14,
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['defaultUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     // Listen to orientation changes
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
//       return token;
//     } catch (e) {
//       print('✗ Error getting token: $e');
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

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('No authentication token found', isError: true);
//         print('✗ No token available');
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('📡 Fetching video details...');
//       print('URL: $url');
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {'Authorization': 'Bearer $token'},
//       );

//       print('Status Code: ${response.statusCode}');

//       if (response.statusCode != 200) {
//         print('✗ API Error: ${response.body}');
//         showToast('Error fetching video: ${response.statusCode}', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
//       print('✓ JSON parsed successfully');
      
//       videoDetails.value = VideoDetails.fromJson(data);
//       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
//       // Extract available qualities
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
//       print('✓ Available qualities: $availableQualities');
      
//       // Get default URL
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
//       print('✓ Default URL set');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video details loaded. Auto-initializing player...');
//       isLoading.value = false;
      
//       // Auto-initialize video player immediately after fetching details
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       print('✗ Exception in fetchVideoDetails: $e');
//       showToast('Failed to load video: $e', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     print('▶ Starting playback...');
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL available');
//       videoError.value = 'No video URL available';
//       showToast('No video URL found', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     await fetchVideoDetails(_videoId.value);
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL to initialize');
//       videoError.value = 'No video URL available';
//       return;
//     }

//     try {
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('🎬 Initializing video player');
//       print('URL: ${currentVideoUrl.value.substring(0, 80)}...');
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//       );
      
//       await videoController!.initialize();
//       print('✓ Video player initialized');
      
//       isVideoInitialized.value = true;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
//       print('✓ Duration: ${formatDuration(totalDuration.value)}');
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           print('✗ Playback error: ${videoController!.value.errorDescription}');
//           videoError.value = videoController!.value.errorDescription ?? 'Unknown error';
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//         }
//       });

//       videoError.value = '';
//       print('✓ Video ready to play');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       // Don't auto-play initially - let user decide
//       print('⏸ Video initialized. Waiting for user action.');
      
//     } catch (e) {
//       print('✗ Error initializing player: $e');
//       showToast('Failed to initialize video: $e', isError: true);
//       videoError.value = e.toString();
//       isVideoInitialized.value = false;
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//       print('⏸ Paused');
//     } else {
//       await videoController!.play();
//       print('▶ Playing');
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       print('⏩ +10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       print('⏪ -10s');
//       showControlsTemporary();
//     }
//   }

//   void toggleFullScreen() {
//     isFullScreen.value = !isFullScreen.value;
    
//     // Ensure video continues playing in fullscreen
//     if (isFullScreen.value && isVideoInitialized.value && 
//         videoController != null && !videoController!.value.isPlaying) {
//       videoController!.play();
//     }
    
//     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//     print('🎬 Changing quality to $quality');
    
//     if (newUrl != currentVideoUrl.value) {
//       final currentPos = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       currentVideoUrl.value = newUrl;
//       print('✓ New URL set');
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value) {
//         await videoController!.seekTo(currentPos);
//         if (wasPlaying) {
//           await videoController!.play();
//         }
//       }
//     }
//     Get.back();
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     print('Aspect ratio: $ratio');
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return const Center(
//               child: CircularProgressIndicator(color: Colors.white),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video details',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               // Auto-detect landscape orientation
//               bool isLandscape = orientation == Orientation.landscape;
              
//               // Sync fullscreen state with orientation
//               if (isLandscape && !controller.isFullScreen.value) {
//                 Future.microtask(() => controller.isFullScreen.value = true);
//               } else if (!isLandscape && controller.isFullScreen.value) {
//                 Future.microtask(() => controller.isFullScreen.value = false);
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.08,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),

//                   Row(
//                     children: [
//                       // Icon(
//                       //   Icons.star,
//                       //   color: Colors.orange,
//                       //   size: width * 0.04,
//                       // ),
//                       // SizedBox(width: width * 0.01),
//                       // Text(
//                       //   'N/A',
//                       //   style: TextStyle(
//                       //     color: Colors.white,
//                       //     fontSize: width * 0.035,
//                       //     fontWeight: FontWeight.w600,
//                       //   ),
//                       // ),
//                       // SizedBox(width: width * 0.02),
//                       // Text(
//                       //   'Episode ${details.episodeSeq}',
//                       //   style: TextStyle(
//                       //     color: Colors.grey[400],
//                       //     fontSize: width * 0.03,
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   'Video Error: ${controller.videoError.value}',
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.currentVideoUrl.value = controller.videoDetails.value!.defaultUrl;
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && controller.videoController != null && controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : const Center(
//                       child: CircularProgressIndicator(color: Colors.blue),
//                     ),
//             ),
//           ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         // Top Controls
//         Padding(
//           padding: EdgeInsets.only(
//             left: width * 0.015,
//             right: width * 0.01,
//             top: width * 0.015,
//             bottom: width * 0.015,
//           ),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () {
//                     controller.toggleFullScreen();
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                     size: 24,
//                   ),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Text(
//                 details.episodeName,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const Spacer(),

//               Flexible(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),

//               const Spacer(),

//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   // IconButton(
//                   //   onPressed: () {},
//                   //   icon: Icon(
//                   //     Icons.subtitles,
//                   //     color: Colors.white,
//                   //     size: isLandscape ? 20 : width * 0.038,
//                   //   ),
//                   //   padding: EdgeInsets.all(width * 0.008),
//                   //   constraints: const BoxConstraints(),
//                   // ),
//                   // IconButton(
//                   //   onPressed: () {},
//                   //   icon: Icon(
//                   //     Icons.settings,
//                   //     color: Colors.white,
//                   //     size: isLandscape ? 20 : width * 0.038,
//                   //   ),
//                   //   padding: EdgeInsets.all(width * 0.008),
//                   //   constraints: const BoxConstraints(),
//                   // ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         // Center Play Controls
//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         // Bottom Controls
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               // Progress Bar with Time
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),

//                     SizedBox(width: width * 0.02),

//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),

//                     SizedBox(width: width * 0.02),

//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),

//               SizedBox(height: height * 0.01),

//               // Quality Selector
//               Row(
//                 children: [
//                   const Spacer(),

//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),

//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['defaultUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();            
//     // Listen to orientation changes
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
//       return token;
//     } catch (e) {
//       print('✗ Error getting token: $e');
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

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('No authentication token found', isError: true);
//         print('✗ No token available');
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('📡 Fetching video details...');
//       print('URL: $url');
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {'Authorization': 'Bearer $token'},
//       );

//       print('Status Code: ${response.statusCode}');

//       if (response.statusCode != 200) {
//         print('✗ API Error: ${response.body}');
//         showToast('Error fetching video: ${response.statusCode}', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
//       print('✓ JSON parsed successfully');
      
//       videoDetails.value = VideoDetails.fromJson(data);
//       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
//       // Extract available qualities
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
//       print('✓ Available qualities: $availableQualities');
      
//       // Get default URL
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
//       print('✓ Default URL set');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video details loaded. Auto-initializing player...');
//       isLoading.value = false;
      
//       // Auto-initialize video player immediately after fetching details
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       print('✗ Exception in fetchVideoDetails: $e');
//       showToast('Failed to load video: $e', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     print('▶ Starting playback...');
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL available');
//       videoError.value = 'No video URL available';
//       showToast('No video URL found', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     await fetchVideoDetails(_videoId.value);
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL to initialize');
//       videoError.value = 'No video URL available';
//       return;
//     }

//     try {
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('🎬 Initializing video player');
//       print('URL: ${currentVideoUrl.value.substring(0, 80)}...');
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//       );
      
//       await videoController!.initialize();
//       print('✓ Video player initialized');
      
//       isVideoInitialized.value = true;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
//       print('✓ Duration: ${formatDuration(totalDuration.value)}');
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           print('✗ Playback error: ${videoController!.value.errorDescription}');
//           videoError.value = videoController!.value.errorDescription ?? 'Unknown error';
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//         }
//       });

//       videoError.value = '';
//       print('✓ Video ready to play');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       // Don't auto-play initially - let user decide
//       print('⏸ Video initialized. Waiting for user action.');
      
//     } catch (e) {
//       print('✗ Error initializing player: $e');
//       showToast('Failed to initialize video: $e', isError: true);
//       videoError.value = e.toString();
//       isVideoInitialized.value = false;
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//       print('⏸ Paused');
//     } else {
//       await videoController!.play();
//       print('▶ Playing');
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       print('⏩ +10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       print('⏪ -10s');
//       showControlsTemporary();
//     }
//   }

//   void toggleFullScreen() {
//     isFullScreen.value = !isFullScreen.value;
    
//     // Ensure video continues playing in fullscreen
//     if (isFullScreen.value && isVideoInitialized.value && 
//         videoController != null && !videoController!.value.isPlaying) {
//       videoController!.play();
//     }
    
//     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//     print('🎬 Changing quality to $quality');
    
//     if (newUrl != currentVideoUrl.value) {
//       final currentPos = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       currentVideoUrl.value = newUrl;
//       print('✓ New URL set');
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value) {
//         await videoController!.seekTo(currentPos);
//         if (wasPlaying) {
//           await videoController!.play();
//         }
//       }
//     }
//     Get.back();
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     print('Aspect ratio: $ratio');
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return const Center(
//               child: CircularProgressIndicator(color: Colors.white),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video details',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               // Auto-detect landscape orientation
//               bool isLandscape = orientation == Orientation.landscape;
              
//               // Sync fullscreen state with orientation
//               if (isLandscape && !controller.isFullScreen.value) {
//                 Future.microtask(() => controller.isFullScreen.value = true);
//               } else if (!isLandscape && controller.isFullScreen.value) {
//                 Future.microtask(() => controller.isFullScreen.value = false);
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.08,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),

//                   Row(
//                     children: [
//                       // Icon(
//                       //   Icons.star,
//                       //   color: Colors.orange,
//                       //   size: width * 0.04,
//                       // ),
//                       // SizedBox(width: width * 0.01),
//                       // Text(
//                       //   'N/A',
//                       //   style: TextStyle(
//                       //     color: Colors.white,
//                       //     fontSize: width * 0.035,
//                       //     fontWeight: FontWeight.w600,
//                       //   ),
//                       // ),
//                       // SizedBox(width: width * 0.02),
//                       // Text(
//                       //   'Episode ${details.episodeSeq}',
//                       //   style: TextStyle(
//                       //     color: Colors.grey[400],
//                       //     fontSize: width * 0.03,
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   'Video Error: ${controller.videoError.value}',
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.currentVideoUrl.value = controller.videoDetails.value!.defaultUrl;
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && controller.videoController != null && controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : const Center(
//                       child: CircularProgressIndicator(color: Colors.blue),
//                     ),
//             ),
//           ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         // Top Controls
//         Padding(
//           padding: EdgeInsets.only(
//             left: width * 0.015,
//             right: width * 0.01,
//             top: width * 0.015,
//             bottom: width * 0.015,
//           ),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () {
//                     controller.toggleFullScreen();
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                     size: 24,
//                   ),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Text(
//                 details.episodeName,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const Spacer(),

//               Flexible(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),

//               const Spacer(),

//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   // IconButton(
//                   //   onPressed: () {},
//                   //   icon: Icon(
//                   //     Icons.subtitles,
//                   //     color: Colors.white,
//                   //     size: isLandscape ? 20 : width * 0.038,
//                   //   ),
//                   //   padding: EdgeInsets.all(width * 0.008),
//                   //   constraints: const BoxConstraints(),
//                   // ),
//                   // IconButton(
//                   //   onPressed: () {},
//                   //   icon: Icon(
//                   //     Icons.settings,
//                   //     color: Colors.white,
//                   //     size: isLandscape ? 20 : width * 0.038,
//                   //   ),
//                   //   padding: EdgeInsets.all(width * 0.008),
//                   //   constraints: const BoxConstraints(),
//                   // ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         // Center Play Controls
//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         // Bottom Controls
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               // Progress Bar with Time
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),

//                     SizedBox(width: width * 0.02),

//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),

//                     SizedBox(width: width * 0.02),

//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),

//               SizedBox(height: height * 0.01),

//               // Quality Selector
//               Row(
//                 children: [
//                   const Spacer(),

//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),

//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['defaultUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
//   // Position tracking for orientation changes
//   Duration _lastKnownPosition = Duration.zero;
//   bool _isHandlingOrientationChange = false;

//   @override
//   void onInit() {
//     super.onInit();            
//     // Listen to orientation changes
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
//       return token;
//     } catch (e) {
//       print('✗ Error getting token: $e');
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

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('No authentication token found', isError: true);
//         print('✗ No token available');
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('📡 Fetching video details...');
//       print('URL: $url');
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {'Authorization': 'Bearer $token'},
//       );

//       print('Status Code: ${response.statusCode}');

//       if (response.statusCode != 200) {
//         print('✗ API Error: ${response.body}');
//         showToast('Error fetching video: ${response.statusCode}', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
//       print('✓ JSON parsed successfully');
      
//       videoDetails.value = VideoDetails.fromJson(data);
//       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
//       // Extract available qualities
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
//       print('✓ Available qualities: $availableQualities');
      
//       // Get default URL
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
//       print('✓ Default URL set');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video details loaded. Auto-initializing player...');
//       isLoading.value = false;
      
//       // Auto-initialize video player immediately after fetching details
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       print('✗ Exception in fetchVideoDetails: $e');
//       showToast('Failed to load video: $e', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     print('▶ Starting playback...');
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL available');
//       videoError.value = 'No video URL available';
//       showToast('No video URL found', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     await fetchVideoDetails(_videoId.value);
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL to initialize');
//       videoError.value = 'No video URL available';
//       return;
//     }

//     try {
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('🎬 Initializing video player');
//       print('URL: ${currentVideoUrl.value.substring(0, 80)}...');
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//       );
      
//       await videoController!.initialize();
//       print('✓ Video player initialized');
      
//       isVideoInitialized.value = true;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
//       print('✓ Duration: ${formatDuration(totalDuration.value)}');
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       // Restore last known position if available
//       if (_lastKnownPosition.inSeconds > 0) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
//       }

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           print('✗ Playback error: ${videoController!.value.errorDescription}');
//           videoError.value = videoController!.value.errorDescription ?? 'Unknown error';
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//           // Keep updating last known position
//           _lastKnownPosition = videoController!.value.position;
//         }
//       });

//       videoError.value = '';
//       print('✓ Video ready to play');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video initialized. Waiting for user action.');
      
//     } catch (e) {
//       print('✗ Error initializing player: $e');
//       showToast('Failed to initialize video: $e', isError: true);
//       videoError.value = e.toString();
//       isVideoInitialized.value = false;
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//       print('⏸ Paused');
//     } else {
//       await videoController!.play();
//       print('▶ Playing');
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//       _lastKnownPosition = Duration(seconds: seconds.toInt());
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏩ +10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏪ -10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> toggleFullScreen() async {
//     // Save current position and playback state before toggling
//     if (videoController != null && videoController!.value.isInitialized) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving state - Position: ${_lastKnownPosition.inSeconds}s, Playing: $wasPlaying');
      
//       // Pause if playing
//       if (wasPlaying) {
//         await videoController!.pause();
//       }
      
//       // Toggle fullscreen
//       isFullScreen.value = !isFullScreen.value;
      
//       // Wait for UI to settle
//       await Future.delayed(const Duration(milliseconds: 150));
      
//       // Restore position
//       if (videoController != null && videoController!.value.isInitialized) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
        
//         // Resume if it was playing
//         if (wasPlaying) {
//           await videoController!.play();
//           print('▶ Resumed playback');
//         }
//       }
//     } else {
//       isFullScreen.value = !isFullScreen.value;
//     }
    
//     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//     print('🎬 Changing quality to $quality');
    
//     if (newUrl != currentVideoUrl.value) {
//       // Save current position and playback state
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving position before quality change: ${_lastKnownPosition.inSeconds}s');
      
//       currentVideoUrl.value = newUrl;
//       print('✓ New URL set');
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value && wasPlaying) {
//         await videoController!.play();
//         print('▶ Resumed playback after quality change');
//       }
//     }
//     Get.back();
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     print('Aspect ratio: $ratio');
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return const Center(
//               child: CircularProgressIndicator(color: Colors.white),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video details',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               // Auto-detect landscape orientation
//               bool isLandscape = orientation == Orientation.landscape;
              
//               // Sync fullscreen state with orientation
//               if (isLandscape && !controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = true;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = true;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               } else if (!isLandscape && controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = false;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = false;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.08,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const Row(
//                     children: [],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   'Video Error: ${controller.videoError.value}',
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.currentVideoUrl.value = controller.videoDetails.value!.defaultUrl;
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && controller.videoController != null && controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : const Center(
//                       child: CircularProgressIndicator(color: Colors.blue),
//                     ),
//             ),
//           ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         // Top Controls
//         Padding(
//           padding: EdgeInsets.only(
//             left: width * 0.015,
//             right: width * 0.01,
//             top: width * 0.015,
//             bottom: width * 0.015,
//           ),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () {
//                     controller.toggleFullScreen();
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                     size: 24,
//                   ),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Text(
//                 details.episodeName,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const Spacer(),

//               Flexible(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),

//               const Spacer(),

//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         // Center Play Controls
//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         // Bottom Controls
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               // Progress Bar with Time
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),

//                     SizedBox(width: width * 0.02),

//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),

//                     SizedBox(width: width * 0.02),

//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),

//               SizedBox(height: height * 0.01),

//               // Quality Selector
//               Row(
//                 children: [
//                   const Spacer(),

//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),

//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['videoUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
//   // Position tracking for orientation changes
//   Duration _lastKnownPosition = Duration.zero;
//   bool _isHandlingOrientationChange = false;

//   @override
//   void onInit() {
//     super.onInit();            
//     // Listen to orientation changes
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
//       return token;
//     } catch (e) {
//       print('✗ Error getting token: $e');
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

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('No authentication token found', isError: true);
//         print('✗ No token available');
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('📡 Fetching video details...');
//       print('URL: $url');
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {'Authorization': 'Bearer $token'},
//       );

//       print('Status Code: ${response.statusCode}');

//       if (response.statusCode != 200) {
//         print('✗ API Error: ${response.body}');
//         showToast('Error fetching video: ${response.statusCode}', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
//       print('✓ JSON parsed successfully');
      
//       videoDetails.value = VideoDetails.fromJson(data);
//       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
//       // Extract available qualities
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
//       print('✓ Available qualities: $availableQualities');
      
//       // Get default URL
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
//       print('✓ Default URL set');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video details loaded. Auto-initializing player...');
//       isLoading.value = false;
      
//       // Auto-initialize video player immediately after fetching details
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       print('✗ Exception in fetchVideoDetails: $e');
//       showToast('Failed to load video: $e', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     print('▶ Starting playback...');
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL available');
//       videoError.value = 'No video URL available';
//       showToast('No video URL found', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     await fetchVideoDetails(_videoId.value);
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL to initialize');
//       videoError.value = 'No video URL available';
//       return;
//     }

//     try {
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('🎬 Initializing video player');
//       print('URL: ${currentVideoUrl.value.substring(0, 80)}...');
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//       );
      
//       await videoController!.initialize();
//       print('✓ Video player initialized');
      
//       isVideoInitialized.value = true;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
//       print('✓ Duration: ${formatDuration(totalDuration.value)}');
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       // Restore last known position if available
//       if (_lastKnownPosition.inSeconds > 0) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
//       }

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           print('✗ Playback error: ${videoController!.value.errorDescription}');
//           videoError.value = videoController!.value.errorDescription ?? 'Unknown error';
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//           // Keep updating last known position
//           _lastKnownPosition = videoController!.value.position;
//         }
//       });

//       videoError.value = '';
//       print('✓ Video ready to play');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       print('⏸ Video initialized. Waiting for user action.');
      
//     } catch (e) {
//       print('✗ Error initializing player: $e');
//       showToast('Failed to initialize video: $e', isError: true);
//       videoError.value = e.toString();
//       isVideoInitialized.value = false;
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//       print('⏸ Paused');
//     } else {
//       await videoController!.play();
//       print('▶ Playing');
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//       _lastKnownPosition = Duration(seconds: seconds.toInt());
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏩ +10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏪ -10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> toggleFullScreen() async {
//     // Save current position and playback state before toggling
//     if (videoController != null && videoController!.value.isInitialized) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving state - Position: ${_lastKnownPosition.inSeconds}s, Playing: $wasPlaying');
      
//       // Pause if playing
//       if (wasPlaying) {
//         await videoController!.pause();
//       }
      
//       // Toggle fullscreen
//       isFullScreen.value = !isFullScreen.value;
      
//       // Wait for UI to settle
//       await Future.delayed(const Duration(milliseconds: 150));
      
//       // Restore position
//       if (videoController != null && videoController!.value.isInitialized) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
        
//         // Resume if it was playing
//         if (wasPlaying) {
//           await videoController!.play();
//           print('▶ Resumed playback');
//         }
//       }
//     } else {
//       isFullScreen.value = !isFullScreen.value;
//     }
    
//     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//     print('🎬 Changing quality to $quality');
    
//     if (newUrl != currentVideoUrl.value) {
//       // Save current position and playback state
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving position before quality change: ${_lastKnownPosition.inSeconds}s');
      
//       currentVideoUrl.value = newUrl;
//       print('✓ New URL set');
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value && wasPlaying) {
//         await videoController!.play();
//         print('▶ Resumed playback after quality change');
//       }
//     }
//     Get.back();
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     print('Aspect ratio: $ratio');
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return const Center(
//               child: CircularProgressIndicator(color: Colors.white),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video details',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   SizedBox(height: height * 0.01),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                     child: const Text('Retry'),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               // Auto-detect landscape orientation
//               bool isLandscape = orientation == Orientation.landscape;
              
//               // Sync fullscreen state with orientation
//               if (isLandscape && !controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = true;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = true;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               } else if (!isLandscape && controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = false;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = false;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.08,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),

//                   const Row(
//                     children: [],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   'Video Error: ${controller.videoError.value}',
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.currentVideoUrl.value = controller.videoDetails.value!.defaultUrl;
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && controller.videoController != null && controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : const Center(
//                       child: CircularProgressIndicator(color: Colors.blue),
//                     ),
//             ),
//           ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         // Top Controls
//         Padding(
//           padding: EdgeInsets.only(
//             left: width * 0.015,
//             right: width * 0.01,
//             top: width * 0.015,
//             bottom: width * 0.015,
//           ),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () {
//                     controller.toggleFullScreen();
//                   },
//                   icon: const Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                     size: 24,
//                   ),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Text(
//                 details.episodeName,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const Spacer(),

//               Flexible(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),

//               const Spacer(),

//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         // Center Play Controls
//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),

//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),

//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         // Bottom Controls
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               // Progress Bar with Time
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),

//                     SizedBox(width: width * 0.02),

//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),

//                     SizedBox(width: width * 0.02),

//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),

//               SizedBox(height: height * 0.01),

//               // Quality Selector
//               Row(
//                 children: [
//                   const Spacer(),

//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),

//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['videoUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxBool isBuffering = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
//   Duration _lastKnownPosition = Duration.zero;
//   bool _isHandlingOrientationChange = false;
//   int _retryCount = 0;
//   static const int _maxRetries = 3;

//   @override
//   void onInit() {
//     super.onInit();            
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       print('✓ Token retrieved: ${token != null ? "Present" : "Null"}');
//       return token;
//     } catch (e) {
//       print('✗ Error getting token: $e');
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('Authentication required. Please login again.', isError: true);
//         print('✗ No token available');
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('📡 Fetching video details...');
//       print('URL: $url');
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {
//           'Authorization': 'Bearer $token',
//           'Accept': 'application/json',
//         },
//       ).timeout(
//         const Duration(seconds: 30),
//         onTimeout: () {
//           throw Exception('Request timeout. Check your internet connection.');
//         },
//       );

//       print('Status Code: ${response.statusCode}');

//       if (response.statusCode == 401) {
//         showToast('Session expired. Please login again.', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       if (response.statusCode != 200) {
//         print('✗ API Error: ${response.body}');
//         String errorMsg = 'Failed to load video (${response.statusCode})';
//         try {
//           final errorData = json.decode(response.body);
//           errorMsg = errorData['message'] ?? errorMsg;
//         } catch (e) {
//           // Use default error message
//         }
//         showToast(errorMsg, isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
//       print('✓ JSON parsed successfully');
      
//       videoDetails.value = VideoDetails.fromJson(data);
//       print('✓ VideoDetails created: ${videoDetails.value?.title}');
      
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
//       print('✓ Available qualities: $availableQualities');
      
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
      
//       if (currentVideoUrl.value.isEmpty) {
//         throw Exception('No video URL available');
//       }
      
//       print('✓ Video URL: ${currentVideoUrl.value.substring(0, currentVideoUrl.value.length > 100 ? 100 : currentVideoUrl.value.length)}...');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//       isLoading.value = false;
//       _retryCount = 0;
      
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       print('✗ Exception in fetchVideoDetails: $e');
//       showToast('Error: ${e.toString()}', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     print('▶ Starting playback...');
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL available');
//       videoError.value = 'No video URL available';
//       showToast('Video not ready', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       showToast('Initializing video...', isError: false);
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     if (_retryCount < _maxRetries) {
//       _retryCount++;
//       print('🔄 Retry attempt $_retryCount of $_maxRetries');
//       await fetchVideoDetails(_videoId.value);
//     } else {
//       showToast('Maximum retry attempts reached', isError: true);
//     }
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       print('✗ No video URL to initialize');
//       videoError.value = 'No video URL available';
//       showToast('Video URL missing', isError: true);
//       return;
//     }

//     try {
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//       print('🎬 Initializing video player for large file...');
//       print('URL: ${currentVideoUrl.value.substring(0, currentVideoUrl.value.length > 100 ? 100 : currentVideoUrl.value.length)}...');
      
//       if (videoController != null) {
//         await videoController!.dispose();
//         videoController = null;
//       }
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//         httpHeaders: {
//           'Accept': 'video/*',
//           'Range': 'bytes=0-',
//         },
//         videoPlayerOptions: VideoPlayerOptions(
//           mixWithOthers: false,
//           allowBackgroundPlayback: false,
//         ),
//       );
      
//       isBuffering.value = true;
      
//       await videoController!.initialize().timeout(
//         const Duration(seconds: 60),
//         onTimeout: () {
//           throw Exception('Video initialization timeout. File may be too large or connection is slow.');
//         },
//       );
      
//       print('✓ Video player initialized');
      
//       isVideoInitialized.value = true;
//       isBuffering.value = false;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
//       print('✓ Duration: ${formatDuration(totalDuration.value)}');
//       print('✓ Video size: ${videoController!.value.size.width}x${videoController!.value.size.height}');
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       if (_lastKnownPosition.inSeconds > 0) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
//       }

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           print('✗ Playback error: ${videoController!.value.errorDescription}');
//           videoError.value = videoController!.value.errorDescription ?? 'Playback error occurred';
//           showToast('Playback error: ${videoError.value}', isError: true);
//           isBuffering.value = false;
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//           isBuffering.value = videoController!.value.isBuffering;
//           _lastKnownPosition = videoController!.value.position;
          
//           if (videoController!.value.isBuffering) {
//             print('⏳ Buffering...');
//           }
//         }
//       });

//       videoError.value = '';
//       _retryCount = 0;
//       showToast('Video ready!', isError: false);
//       print('✓ Large video ready to play');
//       print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
      
//     } catch (e) {
//       print('✗ Error initializing player: $e');
//       String errorMsg = e.toString();
      
//       if (errorMsg.contains('timeout')) {
//         errorMsg = 'Video file is too large or connection is slow. Please try a lower quality.';
//       } else if (errorMsg.contains('format')) {
//         errorMsg = 'Video format not supported';
//       } else if (errorMsg.contains('404')) {
//         errorMsg = 'Video file not found on server';
//       } else if (errorMsg.contains('403')) {
//         errorMsg = 'Access denied to video file';
//       }
      
//       showToast(errorMsg, isError: true);
//       videoError.value = errorMsg;
//       isVideoInitialized.value = false;
//       isBuffering.value = false;
      
//       if (_retryCount < _maxRetries && !errorMsg.contains('format') && !errorMsg.contains('404')) {
//         print('🔄 Auto-retry in 2 seconds...');
//         await Future.delayed(const Duration(seconds: 2));
//         await retryFetch();
//       }
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//       print('⏸ Paused');
//     } else {
//       await videoController!.play();
//       print('▶ Playing');
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//       print('${isMuted.value ? "🔇 Muted" : "🔊 Unmuted"}');
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       isBuffering.value = true;
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//       _lastKnownPosition = Duration(seconds: seconds.toInt());
//       await Future.delayed(const Duration(milliseconds: 100));
//       isBuffering.value = false;
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏩ +10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       print('⏪ -10s');
//       showControlsTemporary();
//     }
//   }

//   Future<void> toggleFullScreen() async {
//     if (videoController != null && videoController!.value.isInitialized) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving state - Position: ${_lastKnownPosition.inSeconds}s, Playing: $wasPlaying');
      
//       if (wasPlaying) {
//         await videoController!.pause();
//       }
      
//       isFullScreen.value = !isFullScreen.value;
      
//       await Future.delayed(const Duration(milliseconds: 150));
      
//       if (videoController != null && videoController!.value.isInitialized) {
//         await videoController!.seekTo(_lastKnownPosition);
//         print('♻️ Restored position: ${_lastKnownPosition.inSeconds}s');
        
//         if (wasPlaying) {
//           await videoController!.play();
//           print('▶ Resumed playback');
//         }
//       }
//     } else {
//       isFullScreen.value = !isFullScreen.value;
//     }
    
//     print(isFullScreen.value ? '🖥 Full screen' : '📱 Normal screen');
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//     print('🎬 Changing quality to $quality');
    
//     if (newUrl != currentVideoUrl.value) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       print('💾 Saving position before quality change: ${_lastKnownPosition.inSeconds}s');
      
//       currentVideoUrl.value = newUrl;
//       print('✓ New URL set');
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       showToast('Switching quality...', isError: false);
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value && wasPlaying) {
//         await videoController!.play();
//         print('▶ Resumed playback after quality change');
//       }
//     }
//     Get.back();
//     print('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     print('Aspect ratio: $ratio');
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const CircularProgressIndicator(color: Colors.blue),
//                   SizedBox(height: height * 0.02),
//                   const Text(
//                     'Loading video...',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ],
//               ),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   if (controller.videoError.value.isNotEmpty) ...[
//                     SizedBox(height: height * 0.01),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//                       child: Text(
//                         controller.videoError.value,
//                         style: TextStyle(color: Colors.grey[400], fontSize: width * 0.035),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                   SizedBox(height: height * 0.02),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.08,
//                         vertical: height * 0.015,
//                       ),
//                     ),
//                     child: const Text('Retry', style: TextStyle(fontSize: 16)),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               bool isLandscape = orientation == Orientation.landscape;
              
//               if (isLandscape && !controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = true;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = true;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               } else if (!isLandscape && controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = false;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = false;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.06,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty && !controller.isVideoInitialized.value) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   controller.videoError.value,
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && 
//                      controller.videoController != null && 
//                      controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const CircularProgressIndicator(color: Colors.blue),
//                           const SizedBox(height: 16),
//                           Text(
//                             controller.isBuffering.value ? 'Buffering...' : 'Initializing...',
//                             style: const TextStyle(color: Colors.white, fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ),
//             ),
//           ),

//           if (controller.isBuffering.value && controller.isVideoInitialized.value)
//             Center(
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     CircularProgressIndicator(color: Colors.blue),
//                     SizedBox(height: 10),
//                     Text(
//                       'Buffering...',
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               subtitle: quality == 'Auto' 
//                                   ? const Text(
//                                       'Recommended for large files',
//                                       style: TextStyle(color: Colors.grey, fontSize: 12),
//                                     )
//                                   : null,
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(width * 0.015),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () => controller.toggleFullScreen(),
//                   icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Expanded(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),
//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                     SizedBox(width: width * 0.02),
//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),
//                     SizedBox(width: width * 0.02),
//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),
//               SizedBox(height: height * 0.01),
//               Row(
//                 children: [
//                   const Spacer(),
//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),
//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class VideoDetails {
//   final String id;
//   final String episodeName;
//   final int episodeSeq;
//   final String episodeCode;
//   final String title;
//   final String description;
//   final String genre;
//   final List<String> languages;
//   final int runtimeMinutes;
//   final String posterUrl;
//   final String thumbUrl;
//   final List<Source> sources;
//   final String defaultUrl;
//   final String expiresIn;

//   VideoDetails({
//     required this.id,
//     required this.episodeName,
//     required this.episodeSeq,
//     required this.episodeCode,
//     required this.title,
//     required this.description,
//     required this.genre,
//     required this.languages,
//     required this.runtimeMinutes,
//     required this.posterUrl,
//     required this.thumbUrl,
//     required this.sources,
//     required this.defaultUrl,
//     required this.expiresIn,
//   });

//   factory VideoDetails.fromJson(Map<String, dynamic> json) {
//     return VideoDetails(
//       id: json['id'] ?? '',
//       episodeName: json['episodeName'] ?? '',
//       episodeSeq: json['episodeSeq'] ?? 0,
//       episodeCode: json['episodeCode'] ?? '',
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       genre: json['genre'] ?? '',
//       languages: List<String>.from((json['languages'] ?? [])),
//       runtimeMinutes: json['runtimeMinutes'] ?? 0,
//       posterUrl: json['posterUrl'] ?? '',
//       thumbUrl: json['thumbUrl'] ?? '',
//       sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
//       defaultUrl: json['videoUrl'] ?? '',
//       expiresIn: json['expiresIn'] ?? '',
//     );
//   }
// }

// class Source {
//   final String type;
//   final String quality;
//   final String url;
//   final int ttlSeconds;

//   Source({
//     required this.type,
//     required this.quality,
//     required this.url,
//     required this.ttlSeconds,
//   });

//   factory Source.fromJson(Map<String, dynamic> json) {
//     return Source(
//       type: json['type'] ?? '',
//       quality: json['quality'] ?? '',
//       url: json['url'] ?? '',
//       ttlSeconds: json['ttlSeconds'] ?? 0,
//     );
//   }
// }

// class MoviePlayerController extends GetxController {
//   VideoPlayerController? videoController;
//   RxBool isPlaying = false.obs;
//   RxBool showControls = true.obs;
//   RxBool isFullScreen = false.obs;
//   RxBool isMuted = false.obs;
//   RxDouble currentPosition = 0.0.obs;
//   RxDouble totalDuration = 0.0.obs;
//   RxBool isLoading = true.obs;
//   RxBool isVideoInitialized = false.obs;
//   RxBool isBuffering = false.obs;
//   RxString selectedQuality = 'Auto'.obs;
//   RxString selectedAspectRatio = 'Fit'.obs;
//   Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
//   RxString currentVideoUrl = ''.obs;
//   List<String> availableQualities = <String>[];
//   RxString _videoId = ''.obs;
//   RxString videoError = ''.obs;
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
//   Duration _lastKnownPosition = Duration.zero;
//   bool _isHandlingOrientationChange = false;
//   int _retryCount = 0;
//   static const int _maxRetries = 3;

//   @override
//   void onInit() {
//     super.onInit();            
//     ever(isFullScreen, (value) {
//       _handleOrientationChange(value);
//     });
//   }

//   void _handleOrientationChange(bool fullscreen) {
//     if (fullscreen) {
//       SystemChrome.setPreferredOrientations([
//         DeviceOrientation.landscapeLeft,
//         DeviceOrientation.landscapeRight,
//       ]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     } else {
//       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//       SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     }
//   }

//   Future<void> initWithVideoId(String videoId) async {
//     _videoId.value = videoId;
//     await fetchVideoDetails(videoId);
//   }

//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final token = prefs.getString('auth_token');
//       return token;
//     } catch (e) {
//       return null;
//     }
//   }

//   void showToast(String message, {bool isError = false}) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: isError ? Colors.red : Colors.green,
//       textColor: Colors.white,
//       fontSize: 16.0,
//     );
//   }

//   Future<void> fetchVideoDetails(String videoId) async {
//     isLoading.value = true;
//     videoError.value = '';
//     isVideoInitialized.value = false;
    
//     try {
//       String? token = await getToken();
//       if (token == null) {
//         showToast('Authentication required. Please login again.', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       String url = '$baseUrl/videos/$videoId';
      
//       final response = await http.get(
//         Uri.parse(url),
//         headers: {
//           'Authorization': 'Bearer $token',
//           'Accept': 'application/json',
//         },
//       ).timeout(
//         const Duration(seconds: 30),
//         onTimeout: () {
//           throw Exception('Request timeout. Check your internet connection.');
//         },
//       );

//       if (response.statusCode == 401) {
//         showToast('Session expired. Please login again.', isError: true);
//         isLoading.value = false;
//         return;
//       }

//       if (response.statusCode != 200) {
//         String errorMsg = 'Failed to load video (${response.statusCode})';
//         try {
//           final errorData = json.decode(response.body);
//           errorMsg = errorData['message'] ?? errorMsg;
//         } catch (e) {
//           // Use default error message
//         }
//         showToast(errorMsg, isError: true);
//         isLoading.value = false;
//         return;
//       }

//       final data = json.decode(response.body);
      
//       videoDetails.value = VideoDetails.fromJson(data);
      
//       availableQualities = ['Auto', ...videoDetails.value!.sources
//           .where((s) => s.type == 'video')
//           .map((s) => s.quality)
//           .toList()];
      
//       currentVideoUrl.value = videoDetails.value!.defaultUrl;
      
//       if (currentVideoUrl.value.isEmpty) {
//         throw Exception('No video URL available');
//       }
      
//       isLoading.value = false;
//       _retryCount = 0;
      
//       await initializeVideoPlayer();
      
//     } catch (e) {
//       showToast('Error: ${e.toString()}', isError: true);
//       videoError.value = e.toString();
//       isLoading.value = false;
//     }
//   }

//   Future<void> startPlayback() async {
//     if (currentVideoUrl.value.isEmpty) {
//       videoError.value = 'No video URL available';
//       showToast('Video not ready', isError: true);
//       return;
//     }
    
//     if (!isVideoInitialized.value) {
//       await initializeVideoPlayer();
//     } else if (videoController != null && videoController!.value.isInitialized) {
//       await togglePlayPause();
//     }
//   }

//   Future<void> retryFetch() async {
//     if (_retryCount < _maxRetries) {
//       _retryCount++;
//       await fetchVideoDetails(_videoId.value);
//     } else {
//       showToast('Maximum retry attempts reached', isError: true);
//     }
//   }

//   Future<void> initializeVideoPlayer() async {
//     if (currentVideoUrl.value.isEmpty) {
//       videoError.value = 'No video URL available';
//       showToast('Video URL missing', isError: true);
//       return;
//     }

//     try {
//       if (videoController != null) {
//         await videoController!.dispose();
//         videoController = null;
//       }
      
//       videoController = VideoPlayerController.networkUrl(
//         Uri.parse(currentVideoUrl.value),
//         httpHeaders: {
//           'Accept': 'video/*',
//           'Range': 'bytes=0-',
//         },
//         videoPlayerOptions: VideoPlayerOptions(
//           mixWithOthers: false,
//           allowBackgroundPlayback: false,
//         ),
//       );
      
//       isBuffering.value = true;
      
//       await videoController!.initialize().timeout(
//         const Duration(seconds: 60),
//         onTimeout: () {
//           throw Exception('Video initialization timeout. File may be too large or connection is slow.');
//         },
//       );
      
//       isVideoInitialized.value = true;
//       isBuffering.value = false;
//       totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
      
//       videoController!.setLooping(false);
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

//       if (_lastKnownPosition.inSeconds > 0) {
//         await videoController!.seekTo(_lastKnownPosition);
//       }

//       videoController!.addListener(() {
//         if (videoController!.value.hasError) {
//           videoError.value = videoController!.value.errorDescription ?? 'Playback error occurred';
//           showToast('Playback error: ${videoError.value}', isError: true);
//           isBuffering.value = false;
//         } else {
//           currentPosition.value = videoController!.value.position.inSeconds.toDouble();
//           isPlaying.value = videoController!.value.isPlaying;
//           isBuffering.value = videoController!.value.isBuffering;
//           _lastKnownPosition = videoController!.value.position;
//         }
//       });

//       videoError.value = '';
//       _retryCount = 0;
      
//     } catch (e) {
//       String errorMsg = e.toString();
      
//       if (errorMsg.contains('timeout')) {
//         errorMsg = 'Video file is too large or connection is slow. Please try a lower quality.';
//       } else if (errorMsg.contains('format')) {
//         errorMsg = 'Video format not supported';
//       } else if (errorMsg.contains('404')) {
//         errorMsg = 'Video file not found on server';
//       } else if (errorMsg.contains('403')) {
//         errorMsg = 'Access denied to video file';
//       }
      
//       showToast(errorMsg, isError: true);
//       videoError.value = errorMsg;
//       isVideoInitialized.value = false;
//       isBuffering.value = false;
      
//       if (_retryCount < _maxRetries && !errorMsg.contains('format') && !errorMsg.contains('404')) {
//         await Future.delayed(const Duration(seconds: 2));
//         await retryFetch();
//       }
//     }
//   }

//   Future<void> togglePlayPause() async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Video not initialized', isError: true);
//       return;
//     }
//     if (videoController!.value.isPlaying) {
//       await videoController!.pause();
//     } else {
//       await videoController!.play();
//     }
//   }

//   void toggleMute() {
//     if (videoController != null && videoController!.value.isInitialized) {
//       isMuted.value = !isMuted.value;
//       videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
//     }
//   }

//   Future<void> seekTo(double seconds) async {
//     if (videoController != null && 
//         videoController!.value.isInitialized && 
//         seconds >= 0 && 
//         seconds <= totalDuration.value) {
//       isBuffering.value = true;
//       await videoController!.seekTo(Duration(seconds: seconds.toInt()));
//       _lastKnownPosition = Duration(seconds: seconds.toInt());
//       await Future.delayed(const Duration(milliseconds: 100));
//       isBuffering.value = false;
//     }
//   }

//   Future<void> skipForward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position + const Duration(seconds: 10);
//     if (newPosition <= videoController!.value.duration) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       showControlsTemporary();
//     }
//   }

//   Future<void> skipBackward() async {
//     if (videoController == null || !videoController!.value.isInitialized) return;
//     final newPosition = videoController!.value.position - const Duration(seconds: 10);
//     if (newPosition >= Duration.zero) {
//       await videoController!.seekTo(newPosition);
//       _lastKnownPosition = newPosition;
//       showControlsTemporary();
//     }
//   }

//   Future<void> toggleFullScreen() async {
//     if (videoController != null && videoController!.value.isInitialized) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       if (wasPlaying) {
//         await videoController!.pause();
//       }
      
//       isFullScreen.value = !isFullScreen.value;
      
//       await Future.delayed(const Duration(milliseconds: 150));
      
//       if (videoController != null && videoController!.value.isInitialized) {
//         await videoController!.seekTo(_lastKnownPosition);
        
//         if (wasPlaying) {
//           await videoController!.play();
//         }
//       }
//     } else {
//       isFullScreen.value = !isFullScreen.value;
//     }
//   }

//   void showControlsTemporary() {
//     showControls.value = true;
//     Future.delayed(const Duration(seconds: 3), () {
//       if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
//         showControls.value = false;
//       }
//     });
//   }

//   Future<void> changeQuality(String quality) async {
//     if (videoController == null || !videoController!.value.isInitialized) {
//       showToast('Initialize video first', isError: true);
//       Get.back();
//       return;
//     }

//     selectedQuality.value = quality;
//     String newUrl;
    
//     if (quality == 'Auto') {
//       newUrl = videoDetails.value!.defaultUrl;
//     } else {
//       final source = videoDetails.value!.sources.firstWhere(
//         (s) => s.type == 'video' && s.quality == quality,
//         orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
//       );
//       newUrl = source.url;
//     }
    
//     if (newUrl != currentVideoUrl.value) {
//       _lastKnownPosition = videoController!.value.position;
//       final wasPlaying = videoController!.value.isPlaying;
      
//       currentVideoUrl.value = newUrl;
//       videoController!.dispose();
//       isVideoInitialized.value = false;
      
//       await initializeVideoPlayer();
//       if (isVideoInitialized.value && wasPlaying) {
//         await videoController!.play();
//       }
//     }
//     Get.back();
//   }

//   void changeAspectRatio(String ratio) {
//     selectedAspectRatio.value = ratio;
//     Get.back();
//   }

//   BoxFit getBoxFit() {
//     switch (selectedAspectRatio.value) {
//       case 'Fill': return BoxFit.cover;
//       case 'Fit': return BoxFit.contain;
//       case 'Stretch': return BoxFit.fill;
//       case 'Zoom': return BoxFit.fitWidth;
//       default: return BoxFit.contain;
//     }
//   }

//   String formatDuration(double seconds) {
//     final duration = Duration(seconds: seconds.toInt());
//     final minutes = duration.inMinutes;
//     final remainingSeconds = duration.inSeconds % 60;
//     return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
//   }

//   @override
//   void onClose() {
//     if (videoController != null) {
//       videoController!.dispose();
//     }
//     SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.onClose();
//   }
// }

// class Movieplayerscreen extends StatelessWidget {
//   final String videoId;

//   const Movieplayerscreen({super.key, required this.videoId});

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     final MoviePlayerController controller = Get.put(MoviePlayerController());
//     controller.initWithVideoId(videoId);

//     return WillPopScope(
//       onWillPop: () async {
//         if (controller.isFullScreen.value) {
//           controller.toggleFullScreen();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const CircularProgressIndicator(color: Colors.blue),
//                   SizedBox(height: height * 0.02),
//                   const Text(
//                     'Loading video...',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ],
//               ),
//             );
//           }
//           if (controller.videoDetails.value == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(Icons.error_outline, color: Colors.red, size: 64),
//                   SizedBox(height: height * 0.02),
//                   Text(
//                     'Failed to load video',
//                     style: TextStyle(color: Colors.white, fontSize: width * 0.05),
//                   ),
//                   if (controller.videoError.value.isNotEmpty) ...[
//                     SizedBox(height: height * 0.01),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//                       child: Text(
//                         controller.videoError.value,
//                         style: TextStyle(color: Colors.grey[400], fontSize: width * 0.035),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                   SizedBox(height: height * 0.02),
//                   ElevatedButton(
//                     onPressed: () => controller.retryFetch(),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.blue,
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.08,
//                         vertical: height * 0.015,
//                       ),
//                     ),
//                     child: const Text('Retry', style: TextStyle(fontSize: 16)),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return OrientationBuilder(
//             builder: (context, orientation) {
//               bool isLandscape = orientation == Orientation.landscape;
              
//               if (isLandscape && !controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = true;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = true;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               } else if (!isLandscape && controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
//                 controller._isHandlingOrientationChange = true;
//                 Future.microtask(() async {
//                   if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                     controller._lastKnownPosition = controller.videoController!.value.position;
//                     final wasPlaying = controller.videoController!.value.isPlaying;
                    
//                     if (wasPlaying) await controller.videoController!.pause();
                    
//                     controller.isFullScreen.value = false;
//                     await Future.delayed(const Duration(milliseconds: 150));
                    
//                     if (controller.videoController != null && controller.videoController!.value.isInitialized) {
//                       await controller.videoController!.seekTo(controller._lastKnownPosition);
//                       if (wasPlaying) await controller.videoController!.play();
//                     }
//                   } else {
//                     controller.isFullScreen.value = false;
//                   }
//                   controller._isHandlingOrientationChange = false;
//                 });
//               }

//               return controller.isFullScreen.value || isLandscape
//                   ? _buildFullScreenPlayer(controller, width, height)
//                   : _buildNormalPlayer(controller, width, height, context);
//             },
//           );
//         }),
//       ),
//     );
//   }

//   Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     return SafeArea(
//       child: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               controller.startPlayback();
//               controller.showControlsTemporary();
//             },
//             child: Container(
//               width: width,
//               height: height * 0.3,
//               color: Colors.black,
//               child: _buildVideoPlayer(controller, width, height * 0.3),
//             ),
//           ),

//           Expanded(
//             child: Container(
//               color: const Color(0xFF0A0A0A),
//               padding: EdgeInsets.all(width * 0.04),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     details.title,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: width * 0.06,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),

//                   SizedBox(height: height * 0.02),

//                   Row(
//                     children: [
//                       Text(
//                         details.genre,
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Text(
//                         '${details.runtimeMinutes}m',
//                         style: TextStyle(
//                           color: Colors.grey[400],
//                           fontSize: width * 0.035,
//                         ),
//                       ),
//                       SizedBox(width: width * 0.04),
//                       Container(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: width * 0.02,
//                           vertical: height * 0.003,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey[600]!),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: Text(
//                           details.languages.join(', '),
//                           style: TextStyle(
//                             color: Colors.grey[400],
//                             fontSize: width * 0.03,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () => controller.startPlayback(),
//                           icon: Obx(() => Icon(
//                             controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                             color: Colors.black,
//                             size: width * 0.05,
//                           )),
//                           label: Obx(() => Text(
//                             controller.isPlaying.value ? 'Pause' : 'Play',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.white,
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: width * 0.03),
//                       Expanded(
//                         child: ElevatedButton.icon(
//                           onPressed: () {
//                             controller.toggleFullScreen();
//                           },
//                           icon: Icon(
//                             Icons.fullscreen,
//                             color: Colors.white,
//                             size: width * 0.05,
//                           ),
//                           label: Text(
//                             'Full Screen',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: width * 0.04,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.grey[800],
//                             padding: EdgeInsets.symmetric(vertical: height * 0.015),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),

//                   SizedBox(height: height * 0.03),

//                   Expanded(
//                     child: SingleChildScrollView(
//                       child: Text(
//                         details.description,
//                         style: TextStyle(
//                           color: Colors.grey[300],
//                           fontSize: width * 0.035,
//                           height: 1.5,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
//     return GestureDetector(
//       onTap: () => controller.showControlsTemporary(),
//       child: Container(
//         width: width,
//         height: height,
//         color: Colors.black,
//         child: _buildVideoPlayer(controller, width, height),
//       ),
//     );
//   }

//   Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
//     return Obx(() {
//       if (controller.videoError.value.isNotEmpty && !controller.isVideoInitialized.value) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Icon(Icons.error, color: Colors.red, size: 64),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 32.0),
//                 child: Text(
//                   controller.videoError.value,
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: () {
//                   controller.videoController?.dispose();
//                   controller.isVideoInitialized.value = false;
//                   controller.videoError.value = '';
//                   controller.initializeVideoPlayer();
//                 },
//                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
//                 child: const Text('Retry Video'),
//               ),
//             ],
//           ),
//         );
//       }

//       return Stack(
//         children: [
//           Center(
//             child: SizedBox(
//               width: width,
//               height: height,
//               child: controller.isVideoInitialized.value && 
//                      controller.videoController != null && 
//                      controller.videoController!.value.isInitialized
//                   ? FittedBox(
//                       fit: controller.getBoxFit(),
//                       child: SizedBox(
//                         width: controller.videoController!.value.size.width,
//                         height: controller.videoController!.value.size.height,
//                         child: VideoPlayer(controller.videoController!),
//                       ),
//                     )
//                   : Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const CircularProgressIndicator(color: Colors.blue),
//                           const SizedBox(height: 16),
//                           Text(
//                             controller.isBuffering.value ? 'Buffering...' : 'Initializing...',
//                             style: const TextStyle(color: Colors.white, fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ),
//             ),
//           ),

//           if (controller.isBuffering.value && controller.isVideoInitialized.value)
//             Center(
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.7),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: const Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     CircularProgressIndicator(color: Colors.blue),
//                     SizedBox(height: 10),
//                     Text(
//                       'Buffering...',
//                       style: TextStyle(color: Colors.white, fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//           if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
//         ],
//       );
//     });
//   }

//   Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Colors.black.withOpacity(0.7),
//             Colors.transparent,
//             Colors.transparent,
//             Colors.black.withOpacity(0.7),
//           ],
//         ),
//       ),
//       child: _buildControls(controller, width, height),
//     );
//   }

//   void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Quality',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...controller.availableQualities.map((quality) => Obx(() => ListTile(
//                               title: Text(
//                                 quality,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               subtitle: quality == 'Auto' 
//                                   ? const Text(
//                                       'Recommended for large files',
//                                       style: TextStyle(color: Colors.grey, fontSize: 12),
//                                     )
//                                   : null,
//                               trailing: controller.selectedQuality.value == quality
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeQuality(quality),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
//     final aspectRatios = [
//       {'name': 'Fit', 'description': 'Fit to screen'},
//       {'name': 'Fill', 'description': 'Fill screen'},
//       {'name': 'Stretch', 'description': 'Stretch to fill'},
//       {'name': 'Zoom', 'description': 'Zoom in'},
//     ];

//     showModalBottomSheet(
//       context: context,
//       backgroundColor: Colors.grey[900],
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
//       ),
//       isScrollControlled: true,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxHeight: MediaQuery.of(context).size.height * 0.6,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     children: [
//                       const Text(
//                         'Video Size',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const Spacer(),
//                       IconButton(
//                         onPressed: () => Navigator.pop(context),
//                         icon: const Icon(Icons.close, color: Colors.white),
//                         padding: EdgeInsets.zero,
//                         constraints: const BoxConstraints(),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ...aspectRatios.map((ratio) => Obx(() => ListTile(
//                               title: Text(
//                                 ratio['name']!,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                               subtitle: Text(
//                                 ratio['description']!,
//                                 style: TextStyle(
//                                   color: Colors.grey[400],
//                                   fontSize: 13,
//                                 ),
//                               ),
//                               trailing: controller.selectedAspectRatio.value == ratio['name']
//                                   ? const Icon(Icons.check, color: Colors.blue)
//                                   : null,
//                               onTap: () => controller.changeAspectRatio(ratio['name']!),
//                             ))).toList(),
//                         const SizedBox(height: 8),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildControls(MoviePlayerController controller, double width, double height) {
//     final details = controller.videoDetails.value;
//     if (details == null) return const SizedBox.shrink();

//     bool isLandscape = controller.isFullScreen.value;

//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.all(width * 0.015),
//           child: Row(
//             children: [
//               if (controller.isFullScreen.value)
//                 IconButton(
//                   onPressed: () => controller.toggleFullScreen(),
//                   icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
//                   padding: EdgeInsets.zero,
//                   constraints: const BoxConstraints(),
//                 ),
//               SizedBox(width: width * 0.015),
//               Expanded(
//                 child: Text(
//                   details.title,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   if (controller.isFullScreen.value)
//                     IconButton(
//                       onPressed: () => _showAspectRatioSelector(Get.context!, controller),
//                       icon: Icon(
//                         Icons.aspect_ratio,
//                         color: Colors.white,
//                         size: isLandscape ? 20 : width * 0.038,
//                       ),
//                       padding: EdgeInsets.all(width * 0.008),
//                       constraints: const BoxConstraints(),
//                     ),
//                   Obx(() => IconButton(
//                         onPressed: () => controller.toggleMute(),
//                         icon: Icon(
//                           controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
//                           color: Colors.white,
//                           size: isLandscape ? 20 : width * 0.038,
//                         ),
//                         padding: EdgeInsets.all(width * 0.008),
//                         constraints: const BoxConstraints(),
//                       )),
//                   IconButton(
//                     onPressed: () => controller.toggleFullScreen(),
//                     icon: Icon(
//                       controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
//                       color: Colors.white,
//                       size: isLandscape ? 20 : width * 0.038,
//                     ),
//                     padding: EdgeInsets.all(width * 0.008),
//                     constraints: const BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),

//         Expanded(
//           child: Center(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: () => controller.skipBackward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.replay_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
//                 GestureDetector(
//                   onTap: () => controller.togglePlayPause(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       shape: BoxShape.circle,
//                     ),
//                     child: Obx(() => Icon(
//                       controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
//                       color: Colors.black,
//                       size: isLandscape ? width * 0.05 : width * 0.1,
//                     )),
//                   ),
//                 ),
//                 SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
//                 GestureDetector(
//                   onTap: () => controller.skipForward(),
//                   child: Container(
//                     padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(
//                       Icons.forward_10,
//                       color: Colors.white,
//                       size: isLandscape ? 24 : 30,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),

//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: width * 0.04,
//             vertical: isLandscape ? height * 0.01 : height * 0.01,
//           ),
//           child: Column(
//             children: [
//               if (controller.totalDuration.value > 0)
//                 Row(
//                   children: [
//                     Obx(() => Text(
//                           controller.formatDuration(controller.currentPosition.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                     SizedBox(width: width * 0.02),
//                     Expanded(
//                       child: Obx(() => SliderTheme(
//                             data: SliderTheme.of(Get.context!).copyWith(
//                               activeTrackColor: Colors.blue,
//                               inactiveTrackColor: Colors.grey[700],
//                               thumbColor: Colors.blue,
//                               trackHeight: 3,
//                               thumbShape: const RoundSliderThumbShape(
//                                 enabledThumbRadius: 6,
//                               ),
//                               overlayShape: const RoundSliderOverlayShape(
//                                 overlayRadius: 12,
//                               ),
//                             ),
//                             child: Slider(
//                               value: controller.currentPosition.value,
//                               max: controller.totalDuration.value,
//                               onChanged: (value) => controller.seekTo(value),
//                             ),
//                           )),
//                     ),
//                     SizedBox(width: width * 0.02),
//                     Obx(() => Text(
//                           controller.formatDuration(controller.totalDuration.value),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? 11 : 12,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         )),
//                   ],
//                 ),
//               SizedBox(height: height * 0.01),
//               Row(
//                 children: [
//                   const Spacer(),
//                   if (controller.isFullScreen.value)
//                     Padding(
//                       padding: EdgeInsets.only(right: width * 0.02),
//                       child: Obx(() => Container(
//                             padding: EdgeInsets.symmetric(
//                               horizontal: width * 0.015,
//                               vertical: height * 0.004,
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.grey[800],
//                               borderRadius: BorderRadius.circular(4),
//                             ),
//                             child: Text(
//                               controller.selectedAspectRatio.value,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 11,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           )),
//                     ),
//                   GestureDetector(
//                     onTap: () => _showQualitySelector(Get.context!, controller),
//                     child: Container(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: width * 0.015,
//                         vertical: height * 0.004,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Obx(() => Text(
//                                 controller.selectedQuality.value,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               )),
//                           const SizedBox(width: 3),
//                           const Icon(
//                             Icons.arrow_drop_up,
//                             color: Colors.white,
//                             size: 14,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:developer' as developer;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

// Debug logging helper
void debugLog(String message, {String tag = 'VideoPlayer'}) {
  developer.log(message, name: tag);
  print('[$tag] $message'); // Console output bhi
}

class VideoDetails {
  final String id;
  final String episodeName;
  final int episodeSeq;
  final String episodeCode;
  final String title;
  final String description;
  final String genre;
  final List<String> languages;
  final int runtimeMinutes;
  final String posterUrl;
  final String thumbUrl;
  final List<Source> sources;
  final String defaultUrl;
  final String expiresIn;

  VideoDetails({
    required this.id,
    required this.episodeName,
    required this.episodeSeq,
    required this.episodeCode,
    required this.title,
    required this.description,
    required this.genre,
    required this.languages,
    required this.runtimeMinutes,
    required this.posterUrl,
    required this.thumbUrl,
    required this.sources,
    required this.defaultUrl,
    required this.expiresIn,
  });

  factory VideoDetails.fromJson(Map<String, dynamic> json) {
    return VideoDetails(
      id: json['id'] ?? '',
      episodeName: json['episodeName'] ?? '',
      episodeSeq: json['episodeSeq'] ?? 0,
      episodeCode: json['episodeCode'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      genre: json['genre'] ?? '',
      languages: List<String>.from((json['languages'] ?? [])),
      runtimeMinutes: json['runtimeMinutes'] ?? 0,
      posterUrl: json['posterUrl'] ?? '',
      thumbUrl: json['thumbUrl'] ?? '',
      sources: (json['sources'] as List?)?.map((s) => Source.fromJson(s)).toList() ?? [],
      defaultUrl: json['videoUrl'] ?? '',
      expiresIn: json['expiresIn'] ?? '',
    );
  }
}

class Source {
  final String type;
  final String quality;
  final String url;
  final int ttlSeconds;

  Source({
    required this.type,
    required this.quality,
    required this.url,
    required this.ttlSeconds,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      type: json['type'] ?? '',
      quality: json['quality'] ?? '',
      url: json['url'] ?? '',
      ttlSeconds: json['ttlSeconds'] ?? 0,
    );
  }
}

class MoviePlayerController extends GetxController {
  VideoPlayerController? videoController;
  RxBool isPlaying = false.obs;
  RxBool showControls = true.obs;
  RxBool isFullScreen = false.obs;
  RxBool isMuted = false.obs;
  RxDouble currentPosition = 0.0.obs;
  RxDouble totalDuration = 0.0.obs;
  RxBool isLoading = true.obs;
  RxBool isVideoInitialized = false.obs;
  RxBool isBuffering = false.obs;
  RxString selectedQuality = 'Auto'.obs;
  RxString selectedAspectRatio = 'Fit'.obs;
  Rx<VideoDetails?> videoDetails = Rx<VideoDetails?>(null);
  RxString currentVideoUrl = ''.obs;
  List<String> availableQualities = <String>[];
  RxString _videoId = ''.obs;
  RxString videoError = ''.obs;
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';
  
  // Chunked loading variables
  RxDouble bufferProgress = 0.0.obs;
  RxInt downloadSpeed = 0.obs; // KB/s
  RxString loadingStatus = 'Initializing...'.obs;
  
  Duration _lastKnownPosition = Duration.zero;
  bool _isHandlingOrientationChange = false;
  int _retryCount = 0;
  static const int _maxRetries = 3;

  @override
  void onInit() {
    super.onInit();
    debugLog('Controller initialized', tag: 'Init');
    ever(isFullScreen, (value) {
      _handleOrientationChange(value);
    });
  }

  void _handleOrientationChange(bool fullscreen) {
    debugLog('Orientation change: ${fullscreen ? "Fullscreen" : "Normal"}', tag: 'Orientation');
    if (fullscreen) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    } else {
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  Future<void> initWithVideoId(String videoId) async {
    debugLog('Initializing with video ID: $videoId', tag: 'Init');
    _videoId.value = videoId;
    await fetchVideoDetails(videoId);
  }

  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('auth_token');
      debugLog('Token ${token != null ? "found" : "not found"}', tag: 'Auth');
      return token;
    } catch (e) {
      debugLog('Error getting token: $e', tag: 'Auth');
      return null;
    }
  }

  void showToast(String message, {bool isError = false}) {
    debugLog('Toast: $message (Error: $isError)', tag: 'Toast');
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: isError ? Colors.red : Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  Future<void> fetchVideoDetails(String videoId) async {
    debugLog('Fetching video details for: $videoId', tag: 'API');
    isLoading.value = true;
    videoError.value = '';
    isVideoInitialized.value = false;
    loadingStatus.value = 'Fetching video details...';
    
    try {
      String? token = await getToken();
      if (token == null) {
        throw Exception('No authentication token found');
      }

      String url = '$baseUrl/videos/$videoId';
      debugLog('API URL: $url', tag: 'API');
      
      final stopwatch = Stopwatch()..start();
      
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      ).timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          throw Exception('Request timeout');
        },
      );

      stopwatch.stop();
      debugLog('API response time: ${stopwatch.elapsedMilliseconds}ms', tag: 'API');
      debugLog('Status code: ${response.statusCode}', tag: 'API');

      if (response.statusCode == 401) {
        throw Exception('Session expired. Please login again.');
      }

      if (response.statusCode != 200) {
        String errorMsg = 'Failed to load video (${response.statusCode})';
        try {
          final errorData = json.decode(response.body);
          errorMsg = errorData['message'] ?? errorMsg;
        } catch (e) {
          debugLog('Error parsing error response: $e', tag: 'API');
        }
        throw Exception(errorMsg);
      }

      final data = json.decode(response.body);
      debugLog('Video data received: ${data['title']}', tag: 'API');
      
      videoDetails.value = VideoDetails.fromJson(data);
      
      availableQualities = ['Auto', ...videoDetails.value!.sources
          .where((s) => s.type == 'video')
          .map((s) => s.quality)
          .toList()];
      
      debugLog('Available qualities: $availableQualities', tag: 'Quality');
      
      currentVideoUrl.value = videoDetails.value!.defaultUrl;
      debugLog('Video URL: ${currentVideoUrl.value}', tag: 'URL');
      
      if (currentVideoUrl.value.isEmpty) {
        throw Exception('No video URL available');
      }
      
      isLoading.value = false;
      _retryCount = 0;
      loadingStatus.value = 'Initializing video player...';
      
      await initializeVideoPlayer();
      
    } catch (e) {
      debugLog('ERROR: ${e.toString()}', tag: 'API');
      showToast('Error: ${e.toString()}', isError: true);
      videoError.value = e.toString();
      isLoading.value = false;
      loadingStatus.value = 'Failed to load video';
    }
  }

  Future<void> startPlayback() async {
    debugLog('Start playback called', tag: 'Playback');
    if (currentVideoUrl.value.isEmpty) {
      videoError.value = 'No video URL available';
      showToast('Video not ready', isError: true);
      return;
    }
    
    if (!isVideoInitialized.value) {
      await initializeVideoPlayer();
    } else if (videoController != null && videoController!.value.isInitialized) {
      await togglePlayPause();
    }
  }

  Future<void> retryFetch() async {
    debugLog('Retry attempt: ${_retryCount + 1}/$_maxRetries', tag: 'Retry');
    if (_retryCount < _maxRetries) {
      _retryCount++;
      await fetchVideoDetails(_videoId.value);
    } else {
      showToast('Maximum retry attempts reached', isError: true);
    }
  }

  Future<void> initializeVideoPlayer() async {
    debugLog('Initializing video player', tag: 'VideoPlayer');
    
    if (currentVideoUrl.value.isEmpty) {
      videoError.value = 'No video URL available';
      showToast('Video URL missing', isError: true);
      return;
    }

    try {
      if (videoController != null) {
        debugLog('Disposing old controller', tag: 'VideoPlayer');
        await videoController!.dispose();
        videoController = null;
      }
      
      loadingStatus.value = 'Connecting to video source...';
      
      // Chunked loading ke liye proper headers
      debugLog('Creating video controller with chunked loading support', tag: 'VideoPlayer');
      videoController = VideoPlayerController.networkUrl(
        Uri.parse(currentVideoUrl.value),
        httpHeaders: {
          'Accept': 'video/*',
          'Range': 'bytes=0-', // Range request support for chunking
          'Connection': 'keep-alive',
          'Accept-Encoding': 'identity', // Disable compression for better streaming
        },
        videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: false,
          allowBackgroundPlayback: false,
        ),
      );
      
      isBuffering.value = true;
      loadingStatus.value = 'Loading video...';
      bufferProgress.value = 0.0;
      
      final initStopwatch = Stopwatch()..start();
      
      // Video initialization with progress tracking
      await videoController!.initialize().timeout(
        const Duration(seconds: 45),
        onTimeout: () {
          throw Exception('Video initialization timeout');
        },
      );
      
      initStopwatch.stop();
      debugLog('Video initialized in ${initStopwatch.elapsedMilliseconds}ms', tag: 'VideoPlayer');
      debugLog('Video size: ${videoController!.value.size.width}x${videoController!.value.size.height}', tag: 'VideoPlayer');
      debugLog('Video duration: ${videoController!.value.duration.inSeconds}s', tag: 'VideoPlayer');
      
      isVideoInitialized.value = true;
      isBuffering.value = false;
      bufferProgress.value = 1.0;
      totalDuration.value = videoController!.value.duration.inSeconds.toDouble();
      loadingStatus.value = 'Ready to play';
      
      videoController!.setLooping(false);
      videoController!.setVolume(isMuted.value ? 0.0 : 1.0);

      if (_lastKnownPosition.inSeconds > 0) {
        debugLog('Seeking to last position: ${_lastKnownPosition.inSeconds}s', tag: 'VideoPlayer');
        await videoController!.seekTo(_lastKnownPosition);
      }

      // Video controller listener with detailed logging
      videoController!.addListener(() {
        if (videoController!.value.hasError) {
          final error = videoController!.value.errorDescription ?? 'Unknown playback error';
          debugLog('PLAYBACK ERROR: $error', tag: 'VideoPlayer');
          videoError.value = error;
          showToast('Playback error: $error', isError: true);
          isBuffering.value = false;
        } else {
          final position = videoController!.value.position.inSeconds.toDouble();
          final buffered = videoController!.value.buffered;
          
          // Log every 5 seconds
          if (position.toInt() % 5 == 0 && position != currentPosition.value) {
            debugLog('Position: ${position.toInt()}s / ${totalDuration.value.toInt()}s', tag: 'Progress');
            if (buffered.isNotEmpty) {
              final bufferedEnd = buffered.last.end.inSeconds;
              debugLog('Buffered: ${bufferedEnd}s (${((bufferedEnd / totalDuration.value) * 100).toInt()}%)', tag: 'Buffer');
            }
          }
          
          currentPosition.value = position;
          isPlaying.value = videoController!.value.isPlaying;
          
          // Buffering status with logging
          final wasBuffering = isBuffering.value;
          isBuffering.value = videoController!.value.isBuffering;
          
          if (isBuffering.value != wasBuffering) {
            debugLog('Buffering: ${isBuffering.value}', tag: 'Buffer');
            loadingStatus.value = isBuffering.value ? 'Buffering...' : 'Playing';
          }
          
          _lastKnownPosition = videoController!.value.position;
          
          // Calculate buffer progress
          if (buffered.isNotEmpty) {
            final bufferedSeconds = buffered.last.end.inSeconds;
            bufferProgress.value = bufferedSeconds / totalDuration.value;
          }
        }
      });

      videoError.value = '';
      _retryCount = 0;
      
      debugLog('Video player ready', tag: 'VideoPlayer');
      
    } catch (e) {
      String errorMsg = e.toString();
      debugLog('INITIALIZATION ERROR: $errorMsg', tag: 'VideoPlayer');
      
      if (errorMsg.contains('timeout')) {
        errorMsg = 'Video loading timeout. Try lower quality or check connection.';
      } else if (errorMsg.contains('format')) {
        errorMsg = 'Video format not supported';
      } else if (errorMsg.contains('404')) {
        errorMsg = 'Video file not found';
      } else if (errorMsg.contains('403')) {
        errorMsg = 'Access denied';
      }
      
      showToast(errorMsg, isError: true);
      videoError.value = errorMsg;
      isVideoInitialized.value = false;
      isBuffering.value = false;
      loadingStatus.value = 'Failed';
      
      if (_retryCount < _maxRetries && !errorMsg.contains('format') && !errorMsg.contains('404')) {
        debugLog('Scheduling retry in 2 seconds...', tag: 'Retry');
        await Future.delayed(const Duration(seconds: 2));
        await retryFetch();
      }
    }
  }

  Future<void> togglePlayPause() async {
    if (videoController == null || !videoController!.value.isInitialized) {
      debugLog('Cannot toggle play/pause - video not initialized', tag: 'Playback');
      showToast('Video not initialized', isError: true);
      return;
    }
    
    if (videoController!.value.isPlaying) {
      debugLog('Pausing video', tag: 'Playback');
      await videoController!.pause();
    } else {
      debugLog('Playing video', tag: 'Playback');
      await videoController!.play();
    }
  }

  void toggleMute() {
    if (videoController != null && videoController!.value.isInitialized) {
      isMuted.value = !isMuted.value;
      videoController!.setVolume(isMuted.value ? 0.0 : 1.0);
      debugLog('Mute: ${isMuted.value}', tag: 'Audio');
    }
  }

  Future<void> seekTo(double seconds) async {
    if (videoController != null && 
        videoController!.value.isInitialized && 
        seconds >= 0 && 
        seconds <= totalDuration.value) {
      debugLog('Seeking to ${seconds.toInt()}s', tag: 'Seek');
      isBuffering.value = true;
      await videoController!.seekTo(Duration(seconds: seconds.toInt()));
      _lastKnownPosition = Duration(seconds: seconds.toInt());
      await Future.delayed(const Duration(milliseconds: 100));
      isBuffering.value = false;
    }
  }

  Future<void> skipForward() async {
    if (videoController == null || !videoController!.value.isInitialized) return;
    final newPosition = videoController!.value.position + const Duration(seconds: 10);
    if (newPosition <= videoController!.value.duration) {
      debugLog('Skip forward +10s', tag: 'Seek');
      await videoController!.seekTo(newPosition);
      _lastKnownPosition = newPosition;
      showControlsTemporary();
    }
  }

  Future<void> skipBackward() async {
    if (videoController == null || !videoController!.value.isInitialized) return;
    final newPosition = videoController!.value.position - const Duration(seconds: 10);
    if (newPosition >= Duration.zero) {
      debugLog('Skip backward -10s', tag: 'Seek');
      await videoController!.seekTo(newPosition);
      _lastKnownPosition = newPosition;
      showControlsTemporary();
    }
  }

  Future<void> toggleFullScreen() async {
    debugLog('Toggle fullscreen: ${!isFullScreen.value}', tag: 'Fullscreen');
    if (videoController != null && videoController!.value.isInitialized) {
      _lastKnownPosition = videoController!.value.position;
      final wasPlaying = videoController!.value.isPlaying;
      
      if (wasPlaying) {
        await videoController!.pause();
      }
      
      isFullScreen.value = !isFullScreen.value;
      
      await Future.delayed(const Duration(milliseconds: 150));
      
      if (videoController != null && videoController!.value.isInitialized) {
        await videoController!.seekTo(_lastKnownPosition);
        
        if (wasPlaying) {
          await videoController!.play();
        }
      }
    } else {
      isFullScreen.value = !isFullScreen.value;
    }
  }

  void showControlsTemporary() {
    showControls.value = true;
    Future.delayed(const Duration(seconds: 3), () {
      if (!(Get.isDialogOpen ?? false) && isPlaying.value) {
        showControls.value = false;
      }
    });
  }

  Future<void> changeQuality(String quality) async {
    debugLog('Changing quality to: $quality', tag: 'Quality');
    
    if (videoController == null || !videoController!.value.isInitialized) {
      showToast('Initialize video first', isError: true);
      Get.back();
      return;
    }

    selectedQuality.value = quality;
    String newUrl;
    
    if (quality == 'Auto') {
      newUrl = videoDetails.value!.defaultUrl;
    } else {
      final source = videoDetails.value!.sources.firstWhere(
        (s) => s.type == 'video' && s.quality == quality,
        orElse: () => Source(type: '', quality: '', url: videoDetails.value!.defaultUrl, ttlSeconds: 0),
      );
      newUrl = source.url;
    }
    
    debugLog('New quality URL: $newUrl', tag: 'Quality');
    
    if (newUrl != currentVideoUrl.value) {
      _lastKnownPosition = videoController!.value.position;
      final wasPlaying = videoController!.value.isPlaying;
      
      currentVideoUrl.value = newUrl;
      videoController!.dispose();
      isVideoInitialized.value = false;
      
      await initializeVideoPlayer();
      if (isVideoInitialized.value && wasPlaying) {
        await videoController!.play();
      }
    }
    Get.back();
  }

  void changeAspectRatio(String ratio) {
    debugLog('Changing aspect ratio to: $ratio', tag: 'AspectRatio');
    selectedAspectRatio.value = ratio;
    Get.back();
  }

  BoxFit getBoxFit() {
    switch (selectedAspectRatio.value) {
      case 'Fill': return BoxFit.cover;
      case 'Fit': return BoxFit.contain;
      case 'Stretch': return BoxFit.fill;
      case 'Zoom': return BoxFit.fitWidth;
      default: return BoxFit.contain;
    }
  }

  String formatDuration(double seconds) {
    final duration = Duration(seconds: seconds.toInt());
    final minutes = duration.inMinutes;
    final remainingSeconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  void onClose() {
    debugLog('Controller closing', tag: 'Cleanup');
    if (videoController != null) {
      videoController!.dispose();
    }
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.onClose();
  }
}

class Movieplayerscreen extends StatelessWidget {
  final String videoId;

  const Movieplayerscreen({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final MoviePlayerController controller = Get.put(MoviePlayerController());
    controller.initWithVideoId(videoId);

    return WillPopScope(
      onWillPop: () async {
        if (controller.isFullScreen.value) {
          controller.toggleFullScreen();
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(color: Colors.blue),
                  SizedBox(height: height * 0.02),
                  Text(
                    controller.loadingStatus.value,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: height * 0.01),
                  if (controller.bufferProgress.value > 0)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                      child: LinearProgressIndicator(
                        value: controller.bufferProgress.value,
                        backgroundColor: Colors.grey[800],
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ),
                ],
              ),
            );
          }
          if (controller.videoDetails.value == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 64),
                  SizedBox(height: height * 0.02),
                  Text(
                    'Failed to load video',
                    style: TextStyle(color: Colors.white, fontSize: width * 0.05),
                  ),
                  if (controller.videoError.value.isNotEmpty) ...[
                    SizedBox(height: height * 0.01),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
                      child: Text(
                        controller.videoError.value,
                        style: TextStyle(color: Colors.grey[400], fontSize: width * 0.035),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                  SizedBox(height: height * 0.02),
                  ElevatedButton(
                    onPressed: () => controller.retryFetch(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.08,
                        vertical: height * 0.015,
                      ),
                    ),
                    child: const Text('Retry', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            );
          }
          return OrientationBuilder(
            builder: (context, orientation) {
              bool isLandscape = orientation == Orientation.landscape;
              
              if (isLandscape && !controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
                controller._isHandlingOrientationChange = true;
                Future.microtask(() async {
                  if (controller.videoController != null && controller.videoController!.value.isInitialized) {
                    controller._lastKnownPosition = controller.videoController!.value.position;
                    final wasPlaying = controller.videoController!.value.isPlaying;
                    
                    if (wasPlaying) await controller.videoController!.pause();
                    
                    controller.isFullScreen.value = true;
                    await Future.delayed(const Duration(milliseconds: 150));
                    
                    if (controller.videoController != null && controller.videoController!.value.isInitialized) {
                      await controller.videoController!.seekTo(controller._lastKnownPosition);
                      if (wasPlaying) await controller.videoController!.play();
                    }
                  } else {
                    controller.isFullScreen.value = true;
                  }
                  controller._isHandlingOrientationChange = false;
                });
              } else if (!isLandscape && controller.isFullScreen.value && !controller._isHandlingOrientationChange) {
                controller._isHandlingOrientationChange = true;
                Future.microtask(() async {
                  if (controller.videoController != null && controller.videoController!.value.isInitialized) {
                    controller._lastKnownPosition = controller.videoController!.value.position;
                    final wasPlaying = controller.videoController!.value.isPlaying;
                    
                    if (wasPlaying) await controller.videoController!.pause();
                    
                    controller.isFullScreen.value = false;
                    await Future.delayed(const Duration(milliseconds: 150));
                    
                    if (controller.videoController != null && controller.videoController!.value.isInitialized) {
                      await controller.videoController!.seekTo(controller._lastKnownPosition);
                      if (wasPlaying) await controller.videoController!.play();
                    }
                  } else {
                    controller.isFullScreen.value = false;
                  }
                  controller._isHandlingOrientationChange = false;
                });
              }

              return controller.isFullScreen.value || isLandscape
                  ? _buildFullScreenPlayer(controller, width, height)
                  : _buildNormalPlayer(controller, width, height, context);
            },
          );
        }),
      ),
    );
  }

  Widget _buildNormalPlayer(MoviePlayerController controller, double width, double height, BuildContext context) {
    final details = controller.videoDetails.value;
    if (details == null) return const SizedBox.shrink();

    return SafeArea(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              controller.startPlayback();
              controller.showControlsTemporary();
            },
            child: Container(
              width: width,
              height: height * 0.3,
              color: Colors.black,
              child: _buildVideoPlayer(controller, width, height * 0.3),
            ),
          ),

          Expanded(
            child: Container(
              color: const Color(0xFF0A0A0A),
              padding: EdgeInsets.all(width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    details.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: height * 0.02),

                  Row(
                    children: [
                      Text(
                        details.genre,
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: width * 0.035,
                        ),
                      ),
                      SizedBox(width: width * 0.04),
                      Text(
                        '${details.runtimeMinutes}m',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: width * 0.035,
                        ),
                      ),
                      SizedBox(width: width * 0.04),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.02,
                          vertical: height * 0.003,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[600]!),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          details.languages.join(', '),
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: width * 0.03,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.03),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () => controller.startPlayback(),
                          icon: Obx(() => Icon(
                            controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
                            color: Colors.black,
                            size: width * 0.05,
                          )),
                          label: Obx(() => Text(
                            controller.isPlaying.value ? 'Pause' : 'Play',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: height * 0.015),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width * 0.03),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            controller.toggleFullScreen();
                          },
                          icon: Icon(
                            Icons.fullscreen,
                            color: Colors.white,
                            size: width * 0.05,
                          ),
                          label: Text(
                            'Full Screen',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[800],
                            padding: EdgeInsets.symmetric(vertical: height * 0.015),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.03),

                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        details.description,
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: width * 0.035,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFullScreenPlayer(MoviePlayerController controller, double width, double height) {
    return GestureDetector(
      onTap: () => controller.showControlsTemporary(),
      child: Container(
        width: width,
        height: height,
        color: Colors.black,
        child: _buildVideoPlayer(controller, width, height),
      ),
    );
  }

  Widget _buildVideoPlayer(MoviePlayerController controller, double width, double height) {
    return Obx(() {
      if (controller.videoError.value.isNotEmpty && !controller.isVideoInitialized.value) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error, color: Colors.red, size: 64),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  controller.videoError.value,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  controller.videoController?.dispose();
                  controller.isVideoInitialized.value = false;
                  controller.videoError.value = '';
                  controller.initializeVideoPlayer();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: const Text('Retry Video'),
              ),
            ],
          ),
        );
      }

      return Stack(
        children: [
          Center(
            child: SizedBox(
              width: width,
              height: height,
              child: controller.isVideoInitialized.value && 
                     controller.videoController != null && 
                     controller.videoController!.value.isInitialized
                  ? FittedBox(
                      fit: controller.getBoxFit(),
                      child: SizedBox(
                        width: controller.videoController!.value.size.width,
                        height: controller.videoController!.value.size.height,
                        child: VideoPlayer(controller.videoController!),
                      ),
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircularProgressIndicator(color: Colors.blue),
                          const SizedBox(height: 16),
                          Text(
                            controller.loadingStatus.value,
                            style: const TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          const SizedBox(height: 8),
                          if (controller.bufferProgress.value > 0)
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0),
                              child: Column(
                                children: [
                                  LinearProgressIndicator(
                                    value: controller.bufferProgress.value,
                                    backgroundColor: Colors.grey[800],
                                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${(controller.bufferProgress.value * 100).toInt()}%',
                                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
            ),
          ),

          if (controller.isBuffering.value && controller.isVideoInitialized.value)
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(color: Colors.blue),
                    SizedBox(height: 10),
                    Text(
                      'Buffering...',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

          if (controller.showControls.value) _buildControlsOverlay(controller, width, height),
        ],
      );
    });
  }

  Widget _buildControlsOverlay(MoviePlayerController controller, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.7),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.7),
          ],
        ),
      ),
      child: _buildControls(controller, width, height),
    );
  }

  void _showQualitySelector(BuildContext context, MoviePlayerController controller) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Text(
                        'Video Quality',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close, color: Colors.white),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...controller.availableQualities.map((quality) => Obx(() => ListTile(
                              title: Text(
                                quality,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: quality == 'Auto' 
                                  ? const Text(
                                      'Adaptive streaming - Recommended',
                                      style: TextStyle(color: Colors.grey, fontSize: 12),
                                    )
                                  : null,
                              trailing: controller.selectedQuality.value == quality
                                  ? const Icon(Icons.check, color: Colors.blue)
                                  : null,
                              onTap: () => controller.changeQuality(quality),
                            ))).toList(),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showAspectRatioSelector(BuildContext context, MoviePlayerController controller) {
    final aspectRatios = [
      {'name': 'Fit', 'description': 'Fit to screen'},
      {'name': 'Fill', 'description': 'Fill screen'},
      {'name': 'Stretch', 'description': 'Stretch to fill'},
      {'name': 'Zoom', 'description': 'Zoom in'},
    ];

    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.6,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Text(
                        'Video Size',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close, color: Colors.white),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ...aspectRatios.map((ratio) => Obx(() => ListTile(
                              title: Text(
                                ratio['name']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                ratio['description']!,
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 13,
                                ),
                              ),
                              trailing: controller.selectedAspectRatio.value == ratio['name']
                                  ? const Icon(Icons.check, color: Colors.blue)
                                  : null,
                              onTap: () => controller.changeAspectRatio(ratio['name']!),
                            ))).toList(),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildControls(MoviePlayerController controller, double width, double height) {
    final details = controller.videoDetails.value;
    if (details == null) return const SizedBox.shrink();

    bool isLandscape = controller.isFullScreen.value;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(width * 0.015),
          child: Row(
            children: [
              if (controller.isFullScreen.value)
                IconButton(
                  onPressed: () => controller.toggleFullScreen(),
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 24),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              SizedBox(width: width * 0.015),
              Expanded(
                child: Text(
                  details.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLandscape ? width * 0.025 : width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (controller.isFullScreen.value)
                    IconButton(
                      onPressed: () => _showAspectRatioSelector(Get.context!, controller),
                      icon: Icon(
                        Icons.aspect_ratio,
                        color: Colors.white,
                        size: isLandscape ? 20 : width * 0.038,
                      ),
                      padding: EdgeInsets.all(width * 0.008),
                      constraints: const BoxConstraints(),
                    ),
                  Obx(() => IconButton(
                        onPressed: () => controller.toggleMute(),
                        icon: Icon(
                          controller.isMuted.value ? Icons.volume_off : Icons.volume_up,
                          color: Colors.white,
                          size: isLandscape ? 20 : width * 0.038,
                        ),
                        padding: EdgeInsets.all(width * 0.008),
                        constraints: const BoxConstraints(),
                      )),
                  IconButton(
                    onPressed: () => controller.toggleFullScreen(),
                    icon: Icon(
                      controller.isFullScreen.value ? Icons.fullscreen_exit : Icons.fullscreen,
                      color: Colors.white,
                      size: isLandscape ? 20 : width * 0.038,
                    ),
                    padding: EdgeInsets.all(width * 0.008),
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ],
          ),
        ),

        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => controller.skipBackward(),
                  child: Container(
                    padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.replay_10,
                      color: Colors.white,
                      size: isLandscape ? 24 : 30,
                    ),
                  ),
                ),
                SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
                GestureDetector(
                  onTap: () => controller.togglePlayPause(),
                  child: Container(
                    padding: EdgeInsets.all(isLandscape ? width * 0.02 : width * 0.04),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Obx(() => Icon(
                      controller.isPlaying.value ? Icons.pause : Icons.play_arrow,
                      color: Colors.black,
                      size: isLandscape ? width * 0.05 : width * 0.1,
                    )),
                  ),
                ),
                SizedBox(width: isLandscape ? width * 0.05 : width * 0.08),
                GestureDetector(
                  onTap: () => controller.skipForward(),
                  child: Container(
                    padding: EdgeInsets.all(isLandscape ? width * 0.015 : width * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.forward_10,
                      color: Colors.white,
                      size: isLandscape ? 24 : 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.04,
            vertical: isLandscape ? height * 0.01 : height * 0.01,
          ),
          child: Column(
            children: [
              if (controller.totalDuration.value > 0)
                Row(
                  children: [
                    Obx(() => Text(
                          controller.formatDuration(controller.currentPosition.value),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isLandscape ? 11 : 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    SizedBox(width: width * 0.02),
                    Expanded(
                      child: Obx(() => SliderTheme(
                            data: SliderTheme.of(Get.context!).copyWith(
                              activeTrackColor: Colors.blue,
                              inactiveTrackColor: Colors.grey[700],
                              thumbColor: Colors.blue,
                              trackHeight: 3,
                              thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 6,
                              ),
                              overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 12,
                              ),
                            ),
                            child: Slider(
                              value: controller.currentPosition.value,
                              max: controller.totalDuration.value,
                              onChanged: (value) => controller.seekTo(value),
                            ),
                          )),
                    ),
                    SizedBox(width: width * 0.02),
                    Obx(() => Text(
                          controller.formatDuration(controller.totalDuration.value),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isLandscape ? 11 : 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                  ],
                ),
              SizedBox(height: height * 0.01),
              Row(
                children: [
                  const Spacer(),
                  if (controller.isFullScreen.value)
                    Padding(
                      padding: EdgeInsets.only(right: width * 0.02),
                      child: Obx(() => Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: width * 0.015,
                              vertical: height * 0.004,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              controller.selectedAspectRatio.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )),
                    ),
                  GestureDetector(
                    onTap: () => _showQualitySelector(Get.context!, controller),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.015,
                        vertical: height * 0.004,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Obx(() => Text(
                                controller.selectedQuality.value,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                          const SizedBox(width: 3),
                          const Icon(
                            Icons.arrow_drop_up,
                            color: Colors.white,
                            size: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}