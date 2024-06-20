import 'package:flutter/material.dart';

class DarkThemeColorScheme {
  DarkThemeColorScheme._();

  static ColorScheme get colorScheme {
    Brightness brightness = Brightness.dark;
    Color primary = const Color(0xFF4585B5);
    Color onPrimary = const Color(0xFFFFFFFF);
    Color primaryContainer = const Color(0xFF095D9E);
    Color onPrimaryContainer = const Color(0xFFFFFFFF);
    Color secondary = const Color(0xFFE57C4A);
    Color onSecondary = const Color(0xFFFFFFFF);
    Color secondaryContainer = const Color(0xFFDD520F);
    Color onSecondaryContainer = const Color(0xFFFFFFFF);
    Color tertiary = const Color(0xFF9CD5F9);
    Color onTertiary = const Color(0xFF000000);
    Color tertiaryContainer = const Color(0xFF3A7292);
    Color onTertiaryContainer = const Color(0xFFFFFFFF);
    Color error = const Color(0xFFCF6679);
    Color onError = const Color(0xFF000000);
    Color errorContainer = const Color(0xFFB1384E);
    Color onErrorContainer = const Color(0xFFFFFFFF);
    Color outline = Color.fromARGB(255, 223, 221, 221);
    Color background = const Color(0xFF101111);
    Color onBackground = const Color(0xFFFFFFFF);
    Color surface = const Color(0xFF101111);
    Color onSurface = const Color(0xFFFFFFFF);
    Color surfaceVariant = const Color(0xFF323335);
    Color onSurfaceVariant = const Color(0xFFFFFFFF);
    Color inverseSurface = const Color(0xFFFAFBFC);
    Color onInverseSurface = const Color(0xFF000000);
    Color inversePrimary = const Color(0xFF2A4457);
    Color shadow = const Color(0xFF000000);
    Color surfaceTint = const Color(0xFF4585B5);
    Color outlineVariant = const Color(0xFF404040);
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
  }
}
