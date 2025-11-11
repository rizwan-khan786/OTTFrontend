

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'package:ott/View/Screen/Episodedeailpage.dart';
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

// // Search Controller
// class SearchController extends GetxController {
//   RxList<SeriesResponse> allSeries = <SeriesResponse>[].obs;
//   RxList<SeriesResponse> filteredSeries = <SeriesResponse>[].obs;
//   RxBool isLoading = false.obs;
//   RxBool isSearching = false.obs;
//   RxString searchQuery = ''.obs;
  
//   final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

//   @override
//   void onInit() {
//     super.onInit();
//     fetchAllSeries();
//   }

//   // Get Token from SharedPreferences
//   Future<String?> getToken() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getString('auth_token');
//     } catch (e) {
//       print('Error getting token: $e');
//       return null;
//     }
//   }

//   // Fetch All Series from API
//   Future<void> fetchAllSeries() async {
//     isLoading.value = true;

//     try {
//       String? token = await getToken();

//       final response = await http.get(
//         Uri.parse('$baseUrl/videos/all'),
//         headers: {
//           'Content-Type': 'application/json',
//           if (token != null) 'Authorization': 'Bearer $token',
//         },
//       );

//       if (response.statusCode == 200) {
//         final List<dynamic> data = jsonDecode(response.body);
        
//         allSeries.value = data
//             .map((json) => SeriesResponse.fromJson(json))
//             .toList();
        
//         filteredSeries.value = allSeries;
//       }
//     } catch (e) {
//       print('Error fetching series: $e');
//     } finally {
//       isLoading.value = false;
//     }
//   }

//   // Search Series by Episode Name
//   void searchSeries(String query) {
//     searchQuery.value = query.trim();
    
//     if (searchQuery.value.isEmpty) {
//       filteredSeries.value = allSeries;
//       isSearching.value = false;
//     } else {
//       isSearching.value = true;
//       filteredSeries.value = allSeries.where((series) {
//         final episodeName = series.episodeName?.toLowerCase() ?? '';
//         final searchLower = searchQuery.value.toLowerCase();
//         return episodeName.contains(searchLower);
//       }).toList();
//     }
//   }

//   // Clear Search
//   void clearSearch() {
//     searchQuery.value = '';
//     filteredSeries.value = allSeries;
//     isSearching.value = false;
//   }
// }

// class Searchscreen extends StatefulWidget {
//   const Searchscreen({super.key});

//   @override
//   State<Searchscreen> createState() => _SearchscreenState();
// }

// class _SearchscreenState extends State<Searchscreen> {
//   final TextEditingController _searchController = TextEditingController();
//   final SearchController controller = Get.put(SearchController());

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
    
//     return OrientationBuilder(
//       builder: (context, orientation) {
//         bool isLandscape = orientation == Orientation.landscape;
        
//         return Scaffold(
//           backgroundColor: const Color(0xFF0A0A0A),
//           body: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Header Section
//                 _buildHeader(width, height, isLandscape),
                
//                 // Search Bar
//                 _buildSearchBar(width, height, isLandscape),
                
//                 // Search Results
//                 Expanded(
//                   child: _buildSearchResults(width, height, isLandscape),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   Widget _buildHeader(double width, double height, bool isLandscape) {
//     return Padding(
//       padding: EdgeInsets.all(width * 0.04),
//       child: Row(
//         children: [
//           // Back Button
//           // InkWell(
//           //   onTap: () => Get.back(),
//           //   child: Icon(
//           //     Icons.arrow_back,
//           //     color: Colors.white,
//           //     size: isLandscape ? width * 0.04 : width * 0.065,
//           //   ),
//           // ),
          
//           SizedBox(width: width * 0.03),
          
//           // Prime Video Logo
//           Text(
//             'Search',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: isLandscape ? width * 0.035 : width * 0.055,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
          
//           const Spacer(),
          
//           // Cast Icon (commented out as per request)
//           // Icon(
//           //   Icons.cast,
//           //   color: Colors.white,
//           //   size: isLandscape ? width * 0.04 : width * 0.065,
//           // ),
//           // SizedBox(width: width * 0.04),
          
//           // Profile Image (commented out)
//           // CircleAvatar(
//           //   radius: isLandscape ? width * 0.03 : width * 0.05,
//           //   backgroundImage: const AssetImage('assets/movieimage.jpg'),
//           // ),
//         ],
//       ),
//     );
//   }

//   Widget _buildSearchBar(double width, double height, bool isLandscape) {
//     return Container(
//       margin: EdgeInsets.symmetric(
//         horizontal: width * 0.04,
//         vertical: height * 0.01,
//       ),
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.04,
//       ),
//       decoration: BoxDecoration(
//         color: const Color(0xFF1A2332),
//         borderRadius: BorderRadius.circular(width * 0.02),
//       ),
//       child: Row(
//         children: [
//           Icon(
//             Icons.search,
//             color: Colors.grey[400],
//             size: isLandscape ? width * 0.035 : width * 0.06,
//           ),
//           SizedBox(width: width * 0.03),
//           Expanded(
//             child: TextField(
//               controller: _searchController,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: isLandscape ? width * 0.025 : width * 0.04,
//               ),
//               decoration: InputDecoration(
//                 hintText: 'Search series by name...',
//                 hintStyle: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                 ),
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(
//                   vertical: isLandscape ? height * 0.02 : height * 0.015,
//                 ),
//               ),
//               onChanged: (value) {
//                 controller.searchSeries(value);
//               },
//             ),
//           ),
//           Obx(() {
//             if (controller.searchQuery.value.isNotEmpty) {
//               return InkWell(
//                 onTap: () {
//                   _searchController.clear();
//                   controller.clearSearch();
//                 },
//                 child: Icon(
//                   Icons.clear,
//                   color: Colors.grey[400],
//                   size: isLandscape ? width * 0.035 : width * 0.06,
//                 ),
//               );
//             }
//             return const SizedBox.shrink();
//           }),
//         ],
//       ),
//     );
//   }

//   Widget _buildSearchResults(double width, double height, bool isLandscape) {
//     return Obx(() {
//       if (controller.isLoading.value) {
//         return Center(
//           child: CircularProgressIndicator(
//             color: const Color(0xFF00A8E8),
//           ),
//         );
//       }

//       if (controller.isSearching.value && controller.filteredSeries.isEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.search_off,
//                 color: Colors.grey[600],
//                 size: isLandscape ? width * 0.1 : width * 0.2,
//               ),
//               SizedBox(height: height * 0.02),
//               Text(
//                 'No results found for "${controller.searchQuery.value}"',
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: isLandscape ? width * 0.025 : width * 0.04,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         );
//       }

//       if (!controller.isSearching.value && controller.searchQuery.value.isEmpty) {
//         return Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 Icons.search,
//                 color: Colors.grey[600],
//                 size: isLandscape ? width * 0.1 : width * 0.2,
//               ),
//               SizedBox(height: height * 0.02),
//               Text(
//                 'Search for series',
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: isLandscape ? width * 0.03 : width * 0.045,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               SizedBox(height: height * 0.01),
//               Text(
//                 'Start typing to find your favorite series',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: isLandscape ? width * 0.022 : width * 0.035,
//                 ),
//               ),
//             ],
//           ),
//         );
//       }

//       return ListView.builder(
//         padding: EdgeInsets.symmetric(
//           horizontal: width * 0.04,
//           vertical: height * 0.02,
//         ),
//         itemCount: controller.filteredSeries.length,
//         itemBuilder: (context, index) {
//           final series = controller.filteredSeries[index];
//           final firstVideo = series.videos?.isNotEmpty == true ? series.videos![0] : null;
          
//           return Container(
//             margin: EdgeInsets.only(bottom: height * (isLandscape ? 0.03 : 0.025)),
//             child: ListTile(
//               contentPadding: EdgeInsets.zero,
//               onTap: () {
//                 Get.to(() => SeriesDetailScreen(seriesData: series));
//               },
//               leading: Container(
//                 width: isLandscape ? width * 0.25 : width * 0.35,
//                 height: isLandscape ? height * 0.35 : height * 0.15,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   color: Colors.grey[900],
//                 ),
//                 child: Stack(
//                   children: [
//                     if (series.seriesThumbUrl != null && series.seriesThumbUrl!.isNotEmpty)
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8),
//                         child: Image.network(
//                           series.seriesThumbUrl!,
//                           width: double.infinity,
//                           height: double.infinity,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return _buildPlaceholderImage(width, isLandscape);
//                           },
//                           loadingBuilder: (context, child, loadingProgress) {
//                             if (loadingProgress == null) return child;
//                             return Center(
//                               child: CircularProgressIndicator(
//                                 color: const Color(0xFF00A8E8),
//                                 value: loadingProgress.expectedTotalBytes != null
//                                     ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
//                                     : null,
//                               ),
//                             );
//                           },
//                         ),
//                       )
//                     else
//                       _buildPlaceholderImage(width, isLandscape),
                    
//                     // Play Icon Overlay
//                     Center(
//                       child: Container(
//                         padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.025)),
//                         decoration: BoxDecoration(
//                           color: Colors.black.withOpacity(0.5),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(
//                           Icons.play_arrow,
//                           color: Colors.white,
//                           size: width * (isLandscape ? 0.04 : 0.06),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               title: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     series.episodeName ?? 'Unknown Series',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: isLandscape ? width * 0.028 : width * 0.045,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   SizedBox(height: height * 0.008),
//                   Row(
//                     children: [
//                       if (firstVideo?.imdbRating != null) ...[
//                         Icon(
//                           Icons.star,
//                           color: Colors.amber,
//                           size: width * (isLandscape ? 0.022 : 0.035),
//                         ),
//                         SizedBox(width: width * 0.008),
//                         Text(
//                           firstVideo!.imdbRating!.toStringAsFixed(1),
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: isLandscape ? width * 0.02 : width * 0.032,
//                           ),
//                         ),
//                         SizedBox(width: width * 0.02),
//                       ],
//                       if (series.totalEpisodes != null)
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: width * (isLandscape ? 0.012 : 0.02),
//                             vertical: height * (isLandscape ? 0.006 : 0.004),
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius: BorderRadius.circular(4),
//                           ),
//                           child: Text(
//                             '${series.totalEpisodes} Ep',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: isLandscape ? width * 0.018 : width * 0.028,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),
//                   SizedBox(height: height * 0.008),
//                   Text(
//                     firstVideo?.description ?? 'No description available',
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: isLandscape ? width * 0.02 : width * 0.032,
//                       height: 1.3,
//                     ),
//                     maxLines: 3,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     });
//   }

//   Widget _buildPlaceholderImage(double width, bool isLandscape) {
//     return Container(
//       width: double.infinity,
//       height: double.infinity,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(8),
//         color: Colors.grey[900],
//       ),
//       child: Center(
//         child: Icon(
//           Icons.movie,
//           color: Colors.grey[700],
//           size: width * (isLandscape ? 0.08 : 0.12),
//         ),
//       ),
//     );
//   }

//   String _formatYear(String dateString) {
//     try {
//       final date = DateTime.parse(dateString);
//       return date.year.toString();
//     } catch (e) {
//       return 'N/A';
//     }
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ott/View/Screen/Episodedeailpage.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// Search Controller
class SearchController extends GetxController {
  RxList<SeriesResponse> allSeries = <SeriesResponse>[].obs;
  RxList<SeriesResponse> filteredSeries = <SeriesResponse>[].obs;
  RxBool isLoading = false.obs;
  RxBool isSearching = false.obs;
  RxString searchQuery = ''.obs;
  
  final String baseUrl = 'https://spottt.codifyinstitute.org/api/v1';

  @override
  void onInit() {
    super.onInit();
    fetchAllSeries();
  }

  @override
  void onClose() {
    // Clear search when controller is disposed
    clearSearch();
    super.onClose();
  }

  // Get Token from SharedPreferences
  Future<String?> getToken() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString('auth_token');
    } catch (e) {
      print('Error getting token: $e');
      return null;
    }
  }

  // Fetch All Series from API
  Future<void> fetchAllSeries() async {
    isLoading.value = true;

    try {
      String? token = await getToken();

      final response = await http.get(
        Uri.parse('$baseUrl/videos/all'),
        headers: {
          'Content-Type': 'application/json',
          if (token != null) 'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        
        allSeries.value = data
            .map((json) => SeriesResponse.fromJson(json))
            .toList();
        
        filteredSeries.value = allSeries;
      }
    } catch (e) {
      print('Error fetching series: $e');
    } finally {
      isLoading.value = false;
    }
  }

  // Search Series by Episode Name
  void searchSeries(String query) {
    searchQuery.value = query.trim();
    
    if (searchQuery.value.isEmpty) {
      filteredSeries.value = allSeries;
      isSearching.value = false;
    } else {
      isSearching.value = true;
      filteredSeries.value = allSeries.where((series) {
        final episodeName = series.episodeName?.toLowerCase() ?? '';
        final searchLower = searchQuery.value.toLowerCase();
        return episodeName.contains(searchLower);
      }).toList();
    }
  }

  // Clear Search
  void clearSearch() {
    searchQuery.value = '';
    filteredSeries.value = allSeries;
    isSearching.value = false;
  }

  // Reset search when page becomes inactive
  void resetOnPageChange() {
    searchQuery.value = '';
    filteredSeries.value = allSeries;
    isSearching.value = false;
  }
}

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> with AutomaticKeepAliveClientMixin {
  final TextEditingController _searchController = TextEditingController();
  late final SearchController controller;

  @override
  bool get wantKeepAlive => false; // Disable automatic keep alive

  @override
  void initState() {
    super.initState();
    controller = Get.put(SearchController(), tag: 'search_screen');
    
    // Clear search when this screen is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchController.clear();
      controller.clearSearch();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    // Clear search when leaving the page
    controller.resetOnPageChange();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Clear search when returning to this page
    if (ModalRoute.of(context)?.isCurrent == true) {
      _searchController.clear();
      controller.clearSearch();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // Required for AutomaticKeepAliveClientMixin
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isLandscape = orientation == Orientation.landscape;
        
        return Scaffold(
          backgroundColor: const Color(0xFF0A0A0A),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Section
                _buildHeader(width, height, isLandscape),
                
                // Search Bar
                _buildSearchBar(width, height, isLandscape),
                
                // Search Results
                Expanded(
                  child: _buildSearchResults(width, height, isLandscape),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(double width, double height, bool isLandscape) {
    return Padding(
      padding: EdgeInsets.all(width * 0.04),
      child: Row(
        children: [
          // Back Button
          // InkWell(
          //   onTap: () => Get.back(),
          //   child: Icon(
          //     Icons.arrow_back,
          //     color: Colors.white,
          //     size: isLandscape ? width * 0.04 : width * 0.065,
          //   ),
          // ),
          
          SizedBox(width: width * 0.03),
          
          // Prime Video Logo
          Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
              fontSize: isLandscape ? width * 0.035 : width * 0.055,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          const Spacer(),
          
          // Cast Icon (commented out as per request)
          // Icon(
          //   Icons.cast,
          //   color: Colors.white,
          //   size: isLandscape ? width * 0.04 : width * 0.065,
          // ),
          // SizedBox(width: width * 0.04),
          
          // Profile Image (commented out)
          // CircleAvatar(
          //   radius: isLandscape ? width * 0.03 : width * 0.05,
          //   backgroundImage: const AssetImage('assets/movieimage.jpg'),
          // ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(double width, double height, bool isLandscape) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.01,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1A2332),
        borderRadius: BorderRadius.circular(width * 0.02),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey[400],
            size: isLandscape ? width * 0.035 : width * 0.06,
          ),
          SizedBox(width: width * 0.03),
          Expanded(
            child: TextField(
              controller: _searchController,
              style: TextStyle(
                color: Colors.white,
                fontSize: isLandscape ? width * 0.025 : width * 0.04,
              ),
              decoration: InputDecoration(
                hintText: 'Search series by name...',
                hintStyle: TextStyle(
                  color: Colors.grey[400],
                  fontSize: isLandscape ? width * 0.025 : width * 0.04,
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: isLandscape ? height * 0.02 : height * 0.015,
                ),
              ),
              onChanged: (value) {
                controller.searchSeries(value);
              },
            ),
          ),
          Obx(() {
            if (controller.searchQuery.value.isNotEmpty) {
              return InkWell(
                onTap: () {
                  _searchController.clear();
                  controller.clearSearch();
                },
                child: Icon(
                  Icons.clear,
                  color: Colors.grey[400],
                  size: isLandscape ? width * 0.035 : width * 0.06,
                ),
              );
            }
            return const SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  Widget _buildSearchResults(double width, double height, bool isLandscape) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: const Color(0xFF00A8E8),
          ),
        );
      }

      if (controller.isSearching.value && controller.filteredSeries.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off,
                color: Colors.grey[600],
                size: isLandscape ? width * 0.1 : width * 0.2,
              ),
              SizedBox(height: height * 0.02),
              Text(
                'No results found for "${controller.searchQuery.value}"',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: isLandscape ? width * 0.025 : width * 0.04,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      }

      if (!controller.isSearching.value && controller.searchQuery.value.isEmpty) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.grey[600],
                size: isLandscape ? width * 0.1 : width * 0.2,
              ),
              SizedBox(height: height * 0.02),
              Text(
                'Search for series',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: isLandscape ? width * 0.03 : width * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: height * 0.01),
              Text(
                'Start typing to find your favorite series',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: isLandscape ? width * 0.022 : width * 0.035,
                ),
              ),
            ],
          ),
        );
      }

      return ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
          vertical: height * 0.02,
        ),
        itemCount: controller.filteredSeries.length,
        itemBuilder: (context, index) {
          final series = controller.filteredSeries[index];
          final firstVideo = series.videos?.isNotEmpty == true ? series.videos![0] : null;
          
          return Container(
            margin: EdgeInsets.only(bottom: height * (isLandscape ? 0.03 : 0.025)),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              onTap: () {
                Get.to(() => SeriesDetailScreen(seriesData: series));
              },
              leading: Container(
                width: isLandscape ? width * 0.25 : width * 0.35,
                height: isLandscape ? height * 0.35 : height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[900],
                ),
                child: Stack(
                  children: [
                    if (series.seriesThumbUrl != null && series.seriesThumbUrl!.isNotEmpty)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          series.seriesThumbUrl!,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return _buildPlaceholderImage(width, isLandscape);
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                color: const Color(0xFF00A8E8),
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                                    : null,
                              ),
                            );
                          },
                        ),
                      )
                    else
                      _buildPlaceholderImage(width, isLandscape),
                    
                    // Play Icon Overlay
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(width * (isLandscape ? 0.015 : 0.025)),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: width * (isLandscape ? 0.04 : 0.06),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    series.episodeName ?? 'Unknown Series',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isLandscape ? width * 0.028 : width * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: height * 0.008),
                  Row(
                    children: [
                      if (firstVideo?.imdbRating != null) ...[
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: width * (isLandscape ? 0.022 : 0.035),
                        ),
                        SizedBox(width: width * 0.008),
                        Text(
                          firstVideo!.imdbRating!.toStringAsFixed(1),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isLandscape ? width * 0.02 : width * 0.032,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                      ],
                      if (series.totalEpisodes != null)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * (isLandscape ? 0.012 : 0.02),
                            vertical: height * (isLandscape ? 0.006 : 0.004),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            '${series.totalEpisodes} Ep',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isLandscape ? width * 0.018 : width * 0.028,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: height * 0.008),
                  Text(
                    firstVideo?.description ?? 'No description available',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: isLandscape ? width * 0.02 : width * 0.032,
                      height: 1.3,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }

  Widget _buildPlaceholderImage(double width, bool isLandscape) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[900],
      ),
      child: Center(
        child: Icon(
          Icons.movie,
          color: Colors.grey[700],
          size: width * (isLandscape ? 0.08 : 0.12),
        ),
      ),
    );
  }

  String _formatYear(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return date.year.toString();
    } catch (e) {
      return 'N/A';
    }
  }
}