import 'package:flutter/material.dart';
import 'calculator.dart';

void main() {
  runApp(const MainApp()); // const MainApp()
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  final calc = Calculator();
  String firstVal = "";
  String secondVal = "";
  String operation = "";

  void wipeFields() {
    calc.curentOperation = "";
    calc.firstNumber = "";
    calc.secondNumber = "";
    setState(() {
      firstVal = "";
      operation = "";
      secondVal = "";
    });
  }

  void helper(String value) {
    int? isNumber = int.tryParse(value);
    if ((firstVal.isNotEmpty && secondVal.isEmpty) &&
        (value == "-" || value == "+" || value == "*" || value == "/")) {
      calc.curentOperation = value;
      setState(() {
        operation = value;
      });
      return;
    }
    if (operation.isEmpty && isNumber != null) {
      calc.firstNumber += value;
      setState(() {
        firstVal += value;
      });
      return;
    }
    if (operation.isNotEmpty && isNumber != null) {
      calc.secondNumber += value;
      setState(() {
        secondVal += value;
      });
      return;
    }
    if (value == "AC") {
      wipeFields();
      return;
    }
    if (value == "=" && firstVal.isNotEmpty && secondVal.isNotEmpty) {
      String temp = calc.calculate();
      wipeFields();
      calc.firstNumber = temp;
      setState(() {
        firstVal = temp;
      });
      return;
    }
  }

//Why this way? - The instance member 'helper' can't be accessed in an initializer.
  dynamic initializeButtons() => [
        {"value": "0", "function": helper},
        {"value": "1", "function": helper},
        {"value": "2", "function": helper},
        {"value": "+", "function": helper},
        {"value": "3", "function": helper},
        {"value": "4", "function": helper},
        {"value": "5", "function": helper},
        {"value": "-", "function": helper},
        {"value": "6", "function": helper},
        {"value": "7", "function": helper},
        {"value": "8", "function": helper},
        {"value": "*", "function": helper},
        {"value": "9", "function": helper},
        {"value": "/", "function": helper},
        {"value": "=", "function": helper},
        {"value": "AC", "function": helper},
      ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Vladyslav's Tymchenko Calculator",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500),
              ),
              backgroundColor: const Color.fromARGB(255, 255, 166, 0),
              centerTitle: true,
            ),
            body: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            firstVal,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            operation,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            secondVal,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: GridView.count(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children: [
                            ...initializeButtons().map((button) =>
                                ElevatedButton(
                                    onPressed: () =>
                                        button["function"](button["value"]),
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.all(5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Text(
                                      button["value"].toString(),
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    )))
                          ]),
                    ),
                  ],
                ))));
  }
}
