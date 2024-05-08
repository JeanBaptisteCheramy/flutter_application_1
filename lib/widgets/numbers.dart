import 'package:flutter/material.dart';

List values = [
  "AC",
  "%",
  "√",
  "/",
  "1",
  "2",
  "3",
  "x",
  "4",
  "5",
  "6",
  "-",
  "7",
  "8",
  "9",
  "+",
  "0",
  ",",
  "",
  "="
];

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 155, 190, 151),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 4,
        children: values.map((value) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 206, 233, 201),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(108, 0, 0, 0),
                    spreadRadius: 1,
                    blurRadius: 2),
              ],
            ),
            child: Center(
              child: Text(value,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24)),
            ),
          );
        }).toList(),
      ),
    );
  }
}
