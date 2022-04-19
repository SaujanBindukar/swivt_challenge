part of 'movies_bloc.dart';

abstract class MoviesState extends Equatable {
  const MoviesState();

  @override
  List<Object> get props => [];
}

class MoviesInitial extends MoviesState {}

class MoviesLoading extends MoviesState {}

class MoviesLoaded extends MoviesState {
  final MovieResponse movieResponse;

  MoviesLoaded({required this.movieResponse});

  @override
  List<Object> get props => [movieResponse];
}

class MoviesError extends MoviesState {}
