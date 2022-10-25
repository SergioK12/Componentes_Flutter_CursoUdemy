import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
               child: const Text("Mostrar alerta material"),
               onPressed:() => displayDialog(context)
              ),
              ElevatedButton(
               child: const Text("Mostrar alerta cuppertino"),
               onPressed:() => displayDialogIOS(context)
              ),
              ElevatedButton(
               child: const Text("Depende de la plataforma"),
               onPressed:() => Platform.isAndroid
               ? displayDialog(context)
               : displayDialogIOS(context),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.dangerous,
          color: Colors.black,
         )
      ),
    );
  }
}

void displayDialog(BuildContext context) {

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context){
      return AlertDialog(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        title: const Text("Este es un dialogo"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
             FlutterLogo(
              size: 100,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
           child: const Text("Cerrar"))
        ],
      );
    } 
  );

}

void displayDialogIOS(BuildContext context) {

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context){
      return CupertinoAlertDialog(
        title: const Text("Este es un dialogo"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
             FlutterLogo(
              size: 100,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
           child: const Text("Cerrar"))
        ],
      );
    } 
  );

}