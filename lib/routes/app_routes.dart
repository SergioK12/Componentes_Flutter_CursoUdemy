import 'package:flutter/material.dart';

import '../views/views.dart';

class AppRoute {
  static const initialroute = 'home';

  static Map<String, Widget Function(BuildContext)>  routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview': (BuildContext context) =>  ListviewSceeen(),
    'listview2': (BuildContext context) =>  Listview2Sceeen(),
    'alert': (BuildContext context) =>  const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute (RouteSettings routeSettings){
    return  MaterialPageRoute(builder: (context) => const AlertScreen(),
    );
  }
}