import 'package:flutter/material.dart';

class LightThemeColorScheme {
  LightThemeColorScheme._();

  static ColorScheme get colorScheme {
    Brightness brightness = Brightness.light;
    Color primary = const Color.fromARGB(255, 246, 32, 32);
    Color onPrimary = const Color(0xFFFFFFFF);
    Color primaryContainer = const Color(0xFFA6CCED);
    Color onPrimaryContainer = const Color(0xFF000000);
    Color secondary = const Color(0xFFDD520F);
    Color onSecondary = const Color(0xFFFFFFFF);
    Color secondaryContainer = const Color(0xFFFFDBCD);
    Color onSecondaryContainer = const Color(0xFF000000);
    Color tertiary = const Color(0xFF7CC8F8);
    Color onTertiary = const Color(0xFF000000);
    Color tertiaryContainer = const Color(0xFFC5E7FF);
    Color onTertiaryContainer = const Color(0xFF000000);
    Color error = const Color(0xFFB00020);
    Color onError = const Color(0xFFFFFFFF);
    Color errorContainer = const Color(0xFFFCD8DF);
    Color onErrorContainer = const Color(0xFF000000);
    Color outline = Color.fromARGB(255, 91, 90, 90);
    Color background = const Color(0xFFFCFCFC);
    Color onBackground = const Color(0xFF000000);
    Color surface = const Color(0xFFFCFCFC);
    Color onSurface = const Color(0xFF000000);
    Color surfaceVariant = const Color(0xFFECECED);
    Color onSurfaceVariant = const Color(0xFF000000);
    Color inverseSurface = const Color(0xFF0F1010);
    Color onInverseSurface = const Color(0xFFFFFFFF);
    Color inversePrimary = const Color(0xFFA2D8FF);
    Color shadow = const Color(0xFF000000);
    Color surfaceTint = const Color(0xFF095D9E);
    Color outlineVariant = const Color(0xFFBFBFBF);
    Color scrim = const Color(0xFF000000);

    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      outline: outline,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      inverseSurface: inverseSurface,
      onInverseSurface: onInverseSurface,
      inversePrimary: inversePrimary,
      shadow: shadow,
      surfaceTint: surfaceTint,
      outlineVariant: outlineVariant,
      scrim: scrim,
    );
    /*
    return ColorScheme.fromSwatch(
      primarySwatch: Colors.red,

      accentColor: Colors.blueAccent,
      backgroundColor: Colors.white,
      cardColor: Colors.grey,
      errorColor: Colors.red,
      brightness: Brightness.light,
    );
    */
  }
}
