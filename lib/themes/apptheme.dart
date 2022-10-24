import 'package:flutter/material.dart';
class AppTheme {
  static const Color primaryColor = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    primaryColor: Colors.lightGreen,

    appBarTheme: const AppBarTheme(
      color: Colors.lightGreen,
      elevation: 0
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
       foregroundColor: primaryColor
      )
    )
  );
}