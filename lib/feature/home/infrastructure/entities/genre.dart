import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:swivt_challenge/app_setup/hive/hive_box.dart';
part 'genre.g.dart';
part 'genre.freezed.dart';

@freezed
@HiveType(typeId: HiveBox.genreResponseBoxId)
class GenreResponse with _$GenreResponse {
  const factory GenreResponse({
    @HiveField(0) @Default(<Genres>[]) List<Genres>? genres,
  }) = _GenreResponse;

  factory GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$GenreResponseFromJson(json);
}

@freezed
@HiveType(typeId: HiveBox.genreBoxId)
class Genres with _$Genres {
  const factory Genres({
    @HiveField(0) required int id,
    @HiveField(1) required String name,
  }) = _Genres;
  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}
