part of 'genre_bloc.dart';

abstract class GenreState extends Equatable {
  const GenreState();

  @override
  List<Object> get props => [];
}

class GenreInitial extends GenreState {}

class GenreLoaded extends GenreState {
  final GenreResponse genreResponse;

  const GenreLoaded({
    required this.genreResponse,
  });

  @override
  List<Object> get props => [genreResponse];
}

class GenreLoading extends GenreState {}

class GenreError extends GenreState {}
