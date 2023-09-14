import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppRoute<T> {
  final String moduleName;
  final String path;
  final Widget Function(T?) builder;
  final PageTransitionType type;

  const AppRoute({
    required this.moduleName,
    required this.path,
    required this.builder,
    this.type = PageTransitionType.rightToLeft,
  });

  String get fullPath => '$moduleName$path';

  push({required BuildContext context, T? arguments}) {
    Navigator.of(context).pushNamed(
      '$moduleName$path',
      arguments: arguments,
    );
  }

  pushAndRemoveUntil({required BuildContext context, T? arguments}) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      '$moduleName$path',
      (_) => false,
      arguments: arguments,
    );
  }

  replaceWith({required BuildContext context, T? arguments}) {
    Navigator.of(context).pushReplacementNamed(
      '$moduleName$path',
      arguments: arguments,
    );
  }
}
