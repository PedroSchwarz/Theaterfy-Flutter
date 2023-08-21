import 'package:core_shared/network/dio_client_builder.dart';
import 'package:core_shared/network/network_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl_standalone.dart';

class CoreInjection {
  static GetIt locator = GetIt.instance;

  static Future<void> initCoreDependencies(
    VoidCallback unauthorizedCallback, {
    required String baseUrl,
  }) async {
    await initializeDateFormatting();
    await findSystemLocale();

    // Network
    final dio = DioClientBuilder(baseUrl).build();

    locator.registerLazySingleton<Dio>(() => dio);

    locator.registerLazySingleton<NetworkClient>(
      () => NetworkClient(
        locator.get<Dio>(),
        unauthorizedCallback,
      ),
    );
  }
}
