import 'package:flutter/material.dart';

import 'views/listview2_views.dart';
//import 'views/listview_views.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Listview2Sceeen(),
    );
  }
}