import 'package:movie/movie/domain/entities/movie.dart';
import 'package:movie/movie/domain/repository/base_movie_repo.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepo baseMovieRepo;

  GetPopularMoviesUseCase(this.baseMovieRepo);

  Future<List<Movie>> execute() async {
    return await baseMovieRepo.getPopularMovies();
  }
}
