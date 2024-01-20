import 'package:movie_app/movies/domain/entitites/movie.dart';
import 'package:movie_app/movies/domain/repository/movie_repository.dart';

class GetTrendingMovies {
  final MovieRepository movieRepository;

  GetTrendingMovies(this.movieRepository);

  Future<List<Movie>> call() async {
    return await movieRepository.getTrending();
  }
}
