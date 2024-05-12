import 'package:logger/web.dart';

var logger = Logger();

String calculate(String data) {
  logger.d(data);
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

  return result.toString();
}
