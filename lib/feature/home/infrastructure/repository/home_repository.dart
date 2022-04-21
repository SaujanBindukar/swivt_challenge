import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swivt_challenge/app_setup/app_endpoints/app_endpoints.dart';
import 'package:swivt_challenge/core/failure.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/local_home_repository.dart';

abstract class IHomeRepository {
  //get the list of genres (actions, comedy, adventure)
  Future<Either<GenreResponse, Failure>> getGenre();

  /// get the movie by genreId
  Future<Either<MovieResponse, Failure>> getMoviesByGenre({
    required int genreId,
    int? page,
  });

  ///get popular movies
  Future<Either<MovieResponse, Failure>> getPopularMovies({
    int? page,
    bool? fromRemote,
  });

  /// get trending movies of the day
  Future<Either<MovieResponse, Failure>> getTrendingMovies({
    int? page,
  });
}

class HomeRepository implements IHomeRepository {
  HomeRepository({
    required this.dio,
    required this.localHomeRepository,
  });
  final Dio dio;
  final ILocalHomeRepository localHomeRepository;
  @override
  Future<Either<GenreResponse, Failure>> getGenre() async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        GenreEp.getGenre,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final result = GenreResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException());
    }
  }

  @override
  Future<Either<MovieResponse, Failure>> getPopularMovies({
    int? page,
    bool? fromRemote,
  }) async {
    try {
      final query = {
        'page': page ?? 1,
      };
      if (fromRemote!) {
        final response = await dio.get<Map<String, dynamic>>(
          MoviesEp.getPopularMovies,
          queryParameters: query,
        );
        final json = Map<String, dynamic>.from(response.data!);
        final result = MovieResponse.fromJson(json);
        return Left(result);
      } else {
        final localDataResponse =
            await localHomeRepository.getPopularMoviesFromLocal();
        if (localDataResponse != null) {
          return Left(localDataResponse);
        } else {
          final response = await dio.get<Map<String, dynamic>>(
            MoviesEp.getPopularMovies,
            queryParameters: query,
          );
          final json = Map<String, dynamic>.from(response.data!);
          final result = MovieResponse.fromJson(json);
          return Left(result);
        }
      }
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException());
    }
  }

  @override
  Future<Either<MovieResponse, Failure>> getMoviesByGenre(
      {required int genreId, int? page}) async {
    try {
      final query = {
        'page': page ?? 1,
        'with_genres': genreId,
      };
      final response = await dio.get<Map<String, dynamic>>(
        GenreEp.getMovieByGenre,
        queryParameters: query,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final result = MovieResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException());
    }
  }

  @override
  Future<Either<MovieResponse, Failure>> getTrendingMovies({
    int? page,
  }) async {
    try {
      final query = {
        'page': page ?? 1,
      };
      final response = await dio.get<Map<String, dynamic>>(
        MoviesEp.trendingMovies,
        queryParameters: query,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final result = MovieResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e.toFailure);
    } catch (e) {
      return Right(Failure.fromException());
    }
  }
}
