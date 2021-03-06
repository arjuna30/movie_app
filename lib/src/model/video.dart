import 'package:freezed_annotation/freezed_annotation.dart';

part 'video.freezed.dart';
part 'video.g.dart';

@freezed
class Video with _$Video {
  const factory Video(
      {required String name,
      required String key,
      required String site,
      required int size,
      required String type,
      required bool official,
      @JsonKey(name: 'published_at') required String publishedAt,
      required String id}) = _Video;

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}
