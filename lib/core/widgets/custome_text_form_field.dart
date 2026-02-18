import 'package:flutter/material.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.prefixIcon,
     this.readOnly = false, 
     this.onTap,
      this.focusNode,
      this.onChanged,
  });

  final String? hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final bool readOnly ;
  final Function()? onTap;
  final Function(String)? onChanged;
  final FocusNode? focusNode ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      keyboardType: keyboardType,
      readOnly: readOnly,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(hintText: hintText,
      prefixIcon: prefixIcon,
      ),
      validator: validator,
      onChanged: onChanged,
      onTapOutside: (event){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onTap: onTap,
    );
  }
}
