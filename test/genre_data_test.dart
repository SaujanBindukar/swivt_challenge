import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:swivt_challenge/feature/home/infrastructure/entities/genre.dart';
import 'package:swivt_challenge/feature/home/infrastructure/repository/home_repository.dart';
import 'package:swivt_challenge/feature/home/usecase/get_genre.dart';

import 'genre_data_test.mocks.dart';

@GenerateMocks([IHomeRepository])
void main() {
  late GetGenre usecase;

  late MockIHomeRepository mockGenreRepository;
  setUp(() {
    mockGenreRepository = MockIHomeRepository();
    usecase = GetGenre(homeRepository: mockGenreRepository);
  });

  final mockJson = {
    'genres': [
      {
        'id': 1,
        'name': 'Actions',
      },
      {
        'id': 2,
        'name': 'Comedy',
      }
    ]
  };

  test(
    'Get list of genres',
    () async {
      final data = GenreResponse.fromJson(mockJson);

      when(mockGenreRepository.getGenre()).thenAnswer((_) async => Left(data));
      //act
      final result = await usecase.getGenre();

      //assert
      expect(result, Left(data));
      verify(mockGenreRepository.getGenre());
      verifyNoMoreInteractions(mockGenreRepository);
    },
  );
}
