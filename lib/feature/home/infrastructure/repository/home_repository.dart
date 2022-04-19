import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swivt_challenge/app_setup/app_endpoints/app_endpoints.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';

abstract class IHomeRepository {
  Future<Either<GenreResponse, dynamic>> getGenre();
  Future<Either<MovieResponse, dynamic>> getPopularMovies({
    int? page,
  });
}

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.dio});
  final Dio dio;
  @override
  Future<Either<GenreResponse, dynamic>> getGenre() async {
    try {
      final response = await dio.get<Map<String, dynamic>>(
        GenreEp.getGenre,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final result = GenreResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e);
    } catch (e) {
      return Right(e);
    }
  }

  @override
  Future<Either<MovieResponse, dynamic>> getPopularMovies({int? page}) async {
    try {
      final query = {
        'page': page ?? 1,
      };
      final response = await dio.get<Map<String, dynamic>>(
        MoviesEp.getPopularMovies,
        queryParameters: query,
      );
      final json = Map<String, dynamic>.from(response.data!);
      final result = MovieResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e);
    } catch (e) {
      return Right(e);
    }
  }
}
