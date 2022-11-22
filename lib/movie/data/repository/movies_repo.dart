import 'package:dartz/dartz.dart';
import 'package:movie/core/error/server_failure.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/movie/data/datasource/remote_datasource/base_remote_data_source.dart';
import 'package:movie/movie/domain/entities/movie.dart';
import 'package:movie/movie/domain/repository/base_movie_repo.dart';

import '../../../core/error/failure.dart';

class MoviesRepo extends BaseMovieRepo {

  final BaseRemoteDataSource baseRemoteDataSource;

  MoviesRepo(this.baseRemoteDataSource);


  //Either to return two return <Left: failure, right: success> "dartz"
  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies()async {
    final result = await baseRemoteDataSource.getNowPlayingMovies();

    try {
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async {
    final result = await baseRemoteDataSource.getPopularMovies();

    try {
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies()async {
    final result = await baseRemoteDataSource.getTopRatedMovies();

    try {
      return Right(result);
    }on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

}