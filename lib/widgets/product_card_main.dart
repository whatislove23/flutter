import 'package:flutter/material.dart';
import 'package:flutter_3/models/product.dart';

class ProductCardMain extends StatefulWidget {
  late Product product;
  late Function addToCart;
  ProductCardMain({super.key, required this.product, required this.addToCart});

  @override
  _ProductCardMainState createState() => _ProductCardMainState();
}

class _ProductCardMainState extends State<ProductCardMain> {
  bool isOpened = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isOpened = !isOpened;
      }),
      child: Container(
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(50, 0, 0, 0),
                offset: Offset(0, 0),
                spreadRadius: 1,
                blurRadius: 10)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              width: 2, style: BorderStyle.solid, color: Colors.black12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                widget.product.images[0],
                fit: BoxFit.fitHeight,
                width: double.infinity,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    widget.product.title,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "USD ${widget.product.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w300),
                )
              ],
            ),
            const SizedBox(height: 15),
            isOpened
                ? Column(
                    children: [
                      Text(
                        widget.product.description,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        onPressed: () => widget.addToCart(widget.product),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Add to cart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
