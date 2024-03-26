import 'package:flutter/material.dart';
import 'package:flutter_3/models/product.dart';
import 'package:flutter_3/widgets/styled_cart_product.dart';

class StyledDrawer extends StatelessWidget {
  late List<Product> cartProducts;
  late double totalPrice;
  late Function cartItemIncrement;
  late Function cartItemDecrement;
  StyledDrawer(
      {super.key,
      required this.cartProducts,
      required this.cartItemIncrement,
      required this.cartItemDecrement,
      required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 320,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  "Cart".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              ),
            ),
            SizedBox(
              height: 630,
              child: ListView.builder(
                itemCount: cartProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return StyledCartProduct(
                      product: cartProducts[index],
                      increment: cartItemIncrement,
                      decrement: cartItemDecrement);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Total price: $totalPrice",
                    style: const TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    onPressed: () => {},
                    child: const Text(
                      "Buy",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
