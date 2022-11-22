import 'package:dartz/dartz.dart';
import 'package:movie/movie/domain/entities/movie.dart';
import 'package:movie/movie/domain/repository/base_movie_repo.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase {
  final BaseMovieRepo baseMovieRepo;

  GetPopularMoviesUseCase(this.baseMovieRepo);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMovieRepo.getPopularMovies();
  }
}
