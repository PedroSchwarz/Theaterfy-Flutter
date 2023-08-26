import 'package:core_shared/core_shared.dart';
import 'package:movies/features/search/search_provider.dart';

class SearchRoute extends FeatureRoutes {
  SearchRoute(super.moduleName);

  late AppRoute base = AppRoute(moduleName: moduleName, path: '/search');

  @override
  List<ChildRoute> getRoutes() => [
        ChildRoute(
          base.path,
          child: (context, args) => const SearchProvider(),
        ),
      ];
}
