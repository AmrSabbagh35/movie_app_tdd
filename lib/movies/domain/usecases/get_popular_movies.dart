import 'package:movie_app/movies/domain/entitites/movie.dart';
import 'package:movie_app/movies/domain/repository/movie_repository.dart';

class GetPopularMovies {
  final MovieRepository movieRepository;

  GetPopularMovies(this.movieRepository);

  Future<List<Movie>> call() async {
    return await movieRepository.getPopularMovies();
  }
}
