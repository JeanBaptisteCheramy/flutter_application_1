import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 155, 190, 151),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 4,
        children: <Widget>[
          Container(
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
            child: const Text("1"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("2"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("3"),
          ),
        ],
      ),
    );
  }
}
