part of 'search_movie_bloc.dart';

abstract class SearchMovieEvent extends Equatable {
  const SearchMovieEvent();

  @override
  List<Object> get props => [];
}

class SearchMovieByName extends SearchMovieEvent {
  const SearchMovieByName({required this.name});
  final String name;
}
