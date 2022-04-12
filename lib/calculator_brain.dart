import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height,required this.weight, required this.bmi});

  final int height;
  final int weight;

  double bmi;

  String calculateBMI() {
     bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getinterpretation() {
    if (bmi >= 25) {
      return 'Your body weight is higher than normal, try to exercise more.';
    } else if (bmi> 18.5) {
      return 'Great!! You have a normal body weight, keep it up.';
    } else {
      return 'OPPS! Body weight is lower than normal, try to eat more.';
    }
  }
}
