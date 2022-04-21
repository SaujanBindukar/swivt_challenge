import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/local_home_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc({
    required this.homeRepository,
    required this.localHomeRepository,
  }) : super(MoviesInitial()) {
    on<GetPopularMovies>(
      (event, emit) async {
        if (event.page == null || event.page == 1) {
          emit(MoviesLoading());
        }

        final response = await homeRepository.getPopularMovies(
          page: event.page,
          fromRemote: event.fromRemote ?? true,
        );
        response.fold(
          (moviesReponse) async {
            final oldData = event.oldMovieResponse?.results ?? [];
            final newMoviesList = moviesReponse.results;
            final newData = oldData + newMoviesList;
            final movieData = event.page == null || event.page == 1
                ? moviesReponse
                : event.oldMovieResponse!.copyWith(
                    results: newData,
                    page: moviesReponse.page,
                  );

            emit(MoviesLoaded(
              movieResponse: movieData,
            ));
            await localHomeRepository.cachePopularMovies(
              movieResponse: movieData,
            );
          },
          (failure) {
            emit(MoviesError(message: failure.reason));
          },
        );
      },
    );
    on<GetMoviesById>(
      (event, emit) {},
    );
  }
  final IHomeRepository homeRepository;
  final ILocalHomeRepository localHomeRepository;
}
