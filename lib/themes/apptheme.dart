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
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor
    ),

    //elevatedbuttom
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        elevation: 0,
      )
    ),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primaryColor,
        
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            //color: primaryColor
          ),
          borderRadius: BorderRadius.all(
             Radius.circular(20),
            )
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.green
          ),
          borderRadius: BorderRadius.all(
             Radius.circular(30),
            )
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
            //color: primaryColor
          ),
          borderRadius: BorderRadius.only(
             topLeft: Radius.circular(20),
             topRight: Radius.circular(20)
            )
      ),
    )
  );
}