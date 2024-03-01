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
  final counter = Counter(step: 1, result: 23);
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
              title: const Text(
                "Vladyslav's Tymchenko Counter",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: const Color.fromARGB(255, 255, 166, 0),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: decrement,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                            Text(
                              '$res',
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            ElevatedButton(
                                onPressed: increment,
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                )),
                          ],
                        ),
                        TextField(
                          onSubmitted: setCounter,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: "Set count (Current: $res)"),
                        ),
                        TextField(
                            onSubmitted: setStep,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "Set step (Current: $step)",
                              fillColor: Colors.white,
                            ))
                      ],
                    ))
              ],
            )));
  }
}
