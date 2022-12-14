import 'package:componentes_flutter_curso_udemy/routes/app_routes.dart';
import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoute.initialroute,
      routes: AppRoute.getAppRoutes(),
      onGenerateRoute: AppRoute.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}