import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swivt_challenge/app_setup/app_endpoints/app_endpoints.dart';
import 'package:swivt_challenge/core/failure.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/movies.dart';

// ignore: one_member_abstracts
abstract class ISearchRepository {
  ///searching the movie by its name
  Future<Either<MovieResponse, Failure>> searchMovies({
    required String name,
    int? page,
  });
}

class SearchRepository implements ISearchRepository {
  SearchRepository({required this.dio});
  final Dio dio;
  @override
  Future<Either<MovieResponse, Failure>> searchMovies(
      {required String name, int? page}) async {
    try {
      final query = {
        'page': page ?? 1,
        'query': name,
      };
      final response = await dio.get<Map<String, dynamic>>(
        MoviesEp.searchMovie,
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
