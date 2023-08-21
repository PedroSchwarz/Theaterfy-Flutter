import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:alaska/alaska/colors/alaska_colors.dart';
import 'package:alaska/alaska/sizes/alaska_sizes.dart';
import 'package:alaska/alaska/typography/alaska_typography.dart';

class AlaskaData {
  final AlaskaColors colors;
  final AlaskaSizes sizes;
  final AlaskaTypography typography;
  final ThemeData themeData;

  const AlaskaData._({
    required this.colors,
    required this.sizes,
    required this.typography,
    required this.themeData,
  });

  factory AlaskaData({required Brightness brightness}) {
    final colors = brightness == Brightness.light
        ? AlaskaColors.light()
        : AlaskaColors.dark();

    final typography = AlaskaTypography(colors.core.text.primary);
    final sizes = AlaskaSizes.instance;
    final themeData = _toMaterial(
      colors,
      typography,
      sizes,
    );

    return AlaskaData._(
      colors: colors,
      sizes: sizes,
      typography: typography,
      themeData: themeData,
    );
  }
}

ThemeData _toMaterial(
  AlaskaColors colors,
  AlaskaTypography typography,
  AlaskaSizes sizes,
) =>
    ThemeData(
      brightness: colors.brightness,
      colorScheme: ColorScheme(
        brightness: colors.brightness,
        primary: colors.core.context.primary,
        onPrimary: colors.core.element.negative,
        secondary: colors.core.base.secondary,
        onSecondary: colors.core.base.secondary,
        error: colors.core.element.onError,
        onError: colors.core.element.onError,
        background: colors.core.background.primary,
        onBackground: colors.core.element.primary,
        surface: colors.core.base.secondary,
        onSurface: colors.core.base.overSecondary,
      ),
      textTheme: TextTheme(
        displayLarge: typography.h2,
        displayMedium: typography.h3,
        displaySmall: typography.h3,
        headlineMedium: typography.h3,
        headlineSmall: typography.h3,
        titleLarge: typography.h3,
        titleMedium: typography.p3,
        titleSmall: typography.p4,
        bodyLarge: typography.p3,
        bodyMedium: typography.p4,
        labelLarge: typography.p4,
        bodySmall: typography.p4,
        labelMedium: typography.p3,
      ),
    ).componentsSetup(
      colors,
      typography,
      sizes,
    );

extension ThemeDataExtension on ThemeData {
  ThemeData componentsSetup(
    AlaskaColors colors,
    AlaskaTypography typography,
    AlaskaSizes sizes,
  ) =>
      copyWith(
        snackBarTheme: SnackBarThemeData(
          backgroundColor: colors.core.background.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sizes.radius.x400),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, sizes.spacing.x900),
            foregroundColor: colors.core.base.overSecondary,
            textStyle: typography.p3.bold,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(sizes.radius.x200),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: Size(double.infinity, sizes.spacing.x900),
            textStyle: typography.p3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(sizes.radius.x200),
            ),
          ),
        ),
        cardTheme: cardTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sizes.radius.x400),
          ),
        ),
        dialogTheme: dialogTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(sizes.radius.x400),
          ),
        ),
        bottomSheetTheme: bottomSheetTheme.copyWith(
          backgroundColor: colors.core.background.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(sizes.radius.x400),
            ),
          ),
        ),
        expansionTileTheme: ExpansionTileThemeData(
          iconColor: colors.core.element.primary,
        ),
        dividerTheme: dividerTheme.copyWith(
          color: colors.core.divider.primary,
          thickness: sizes.border.x400,
        ),
        appBarTheme: appBarTheme.copyWith(
          backgroundColor: colors.core.background.secondary,
          systemOverlayStyle: (appBarTheme.systemOverlayStyle ??
                  SystemUiOverlayStyle(
                    statusBarIconBrightness:
                        colors.brightness == Brightness.light
                            ? Brightness.dark
                            : Brightness.light,
                    statusBarBrightness: colors.brightness,
                  ))
              .copyWith(
            statusBarColor: colors.core.background.secondary,
          ),
          titleTextStyle: (textTheme.titleLarge ?? typography.h3).copyWith(
            color: colors.core.text.primary,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: colors.core.element.primary,
          backgroundColor: colors.core.context.primaryDarken,
        ),
        iconTheme: iconTheme.copyWith(
          color: colors.core.element.primary,
          size: sizes.spacing.x500,
        ),
        chipTheme: ChipThemeData(
          backgroundColor: colors.core.background.tertiary,
        ),
        inputDecorationTheme: inputDecorationTheme.copyWith(
          contentPadding: EdgeInsets.only(
            left: sizes.spacing.x350,
            right: sizes.spacing.x350,
            top: sizes.spacing.x450,
            bottom: sizes.spacing.x450,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(sizes.radius.x100),
            borderSide: BorderSide(color: colors.core.element.disabled),
          ),
        ),
        scaffoldBackgroundColor: colors.core.background.secondary,
      );
}
