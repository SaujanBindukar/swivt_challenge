part of 'genre_movie_bloc.dart';

abstract class GenreMovieEvent extends Equatable {
  const GenreMovieEvent();

  @override
  List<Object> get props => [];
}

class GetMovieByGenre extends GenreMovieEvent {
  const GetMovieByGenre({required this.genreId});

  final int genreId;
}
