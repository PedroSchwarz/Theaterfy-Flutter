import 'package:flutter/material.dart';
import 'package:alaska/alaska/alaska_data.dart';

class AlaskaTheme extends StatelessWidget {
  final AlaskaData data;
  final Widget child;

  const AlaskaTheme({
    super.key,
    required this.data,
    required this.child,
  });

  static AlaskaData of(BuildContext context) {
    _InheritedAlaskaTheme? inheritedTheme =
        context.dependOnInheritedWidgetOfExactType<_InheritedAlaskaTheme>();
    final brightness = MediaQuery.of(context).platformBrightness;
    return inheritedTheme?.theme.data ?? AlaskaData(brightness: brightness);
  }

  @override
  Widget build(BuildContext context) {
    return _InheritedAlaskaTheme(
      theme: this,
      child: Theme(
        data: data.themeData,
        child: child,
      ),
    );
  }
}

class _InheritedAlaskaTheme extends InheritedWidget {
  final AlaskaTheme theme;

  const _InheritedAlaskaTheme({
    required super.child,
    required this.theme,
  });

  @override
  // ignore: override_on_non_overriding_member
  Widget wrap(BuildContext context, Widget child) =>
      AlaskaTheme(data: theme.data, child: child);

  @override
  bool updateShouldNotify(_InheritedAlaskaTheme oldWidget) {
    return oldWidget.theme.data != theme.data;
  }
}
