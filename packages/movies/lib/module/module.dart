import 'package:core_shared/core_shared.dart';
import 'package:movies/features/movies_list/movies_list_provider.dart';
import 'package:movies/features/search/search_provider.dart';

class MoviesModule extends FeatureRoutes {
  static const String moduleName = '/movies';

  static AppRoute base = AppRoute(
    moduleName: moduleName,
    path: '/',
    builder: (_) => const MoviesListProvider(),
  );

  static AppRoute search = AppRoute(
    moduleName: moduleName,
    path: '/search',
    builder: (args) => const SearchProvider(),
  );

  @override
  List<AppRoute> getRoutes() => [base, search];
}
