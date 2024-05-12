import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
  final controller;
  final String hinttext;
  final bool obscuretext;
  const Text_Field(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.obscuretext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey)),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: hinttext,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
