import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});


  @override
  Widget build(BuildContext context) {

    final GlobalKey <FormState> myFormKey = GlobalKey<FormState>();
  Map<String, String> formvalues = {
    'nombre' : 'Sergio',
    'apellido' : 'duarte',
    'correo' : 'Sergio@test.com',
    'contra': '1234',
    'role': 'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entradas"),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
          child: Form(
            key: myFormKey,
            child: Column(
                children:  [
                   const CustomImputWidget( labelText: "Nombre del usuario",),
                   const SizedBox(height: 30,),
                   const CustomImputWidget( labelText: "Apellido del usuario",),
                   const SizedBox(height: 30,),
                   const CustomImputWidget( labelText: "Correo del usuario", keytipe: TextInputType.emailAddress,),
                   const SizedBox(height: 30,),
                   const CustomImputWidget( labelText: "Contraseña", isPassword: true,),
                   const SizedBox(height: 30,),
          
                   ElevatedButton(
                     child: const SizedBox(
                      width: double.infinity,
                      child: Text("OK", textAlign: TextAlign.center,)),
                     onPressed: (){
                      if(!myFormKey.currentState!.validate()){
                        return;
                      }
                      debugPrint(formvalues.toString());
                     }   
                   ),
          
                ],
            ),
          ),
          ),
      )

    );
  }
}

