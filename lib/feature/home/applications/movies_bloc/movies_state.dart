part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoaded extends MoviesState {
  const MoviesLoaded({required this.movieResponse});
  final MovieResponse movieResponse;

  @override
  List<Object> get props => [movieResponse];
}

class MoviesError extends MoviesState {
  const MoviesError({required this.message});
  final String message;
}
