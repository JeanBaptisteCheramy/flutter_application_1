import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/display.dart';
import 'package:flutter_application_1/widgets/numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 155, 190, 151),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 55, 72, 53),
              Color.fromARGB(255, 155, 190, 151),
            ],
          )),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 1,
        children: const <Widget>[
          SizedBox(height: 100, child: Display()),
          Numbers()
        ],
      ),
    );
  }
}
