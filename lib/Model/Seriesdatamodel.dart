// // Series Response Model
// class SeriesResponse {
//   final String? episodeName;
//   final int? totalEpisodes;
//   final String? latestRelease;
//   final String? seriesPosterKey;
//   final String? seriesThumbKey;
//   final String? seriesPosterUrl;
//   final String? seriesThumbUrl;
//   final List<Video>? videos;

//   SeriesResponse({
//     this.episodeName,
//     this.totalEpisodes,
//     this.latestRelease,
//     this.seriesPosterKey,
//     this.seriesThumbKey,
//     this.seriesPosterUrl,
//     this.seriesThumbUrl,
//     this.videos,
//   });

//   factory SeriesResponse.fromJson(Map<String, dynamic> json) {
//     return SeriesResponse(
//       episodeName: json['episodeName']?.toString(),
//       totalEpisodes: json['totalEpisodes'] != null 
//           ? int.tryParse(json['totalEpisodes'].toString()) 
//           : null,
//       latestRelease: json['latestRelease']?.toString(),
//       seriesPosterKey: json['seriesPosterKey']?.toString(),
//       seriesThumbKey: json['seriesThumbKey']?.toString(),
//       seriesPosterUrl: json['seriesPosterUrl']?.toString(),
//       seriesThumbUrl: json['seriesThumbUrl']?.toString(),
//       videos: json['videos'] != null
//           ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList()
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'episodeName': episodeName,
//       'totalEpisodes': totalEpisodes,
//       'latestRelease': latestRelease,
//       'seriesPosterKey': seriesPosterKey,
//       'seriesThumbKey': seriesThumbKey,
//       'seriesPosterUrl': seriesPosterUrl,
//       'seriesThumbUrl': seriesThumbUrl,
//       'videos': videos?.map((v) => v.toJson()).toList(),
//     };
//   }
// }

// // Video Model
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
//   final int? episodeSeq;
//   final String? episodeCode;
//   final List<String>? resolutions;
//   final String? rawUploadPath;
//   final String? status;
//   final String? createdAt;
//   final String? updatedAt;
//   final Mp4Keys? mp4Keys;

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
//     this.episodeSeq,
//     this.episodeCode,
//     this.resolutions,
//     this.rawUploadPath,
//     this.status,
//     this.createdAt,
//     this.updatedAt,
//     this.mp4Keys,
//   });

//   factory Video.fromJson(Map<String, dynamic> json) {
//     return Video(
//       id: json['_id']?.toString(),
//       episodeName: json['episodeName']?.toString(),
//       videoTitle: json['videoTitle']?.toString(),
//       description: json['description']?.toString(),
//       actors: json['actors'] != null
//           ? List<String>.from(json['actors'].map((x) => x.toString()))
//           : null,
//       writers: json['writers'] != null
//           ? List<String>.from(json['writers'].map((x) => x.toString()))
//           : null,
//       imdbRating: json['imdbRating'] != null
//           ? double.tryParse(json['imdbRating'].toString())
//           : null,
//       releaseDate: json['releaseDate']?.toString(),
//       countries: json['countries'] != null
//           ? List<String>.from(json['countries'].map((x) => x.toString()))
//           : null,
//       genre: json['genre']?.toString(),
//       languages: json['languages'] != null
//           ? List<String>.from(json['languages'].map((x) => x.toString()))
//           : null,
//       videoType: json['videoType']?.toString(),
//       runtimeMinutes: json['runtimeMinutes'] != null
//           ? int.tryParse(json['runtimeMinutes'].toString())
//           : null,
//       quality: json['quality']?.toString(),
//       posterKey: json['posterKey']?.toString(),
//       thumbKey: json['thumbKey']?.toString(),
//       episodeSeq: json['episodeSeq'] != null
//           ? int.tryParse(json['episodeSeq'].toString())
//           : null,
//       episodeCode: json['episodeCode']?.toString(),
//       resolutions: json['resolutions'] != null
//           ? List<String>.from(json['resolutions'].map((x) => x.toString()))
//           : null,
//       rawUploadPath: json['rawUploadPath']?.toString(),
//       status: json['status']?.toString(),
//       createdAt: json['createdAt']?.toString(),
//       updatedAt: json['updatedAt']?.toString(),
//       mp4Keys: json['mp4Keys'] != null
//           ? Mp4Keys.fromJson(json['mp4Keys'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       '_id': id,
//       'episodeName': episodeName,
//       'videoTitle': videoTitle,
//       'description': description,
//       'actors': actors,
//       'writers': writers,
//       'imdbRating': imdbRating,
//       'releaseDate': releaseDate,
//       'countries': countries,
//       'genre': genre,
//       'languages': languages,
//       'videoType': videoType,
//       'runtimeMinutes': runtimeMinutes,
//       'quality': quality,
//       'posterKey': posterKey,
//       'thumbKey': thumbKey,
//       'episodeSeq': episodeSeq,
//       'episodeCode': episodeCode,
//       'resolutions': resolutions,
//       'rawUploadPath': rawUploadPath,
//       'status': status,
//       'createdAt': createdAt,
//       'updatedAt': updatedAt,
//       'mp4Keys': mp4Keys?.toJson(),
//     };
//   }
// }

// // Mp4Keys Model
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

//   Map<String, dynamic> toJson() {
//     return {
//       '360p': quality360p,
//       '480p': quality480p,
//       '720p': quality720p,
//     };
//   }
// }


// lib/models/series_models.dart - Create this new file with shared models
// Series Response Model
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
      totalEpisodes: json['totalEpisodes'] != null ? int.tryParse(json['totalEpisodes'].toString()) : null,
      latestRelease: json['latestRelease']?.toString(),
      seriesPosterKey: json['seriesPosterKey']?.toString(),
      seriesThumbKey: json['seriesThumbKey']?.toString(),
      seriesPosterUrl: json['seriesPosterUrl']?.toString(),
      seriesThumbUrl: json['seriesThumbUrl']?.toString(),
      seriesTrailerUrl: json['seriesTrailerUrl']?.toString(),
      videos: json['videos'] != null ? (json['videos'] as List).map((v) => Video.fromJson(v)).toList() : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'episodeName': episodeName,
      'totalEpisodes': totalEpisodes,
      'latestRelease': latestRelease,
      'seriesPosterKey': seriesPosterKey,
      'seriesThumbKey': seriesThumbKey,
      'seriesPosterUrl': seriesPosterUrl,
      'seriesThumbUrl': seriesThumbUrl,
      'seriesTrailerUrl': seriesTrailerUrl,
      'videos': videos?.map((v) => v.toJson()).toList(),
    };
  }
}

// Video Model
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
  final String? rawUploadPath;
  final String? status;
  final String? createdAt;
  final String? updatedAt;
  final Mp4Keys? mp4Keys;
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
    this.rawUploadPath,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.mp4Keys,
    this.qualities,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json['_id']?.toString() ?? json['id']?.toString(),
      episodeName: json['episodeName']?.toString(),
      videoTitle: json['videoTitle']?.toString() ?? json['title']?.toString(),
      description: json['description']?.toString(),
      actors: json['actors'] != null
          ? List<String>.from(json['actors'].map((x) => x.toString()))
          : null,
      writers: json['writers'] != null
          ? List<String>.from(json['writers'].map((x) => x.toString()))
          : null,
      imdbRating: json['imdbRating'] != null
          ? double.tryParse(json['imdbRating'].toString())
          : null,
      releaseDate: json['releaseDate']?.toString(),
      countries: json['countries'] != null
          ? List<String>.from(json['countries'].map((x) => x.toString()))
          : null,
      genre: json['genre']?.toString(),
      languages: json['languages'] != null
          ? List<String>.from(json['languages'].map((x) => x.toString()))
          : null,
      videoType: json['videoType']?.toString(),
      runtimeMinutes: json['runtimeMinutes'] != null
          ? int.tryParse(json['runtimeMinutes'].toString())
          : null,
      quality: json['quality']?.toString(),
      posterKey: json['posterKey']?.toString(),
      thumbKey: json['thumbKey']?.toString(),
      thumbUrl: json['thumbUrl']?.toString(),
      posterUrl: json['posterUrl']?.toString(),
      episodeSeq: json['episodeSeq'] != null
          ? int.tryParse(json['episodeSeq'].toString())
          : null,
      episodeCode: json['episodeCode']?.toString(),
      resolutions: json['resolutions'] != null
          ? List<String>.from(json['resolutions'].map((x) => x.toString()))
          : null,
      rawUploadPath: json['rawUploadPath']?.toString(),
      status: json['status']?.toString(),
      createdAt: json['createdAt']?.toString(),
      updatedAt: json['updatedAt']?.toString(),
      mp4Keys: json['mp4Keys'] != null
          ? Mp4Keys.fromJson(json['mp4Keys'])
          : null,
      qualities: json['qualities'] != null ? List<String>.from(json['qualities'].map((x) => x.toString())) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'episodeName': episodeName,
      'videoTitle': videoTitle,
      'description': description,
      'actors': actors,
      'writers': writers,
      'imdbRating': imdbRating,
      'releaseDate': releaseDate,
      'countries': countries,
      'genre': genre,
      'languages': languages,
      'videoType': videoType,
      'runtimeMinutes': runtimeMinutes,
      'quality': quality,
      'posterKey': posterKey,
      'thumbKey': thumbKey,
      'thumbUrl': thumbUrl,
      'posterUrl': posterUrl,
      'episodeSeq': episodeSeq,
      'episodeCode': episodeCode,
      'resolutions': resolutions,
      'rawUploadPath': rawUploadPath,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'mp4Keys': mp4Keys?.toJson(),
      'qualities': qualities,
    };
  }
}

// Mp4Keys Model
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

  Map<String, dynamic> toJson() {
    return {
      '360p': quality360p,
      '480p': quality480p,
      '720p': quality720p,
    };
  }
}