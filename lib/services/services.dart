import 'package:logger/web.dart';

var logger = Logger();

String calculate(String data) {
  RegExp regex = RegExp(r'\d+(\.\d+)?|\+|\-|\*|\/');
  List<String> list =
      regex.allMatches(data).map((match) => match.group(0)!).toList();

  double result = double.parse(list[0]);

  // Bouclez à travers les list et effectuez les opérations
  for (int i = 1; i < list.length; i += 2) {
    String operator = list[i];
    double operand = double.parse(list[i + 1]);
    switch (operator) {
      case '+':
        result += operand;
        break;
      case '-':
        result -= operand;
        break;
      case '*':
        result *= operand;
        break;
      case '/':
        result /= operand;
        break;
    }
  }
  checkDotZero(result.toString());
  return result.toString();
}

bool checkDotZero(String data) {
  RegExp reg = RegExp(r'\.0');
  var match = reg.stringMatch(data);
  if (match == '.0') {
    return true;
  } else {
    return false;
  }
}
