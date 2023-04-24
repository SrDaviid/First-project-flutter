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
          style: TextButton.styleFrom(foregroundColor: primary)),

      //Floating Action Button Theme
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //Elevated Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              shape: const StadiumBorder(),
              elevation: 0)),

      //Input Decoration Theme
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));

  //Dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Appbar Theme
      appBarTheme: AppBarTheme(color: Colors.green[900], elevation: 0),

      //Scaffold color
      scaffoldBackgroundColor: Colors.black);
}
