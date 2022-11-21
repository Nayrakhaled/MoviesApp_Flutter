import 'package:movie/movie/domain/entities/movie.dart';

abstract class BaseMovieRepo{

  Future<List<Movie>> getNowPlaying();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getTopRatedMovies();
}
