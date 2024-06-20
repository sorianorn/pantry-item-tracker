import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:no_to_food_waste_app/application/core/theme/app_typography.dart';
import 'package:no_to_food_waste_app/application/core/theme/theme_dark.dart';
import 'package:no_to_food_waste_app/application/core/theme/theme_light.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = const Color(0xfff2f2f2);
  static Color lightAccentColor = Colors.blueGrey.shade200;
  static Color lightParticlesColor = const Color(0x44948282);

  static Color darkBackgroundColor = const Color(0xFF1A2127);
  static Color darkPrimaryColor = const Color(0xFF1A2127);
  static Color darkAccentColor = Colors.blueGrey.shade600;
  static Color darkParticlesColor = const Color(0x441C2A3D);

  const AppTheme._();

  static final lightTheme = ThemeData(
    pageTransitionsTheme: pageTransitionsTheme,
    colorScheme: LightThemeColorScheme.colorScheme,
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: AppTypography.textTheme,
    switchTheme: switchTheme,
  );

  static final darkTheme = ThemeData(
    pageTransitionsTheme: pageTransitionsTheme,
    colorScheme: DarkThemeColorScheme.colorScheme,
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: AppTypography.textTheme,
    switchTheme: switchTheme,
  );

  static Brightness get currentSystemBrightness =>
      PlatformDispatcher.instance.platformBrightness;

  static setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness:
          themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light
          ? lightBackgroundColor
          : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }
}

const pageTransitionsTheme = PageTransitionsTheme(
  builders: <TargetPlatform, PageTransitionsBuilder>{
    TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    //TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
    //TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
    //TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
  },
);

final switchTheme = SwitchThemeData(
  trackOutlineColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.white; // border color when switch is on
    } else {
      return Colors.grey; // border color when switch is off
    }
  }),
  thumbColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.white; // Thumb color when switch is on
    } else {
      return Colors.grey; // Thumb color when switch is off
    }
  }),
  trackColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.white; // Track color when switch is on
    } else {
      return Colors.white10; // Track color when switch is off
    }
  }),
  // Ensure elevation and shadow properties align with MD3

  overlayColor: MaterialStateColor.resolveWith((states) {
    if (states.contains(MaterialState.hovered)) {
      return Colors.red
          .withOpacity(0.1); // Overlay color when switch is hovered
    } else {
      return Colors.white10; // No overlay color
    }
  }),
);

extension ThemeExtras on ThemeData {
  Color get particlesColor => brightness == Brightness.light
      ? AppTheme.lightParticlesColor
      : AppTheme.darkParticlesColor;
}
