import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final homeRepository = HomeRepository();
  MoviesBloc() : super(MoviesInitial()) {
    on<GetPopularMovies>(
      (event, emit) async {
        emit(MoviesLoading());
        final response = await homeRepository.getPopularMovies();
        response.fold((moviesReponse) {
          emit(MoviesLoaded(movieResponse: moviesReponse));
        }, (failure) {
          emit(MoviesError());
        });
      },
    );
    on<GetMoviesById>(
      (event, emit) {},
    );
  }
}
