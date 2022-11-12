import 'package:flutter/material.dart';

class CustomImputWidget extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final String? labelText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keytipe;
  final bool isPassword;
  final String formPropeties;
  final Map<String, String> formValues;

  const CustomImputWidget({
    Key? key,
    this.hintText,
    this.helperText,
    this.labelText,
    this.icon,
    this.suffixIcon,
    this.isPassword = false,
    this.keytipe,
    required this.formPropeties,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType: keytipe,
      obscureText: isPassword,
      //autofocus: true,
      //initialValue: "Sergio Duarte",
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        debugPrint(value);
      },
      validator: (value) {
        if (value == null) return "Este campo es requerido";
        return value.length < 3 ? "Minimo 3 letras" : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,

      decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          suffixIcon: suffixIcon == null ? null : const Icon(Icons.group),
          icon: icon == null ? null : Icon(icon)),
    );
  }
}
