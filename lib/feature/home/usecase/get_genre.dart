import 'package:dartz/dartz.dart';
import 'package:swivt_challenge/core/failure.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';

class GetGenre {
  const GetGenre({required this.homeRepository});
  final IHomeRepository homeRepository;
  Future<Either<GenreResponse, Failure>> getGenre() async {
    final data = homeRepository.getGenre();
    return data;
  }
}
