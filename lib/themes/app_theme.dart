import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

      // Primary color
      primaryColor: Colors.red,

      //Appbar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
