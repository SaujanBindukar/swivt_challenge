import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:swivt_challenge/app_setup/app_endpoints/app_endpoints.dart';
import 'package:swivt_challenge/app_setup/dio/dio_client.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';

abstract class IHomeRepository {
  Future<Either<GenreResponse, dynamic>> getGenre();
}

class HomeRepository implements IHomeRepository {
  final _dio = dioClient();
  @override
  Future<Either<GenreResponse, dynamic>> getGenre() async {
    try {
      final response = await _dio.get(GenreEp.getGenre);
      final json = Map<String, dynamic>.from(response.data!);
      final result = GenreResponse.fromJson(json);
      return Left(result);
    } on DioError catch (e) {
      return Right(e);
    } catch (e) {
      return Right(e);
    }
  }
}
