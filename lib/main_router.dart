import 'package:core_shared/core_shared.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movies/module/module.dart';

class MainRouter {
  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    final routes = [...MoviesModule().getRoutes()];
    final currentRoute = routes.firstWhere(
      (route) => route.fullPath.contains(settings.name ?? ''),
      orElse: () {
        if (kDebugMode) {
          print('${settings.name} not found');
        }
        return RouteExpection.notFound;
      },
    );
    return PageTransition(
      builder: (_) => currentRoute.builder(settings.arguments),
      type: currentRoute.type,
      duration: const Duration(milliseconds: 300),
    );
  }
}
