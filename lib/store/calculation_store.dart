import 'package:flutter_application_1/models/calc_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final calculationStore = ChangeNotifierProvider<CalcModel>((ref) {

  return CalcModel(displayText: "");
});
