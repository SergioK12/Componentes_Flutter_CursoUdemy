import 'package:componentes_flutter_curso_udemy/routes/app_routes.dart';
import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Inicio"),
      ),
      body:  ListView.separated(
        
        itemCount: AppRoute.menuOptions.length,
        itemBuilder: (context, index) =>  ListTile(
           title: Text(AppRoute.menuOptions[index].name.toString()), 
           leading: Icon(AppRoute.menuOptions[index].icon, color: AppTheme.primaryColor,),
           trailing: const Icon(Icons.arrow_forward_ios_sharp, color: AppTheme.primaryColor,),
           onTap: (){
           Navigator.pushNamed(context, AppRoute.menuOptions[index].nombre) ;
           //Navigator.pushReplacement(context, route) ; ESTA SIRVE PARA NAVEGAR A LA SIGUIUENTE, ELIMINANDO DE LA PILA LA VISTA ANTERIOR
         }    
        ),
        separatorBuilder: (context, index) => const Divider(),
      )
      );
  }
}