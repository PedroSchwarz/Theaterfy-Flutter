import 'package:alaska/alaska.dart';
import 'package:core_shared/core_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:theaterfy/main_module.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/movies/search');

    return ModularApp(
      module: MainModule(),
      child: MaterialApp.router(
        title: 'Theatherfy',
        debugShowCheckedModeBanner: false,
        theme: AlaskaData(brightness: Brightness.light).themeData,
        darkTheme: AlaskaData(brightness: Brightness.dark).themeData,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('pt'),
        ],
      ),
    );
  }
}
