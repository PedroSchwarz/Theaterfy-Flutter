import 'package:alaska/alaska.dart';

mixin AppLoaderConfigMixin {
  double getLoaderSize({
    required AppLoaderSize size,
    required AlaskaSizes sizes,
  }) {
    switch (size) {
      case AppLoaderSize.small:
        return sizes.spacing.x400;
      case AppLoaderSize.medium:
        return sizes.spacing.x700;
    }
  }

  double getLoaderStrokeWidth({
    required AppLoaderSize size,
    required AlaskaSizes sizes,
  }) {
    switch (size) {
      case AppLoaderSize.small:
        return sizes.border.x400;
      case AppLoaderSize.medium:
        return sizes.border.x500;
    }
  }
}

enum AppLoaderSize { small, medium }
