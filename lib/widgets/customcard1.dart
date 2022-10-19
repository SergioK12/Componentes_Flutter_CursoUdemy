import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

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
            title: Text("Soy un titulo"),
            subtitle: Text("Este solo es un ejemplo del subtitulo XD"),
            leading: Icon(Icons.ac_unit_sharp, color: AppTheme.pimary,),
            
          ),
          Padding(
            padding:const  EdgeInsets.only(right: 9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text("Ok"),),
                TextButton(onPressed: (){}, child: const Text("Cancelar"),),
          
              ],
            ),
          )
        ],
      ),
    );
  }
}