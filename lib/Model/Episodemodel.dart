// Episode Detail Model with Null Safety
class EpisodeDetail {
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

  EpisodeDetail({
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

  factory EpisodeDetail.fromJson(Map<String, dynamic> json) {
    return EpisodeDetail(
      id: json['id'] ?? '',
      episodeName: json['episodeName'] ?? '',
      episodeSeq: json['episodeSeq'] ?? 0,
      episodeCode: json['episodeCode'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      genre: json['genre'] ?? '',
      languages: List<String>.from((json['languages'] ?? []) as List),
      runtimeMinutes: json['runtimeMinutes'] ?? 0,
      posterUrl: json['posterUrl'] ?? '',
      thumbUrl: json['thumbUrl'] ?? '',
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      defaultUrl: json['defaultUrl'] ?? '',
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