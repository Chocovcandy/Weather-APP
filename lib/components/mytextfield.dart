import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 109, 162, 227),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 5, 99, 176)),
          ),
          fillColor: const Color.fromARGB(255, 238, 245, 255),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
