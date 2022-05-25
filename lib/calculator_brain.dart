class CalculatorBrain {
  final int height;
  final int weight;
  double bmi;
  CalculatorBrain(this.height, this.weight, this.bmi);
  String calculateBMI() {
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "Overweight";
    } else if (bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getFeedback() {
    if (bmi >= 25) {
      return "You have higher than normal body weight . Try to exercise more";
    } else if (bmi >= 18.5) {
      return "You have normal body  weight . Good Job !";
    } else {
      return "You have lower than normal body weight. You can eat bit more";
    }
  }
}
