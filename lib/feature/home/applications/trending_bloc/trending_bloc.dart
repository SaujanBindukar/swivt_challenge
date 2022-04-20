import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  TrendingBloc({required this.homeRepository}) : super(TrendingInitial()) {
    on<GetTrendingMovies>((event, emit) async {
      if (event.page == null) {
        emit(TrendingLoading());
      }

      final response = await homeRepository.getTrendingMovies(page: event.page);
      response.fold((moviesReponse) {
        final oldData = event.oldMovieResponse?.results ?? [];
        final newMoviesList = moviesReponse.results;
        final newData = oldData + newMoviesList;
        emit(TrendingLoaded(
          movieResponse: event.page == null
              ? moviesReponse
              : event.oldMovieResponse!.copyWith(
                  results: newData,
                  page: moviesReponse.page,
                ),
        ));
      }, (failure) {
        emit(TrendingError());
      });
    });
  }
  final IHomeRepository homeRepository;
}
