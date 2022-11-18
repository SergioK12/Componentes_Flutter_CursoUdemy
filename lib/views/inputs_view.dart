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
                    CustomImputWidget( labelText: "Nombre del usuario", formPropeties: 'nombre', formValues: formvalues,),
                   const SizedBox(height: 30,),
                    CustomImputWidget( labelText: "Apellido del usuario",formPropeties: 'apellido', formValues: formvalues,),
                   const SizedBox(height: 30,),
                    CustomImputWidget( labelText: "Correo del usuario", keytipe: TextInputType.emailAddress,formPropeties: 'correo', formValues: formvalues,),
                   const SizedBox(height: 30,),
                    CustomImputWidget( labelText: "Contraseña", isPassword: true,formPropeties: 'contra', formValues: formvalues,),
                   const SizedBox(height: 30,),
                   DropdownButtonFormField(
                    onChanged: (value) {
                      debugPrint(value);
                      formvalues['role'] = value ?? "Otro";
                    },
                    items: const [
                    DropdownMenuItem(value: "AQdmin", child: Text("Admin"),),
                    DropdownMenuItem(value: "User", child: Text("Usuario"),),
                    DropdownMenuItem(value: "Otro", child: Text("Otro"),)

                   ], ),
          
                   ElevatedButton(
                     child: const SizedBox(
                      width: double.infinity,
                      child: Text("OK", textAlign: TextAlign.center,)),
                     onPressed: (){
                      FocusScope.of(context).requestFocus( FocusNode());
                      if(!myFormKey.currentState!.validate()){
                        debugPrint("Formulario invalido");
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

