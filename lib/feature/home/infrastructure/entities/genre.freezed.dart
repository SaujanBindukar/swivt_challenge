// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'genre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreResponse _$GenreResponseFromJson(Map<String, dynamic> json) {
  return _GenreResponse.fromJson(json);
}

/// @nodoc
class _$GenreResponseTearOff {
  const _$GenreResponseTearOff();

  _GenreResponse call({@HiveField(0) List<Genres>? genres = const <Genres>[]}) {
    return _GenreResponse(
      genres: genres,
    );
  }

  GenreResponse fromJson(Map<String, Object?> json) {
    return GenreResponse.fromJson(json);
  }
}

/// @nodoc
const $GenreResponse = _$GenreResponseTearOff();

/// @nodoc
mixin _$GenreResponse {
  @HiveField(0)
  List<Genres>? get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreResponseCopyWith<GenreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreResponseCopyWith<$Res> {
  factory $GenreResponseCopyWith(
          GenreResponse value, $Res Function(GenreResponse) then) =
      _$GenreResponseCopyWithImpl<$Res>;
  $Res call({@HiveField(0) List<Genres>? genres});
}

/// @nodoc
class _$GenreResponseCopyWithImpl<$Res>
    implements $GenreResponseCopyWith<$Res> {
  _$GenreResponseCopyWithImpl(this._value, this._then);

  final GenreResponse _value;
  // ignore: unused_field
  final $Res Function(GenreResponse) _then;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ));
  }
}

/// @nodoc
abstract class _$GenreResponseCopyWith<$Res>
    implements $GenreResponseCopyWith<$Res> {
  factory _$GenreResponseCopyWith(
          _GenreResponse value, $Res Function(_GenreResponse) then) =
      __$GenreResponseCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) List<Genres>? genres});
}

/// @nodoc
class __$GenreResponseCopyWithImpl<$Res>
    extends _$GenreResponseCopyWithImpl<$Res>
    implements _$GenreResponseCopyWith<$Res> {
  __$GenreResponseCopyWithImpl(
      _GenreResponse _value, $Res Function(_GenreResponse) _then)
      : super(_value, (v) => _then(v as _GenreResponse));

  @override
  _GenreResponse get _value => super._value as _GenreResponse;

  @override
  $Res call({
    Object? genres = freezed,
  }) {
    return _then(_GenreResponse(
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreResponse implements _GenreResponse {
  const _$_GenreResponse({@HiveField(0) this.genres = const <Genres>[]});

  factory _$_GenreResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GenreResponseFromJson(json);

  @JsonKey()
  @override
  @HiveField(0)
  final List<Genres>? genres;

  @override
  String toString() {
    return 'GenreResponse(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GenreResponse &&
            const DeepCollectionEquality().equals(other.genres, genres));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genres));

  @JsonKey(ignore: true)
  @override
  _$GenreResponseCopyWith<_GenreResponse> get copyWith =>
      __$GenreResponseCopyWithImpl<_GenreResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreResponseToJson(this);
  }
}

abstract class _GenreResponse implements GenreResponse {
  const factory _GenreResponse({@HiveField(0) List<Genres>? genres}) =
      _$_GenreResponse;

  factory _GenreResponse.fromJson(Map<String, dynamic> json) =
      _$_GenreResponse.fromJson;

  @override
  @HiveField(0)
  List<Genres>? get genres;
  @override
  @JsonKey(ignore: true)
  _$GenreResponseCopyWith<_GenreResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
class _$GenresTearOff {
  const _$GenresTearOff();

  _Genres call(
      {@HiveField(0) required int id, @HiveField(1) required String name}) {
    return _Genres(
      id: id,
      name: name,
    );
  }

  Genres fromJson(Map<String, Object?> json) {
    return Genres.fromJson(json);
  }
}

/// @nodoc
const $Genres = _$GenresTearOff();

/// @nodoc
mixin _$Genres {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res>;
  $Res call({@HiveField(0) int id, @HiveField(1) String name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res> implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  final Genres _value;
  // ignore: unused_field
  final $Res Function(Genres) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$GenresCopyWith(_Genres value, $Res Function(_Genres) then) =
      __$GenresCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) int id, @HiveField(1) String name});
}

/// @nodoc
class __$GenresCopyWithImpl<$Res> extends _$GenresCopyWithImpl<$Res>
    implements _$GenresCopyWith<$Res> {
  __$GenresCopyWithImpl(_Genres _value, $Res Function(_Genres) _then)
      : super(_value, (v) => _then(v as _Genres));

  @override
  _Genres get _value => super._value as _Genres;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genres(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genres implements _Genres {
  const _$_Genres(
      {@HiveField(0) required this.id, @HiveField(1) required this.name});

  factory _$_Genres.fromJson(Map<String, dynamic> json) =>
      _$$_GenresFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String name;

  @override
  String toString() {
    return 'Genres(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Genres &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$GenresCopyWith<_Genres> get copyWith =>
      __$GenresCopyWithImpl<_Genres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenresToJson(this);
  }
}

abstract class _Genres implements Genres {
  const factory _Genres(
      {@HiveField(0) required int id,
      @HiveField(1) required String name}) = _$_Genres;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$_Genres.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$GenresCopyWith<_Genres> get copyWith => throw _privateConstructorUsedError;
}
