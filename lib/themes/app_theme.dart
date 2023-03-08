import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightAppbar = Colors.green;
  static const Color darkAppBar = Colors.black;
  static const Color primary = Colors.indigo;

  //Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Primary color
      primaryColor: Colors.red,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: lightAppbar, elevation: 0),

      //Text Button Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));

  //Dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Appbar Theme
      appBarTheme: AppBarTheme(color: Colors.green[900], elevation: 0),

      //Scaffold color
      scaffoldBackgroundColor: Colors.black);
}
