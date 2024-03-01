export 'counter.dart';

class Counter {
  int _step; //private field
  int _result; //private field
  //Constructor && named parametrs
  Counter({int result = 0, int step = 1})
      : _result = result,
        _step = step;
  void increment() {
    _result += _step;
  }

  void decrement() {
    _result -= _step;
  }

  // getters && setters
  set step(int newStep) => _step = newStep;
  set result(int newResult) => _result = newResult;
  int get currentStep => _step;
  int get currentResult => _result;
}
