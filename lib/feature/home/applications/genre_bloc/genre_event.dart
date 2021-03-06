part of 'genre_bloc.dart';

abstract class GenreEvent extends Equatable {
  const GenreEvent();

  @override
  List<Object> get props => [];
}

class GetGenreList extends GenreEvent {}

class GetMovieByGenre extends GenreEvent {
  const GetMovieByGenre({required this.genreId});

  final int genreId;
}
