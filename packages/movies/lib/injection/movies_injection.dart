import 'package:core_shared/core_shared.dart';
import 'package:core_shared/network/network_client.dart';
import 'package:movies/features/movies_list/bloc/movies_bloc.dart';
import 'package:movies/features/movies_list/use_case/get_movies_list_use_case.dart';
import 'package:movies/features/search/bloc/search_bloc.dart';
import 'package:movies/features/search/use_case/search_movie_use_case.dart';

class MoviesInjection {
  static initializeModule() async {
    final locator = CoreInjection.locator;

    // Movies List
    locator.registerLazySingleton<GetMoviesListUseCase>(
      () => GetMoviesListUseCase(client: locator.get<NetworkClient>()),
    );

    locator.registerFactory<MoviesBloc>(
      () => MoviesBloc(getMoviesList: locator.get<GetMoviesListUseCase>()),
    );

    // Search Movies
    locator.registerLazySingleton<SearchMovieUseCase>(
      () => SearchMovieUseCase(client: locator.get<NetworkClient>()),
    );

    locator.registerFactory<SearchBloc>(
      () => SearchBloc(searchMovie: locator.get<SearchMovieUseCase>()),
    );
  }
}
