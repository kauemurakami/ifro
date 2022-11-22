import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ifro/core/theme/texts_styles.dart';

class CustomButton extends Container {
  final callback;
  final String? text;
  final color;

  CustomButton({this.color = Colors.blue, this.callback, this.text, super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: () => callback(),
      child: Text(
        text!,
        style: text_white_normal,
      ),
    );
  }
}
