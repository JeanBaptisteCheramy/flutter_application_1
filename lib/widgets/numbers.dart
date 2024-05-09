import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/calc_button.dart';

final List<String> values = [
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
    return SizedBox(
        height: 600,
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 1.0,
          ),
          primary: false,
          padding: const EdgeInsets.all(20),
          children: values.map((value) {
            return CalcButton(value);
          }).toList(),
        ));
  }
}
