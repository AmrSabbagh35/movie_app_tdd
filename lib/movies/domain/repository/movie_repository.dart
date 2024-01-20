import 'package:movie_app/movies/domain/entitites/movie.dart';

abstract class MovieRepository {
  Future<List<Movie>> getTrending();
  Future<List<Movie>> searchMovies(String query);
  Future<List<Movie>> getPopularMovies();
}
