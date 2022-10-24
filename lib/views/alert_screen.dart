import 'package:flutter/material.dart';
class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
           child: const Text("Mostrar alerta"),
           onPressed:() => displayDialog(context)
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