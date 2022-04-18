import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

part 'genre_event.dart';
part 'genre_state.dart';

class GenreBloc extends Bloc<GenreEvent, GenreState> {
  final homeRepository = HomeRepository();
  GenreBloc() : super(GenreInitial()) {
    on<GetGenreList>(
      (event, emit) async {
        emit(GenreLoading());
        final response = await homeRepository.getGenre();
        response.fold(
          (genreList) {
            emit(GenreLoaded(genreResponse: genreList));
          },
          (failure) {
            emit(GenreError());
          },
        );
      },
    );
  }
}
