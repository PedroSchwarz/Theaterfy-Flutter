import 'package:theaterfy/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:theaterfy/core/usecases/usecase.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/domain/repositories/movies_repository.dart';

class GetMovies implements FutureUseCase<List<Movie>, GetMoviesParams> {
  final MoviesRepository repository;

  GetMovies(this.repository);

  @override
  Future<Either<Failure, List<Movie>>> call(GetMoviesParams params) async {
    return await repository.getMovies(params.page);
  }
}

class GetMoviesParams {
  final int page;

  GetMoviesParams({required this.page});
}
