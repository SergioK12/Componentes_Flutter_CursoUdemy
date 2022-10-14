import 'package:componentes_flutter_curso_udemy/views/views.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Screen"),
        elevation: 0,
        backgroundColor: Colors.red,
        ),
      body:  ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) =>  ListTile(
           title: const Text("Rutas"),
           leading: const Icon(Icons.security),
           onTap: (){
           final route = MaterialPageRoute(builder: (context) => ListviewSceeen(),);
           Navigator.push(context, route) ;
           //Navigator.pushReplacement(context, route) ; ESTA SIRVE PARA NAVEGAR A LA SIGUIUENTE, ELIMINANDO DE LA PILA LA VISTA ANTERIOR
         }    
        ),
        separatorBuilder: (context, index) => const Divider(),
      )
      );
  }
}