import 'package:movie_app/movies/domain/entitites/movie.dart';
import 'package:movie_app/movies/domain/repository/movie_repository.dart';

class SearchMovies {
  final MovieRepository movieRepository;

  SearchMovies(this.movieRepository);

  Future<List<Movie>> call(String query) async {
    return await movieRepository.searchMovies(query);
  }
}
