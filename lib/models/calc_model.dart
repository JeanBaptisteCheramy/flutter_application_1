import 'package:flutter/material.dart';
import 'package:logger/web.dart';

class CalcModel extends ChangeNotifier {
  var logger = Logger();

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

  void delete() {
    int toDelete = displayText.length - 1;
    displayText = displayText.substring(0, toDelete);
    notifyListeners();
  }
}
