import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(const MainApp()); // const MainApp()
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int step = 1;
  int res = 0;
  final counter = Counter();
  void increment() {
    counter.increment();
    setState(() {
      res = counter.currentResult;
    });
  }

  void decrement() {
    counter.decrement();
    setState(() {
      res = counter.currentResult;
    });
  }

  void setStep(String newStep) {
    counter.step = int.parse(newStep);
    setState(() {
      step = counter.currentStep;
    });
  }

  void setCounter(String newCount) {
    counter.result = int.parse(newCount);
    setState(() {
      res = counter.currentResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Vladyslav's Tymchenko APP"),
              backgroundColor: const Color.fromARGB(255, 255, 166, 0),
              centerTitle: true,
            ),
            body: Column(children: <Widget>[
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Wrap(alignment: WrapAlignment.center, children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextButton(
                          onPressed: decrement, child: const Text("Decrement")),
                      Text(
                        "Count $res",
                        style: const TextStyle(fontSize: 24),
                      ),
                      TextButton(
                          onPressed: increment, child: const Text("Increment")),
                    ]),
                    TextField(
                      onSubmitted: setStep,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(labelText: "Current step $step"),
                    ),
                    TextField(
                      onSubmitted: setCounter,
                      keyboardType: TextInputType.number,
                      decoration:
                          InputDecoration(labelText: "Current Count $res"),
                    ),
                  ]))
            ])));
  }
}
