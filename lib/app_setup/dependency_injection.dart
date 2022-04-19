import 'package:get_it/get_it.dart';
import 'package:swivt_challenge/app_setup/dio/dio_client.dart';
import 'package:swivt_challenge/feature/home/applications/genre_bloc/genre_bloc.dart';
import 'package:swivt_challenge/feature/home/applications/movies_bloc/movies_bloc.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

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
  inject.registerLazySingleton(
    () => HomeRepository(dio: inject()),
  );
}

//register all the blocs
void registerBloc() {
  inject
    ..registerLazySingleton(
      () => MoviesBloc(homeRepository: inject()),
    )
    ..registerLazySingleton(
      () => GenreBloc(homeRepository: inject()),
    );
}
