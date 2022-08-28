import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.counterText,
    this.icon,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.fromProperty,
    required this.formValues,
  }) : super(key: key);

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final String? counterText;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String fromProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: (value) => formValues[fromProperty] = value,
      validator: (value) {
        if (value == null) return 'Campo requerido';
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
