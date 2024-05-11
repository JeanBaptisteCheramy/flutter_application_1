import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/services.dart';
import 'package:flutter_application_1/store/calculation_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:logger/web.dart';

// var logger = Logger();

class CalcButton extends ConsumerWidget {
  const CalcButton(this.data, {super.key});
  final dynamic data;

  Color handleColor(dynamic data) {
    switch (data.runtimeType) {
      case int:
        return const Color.fromARGB(255, 255, 254, 245);
      case String:
        if (data == "AC" || data == "<" || data == "=") {
          return const Color.fromARGB(255, 89, 115, 84);
        } else {
          return const Color.fromARGB(255, 180, 176, 100);
        }
      default:
        return const Color.fromARGB(255, 255, 254, 245);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            logger.d(data);
            if (data == 'AC') {
              ref.read(calculationStore.notifier).set("");
            } else if (data == "=") {
              String result =
                  calculate(ref.watch(calculationStore.notifier).displayText);
              ref.read(calculationStore.notifier).set(result);
            } else {
              ref.read(calculationStore.notifier).display(data.toString());
            }
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(handleColor(data))),
          child: Text(data.toString(),
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.w400)),
        ));
  }
}
