import 'dart:ui';

import 'package:flutter/material.dart';

class AppTypography {
  static TextTheme get textTheme {
    return const TextTheme(
      bodyLarge: TextStyle(fontFamily: "NotoSerifKhmer"),
      bodyMedium:
          TextStyle(fontFamily: "NotoSerifKhmer", fontWeight: FontWeight.w400),
      bodySmall: TextStyle(fontFamily: "NotoSerifKhmer"),
      displayLarge: TextStyle(fontFamily: "NotoSerifKhmer"),
      displayMedium: TextStyle(fontFamily: "NotoSerifKhmer"),
      displaySmall: TextStyle(fontFamily: "NotoSerifKhmer"),
      headlineLarge: TextStyle(fontFamily: "NotoSerifKhmer"),
      headlineMedium: TextStyle(fontFamily: 'NotoSerifKhmer'),
      headlineSmall: TextStyle(fontFamily: "NotoSerifKhmer"),
      labelLarge: TextStyle(fontFamily: "NotoSerifKhmer"),
      labelMedium: TextStyle(fontFamily: "NotoSerifKhmer"),
      labelSmall: TextStyle(fontFamily: "NotoSerifKhmer"),
      titleLarge: TextStyle(fontFamily: "NotoSerifKhmer"),
      titleMedium: TextStyle(fontFamily: "NotoSerifKhmer"),
      titleSmall: TextStyle(fontFamily: "NotoSerifKhmer"),
    );
  }
}
