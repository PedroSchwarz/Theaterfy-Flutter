import 'package:dartz/dartz.dart';
import 'package:theaterfy/core/errors/failure.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> getMovies(int page);
}
