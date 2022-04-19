part of 'trending_bloc.dart';

abstract class TrendingState extends Equatable {
  const TrendingState();

  @override
  List<Object> get props => [];
}

class TrendingInitial extends TrendingState {}

class TrendingLoading extends TrendingState {}

class TrendingLoaded extends TrendingState {
  const TrendingLoaded({required this.movieResponse});
  final MovieResponse movieResponse;

  @override
  List<Object> get props => [movieResponse];
}

class TrendingError extends TrendingState {}
