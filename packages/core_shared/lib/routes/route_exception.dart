import 'package:alaska/alaska.dart';
import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';

class RouteExceptionWidget extends StatelessWidget {
  const RouteExceptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(),
      child: const Center(
        child: Text('404 Route Not Found.'),
      ),
    );
  }
}

class RouteExpection {
  static AppRoute notFound = AppRoute(
    moduleName: '/errors',
    path: '/route-not-found',
    builder: (_) => const RouteExceptionWidget(),
    type: PageTransitionType.downToUp,
  );
}
