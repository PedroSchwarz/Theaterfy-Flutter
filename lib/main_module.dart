import 'package:flutter_modular/flutter_modular.dart';
import 'package:movies/module/module.dart';

class MainModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(MoviesModule.moduleName, module: MoviesModule()),
      ];
}
