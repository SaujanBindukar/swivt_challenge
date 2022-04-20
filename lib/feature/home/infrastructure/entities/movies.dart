import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:swivt_challenge/app_setup/hive/hive_box.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';

part 'movies.g.dart';
part 'movies.freezed.dart';

@freezed
@HiveType(typeId: HiveBox.movieResponseBoxId)
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    @HiveField(0) required int page,
    @HiveField(1) @Default(<Movies>[]) List<Movies> results,
    @HiveField(2) @JsonKey(name: 'total_pages') required int totalPages,
    @HiveField(3) @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

@freezed
@HiveType(typeId: HiveBox.movieBoxId)
class Movies with _$Movies {
  const factory Movies({
    @HiveField(0) required bool adult,
    @HiveField(1) @JsonKey(name: 'backdrop_path') String? backdropPath,
    @HiveField(2) required int id,
    @HiveField(3)
    @JsonKey(name: 'original_language')
        required String originalLanguage,
    @HiveField(4)
    @JsonKey(name: 'original_title')
        required String originalTitle,
    @HiveField(5) required String overview,
    @HiveField(6) required double popularity,
    @HiveField(7) @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @HiveField(8) @JsonKey(name: 'release_date') required String releaseDate,
    @HiveField(9) required String title,
    @HiveField(10) @JsonKey(name: 'vote_average') required double voteAverage,
    @HiveField(11) @JsonKey(name: 'vote_count') required int voteCount,
    @HiveField(12) @Default(<Genres>[]) List<Genres>? genres,
    @HiveField(13) String? status,
    @HiveField(14) String? tagline,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
