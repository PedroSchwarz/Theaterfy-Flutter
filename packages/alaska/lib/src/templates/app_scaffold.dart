import 'package:flutter/material.dart';
import 'package:alaska/alaska/alaska_theme.dart';

class AppScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? bottomBar;
  final Widget? actionButton;

  const AppScaffold({
    super.key,
    this.appBar,
    required this.child,
    this.bottomBar,
    this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AlaskaTheme.of(context);

    return AlaskaTheme(
      data: theme,
      child: Scaffold(
        appBar: appBar,
        backgroundColor: theme.colors.core.background.secondary,
        body: SafeArea(
          bottom: false,
          child: child,
        ),
        bottomNavigationBar: bottomBar,
        floatingActionButton: actionButton,
      ),
    );
  }
}
