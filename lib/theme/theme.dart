// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flex_color_scheme/flex_color_scheme.dart';

// To update the theme, use companion web app:
// https://rydmike.com/flexcolorscheme/themesplayground-latest
class AppTheme {
  static ThemeData light() => FlexThemeData.light(
        scheme: FlexScheme.flutterDash,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 9,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      );
  static ThemeData dark() => FlexThemeData.dark(
        scheme: FlexScheme.flutterDash,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 15,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
      );

  static text() => const TextTheme(
      // You can custom text styles here
      );
}
