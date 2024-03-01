export "calculator.dart";

class Calculator {
  num _result;
  late int _firstValue, _secondValue;
  String _curentOperation;
  Calculator({num initialResult = 0, String initialOperation = ""})
      : _result = initialResult,
        _curentOperation = initialOperation;
  set operation(String operation) => _curentOperation = operation;
  set firstValue(int number) => _firstValue = number;
  set secondValue(int number) => _secondValue = number;
  int get firstValue => _firstValue;
  int get secondValue => _firstValue;
  num get result => _result;
  String get operation => _curentOperation;
  void calculate() {}
}
