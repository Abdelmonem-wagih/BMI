import 'dart:math';

class Calc {
  Calc({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getRes() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInformation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight , Try to exercise more!";
    } else if (_bmi > 18.5) {
      return "you have a normal body weight , Good job!";
    } else {
      return "you have a lower than normal body weight , you can eat a bit more!";
    }
  }
}
