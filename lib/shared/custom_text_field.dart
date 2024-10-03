import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final TextInputAction textInputAction;
  final bool isPassword;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator; // Adicionado para validação
  


  const CustomTextField({
    super.key,
    required this.label,
    required this.inputType,
    this.textInputAction = TextInputAction.next,
    this.isPassword = false,
    required this.controller,
    this.validator, // Adicionado aqui
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller, // Adicionando o controller
        validator: validator, // Usando o validator
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        keyboardType: inputType,
        obscureText: isPassword,
        textInputAction: textInputAction,
      ),
    );
  }
}
