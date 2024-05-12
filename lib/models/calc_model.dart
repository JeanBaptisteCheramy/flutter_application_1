import 'package:flutter/material.dart';

class CalcModel extends ChangeNotifier {
  String displayText = "";
  CalcModel({required this.displayText});
  void display(String arg) {
    displayText += arg;
    notifyListeners();
  }

  void set(String arg) {
    displayText = arg;
    notifyListeners();
  }
}
