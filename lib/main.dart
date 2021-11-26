import 'package:flutter/material.dart';
import 'package:theaterfy/app/routes/routes_service.dart';
import 'package:theaterfy/features/common/presentation/pages/tab_page.dart';
import 'di/injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routesService = di.sl<RoutesService>();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: routesService.key,
      home: const TabPage(),
      onGenerateRoute: routesService.router.generator,
    );
  }
}
