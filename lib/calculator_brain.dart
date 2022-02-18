import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;
  late double _bmi = 0;

  String calculateBMI() {
    ///Return Type is String
    _bmi = weight! / pow(height! / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String bmiText() {
    if (_bmi >= 25) {
      return 'Over Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String bmiSuggestions() {
    if (_bmi >= 25) {
      return 'Please Exercise More, Work Hard...!!!!';
    } else if (_bmi >= 18.5) {
      return 'Well done...!!!';
    } else {
      return 'You can eat little bit more...!!!';
    }
  }

  Color bmiResultColor() {
    if (_bmi >= 25) {
      return const Color(0xFFFF0000);
    } else if (_bmi > 18.5) {
      return const Color(0xFF00FF00);
    } else {
      return const Color(0xFFFF0000);
    }
  }
}
