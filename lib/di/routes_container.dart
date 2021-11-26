import 'package:theaterfy/app/routes/routes_service.dart';
import 'package:theaterfy/di/injection_container.dart';

initRoutes() async {
  final router = RoutesService();
  router.defineRoutes();
  sl.registerLazySingleton<RoutesService>(() => router);
}
