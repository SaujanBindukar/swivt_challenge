part of 'search_movie_bloc.dart';

abstract class SearchMovieState extends Equatable {
  const SearchMovieState();

  @override
  List<Object> get props => [];
}

class SearchMovieInitial extends SearchMovieState {}

class SearchMovieLoading extends SearchMovieState {}

class SearchMovieLoaded extends SearchMovieState {
  const SearchMovieLoaded({required this.movieResponse});
  final MovieResponse movieResponse;
}

class SearchMovieError extends SearchMovieState {}
