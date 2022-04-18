// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenreResponse _$$_GenreResponseFromJson(Map<String, dynamic> json) =>
    _$_GenreResponse(
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Genres>[],
    );

Map<String, dynamic> _$$_GenreResponseToJson(_$_GenreResponse instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };

_$_Genres _$$_GenresFromJson(Map<String, dynamic> json) => _$_Genres(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_GenresToJson(_$_Genres instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
