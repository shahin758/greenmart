import 'package:flutter/material.dart';

class MianButton extends StatelessWidget {
  const MianButton({
    super.key, required this.text, required this.onPressed,
  });
  final String text;
  final Function() onPressed;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed ,child: Text (text));
      
  }
}
