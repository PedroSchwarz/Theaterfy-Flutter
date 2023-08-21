import 'package:alaska/alaska.dart';
import 'package:alaska/src/widgets/loader/app_loader_config.dart';
import 'package:flutter/material.dart';

class AppLoader extends StatelessWidget with AppLoaderConfigMixin {
  final AppLoaderSize size;
  final bool centered;
  final bool leading;

  const AppLoader({
    super.key,
    this.size = AppLoaderSize.medium,
    this.centered = true,
    this.leading = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AlaskaTheme.of(context);
    final dimension = getLoaderSize(size: size, sizes: theme.sizes);
    final strokeWidth = getLoaderStrokeWidth(size: size, sizes: theme.sizes);

    if (centered == false) {
      return Row(
        mainAxisAlignment:
            leading ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [_Loader(size: dimension, width: strokeWidth)],
      );
    }

    return Center(
      child: _Loader(size: dimension, width: strokeWidth),
    );
  }
}

class _Loader extends StatelessWidget {
  final double size;
  final double width;

  const _Loader({required this.size, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(strokeWidth: width),
    );
  }
}
