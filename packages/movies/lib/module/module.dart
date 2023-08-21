import 'package:core_shared/core_shared.dart';
import 'package:movies/features/movies_list/route/movies_list_route.dart';

class MoviesModule extends Module {
  static const String moduleName = '/movies';

  static MoviesListRoute moviesList = MoviesListRoute(moduleName);

  @override
  List<ModularRoute> get routes => [
        ...moviesList.getRoutes(),
      ];
}
