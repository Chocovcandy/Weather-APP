import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap ,
        child: Container(
          decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 48, 103, 191),
              color: const Color.fromARGB(255, 33, 88, 177),
              borderRadius: BorderRadius.circular(30)),
          padding: const EdgeInsets.only(left: 35, right: 35, top: 10, bottom: 10),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color:  Color.fromARGB(255, 239, 233, 233),
            ),
          ),
        ),
    );
  }
}
