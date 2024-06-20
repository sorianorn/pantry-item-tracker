import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff4a672d),
      surfaceTint: Color(0xff4a672d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcbeea5),
      onPrimaryContainer: Color(0xff0e2000),
      secondary: Color(0xff57624a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdbe7c8),
      onSecondaryContainer: Color(0xff151e0b),
      tertiary: Color(0xff386664),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbbece8),
      onTertiaryContainer: Color(0xff00201f),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1d16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1d16),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff44483e),
      outline: Color(0xff74796c),
      outlineVariant: Color(0xffc4c8ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xfff0f2e7),
      inversePrimary: Color(0xffafd18c),
      primaryFixed: Color(0xffcbeea5),
      onPrimaryFixed: Color(0xff0e2000),
      primaryFixedDim: Color(0xffafd18c),
      onPrimaryFixedVariant: Color(0xff334e17),
      secondaryFixed: Color(0xffdbe7c8),
      onSecondaryFixed: Color(0xff151e0b),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff404a34),
      tertiaryFixed: Color(0xffbbece8),
      onTertiaryFixed: Color(0xff00201f),
      tertiaryFixedDim: Color(0xffa0cfcc),
      onTertiaryFixedVariant: Color(0xff1e4e4c),
      surfaceDim: Color(0xffd9dbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5e9),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d9),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff2f4a14),
      surfaceTint: Color(0xff4a672d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5f7d41),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3c4630),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d785f),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1a4a48),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4f7c7a),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1d16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff1a1d16),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff40443a),
      outline: Color(0xff5c6155),
      outlineVariant: Color(0xff787c70),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xfff0f2e7),
      inversePrimary: Color(0xffafd18c),
      primaryFixed: Color(0xff5f7d41),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff47642b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d785f),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff556048),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4f7c7a),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff366361),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5e9),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff122700),
      surfaceTint: Color(0xff4a672d),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2f4a14),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff1b2512),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3c4630),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff002726),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1a4a48),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfff9faef),
      onBackground: Color(0xff1a1d16),
      surface: Color(0xfff9faef),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xffe1e4d5),
      onSurfaceVariant: Color(0xff21251c),
      outline: Color(0xff40443a),
      outlineVariant: Color(0xff40443a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f312a),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffd4f7ae),
      primaryFixed: Color(0xff2f4a14),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff1a3300),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3c4630),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff26301b),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1a4a48),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003331),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd9dbd0),
      surfaceBright: Color(0xfff9faef),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff3f5e9),
      surfaceContainer: Color(0xffedefe4),
      surfaceContainerHigh: Color(0xffe8e9de),
      surfaceContainerHighest: Color(0xffe2e3d9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffafd18c),
      surfaceTint: Color(0xffafd18c),
      onPrimary: Color(0xff1d3702),
      primaryContainer: Color(0xff334e17),
      onPrimaryContainer: Color(0xffcbeea5),
      secondary: Color(0xffbfcbad),
      onSecondary: Color(0xff29331f),
      secondaryContainer: Color(0xff404a34),
      onSecondaryContainer: Color(0xffdbe7c8),
      tertiary: Color(0xffa0cfcc),
      onTertiary: Color(0xff003735),
      tertiaryContainer: Color(0xff1e4e4c),
      onTertiaryContainer: Color(0xffbbece8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d9),
      surface: Color(0xff12140e),
      onSurface: Color(0xffe2e3d9),
      surfaceVariant: Color(0xff44483e),
      onSurfaceVariant: Color(0xffc4c8ba),
      outline: Color(0xff8e9285),
      outlineVariant: Color(0xff44483e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d9),
      inverseOnSurface: Color(0xff2f312a),
      inversePrimary: Color(0xff4a672d),
      primaryFixed: Color(0xffcbeea5),
      onPrimaryFixed: Color(0xff0e2000),
      primaryFixedDim: Color(0xffafd18c),
      onPrimaryFixedVariant: Color(0xff334e17),
      secondaryFixed: Color(0xffdbe7c8),
      onSecondaryFixed: Color(0xff151e0b),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff404a34),
      tertiaryFixed: Color(0xffbbece8),
      onTertiaryFixed: Color(0xff00201f),
      tertiaryFixedDim: Color(0xffa0cfcc),
      onTertiaryFixedVariant: Color(0xff1e4e4c),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1d16),
      surfaceContainer: Color(0xff1e211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb4d58f),
      surfaceTint: Color(0xffafd18c),
      onPrimary: Color(0xff0a1a00),
      primaryContainer: Color(0xff7b9a5a),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc3cfb1),
      onSecondary: Color(0xff101907),
      secondaryContainer: Color(0xff89957a),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa4d4d1),
      onTertiary: Color(0xff001a19),
      tertiaryContainer: Color(0xff6b9996),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d9),
      surface: Color(0xff12140e),
      onSurface: Color(0xfffafcf0),
      surfaceVariant: Color(0xff44483e),
      onSurfaceVariant: Color(0xffc9ccbe),
      outline: Color(0xffa0a497),
      outlineVariant: Color(0xff818578),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d9),
      inverseOnSurface: Color(0xff282b24),
      inversePrimary: Color(0xff344f18),
      primaryFixed: Color(0xffcbeea5),
      onPrimaryFixed: Color(0xff071400),
      primaryFixedDim: Color(0xffafd18c),
      onPrimaryFixedVariant: Color(0xff233d07),
      secondaryFixed: Color(0xffdbe7c8),
      onSecondaryFixed: Color(0xff0b1404),
      secondaryFixedDim: Color(0xffbfcbad),
      onSecondaryFixedVariant: Color(0xff2f3924),
      tertiaryFixed: Color(0xffbbece8),
      onTertiaryFixed: Color(0xff001414),
      tertiaryFixedDim: Color(0xffa0cfcc),
      onTertiaryFixedVariant: Color(0xff083d3b),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1d16),
      surfaceContainer: Color(0xff1e211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff4ffe1),
      surfaceTint: Color(0xffafd18c),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffb4d58f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff4ffe1),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc3cfb1),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeafffd),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa4d4d1),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff12140e),
      onBackground: Color(0xffe2e3d9),
      surface: Color(0xff12140e),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff44483e),
      onSurfaceVariant: Color(0xfff9fced),
      outline: Color(0xffc9ccbe),
      outlineVariant: Color(0xffc9ccbe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe2e3d9),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff183000),
      primaryFixed: Color(0xffcff2a9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffb4d58f),
      onPrimaryFixedVariant: Color(0xff0a1a00),
      secondaryFixed: Color(0xffdfebcd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc3cfb1),
      onSecondaryFixedVariant: Color(0xff101907),
      tertiaryFixed: Color(0xffc0f0ed),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa4d4d1),
      onTertiaryFixedVariant: Color(0xff001a19),
      surfaceDim: Color(0xff12140e),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f09),
      surfaceContainerLow: Color(0xff1a1d16),
      surfaceContainer: Color(0xff1e211a),
      surfaceContainerHigh: Color(0xff282b24),
      surfaceContainerHighest: Color(0xff33362e),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
        pageTransitionsTheme: pageTransitionsTheme,
      );

  List<ExtendedColor> get extendedColors => [];

  static const pageTransitionsTheme = PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      //TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
      //TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
      //TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
    },
  );
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
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
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
