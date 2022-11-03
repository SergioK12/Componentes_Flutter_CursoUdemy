import 'package:flutter/material.dart';

class InputsView extends StatelessWidget {
  const InputsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entradas"),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
          child: Column(
              children:  [
                TextFormField(
                  //autofocus: true,
                  initialValue: "Sergio Duarte",
                  textCapitalization: TextCapitalization.words,
                  onChanged: (value){
                    print(value);
                  },
                  validator: (value){
                    if(value == null){
                      return "Este campo es requerido";
                    }
                    return "XD";
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  
                  decoration:  const   InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                    hintText: "Ingresa tu nombre",
                    label:  Text("Nombre del usuario"),
                    helperText: "Nombre",
                    counterText: '3 caracteres',
                    suffixIcon:  Icon(Icons.grade),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20)

                      )
                    )
                  ),
                )

              ],
          ),
          ),
      )

    );
  }
}