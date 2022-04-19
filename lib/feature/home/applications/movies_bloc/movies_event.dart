part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();

  @override
  List<Object> get props => [];
}

class GetPopularMovies extends MoviesEvent {
  const GetPopularMovies({
    this.page,
    this.oldMovieResponse,
  });
  final int? page;
  final MovieResponse? oldMovieResponse;
}

class GetMoviesById extends MoviesEvent {
  const GetMoviesById({
    required this.movieId,
    this.page,
  });
  final int movieId;
  final int? page;
}
