import 'package:get_it/get_it.dart';
import 'package:swivt_challenge/app_setup/dio/dio_client.dart';
import 'package:swivt_challenge/feature/home/applications/genre_bloc/genre_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

GetIt inject = GetIt.instance;

void initDependencyInjection() {
  //dio register
  inject.registerSingleton(dioClient());

  registerRepository();
  registerBloc();
}

void registerRepository() {
  inject.registerLazySingleton(
    () => HomeRepository(
      dio: inject(),
    ),
  );
}

void registerBloc() {
  inject.registerLazySingleton(
    () => MoviesBloc(homeRepository: inject()),
  );

  inject.registerLazySingleton(() => GenreBloc(
        homeRepository: inject(),
      ));
}
