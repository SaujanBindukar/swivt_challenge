import 'package:get_it/get_it.dart';
import 'package:swivt_challenge/app_setup/dio/dio_client.dart';
import 'package:swivt_challenge/app_setup/hive/hive_setup.dart';
import 'package:swivt_challenge/feature/home/applications/genre_bloc/genre_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/genre_movie_bloc/genre_movie_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/trending_bloc/trending_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/local_home_repository.dart';
import 'package:swivt_challenge/feature/search/application/search_movie_bloc/search_movie_bloc.dart';
import 'package:swivt_challenge/feature/search/infrastructure/repository/search_repository.dart';

GetIt inject = GetIt.instance;

void initDependencyInjection() {
  registerClient();

  registerRepository();

  registerBloc();
}

//register the network client
void registerClient() {
  inject.registerSingleton(dioClient());
}

//register all the repository
void registerRepository() {
  inject
    ..registerLazySingleton<IHomeRepository>(
      () => HomeRepository(
        dio: inject(),
      ),
    )
    ..registerLazySingleton<ILocalHomeRepository>(
      LocalHomeRepository.new,
    )
    ..registerLazySingleton<ISearchRepository>(
      () => SearchRepository(dio: inject()),
    );
}

//register all the blocs
void registerBloc() {
  inject
    ..registerLazySingleton(
      () => MoviesBloc(
        homeRepository: inject(),
        localHomeRepository: inject(),
      ),
    )
    ..registerLazySingleton(
      () => GenreBloc(homeRepository: inject()),
    )
    ..registerLazySingleton(
      () => GenreMovieBloc(homeRepository: inject()),
    )
    ..registerLazySingleton(
      () => TrendingBloc(homeRepository: inject()),
    )
    ..registerLazySingleton(
      () => SearchMovieBloc(searchRepository: inject()),
    );
}
