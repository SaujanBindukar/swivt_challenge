part of 'trending_bloc.dart';

abstract class TrendingEvent extends Equatable {
  const TrendingEvent();

  @override
  List<Object> get props => [];
}

class GetTrendingMovies extends TrendingEvent {
  const GetTrendingMovies({
    this.page,
    this.oldMovieResponse,
  });
  final int? page;
  final MovieResponse? oldMovieResponse;
}
