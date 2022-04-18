import 'package:freezed_annotation/freezed_annotation.dart';
part 'genre.g.dart';
part 'genre.freezed.dart';

@freezed
class GenreResponse with _$GenreResponse {
  const factory GenreResponse({
    @Default(<Genres>[]) List<Genres>? genres,
  }) = _GenreResponse;

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);
}

@freezed
class Genres with _$Genres {
  const factory Genres({
    required int id,
    required String name,
  }) = _Genres;
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
