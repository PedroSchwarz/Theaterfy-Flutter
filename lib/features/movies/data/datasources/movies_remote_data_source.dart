import 'package:theaterfy/core/errors/exception.dart';
import 'package:theaterfy/features/movies/data/models/get_movies_model.dart';
import 'package:theaterfy/features/movies/data/models/movie_model.dart';
import 'package:theaterfy/features/movies/data/services/movies_service.dart';

abstract class MoviesRemoteDataSource {
  Future<List<MovieModel>> getMovies(int page);
}

class MoviesRemoteDataSourceImpl implements MoviesRemoteDataSource {
  final MoviesService service;

  MoviesRemoteDataSourceImpl({required this.service});

  @override
  Future<List<MovieModel>> getMovies(int page) async {
    final res = await service.getNowPlaying(page);
    if (res.body == null) {
      throw ServerException();
    } else {
      final body = (res.body as GetMoviesModel);
      return body.results;
    }
  }
}
