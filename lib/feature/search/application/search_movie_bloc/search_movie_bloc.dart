import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/search/infrastructure/repository/search_repository.dart';

part 'search_movie_event.dart';
part 'search_movie_state.dart';

class SearchMovieBloc extends Bloc<SearchMovieEvent, SearchMovieState> {
  SearchMovieBloc({
    required this.searchRepository,
  }) : super(SearchMovieInitial()) {
    on<SearchMovieByName>((event, emit) async {
      if (event.name.isEmpty) {
        emit(SearchMovieInitial());
      } else {
        emit(SearchMovieLoading());
        final response = await searchRepository.searchMovies(name: event.name);
        response.fold((moviesReponse) {
          emit(SearchMovieLoaded(movieResponse: moviesReponse));
        }, (failure) {
          emit(SearchMovieError());
        });
      }
    });
  }
  final SearchRepository searchRepository;
}
