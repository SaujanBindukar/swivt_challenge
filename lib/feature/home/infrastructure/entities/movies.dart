import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';

part 'movies.g.dart';
part 'movies.freezed.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse({
    required int page,
    @Default(<Movies>[]) List<Movies> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}

@freezed
class Movies with _$Movies {
  const factory Movies({
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required int id,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'original_title') required String originalTitle,
    required String overview,
    required double popularity,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'release_date') required String releaseDate,
    required String title,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
    @Default(<Genres>[]) List<Genres>? genres,
    String? status,
    String? tagline,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
