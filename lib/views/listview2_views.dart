import 'package:flutter/material.dart';

class Listview2Sceeen extends StatelessWidget {
  final lista = ["Sergio", "Tatiana", "Rafaela", "Lucy", "Aldo", "Minimo"];
  Listview2Sceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Listview2"),
      ),
      body: ListView.separated(
        itemCount: lista.length,
        separatorBuilder: ( _ , __ ) => const Divider(),
        itemBuilder: (context, index) => ListTile(
            title: Text(lista[index]),
            trailing: const Icon(Icons.security_rounded, color: Colors.deepOrange,),
         )
        )
      
    );
  }
}
