import 'package:theaterfy/di/injection_container.dart';
import 'package:theaterfy/features/movies/data/datasources/movies_remote_data_source.dart';
import 'package:theaterfy/features/movies/data/repositories/movies_repository_impl.dart';
import 'package:theaterfy/features/movies/domain/repositories/movies_repository.dart';
import 'package:theaterfy/features/movies/domain/usecases/get_movies.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movie_details_cubit.dart';
import 'package:theaterfy/features/movies/presentation/cubits/movies_cubit.dart';

initMovies() async {
  // Data Sources
  sl.registerLazySingleton<MoviesRemoteDataSource>(
    () => MoviesRemoteDataSourceImpl(service: sl()),
  );
  // Repository
  sl.registerLazySingleton<MoviesRepository>(
    () => MoviesRepositoryImpl(remote: sl()),
  );
  // Use Cases
  sl.registerLazySingleton<GetMovies>(
    () => GetMovies(sl()),
  );
  // Cubits
  sl.registerFactory(
    () => MoviesCubit(getMovies: sl()),
  );
  sl.registerFactory(
    () => MovieDetailsCubit(conversionsService: sl()),
  );
}
