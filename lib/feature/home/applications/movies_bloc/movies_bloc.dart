import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc({
    required this.homeRepository,
  }) : super(MoviesInitial()) {
    on<GetPopularMovies>(
      (event, emit) async {
        if (event.page == null) {
          emit(MoviesLoading());
        }

        final response =
            await homeRepository.getPopularMovies(page: event.page);
        response.fold((moviesReponse) {
          final oldData = event.oldMovieResponse?.results ?? [];
          final newMoviesList = moviesReponse.results;
          final newData = oldData + newMoviesList;
          emit(MoviesLoaded(
            movieResponse: event.page == null || event.page == 1
                ? moviesReponse
                : event.oldMovieResponse!.copyWith(
                    results: newData,
                    page: moviesReponse.page,
                  ),
          ));
        }, (failure) {
          emit(MoviesError());
        });
      },
    );
    on<GetMoviesById>(
      (event, emit) {},
    );
  }
  final HomeRepository homeRepository;
}
