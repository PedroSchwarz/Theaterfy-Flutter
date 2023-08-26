import 'package:alaska/alaska.dart';
import 'package:flutter/material.dart';

class GridLoader extends StatelessWidget {
  final bool showLoader;

  const GridLoader({super.key, required this.showLoader});

  @override
  Widget build(BuildContext context) {
    final theme = context.alaska;

    return showLoader
        ? Padding(
            padding: EdgeInsets.symmetric(
              vertical: theme.sizes.spacing.x800,
            ),
            child: const AppLoader(),
          )
        : SizedBox(height: theme.sizes.spacing.x800);
  }
}
