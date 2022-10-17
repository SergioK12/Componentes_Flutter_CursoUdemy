import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart' show IconData, Widget;
class MenuOptions {
  final String nombre;
  final IconData icon ;
  final String name;
  final Widget screen;

  MenuOptions({
     required this.nombre,
     required this.icon,
     required this.name,
     required this.screen
    }
   );

}