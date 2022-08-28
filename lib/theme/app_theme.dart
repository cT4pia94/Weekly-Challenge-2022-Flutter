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

    // InputDecoration Theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: primary,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),

    // ElevatedButton Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 2,
      ),
    ),
  );
}
