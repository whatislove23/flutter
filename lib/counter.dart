export 'counter.dart';

class Counter {
  int _step = 1;
  int _result;
  Counter({int initialValue = 0}) : _result = initialValue;
  void increment() {
    _result += _step;
  }
  void decrement() {
    _result -= _step;
  }
  set step(int newStep) => _step = newStep;
  set result(int newResult) => _result = newResult;
  int get currentStep => _step;
  int get currentResult => _result;
}

void main() {
  Counter counter = Counter(initialValue: 5);
  int result = counter.currentResult;
  print('initial value $result ');
  counter.increment();
  counter.increment();
  counter.increment();
  counter.increment();
  result = counter.currentResult;
  print('initial value  after increment $result ');
  counter.decrement();
  counter.decrement();
  counter.decrement();
  counter.decrement();
  result = counter.currentResult;
  print('initial value  after decrement $result ');
  print('Current step ${counter.currentStep} ');
  counter.step = 5;
  print('Current step ${counter.currentStep} ');
  counter.result = 25;
  print('Current counter value ${counter.currentResult} ');
}
