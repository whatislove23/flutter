import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Product {
  late int id;
  late String title;
  late String description;
  late int price;
  late List<String> images;
  int amount = 0;
  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      this.amount = 1,
      required this.images});
}

Future<List<Product>> fetchProducts() async {
  final response = await http.get(Uri.parse('https://dummyjson.com/products'));
  if (response.statusCode == 200) {
    // Parse JSON response and return list of products
    List<dynamic> productsJson = jsonDecode(response.body)["products"];
    return productsJson
        .map((json) => Product(
              id: json["id"],
              title: json["title"],
              description: json["description"],
              price: json["price"],
              images: List<String>.from(json["images"]),
            ))
        .toList();
  } else {
    // Throw an exception if failed to load
    throw Exception('Failed to load products');
  }
}
