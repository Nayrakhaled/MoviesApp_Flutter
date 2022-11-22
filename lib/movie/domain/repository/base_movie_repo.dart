import 'package:dartz/dartz.dart';
import 'package:movie/movie/domain/entities/movie.dart';

import '../../../core/error/failure.dart';

abstract class BaseMovieRepo{


  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();
  Future<Either<Failure, List<Movie>>> getPopularMovies();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
