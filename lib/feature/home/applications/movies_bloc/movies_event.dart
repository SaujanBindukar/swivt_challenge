part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class GetPopularMovies extends MoviesEvent {}

class GetMoviesById extends MoviesEvent {
  final int movieId;
  final int? page;
  GetMoviesById({
    required this.movieId,
    this.page,
  });
}
