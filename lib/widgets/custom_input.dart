import 'package:flutter/material.dart';
class CustomImputWidget extends StatelessWidget {

  final String? hintText;
  final String? helperText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomImputWidget({
    Key? key,
    this.hintText,
    this.helperText,
    this.labelText,
    this.icon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //autofocus: true,
      //initialValue: "Sergio Duarte",
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        debugPrint(value);
      },
      validator: (value){
        if(value == null){
          return "Este campo es requerido";
        }
        return "XD";
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      decoration:  InputDecoration(
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
      ),
    );
  }
}