import 'package:componentes_flutter_curso_udemy/models/models.dart';
import 'package:componentes_flutter_curso_udemy/views/cards_view.dart';
import 'package:flutter/material.dart';
import '../views/views.dart';

class AppRoute {
  static const initialroute = 'home';

  static  final menuOptions = <MenuOptions> [
    MenuOptions(nombre: "home", icon: Icons.home, name: "Home Screen", screen: const HomeScreen()),
    MenuOptions(nombre: "listview", icon: Icons.list_alt, name: "listView 1", screen: ListviewSceeen()),
    MenuOptions(nombre: "listview2", icon: Icons.list_alt_sharp, name: "listView 2", screen: Listview2Sceeen()),
    MenuOptions(nombre: "alert", icon: Icons.warning, name: "Alert View", screen: const AlertScreen()),
    MenuOptions(nombre: "credit", icon: Icons.credit_card, name: "Card View", screen: const CardsView())
  ];

  static  Map<String, Widget Function(BuildContext)> getAppRoutes() {

   Map<String, Widget Function(BuildContext)>  appRoute = {};

    for (var item in menuOptions ){
      appRoute.addAll({
        item.nombre: (BuildContext context) => item.screen });
    }
    return appRoute;
  }

  // static Map<String, Widget Function(BuildContext)>  routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview': (BuildContext context) =>  ListviewSceeen(),
  //   'listview2': (BuildContext context) =>  Listview2Sceeen(),
  //   'alert': (BuildContext context) =>  const AlertScreen(),
  // };

  static Route<dynamic> onGenerateRoute (RouteSettings routeSettings){
    return  MaterialPageRoute(builder: (context) => const AlertScreen(),
    );
  }
}