import 'package:flutter/material.dart';
import 'package:logger/web.dart';

var logger = Logger();

class CalcButton extends StatelessWidget {
  const CalcButton(this.data, {super.key});
  final String data;

  void test() {
    logger.d(data);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50, child: ElevatedButton(onPressed: test, child: Text(data)));
  }
}
