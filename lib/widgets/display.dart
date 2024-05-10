import 'package:flutter/material.dart';
import 'package:flutter_application_1/store/calculation_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Display extends ConsumerWidget {
  const Display(this.data, {super.key});
  final String data;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 247, 255, 246),
      ),
      child: Text(ref.watch(calculationStore),
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: const Color.fromARGB(255, 0, 0, 0))),
    );
  }
}
