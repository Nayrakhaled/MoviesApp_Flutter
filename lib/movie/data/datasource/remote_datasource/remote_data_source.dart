import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:movie/core/constances.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/core/network/error_message.dart';
import 'package:movie/movie/data/datasource/remote_datasource/base_remote_data_source.dart';
import 'package:movie/movie/data/models/movie_model.dart';

class RemoteDataSource extends BaseRemoteDataSource{

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(AppConstance.now_playing);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies()async {
    final response = await Dio().get(AppConstance.popular_movies);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies()async {
    final response = await Dio().get(AppConstance.top_rated);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List)
          .map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
