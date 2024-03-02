export "calculator.dart";

class Calculator {
  //private fields
  String _firstNumber;
  String _secondNumber;
  String _curentOperation;
  // constructor & named parametrs
  Calculator(
      {String firstNumber = "",
      String secondNumber = "",
      String curentOperation = ""})
      : _curentOperation = curentOperation,
        _secondNumber = secondNumber,
        _firstNumber = firstNumber;

  //getters
  String get firstNumber => _firstNumber;
  String get secondNumber => _secondNumber;
  String get curentOperation => _curentOperation;
  //setters
  set firstNumber(String newVal) => _firstNumber = newVal;
  set secondNumber(String newVal) => _secondNumber = newVal;
  set curentOperation(String newVal) => _curentOperation = newVal;

  String calculate() {
    num result = 0;
    num firstNumber = num.parse(_firstNumber);
    num secondNumber = num.parse(_secondNumber);
    switch (_curentOperation) {
      case "+":
        result = firstNumber + secondNumber;
        break;
      case "-":
        result = firstNumber - secondNumber;
        break;
      case "*":
        result = firstNumber * secondNumber;
        break;
      case "/":
        result = firstNumber / secondNumber;
        break;
    }
    return result.toString();
  }
}
