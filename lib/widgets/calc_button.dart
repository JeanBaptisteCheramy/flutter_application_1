import 'package:flutter/material.dart';
import 'package:logger/web.dart';

var logger = Logger();

class CalcButton extends StatelessWidget {
  const CalcButton(this.data, {super.key});
  final String data;

  void test() {
    logger.d(data);
  }

  Color handleColor(String data) {
    switch (data) {
      case "0" || "1" || "2" || "3" || "4" || "5" || "6" || "7" || "8" || "9":
        return const Color.fromARGB(255, 255, 254, 245);
      case "AC" || "<" || "=":
        return const Color.fromARGB(255, 69, 94, 64);
      case "%" || "√" || "/" || "x" || "-" || "+" || ",":
        return const Color.fromARGB(255, 180, 176, 100);
      default:
        return const Color.fromARGB(255, 255, 254, 245);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: ElevatedButton(
            onPressed: test,
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(handleColor(data))),
            child: Text(data)));
  }
}
