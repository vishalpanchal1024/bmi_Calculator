import 'package:flutter/foundation.dart';

class HomeScreenProvider with ChangeNotifier {
  double _height = 160;

  double get height => _height;

  int _weight = 70;

  int get weight => _weight;

  int _age = 20;

  int get age => _age;
  late double _bmi;

  void slider(var value) {
    _height = value;
    notifyListeners();
  }

  void weightIncrement() {
    _weight++;
    notifyListeners();
  }

  void weightDecrement() {
    _weight--;
    notifyListeners();
  }

  void ageIncrement() {
    _age++;
    notifyListeners();
  }

  void ageDecrement() {
    _age--;
    notifyListeners();
  }

  String bmiCalculate() {
    var h = (height / 100) * (height / 100);
    _bmi = (weight) / h;

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  String getRange() {
    if (_bmi >= 25) {
      return '25.5 - 35 kg/m2';
    } else if (_bmi >= 18.5) {
      return '18.5 - 25 kg/m2';
    } else {
      return '10 - 18 kg/m2';
    }
  }
}
