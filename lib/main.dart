import 'package:flutter/material.dart';
import 'package:flutter_3/models/product.dart';
import 'package:flutter_3/widgets/future_products_builder.dart';
import 'package:flutter_3/widgets/styled_app_bar.dart';
import 'package:flutter_3/widgets/styled_drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  List<Product> cart = [];
  late Future<List<Product>> products;
  double totalPrice = 0;

  calculateTotalPrice() {
    setState(() {
      totalPrice = cart.fold(
          0, (value, element) => value + (element.amount * element.price));
    });
  }

  addToCart(Product product) {
    setState(() {
      if (cart.contains(product)) {
        product.amount += 1;
      } else {
        cart.add(product);
      }
    });
    calculateTotalPrice();
  }

  removeFromCart(Product product, {bool delete = false}) {
    setState(() {
      if (product.amount == 1 || delete) {
        product.amount = 1;
        cart.remove(product);
      } else {
        product.amount -= 1;
      }
    });
    calculateTotalPrice();
  }

  @override
  void initState() {
    super.initState();
    products = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        drawer: StyledDrawer(
            cartProducts: cart,
            cartItemIncrement: addToCart,
            cartItemDecrement: removeFromCart,
            totalPrice: totalPrice),
        appBar: StyledAppBar(cartCount: cart.length),
        body: SafeArea(
          top: true,
          bottom: true,
          child: FutureProductsBuilder(
              products: products, addToCartAction: addToCart),
        ),
      ),
    );
  }
}
