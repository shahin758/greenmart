import 'package:flutter/material.dart';

abstract class TextStyles {
  static const TextStyle headline = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle title = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const TextStyle body = TextStyle(fontSize: 16);
  static const TextStyle button = TextStyle(fontSize: 15);
  static const TextStyle caption = TextStyle(fontSize: 12);
}
