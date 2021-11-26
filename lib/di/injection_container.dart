import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:theaterfy/app/conversions/conversions_service.dart';
import 'package:theaterfy/core/client/client.dart';
import 'package:theaterfy/di/containers.dart';
import 'package:theaterfy/features/common/presentation/cubits/tab_cubit.dart';
import 'package:theaterfy/features/movies/data/services/movies_service.dart';

final sl = GetIt.instance;

init() async {
  await initializeDateFormatting('pt_BR');

  // Clients
  final chopper = await Client.buildClient();
  sl.registerLazySingleton<ChopperClient>(() => chopper);

  // Services
  sl.registerLazySingleton<MoviesService>(
    () => chopper.getService<MoviesService>(),
  );

  sl.registerLazySingleton<ConversionsService>(
    () => ConversionsService(),
  );

  // Controllers
  sl.registerFactory<TabCubit>(
    () => TabCubit(),
  );

  // App
  await initRoutes();

  // Features DI
  await initMovies();
}
