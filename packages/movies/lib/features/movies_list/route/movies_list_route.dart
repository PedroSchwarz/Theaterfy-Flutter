import 'package:core_shared/core_shared.dart';
import 'package:movies/features/movies_list/movies_list_provider.dart';

class MoviesListRoute extends FeatureRoutes {
  MoviesListRoute(super.moduleName);

  late AppRoute base = AppRoute(moduleName: moduleName, path: '/');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          base.path,
          child: (context, args) => const MoviesListProvider(),
        ),
      ];
}
