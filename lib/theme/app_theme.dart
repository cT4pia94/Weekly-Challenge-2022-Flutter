import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blueGrey;

  // Default Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary Color
    primaryColor: primary,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 2,
    ),
  );
}
