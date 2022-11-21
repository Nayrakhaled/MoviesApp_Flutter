import 'package:movie/movie/domain/entities/movie.dart';
import 'package:movie/movie/domain/repository/base_movie_repo.dart';

class GetNowPlayingMoviesUseCase{

  final BaseMovieRepo baseMovieRepo;

  GetNowPlayingMoviesUseCase(this.baseMovieRepo);

  Future<List<Movie>> execute()async {
    return await baseMovieRepo.getNowPlaying();
  }
}