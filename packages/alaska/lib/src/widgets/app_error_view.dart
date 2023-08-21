import 'package:alaska/alaska/alaska_theme.dart';
import 'package:flutter/material.dart';

class AppErrorView extends StatelessWidget {
  final String message;
  final IconData icon;
  final Function() onIconPressed;

  const AppErrorView({
    super.key,
    required this.message,
    required this.icon,
    required this.onIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AlaskaTheme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message,
          style: theme.typography.p3,
        ),
        SizedBox(height: theme.sizes.spacing.x400),
        IconButton(
          onPressed: onIconPressed,
          iconSize: theme.sizes.spacing.x700,
          icon: Icon(icon),
          color: theme.colors.core.context.primary,
        ),
      ],
    );
  }
}
