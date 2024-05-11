import 'package:logger/web.dart';

var logger = Logger();

String calculate(String data) {
  logger.d(data);
  double result = 0;
  List list = data.split('*');
  logger.d(list);
  result = double.parse(list[0]) * double.parse(list[1]);
  return result.toString();
}
