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
  List<String> buttons = [
    "0",
    "1",
    "2",
    "+",
    "3",
    "4",
    "5",
    "-",
    "6",
    "7",
    "8",
    "*",
    "9",
    "/",
    "=",
    "AC"
  ];
  final calc =
      Calculator(firstNumber: "", secondNumber: "", curentOperation: "");
  void wipeFields() {
    setState(() {
      calc.curentOperation = "";
      calc.firstNumber = "";
      calc.secondNumber = "";
    });
  }

  void helper(String value) {
    int? isNumber = int.tryParse(value);
    if ((calc.firstNumber.isNotEmpty && calc.secondNumber.isEmpty) &&
        (value == "-" || value == "+" || value == "*" || value == "/")) {
      return setState(() {
        calc.curentOperation = value;
      });
    }
    if (calc.curentOperation.isEmpty && isNumber != null) {
      return setState(() {
        calc.firstNumber += value;
      });
    }
    if (calc.curentOperation.isNotEmpty && isNumber != null) {
      return setState(() {
        calc.secondNumber += value;
      });
    }
    if (value == "AC") {
      return wipeFields();
    }
    if (value == "=" &&
        calc.firstNumber.isNotEmpty &&
        calc.secondNumber.isNotEmpty) {
      String result = calc.calculate();
      wipeFields();
      return setState(() {
        calc.firstNumber = result;
      });
    }
  }

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
                  border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      calc.firstNumber,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      calc.curentOperation,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      calc.secondNumber,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w500),
                    ),
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
                      ...buttons.map(
                        (buttonValue) => ElevatedButton(
                          onPressed: () => helper(buttonValue),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            buttonValue,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
