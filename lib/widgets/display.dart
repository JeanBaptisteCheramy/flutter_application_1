import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 150,
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 247, 255, 245),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(108, 0, 0, 0),
              spreadRadius: 1,
              blurRadius: 2),
        ],
      ),
    ));
  }
}
