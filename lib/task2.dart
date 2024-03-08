// 2) Використання лямбда-функцій, замикань 3) Використання параметрів за замовчуванням // ??
Function counterWithLimit({int amountOfCall = 1, String? message}) {
  int total = 0;
  return () => total >= amountOfCall ? message ?? total : ++total;
}

// 7) Робота з різними типами колекцій.//Map/List/set// 6) Використання ключового слова assert
Map lettersCounter(String string) {
  assert(string.isNotEmpty, "String should have at least one char");
  Map result = <String, int>{};
  List<String> letters = string.replaceAll(" ", "").split("");
  for (String letter in letters) {
    result.containsKey(letter) ? result[letter]++ : result[letter] = 1;
  } //or foreach           fold || reducer?
  return result;
}

int sumWithoutDuplicates(List<int> list) =>
    list.toSet().reduce((acc, element) => acc + element);

// 5) Використання міксинів
mixin FillTank {
  int _tankCapacity = 0;
  set fill(int newValue) => _tankCapacity = newValue;
}

// 4) Різні варіанти конструкторів:
class CarFactory with FillTank {
  int amountOfWheels;
  String carType;
  String _color;
  String _engine;
//   4.2) Конструктор ініціалізації
  CarFactory.initTruck({
    String selectedColor = "white",
  })  : _color = selectedColor,
        _engine = "V16",
        carType = "truck",
        amountOfWheels = 6;

  CarFactory.initSedan({String selectedColor = "white"})
      : _color = selectedColor,
        carType = "sedan",
        _engine = "V4",
        amountOfWheels = 4;

//   4.1) Фабричний конструктор
  factory CarFactory({String type = "sedan", String color = ""}) =>
      switch (type) {
        "sedan" => CarFactory.initSedan(selectedColor: color),
        "truck" => CarFactory.initTruck(selectedColor: color),
        _ => CarFactory.initSedan(selectedColor: color)
      };
  set repaint(String newColor) => _color = newColor;
  set swapEngine(String newEngine) => _engine = newEngine;

  void drive() {
    print(
        "$_color $amountOfWheels wheels $carType with $_engine engine and $_tankCapacity L fuel tank is driving...");
  }
}

// ...
List flatten(List data) {
  List res = [];
  for (dynamic element in data) {
    if (element is List) {
      res = flatten([...res, ...element]);
    } else {
      res.add(element);
    }
  }
  return res;
}

void main() {
  var count =
      counterWithLimit(amountOfCall: 4, message: "You cant count anymore");
  print("Counter :");
  print(count());
  print(count());
  print(count());
  print(count());
  print(count());
  print("------------------------");
  print("Letters counter :");
  print(lettersCounter("hello world"));
  print(lettersCounter(""));
  print("------------------------");
  print("sumWithoutDuplicates :");
  print(
      sumWithoutDuplicates([1, 2, 3, 4, 5, 6, 7, 77, 7, 7, 5, 4, 3, 2, 1, 10]));
  print("------------------------");
//..
  print("Car factory .. :");
  var mySedan = CarFactory(type: "sedan")
    ..repaint = "green"
    ..swapEngine = "V12"
    ..fill = 100
    ..drive();
  print("------------------------");
  print("Flatten :");
  print(flatten([
    1,
    2,
    3,
    [
      1,
      2,
      [
        3,
        [1],
        [
          2,
          [3]
        ]
      ]
    ]
  ]));
}
