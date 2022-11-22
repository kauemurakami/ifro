import 'package:flutter/material.dart';

class CustomTff extends Container {
  final Function(String? value)? validate, onChanged, saved;
  final String? text;
  final bool? obscure;
  CustomTff(
      {this.obscure = false,
      super.key,
      this.onChanged,
      this.saved,
      this.validate,
      this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure!,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.black),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
      validator: (value) => validate!(value),
      onChanged: (value) => onChanged!(value),
      onSaved: (value) => saved!(value),
    );
  }
}
