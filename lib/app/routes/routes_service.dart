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
    router.define(
      TabPage.routeName,
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (_, params) => const TabPage(),
      ),
    );

    router.define(
      MoviesPage.routeName,
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (_, params) => const MoviesPage(),
      ),
    );

    router.define(
      MovieDetailsPage.routeName,
      transitionType: TransitionType.fadeIn,
      handler: Handler(
        handlerFunc: (context, params) {
          final movie = context!.settings!.arguments as Movie;
          return MovieDetailsPage(movie: movie);
        },
      ),
    );
  }

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
