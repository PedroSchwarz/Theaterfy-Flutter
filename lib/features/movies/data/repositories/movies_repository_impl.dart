import 'package:theaterfy/core/errors/exception.dart';
import 'package:theaterfy/features/movies/data/datasources/movies_remote_data_source.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:theaterfy/features/movies/domain/repositories/movies_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  final MoviesRemoteDataSource remote;

  MoviesRepositoryImpl({required this.remote});

  @override
  Future<Either<Failure, List<Movie>>> getMovies(int page) async {
    try {
      final res = await remote.getMovies(page);
      return Right(res);
    } on ServerException catch (_) {
      return Left(ServerFailure());
    }
  }
}
