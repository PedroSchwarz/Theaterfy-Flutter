import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theaterfy/features/common/presentation/pages/tab_page.dart';
import 'package:theaterfy/features/movies/domain/entities/movie.dart';
import 'package:theaterfy/features/movies/presentation/pages/movies_page.dart';
import 'package:theaterfy/features/movies/presentation/pages/movie_details_page.dart';

class RoutesService {
  final router = FluroRouter();
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  defineRoutes() {
    _defineRoute(
      TabPage.routeName,
      handler: _handleRoutes((_) => const TabPage()),
    );

    _defineRoute(
      MoviesPage.routeName,
      handler: _handleRoutes((_) => const MoviesPage()),
    );

    _defineRoute(
      MovieDetailsPage.routeName,
      handler: _handleRoutes((args) => MovieDetailsPage(movie: args as Movie)),
    );
  }
}

extension Helpers on RoutesService {
  _defineRoute(
    String routeName, {
    required Handler handler,
    TransitionType transitionType = TransitionType.fadeIn,
  }) {
    router.define(
      routeName,
      transitionType: transitionType,
      handler: handler,
    );
  }

  _handleRoutes(Widget Function(Object? arguments) callback) {
    return Handler(
      handlerFunc: (context, params) {
        return callback(context!.settings!.arguments);
      },
    );
  }
}

extension Navigation on RoutesService {
  Future<dynamic> to(String routeName, dynamic arguments) {
    return key.currentState!.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> offAll(String routeName, dynamic arguments) {
    return key.currentState!.pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  back(String routeName) {
    return key.currentState!.pop();
  }
}
