// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      required bool adult,
      required String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') required List<int> genreIds,
      required int id,
      @JsonKey(name: 'original_title') required String originalTitle,
      @JsonKey(name: 'original_language') required String originalLanguage,
      required String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required num popularity,
      @JsonKey(name: 'vote_count') required int voteCount,
      @JsonKey(name: 'vote_average') required num voteAverage}) {
    return _Movie(
      posterPath: posterPath,
      adult: adult,
      overview: overview,
      releaseDate: releaseDate,
      genreIds: genreIds,
      id: id,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      title: title,
      backdropPath: backdropPath,
      popularity: popularity,
      voteCount: voteCount,
      voteAverage: voteAverage,
    );
  }

  Movie fromJson(Map<String, Object?> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      num popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'vote_average') num voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'poster_path') String? posterPath,
      bool adult,
      String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') List<int> genreIds,
      int id,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      num popularity,
      @JsonKey(name: 'vote_count') int voteCount,
      @JsonKey(name: 'vote_average') num voteAverage});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? adult = freezed,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? genreIds = freezed,
    Object? id = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? popularity = freezed,
    Object? voteCount = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_Movie(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: genreIds == freezed
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie implements _Movie {
  const _$_Movie(
      {@JsonKey(name: 'poster_path') this.posterPath,
      required this.adult,
      required this.overview,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'genre_ids') required this.genreIds,
      required this.id,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      required this.title,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.popularity,
      @JsonKey(name: 'vote_count') required this.voteCount,
      @JsonKey(name: 'vote_average') required this.voteAverage});

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final bool adult;
  @override
  final String overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  final List<int> genreIds;
  @override
  final int id;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  final String title;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final num popularity;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @override
  @JsonKey(name: 'vote_average')
  final num voteAverage;

  @override
  String toString() {
    return 'Movie(posterPath: $posterPath, adult: $adult, overview: $overview, releaseDate: $releaseDate, genreIds: $genreIds, id: $id, originalTitle: $originalTitle, originalLanguage: $originalLanguage, title: $title, backdropPath: $backdropPath, popularity: $popularity, voteCount: $voteCount, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.genreIds, genreIds) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(genreIds),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(voteAverage));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(this);
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {@JsonKey(name: 'poster_path') String? posterPath,
      required bool adult,
      required String overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'genre_ids') required List<int> genreIds,
      required int id,
      @JsonKey(name: 'original_title') required String originalTitle,
      @JsonKey(name: 'original_language') required String originalLanguage,
      required String title,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required num popularity,
      @JsonKey(name: 'vote_count') required int voteCount,
      @JsonKey(name: 'vote_average') required num voteAverage}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  bool get adult;
  @override
  String get overview;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;
  @override
  int get id;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  String get title;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  num get popularity;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(name: 'vote_average')
  num get voteAverage;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) {
  return _MovieDetail.fromJson(json);
}

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {required bool adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      required int budget,
      required List<Genre> genres,
      String? homepage,
      required int id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          required String originalLanguage,
      @JsonKey(name: 'original_title')
          required String originalTitle,
      String? overview,
      required num popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_companies')
          required List<_ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
          required List<_ProductionCountry> productionCountries,
      @JsonKey(name: 'release_date')
          String? releaseDate,
      required int revenue,
      int? runtime,
      required String status,
      String? tagline,
      required String title,
      required bool video,
      @JsonKey(name: 'vote_average')
          required num voteAverage,
      @JsonKey(name: 'vote_count')
          required int voteCount}) {
    return _MovieDetail(
      adult: adult,
      backdropPath: backdropPath,
      budget: budget,
      genres: genres,
      homepage: homepage,
      id: id,
      imdbId: imdbId,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      productionCompanies: productionCompanies,
      productionCountries: productionCountries,
      releaseDate: releaseDate,
      revenue: revenue,
      runtime: runtime,
      status: status,
      tagline: tagline,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  MovieDetail fromJson(Map<String, Object?> json) {
    return MovieDetail.fromJson(json);
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'imdb_id')
  String? get imdbId => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  num get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'production_companies')
  List<_ProductionCompany> get productionCompanies =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'production_countries')
  List<_ProductionCountry> get productionCountries =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  int get revenue => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  num get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      int budget,
      List<Genre> genres,
      String? homepage,
      int id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'original_title')
          String originalTitle,
      String? overview,
      num popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_companies')
          List<_ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
          List<_ProductionCountry> productionCountries,
      @JsonKey(name: 'release_date')
          String? releaseDate,
      int revenue,
      int? runtime,
      String status,
      String? tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average')
          num voteAverage,
      @JsonKey(name: 'vote_count')
          int voteCount});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<_ProductionCompany>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<_ProductionCountry>,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      int budget,
      List<Genre> genres,
      String? homepage,
      int id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          String originalLanguage,
      @JsonKey(name: 'original_title')
          String originalTitle,
      String? overview,
      num popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_companies')
          List<_ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
          List<_ProductionCountry> productionCountries,
      @JsonKey(name: 'release_date')
          String? releaseDate,
      int revenue,
      int? runtime,
      String status,
      String? tagline,
      String title,
      bool video,
      @JsonKey(name: 'vote_average')
          num voteAverage,
      @JsonKey(name: 'vote_count')
          int voteCount});
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? budget = freezed,
    Object? genres = freezed,
    Object? homepage = freezed,
    Object? id = freezed,
    Object? imdbId = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? productionCompanies = freezed,
    Object? productionCountries = freezed,
    Object? releaseDate = freezed,
    Object? revenue = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
    Object? title = freezed,
    Object? video = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_MovieDetail(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imdbId: imdbId == freezed
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as num,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      productionCompanies: productionCompanies == freezed
          ? _value.productionCompanies
          : productionCompanies // ignore: cast_nullable_to_non_nullable
              as List<_ProductionCompany>,
      productionCountries: productionCountries == freezed
          ? _value.productionCountries
          : productionCountries // ignore: cast_nullable_to_non_nullable
              as List<_ProductionCountry>,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      revenue: revenue == freezed
          ? _value.revenue
          : revenue // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: video == freezed
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as num,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetail implements _MovieDetail {
  const _$_MovieDetail(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.budget,
      required this.genres,
      this.homepage,
      required this.id,
      @JsonKey(name: 'imdb_id') this.imdbId,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'production_companies') required this.productionCompanies,
      @JsonKey(name: 'production_countries') required this.productionCountries,
      @JsonKey(name: 'release_date') this.releaseDate,
      required this.revenue,
      this.runtime,
      required this.status,
      this.tagline,
      required this.title,
      required this.video,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount});

  factory _$_MovieDetail.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final int budget;
  @override
  final List<Genre> genres;
  @override
  final String? homepage;
  @override
  final int id;
  @override
  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String? overview;
  @override
  final num popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'production_companies')
  final List<_ProductionCompany> productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  final List<_ProductionCountry> productionCountries;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  final int revenue;
  @override
  final int? runtime;
  @override
  final String status;
  @override
  final String? tagline;
  @override
  final String title;
  @override
  final bool video;
  @override
  @JsonKey(name: 'vote_average')
  final num voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'MovieDetail(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, productionCountries: $productionCountries, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDetail &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.budget, budget) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.homepage, homepage) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.imdbId, imdbId) &&
            const DeepCollectionEquality()
                .equals(other.originalLanguage, originalLanguage) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.popularity, popularity) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality()
                .equals(other.productionCompanies, productionCompanies) &&
            const DeepCollectionEquality()
                .equals(other.productionCountries, productionCountries) &&
            const DeepCollectionEquality()
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.revenue, revenue) &&
            const DeepCollectionEquality().equals(other.runtime, runtime) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.tagline, tagline) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(adult),
        const DeepCollectionEquality().hash(backdropPath),
        const DeepCollectionEquality().hash(budget),
        const DeepCollectionEquality().hash(genres),
        const DeepCollectionEquality().hash(homepage),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(imdbId),
        const DeepCollectionEquality().hash(originalLanguage),
        const DeepCollectionEquality().hash(originalTitle),
        const DeepCollectionEquality().hash(overview),
        const DeepCollectionEquality().hash(popularity),
        const DeepCollectionEquality().hash(posterPath),
        const DeepCollectionEquality().hash(productionCompanies),
        const DeepCollectionEquality().hash(productionCountries),
        const DeepCollectionEquality().hash(releaseDate),
        const DeepCollectionEquality().hash(revenue),
        const DeepCollectionEquality().hash(runtime),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(tagline),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(video),
        const DeepCollectionEquality().hash(voteAverage),
        const DeepCollectionEquality().hash(voteCount)
      ]);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailToJson(this);
  }
}

abstract class _MovieDetail implements MovieDetail {
  const factory _MovieDetail(
      {required bool adult,
      @JsonKey(name: 'backdrop_path')
          String? backdropPath,
      required int budget,
      required List<Genre> genres,
      String? homepage,
      required int id,
      @JsonKey(name: 'imdb_id')
          String? imdbId,
      @JsonKey(name: 'original_language')
          required String originalLanguage,
      @JsonKey(name: 'original_title')
          required String originalTitle,
      String? overview,
      required num popularity,
      @JsonKey(name: 'poster_path')
          String? posterPath,
      @JsonKey(name: 'production_companies')
          required List<_ProductionCompany> productionCompanies,
      @JsonKey(name: 'production_countries')
          required List<_ProductionCountry> productionCountries,
      @JsonKey(name: 'release_date')
          String? releaseDate,
      required int revenue,
      int? runtime,
      required String status,
      String? tagline,
      required String title,
      required bool video,
      @JsonKey(name: 'vote_average')
          required num voteAverage,
      @JsonKey(name: 'vote_count')
          required int voteCount}) = _$_MovieDetail;

  factory _MovieDetail.fromJson(Map<String, dynamic> json) =
      _$_MovieDetail.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  int get budget;
  @override
  List<Genre> get genres;
  @override
  String? get homepage;
  @override
  int get id;
  @override
  @JsonKey(name: 'imdb_id')
  String? get imdbId;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String? get overview;
  @override
  num get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'production_companies')
  List<_ProductionCompany> get productionCompanies;
  @override
  @JsonKey(name: 'production_countries')
  List<_ProductionCountry> get productionCountries;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  int get revenue;
  @override
  int? get runtime;
  @override
  String get status;
  @override
  String? get tagline;
  @override
  String get title;
  @override
  bool get video;
  @override
  @JsonKey(name: 'vote_average')
  num get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

_ProductionCompany _$_ProductionCompanyFromJson(Map<String, dynamic> json) {
  return __ProductionCompany.fromJson(json);
}

/// @nodoc
class _$_ProductionCompanyTearOff {
  const _$_ProductionCompanyTearOff();

  __ProductionCompany call(
      {required String name,
      required int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') required String originCountry}) {
    return __ProductionCompany(
      name: name,
      id: id,
      logoPath: logoPath,
      originCountry: originCountry,
    );
  }

  _ProductionCompany fromJson(Map<String, Object?> json) {
    return _ProductionCompany.fromJson(json);
  }
}

/// @nodoc
const _$ProductionCompany = _$_ProductionCompanyTearOff();

/// @nodoc
mixin _$_ProductionCompany {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProductionCompanyCopyWith<_ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductionCompanyCopyWith<$Res> {
  factory _$ProductionCompanyCopyWith(
          _ProductionCompany value, $Res Function(_ProductionCompany) then) =
      __$ProductionCompanyCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$ProductionCompanyCopyWithImpl<$Res>
    implements _$ProductionCompanyCopyWith<$Res> {
  __$ProductionCompanyCopyWithImpl(this._value, this._then);

  final _ProductionCompany _value;
  // ignore: unused_field
  final $Res Function(_ProductionCompany) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$_ProductionCompanyCopyWith<$Res>
    implements _$ProductionCompanyCopyWith<$Res> {
  factory _$_ProductionCompanyCopyWith(
          __ProductionCompany value, $Res Function(__ProductionCompany) then) =
      __$_ProductionCompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'origin_country') String originCountry});
}

/// @nodoc
class __$_ProductionCompanyCopyWithImpl<$Res>
    extends __$ProductionCompanyCopyWithImpl<$Res>
    implements _$_ProductionCompanyCopyWith<$Res> {
  __$_ProductionCompanyCopyWithImpl(
      __ProductionCompany _value, $Res Function(__ProductionCompany) _then)
      : super(_value, (v) => _then(v as __ProductionCompany));

  @override
  __ProductionCompany get _value => super._value as __ProductionCompany;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(__ProductionCompany(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ProductionCompany implements __ProductionCompany {
  const _$__ProductionCompany(
      {required this.name,
      required this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      @JsonKey(name: 'origin_country') required this.originCountry});

  factory _$__ProductionCompany.fromJson(Map<String, dynamic> json) =>
      _$$__ProductionCompanyFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @JsonKey(name: 'origin_country')
  final String originCountry;

  @override
  String toString() {
    return '_ProductionCompany(name: $name, id: $id, logoPath: $logoPath, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ProductionCompany &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.logoPath, logoPath) &&
            const DeepCollectionEquality()
                .equals(other.originCountry, originCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(logoPath),
      const DeepCollectionEquality().hash(originCountry));

  @JsonKey(ignore: true)
  @override
  _$_ProductionCompanyCopyWith<__ProductionCompany> get copyWith =>
      __$_ProductionCompanyCopyWithImpl<__ProductionCompany>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ProductionCompanyToJson(this);
  }
}

abstract class __ProductionCompany implements _ProductionCompany {
  const factory __ProductionCompany(
          {required String name,
          required int id,
          @JsonKey(name: 'logo_path') String? logoPath,
          @JsonKey(name: 'origin_country') required String originCountry}) =
      _$__ProductionCompany;

  factory __ProductionCompany.fromJson(Map<String, dynamic> json) =
      _$__ProductionCompany.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath;
  @override
  @JsonKey(name: 'origin_country')
  String get originCountry;
  @override
  @JsonKey(ignore: true)
  _$_ProductionCompanyCopyWith<__ProductionCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

_ProductionCountry _$_ProductionCountryFromJson(Map<String, dynamic> json) {
  return __ProductionCountry.fromJson(json);
}

/// @nodoc
class _$_ProductionCountryTearOff {
  const _$_ProductionCountryTearOff();

  __ProductionCountry call(
      {@JsonKey(name: 'iso_3166_1') required String iso,
      required String name}) {
    return __ProductionCountry(
      iso: iso,
      name: name,
    );
  }

  _ProductionCountry fromJson(Map<String, Object?> json) {
    return _ProductionCountry.fromJson(json);
  }
}

/// @nodoc
const _$ProductionCountry = _$_ProductionCountryTearOff();

/// @nodoc
mixin _$_ProductionCountry {
  @JsonKey(name: 'iso_3166_1')
  String get iso => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ProductionCountryCopyWith<_ProductionCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductionCountryCopyWith<$Res> {
  factory _$ProductionCountryCopyWith(
          _ProductionCountry value, $Res Function(_ProductionCountry) then) =
      __$ProductionCountryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'iso_3166_1') String iso, String name});
}

/// @nodoc
class __$ProductionCountryCopyWithImpl<$Res>
    implements _$ProductionCountryCopyWith<$Res> {
  __$ProductionCountryCopyWithImpl(this._value, this._then);

  final _ProductionCountry _value;
  // ignore: unused_field
  final $Res Function(_ProductionCountry) _then;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$_ProductionCountryCopyWith<$Res>
    implements _$ProductionCountryCopyWith<$Res> {
  factory _$_ProductionCountryCopyWith(
          __ProductionCountry value, $Res Function(__ProductionCountry) then) =
      __$_ProductionCountryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'iso_3166_1') String iso, String name});
}

/// @nodoc
class __$_ProductionCountryCopyWithImpl<$Res>
    extends __$ProductionCountryCopyWithImpl<$Res>
    implements _$_ProductionCountryCopyWith<$Res> {
  __$_ProductionCountryCopyWithImpl(
      __ProductionCountry _value, $Res Function(__ProductionCountry) _then)
      : super(_value, (v) => _then(v as __ProductionCountry));

  @override
  __ProductionCountry get _value => super._value as __ProductionCountry;

  @override
  $Res call({
    Object? iso = freezed,
    Object? name = freezed,
  }) {
    return _then(__ProductionCountry(
      iso: iso == freezed
          ? _value.iso
          : iso // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ProductionCountry implements __ProductionCountry {
  const _$__ProductionCountry(
      {@JsonKey(name: 'iso_3166_1') required this.iso, required this.name});

  factory _$__ProductionCountry.fromJson(Map<String, dynamic> json) =>
      _$$__ProductionCountryFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String iso;
  @override
  final String name;

  @override
  String toString() {
    return '_ProductionCountry(iso: $iso, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __ProductionCountry &&
            const DeepCollectionEquality().equals(other.iso, iso) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(iso),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$_ProductionCountryCopyWith<__ProductionCountry> get copyWith =>
      __$_ProductionCountryCopyWithImpl<__ProductionCountry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ProductionCountryToJson(this);
  }
}

abstract class __ProductionCountry implements _ProductionCountry {
  const factory __ProductionCountry(
      {@JsonKey(name: 'iso_3166_1') required String iso,
      required String name}) = _$__ProductionCountry;

  factory __ProductionCountry.fromJson(Map<String, dynamic> json) =
      _$__ProductionCountry.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String get iso;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$_ProductionCountryCopyWith<__ProductionCountry> get copyWith =>
      throw _privateConstructorUsedError;
}
