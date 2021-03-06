// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieResponseAdapter extends TypeAdapter<MovieResponse> {
  @override
  final int typeId = 3;

  @override
  MovieResponse read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieResponse(
      page: fields[0] as int,
      results: (fields[1] as List).cast<Movies>(),
      totalPages: fields[2] as int,
      totalResults: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MovieResponse obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.page)
      ..writeByte(1)
      ..write(obj.results)
      ..writeByte(2)
      ..write(obj.totalPages)
      ..writeByte(3)
      ..write(obj.totalResults);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieResponseAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MoviesAdapter extends TypeAdapter<Movies> {
  @override
  final int typeId = 4;

  @override
  Movies read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Movies(
      adult: fields[0] as bool,
      backdropPath: fields[1] as String?,
      id: fields[2] as int,
      originalLanguage: fields[3] as String,
      originalTitle: fields[4] as String,
      overview: fields[5] as String,
      popularity: fields[6] as double,
      posterPath: fields[7] as String,
      releaseDate: fields[8] as String,
      title: fields[9] as String,
      voteAverage: fields[10] as double,
      voteCount: fields[11] as int,
      genres: (fields[12] as List?)?.cast<Genres>(),
      status: fields[13] as String?,
      tagline: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Movies obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.adult)
      ..writeByte(1)
      ..write(obj.backdropPath)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.originalLanguage)
      ..writeByte(4)
      ..write(obj.originalTitle)
      ..writeByte(5)
      ..write(obj.overview)
      ..writeByte(6)
      ..write(obj.popularity)
      ..writeByte(7)
      ..write(obj.posterPath)
      ..writeByte(8)
      ..write(obj.releaseDate)
      ..writeByte(9)
      ..write(obj.title)
      ..writeByte(10)
      ..write(obj.voteAverage)
      ..writeByte(11)
      ..write(obj.voteCount)
      ..writeByte(12)
      ..write(obj.genres)
      ..writeByte(13)
      ..write(obj.status)
      ..writeByte(14)
      ..write(obj.tagline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoviesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponse _$$_MovieResponseFromJson(Map<String, dynamic> json) =>
    _$_MovieResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Movies.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Movies>[],
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_MovieResponseToJson(_$_MovieResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

_$_Movies _$$_MoviesFromJson(Map<String, dynamic> json) => _$_Movies(
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      id: json['id'] as int,
      originalLanguage: json['original_language'] as String,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      posterPath: json['poster_path'] as String? ?? '',
      releaseDate: json['release_date'] as String,
      title: json['title'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genres.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Genres>[],
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
    );

Map<String, dynamic> _$$_MoviesToJson(_$_Movies instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'genres': instance.genres,
      'status': instance.status,
      'tagline': instance.tagline,
    };
