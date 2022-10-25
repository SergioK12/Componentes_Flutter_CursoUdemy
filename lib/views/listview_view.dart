import 'package:componentes_flutter_curso_udemy/themes/apptheme.dart';
import 'package:flutter/material.dart';

class ListviewSceeen extends StatelessWidget {
  final lista = ["Sergio", "Tatiana", "Rafaela", "Lucy", "Aldo", "Minimo"];
  ListviewSceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Listview"),
      ),
      body: ListView(children:  [
      ...lista.map(
        (nombres) => ListTile(
          title: Text(nombres),
          trailing: const Icon(Icons.arrow_forward_ios_outlined, color: AppTheme.primaryColor,),
        )).toList()
      ],)
      
    );
  }
}
