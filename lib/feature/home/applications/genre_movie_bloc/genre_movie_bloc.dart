import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

part 'genre_movie_event.dart';
part 'genre_movie_state.dart';

class GenreMovieBloc extends Bloc<GenreMovieEvent, GenreMovieState> {
  GenreMovieBloc({required this.homeRepository}) : super(GenreMovieInitial()) {
    on<GetMovieByGenre>((event, emit) async {
      emit(GenreMovieLoading());
      final response =
          await homeRepository.getMoviesByGenre(genreId: event.genreId);
      response.fold(
        (moviesResponse) {
          emit(GenreMovieLoaded(movieResponse: moviesResponse));
        },
        (failure) {
          emit(GenreMovieError());
        },
      );
    });
  }

  final IHomeRepository homeRepository;
}
