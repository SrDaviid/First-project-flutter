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
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      //Text Button Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));

  //Dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Appbar Theme
      appBarTheme: const AppBarTheme(color: darkAppBar, elevation: 0),

      //Scaffold color
      scaffoldBackgroundColor: Colors.black);
}
