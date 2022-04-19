// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
class _$MovieResponseTearOff {
  const _$MovieResponseTearOff();

  _MovieResponse call(
      {required int page,
      List<Movies> results = const <Movies>[],
      @JsonKey(name: 'total_pages') required int totalPages,
      @JsonKey(name: 'total_results') required int totalResults}) {
    return _MovieResponse(
      page: page,
      results: results,
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  MovieResponse fromJson(Map<String, Object?> json) {
    return MovieResponse.fromJson(json);
  }
}

/// @nodoc
const $MovieResponse = _$MovieResponseTearOff();

/// @nodoc
mixin _$MovieResponse {
  int get page => throw _privateConstructorUsedError;
  List<Movies> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<Movies> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  final MovieResponse _value;
  // ignore: unused_field
  final $Res Function(MovieResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$MovieResponseCopyWith(
          _MovieResponse value, $Res Function(_MovieResponse) then) =
      __$MovieResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<Movies> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$MovieResponseCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res>
    implements _$MovieResponseCopyWith<$Res> {
  __$MovieResponseCopyWithImpl(
      _MovieResponse _value, $Res Function(_MovieResponse) _then)
      : super(_value, (v) => _then(v as _MovieResponse));

  @override
  _MovieResponse get _value => super._value as _MovieResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_MovieResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movies>,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResponse implements _MovieResponse {
  const _$_MovieResponse(
      {required this.page,
      this.results = const <Movies>[],
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults});

  factory _$_MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResponseFromJson(json);

  @override
  final int page;
  @JsonKey()
  @override
  final List<Movies> results;
  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'MovieResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalResults));

  @JsonKey(ignore: true)
  @override
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      __$MovieResponseCopyWithImpl<_MovieResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResponseToJson(this);
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
          {required int page,
          List<Movies> results,
          @JsonKey(name: 'total_pages') required int totalPages,
          @JsonKey(name: 'total_results') required int totalResults}) =
      _$_MovieResponse;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieResponse.fromJson;

  @override
  int get page;
  @override
  List<Movies> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$MovieResponseCopyWith<_MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Movies _$MoviesFromJson(Map<String, dynamic> json) {
  return _Movies.fromJson(json);
}

/// @nodoc
class _$MoviesTearOff {
  const _$MoviesTearOff();

  _Movies call(
      {required bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required int id,
      @JsonKey(name: 'original_language') required String originalLanguage,
      @JsonKey(name: 'original_title') required String originalTitle,
      required String overview,
      required double popularity,
      @JsonKey(name: 'poster_path') String posterPath = '',
      @JsonKey(name: 'release_date') required String releaseDate,
      required String title,
      @JsonKey(name: 'vote_average') required double voteAverage,
      @JsonKey(name: 'vote_count') required int voteCount,
      List<Genres>? genres = const <Genres>[],
      String? status,
      String? tagline}) {
    return _Movies(
      adult: adult,
      backdropPath: backdropPath,
      id: id,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      voteAverage: voteAverage,
      voteCount: voteCount,
      genres: genres,
      status: status,
      tagline: tagline,
    );
  }

  Movies fromJson(Map<String, Object?> json) {
    return Movies.fromJson(json);
  }
}

/// @nodoc
const $Movies = _$MoviesTearOff();

/// @nodoc
mixin _$Movies {
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  List<Genres>? get genres => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesCopyWith<Movies> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesCopyWith<$Res> {
  factory $MoviesCopyWith(Movies value, $Res Function(Movies) then) =
      _$MoviesCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      List<Genres>? genres,
      String? status,
      String? tagline});
}

/// @nodoc
class _$MoviesCopyWithImpl<$Res> implements $MoviesCopyWith<$Res> {
  _$MoviesCopyWithImpl(this._value, this._then);

  final Movies _value;
  // ignore: unused_field
  final $Res Function(Movies) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? genres = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MoviesCopyWith<$Res> implements $MoviesCopyWith<$Res> {
  factory _$MoviesCopyWith(_Movies value, $Res Function(_Movies) then) =
      __$MoviesCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      int id,
      @JsonKey(name: 'original_language') String originalLanguage,
      @JsonKey(name: 'original_title') String originalTitle,
      String overview,
      double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') String releaseDate,
      String title,
      @JsonKey(name: 'vote_average') double voteAverage,
      @JsonKey(name: 'vote_count') int voteCount,
      List<Genres>? genres,
      String? status,
      String? tagline});
}

/// @nodoc
class __$MoviesCopyWithImpl<$Res> extends _$MoviesCopyWithImpl<$Res>
    implements _$MoviesCopyWith<$Res> {
  __$MoviesCopyWithImpl(_Movies _value, $Res Function(_Movies) _then)
      : super(_value, (v) => _then(v as _Movies));

  @override
  _Movies get _value => super._value as _Movies;

  @override
  $Res call({
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? id = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? overview = freezed,
    Object? popularity = freezed,
    Object? posterPath = freezed,
    Object? releaseDate = freezed,
    Object? title = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
    Object? genres = freezed,
    Object? status = freezed,
    Object? tagline = freezed,
  }) {
    return _then(_Movies(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movies implements _Movies {
  const _$_Movies(
      {required this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.id,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      @JsonKey(name: 'original_title') required this.originalTitle,
      required this.overview,
      required this.popularity,
      @JsonKey(name: 'poster_path') this.posterPath = '',
      @JsonKey(name: 'release_date') required this.releaseDate,
      required this.title,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount,
      this.genres = const <Genres>[],
      this.status,
      this.tagline});

  factory _$_Movies.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesFromJson(json);

  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final int id;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  @override
  final String title;
  @override
  @JsonKey(name: 'vote_average')
  final double voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;
  @JsonKey()
  @override
  final List<Genres>? genres;
  @override
  final String? status;
  @override
  final String? tagline;

  @override
  String toString() {
    return 'Movies(adult: $adult, backdropPath: $backdropPath, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, voteAverage: $voteAverage, voteCount: $voteCount, genres: $genres, status: $status, tagline: $tagline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movies &&
            const DeepCollectionEquality().equals(other.adult, adult) &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
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
                .equals(other.releaseDate, releaseDate) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.voteAverage, voteAverage) &&
            const DeepCollectionEquality().equals(other.voteCount, voteCount) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.tagline, tagline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adult),
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(originalLanguage),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(popularity),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(releaseDate),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(voteAverage),
      const DeepCollectionEquality().hash(voteCount),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(tagline));

  @JsonKey(ignore: true)
  @override
  _$MoviesCopyWith<_Movies> get copyWith =>
      __$MoviesCopyWithImpl<_Movies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesToJson(this);
  }
}

abstract class _Movies implements Movies {
  const factory _Movies(
      {required bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required int id,
      @JsonKey(name: 'original_language') required String originalLanguage,
      @JsonKey(name: 'original_title') required String originalTitle,
      required String overview,
      required double popularity,
      @JsonKey(name: 'poster_path') String posterPath,
      @JsonKey(name: 'release_date') required String releaseDate,
      required String title,
      @JsonKey(name: 'vote_average') required double voteAverage,
      @JsonKey(name: 'vote_count') required int voteCount,
      List<Genres>? genres,
      String? status,
      String? tagline}) = _$_Movies;

  factory _Movies.fromJson(Map<String, dynamic> json) = _$_Movies.fromJson;

  @override
  bool get adult;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  int get id;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle;
  @override
  String get overview;
  @override
  double get popularity;
  @override
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  String get title;
  @override
  @JsonKey(name: 'vote_average')
  double get voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount;
  @override
  List<Genres>? get genres;
  @override
  String? get status;
  @override
  String? get tagline;
  @override
  @JsonKey(ignore: true)
  _$MoviesCopyWith<_Movies> get copyWith => throw _privateConstructorUsedError;
}
