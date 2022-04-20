// import 'package:hive/hive.dart';

import 'package:hive/hive.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';

class HiveAdapter {
  /// Register all hive adapters inside this init function
  static void init() {
    Hive
      ..registerAdapter(GenreResponseAdapter())
      ..registerAdapter(GenresAdapter())
      ..registerAdapter(MovieResponseAdapter())
      ..registerAdapter(MoviesAdapter());
  }
}
