import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const Color pimary = Colors.deepPurpleAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.pink,

    appBarTheme: const AppBarTheme(
      color: pimary,
      elevation: 0,
    )
  );
  
}