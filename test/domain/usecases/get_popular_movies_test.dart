import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/movies/domain/entitites/movie.dart';
import 'package:movie_app/movies/domain/usecases/get_popular_movies.dart';

import 'get_trending_movies_test.mocks.dart';

void main() {
  late GetPopularMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetPopularMovies(mockMovieRepository);
  });

  final tmovieList = [
    Movie(
        id: 1,
        title: 'title 1',
        overview: 'overview 1',
        posterPath: 'posterPath 1'),
    Movie(
        id: 2,
        title: 'title 2',
        overview: 'overview 2',
        posterPath: 'posterPath 2'),
    Movie(
        id: 3,
        title: 'title 3',
        overview: 'overview 3',
        posterPath: 'posterPath 3'),
  ];

  test('should get popular movies from the respository', () async {
    // arrange
    when(mockMovieRepository.getPopularMovies())
        .thenAnswer((_) async => tmovieList);

    //act
    final result = await usecase();

    //assert
    expect(result, tmovieList);
    verify(mockMovieRepository.getPopularMovies());
    verifyNoMoreInteractions(mockMovieRepository);
  });
}
