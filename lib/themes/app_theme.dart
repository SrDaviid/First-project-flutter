import 'package:flutter/material.dart';

class AppTheme {
  static const Color lightAppbar = Colors.green;
  static const Color darkAppBar = Colors.indigo;

  //Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: Colors.red,

    //Appbar Theme
    appBarTheme: const AppBarTheme(color: lightAppbar, elevation: 0),
  );

  //Dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Appbar Theme
      appBarTheme: const AppBarTheme(color: darkAppBar, elevation: 0),

      //Scaffold color
      scaffoldBackgroundColor: Colors.black);
}
