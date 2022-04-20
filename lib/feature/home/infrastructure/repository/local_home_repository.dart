import 'package:hive/hive.dart';
import 'package:swivt_challenge/app_setup/hive/hive_box.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';

abstract class ILocalHomeRepository {
  Future<void> cachePopularMovies({required MovieResponse movieResponse});
  Future<MovieResponse?> getPopularMoviesFromLocal();
}

class LocalHomeRepository implements ILocalHomeRepository {
  @override
  Future<void> cachePopularMovies(
      {required MovieResponse movieResponse}) async {
    final popularMovieHiveBox =
        await Hive.openLazyBox<MovieResponse>(HiveBox.movieResponseBox);
    popularMovieHiveBox.put('popularMovies', movieResponse);
  }

  @override
  Future<MovieResponse?> getPopularMoviesFromLocal() async {
    try {
      final popularMovieHiveBox =
          await Hive.openLazyBox<MovieResponse>(HiveBox.movieResponseBox);
      final data = popularMovieHiveBox.isNotEmpty
          ? await popularMovieHiveBox.get('popularMovies')
          : null;
      return data;
    } catch (e) {
      return null;
    }
  }
}
