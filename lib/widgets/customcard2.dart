import 'package:componentes_flutter_curso_udemy/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  const CustomCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20) ),
      elevation: 30,
      shadowColor: AppTheme.pimary.withOpacity(0.70),
      child: Column(

        children:    [
           const FadeInImage(
            placeholder: AssetImage("assets/loading.gif"),
            image:  NetworkImage("https://i.pinimg.com/originals/0a/25/0c/0a250c8816e7118e07e869ae51c54cc0.jpg"),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 400),
            ),
            Container(
              padding:const  EdgeInsets.only(
                right: 20, bottom: 10, top: 10
              ),
              child: const Text("Akatzuki logo"))
        ],
      ),
    );
  }
}