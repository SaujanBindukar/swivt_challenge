part of 'genre_movie_bloc.dart';

abstract class GenreMovieState extends Equatable {
  const GenreMovieState();

  @override
  List<Object> get props => [];
}

class GenreMovieInitial extends GenreMovieState {}

class GenreMovieLoading extends GenreMovieState {}

class GenreMovieLoaded extends GenreMovieState {
  const GenreMovieLoaded({required this.movieResponse});

  final MovieResponse movieResponse;

  @override
  List<Object> get props => [movieResponse];
}

class GenreMovieError extends GenreMovieState {}
