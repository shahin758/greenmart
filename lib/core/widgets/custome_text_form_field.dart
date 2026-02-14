import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.validator,
  });

  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: hintText),
      validator: validator,
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
