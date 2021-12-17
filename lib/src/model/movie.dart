import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/src/model/genre.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'poster_path') String? posterPath,
    required bool adult,
    required String overview,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    @JsonKey(name: 'genre_ids') required List<int> genreIds,
    required int id,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'original_language') required String originalLanguage,
    required String title,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required num popularity,
    @JsonKey(name: 'vote_count') required int voteCount,
    @JsonKey(name: 'vote_average') required num voteAverage,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int budget,
    required List<Genre> genres,
    String? homepage,
    required int id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    String? overview,
    required num popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'production_companies')
        required List<_ProductionCompany> productionCompanies,
    @JsonKey(name: 'production_countries')
        required List<_ProductionCountry> productionCountries,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
    required int revenue,
    int? runtime,
    required String status,
    String? tagline,
    required String title,
    required bool video,
    @JsonKey(name: 'vote_average') required num voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _MovieDetail;

  factory MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailFromJson(json);
}

@freezed
class _ProductionCompany with _$_ProductionCompany {
  const factory _ProductionCompany({
    required String name,
    required int id,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'origin_country') required String originCountry,
  }) = __ProductionCompany;

  factory _ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$_ProductionCompanyFromJson(json);
}

@freezed
class _ProductionCountry with _$_ProductionCountry {
  const factory _ProductionCountry({
    @JsonKey(name: 'iso_3166_1') required String iso,
    required String name,
  }) = __ProductionCountry;

  factory _ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$_ProductionCountryFromJson(json);
}
