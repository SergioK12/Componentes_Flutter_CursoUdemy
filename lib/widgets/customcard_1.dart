import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children:  [
          const ListTile(
            leading: Icon(Icons.headphones_battery_outlined),
            title: Text("Soy un titulo"),
            subtitle: Text("Este es un texto de prueba"),
          ),
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text("Ok")),
                TextButton(onPressed: (){}, child: const Text("Cancelar"))
              ],
            ),
          )
        ],
      ),
    );
  }
}