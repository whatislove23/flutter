import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_3/models/product.dart';

class StyledCartProduct extends StatelessWidget {
  late Product product;
  late Function increment;
  late Function decrement;
  StyledCartProduct(
      {super.key,
      required this.product,
      required this.increment,
      required this.decrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(50, 0, 0, 0),
              offset: Offset(0, 0),
              spreadRadius: 1,
              blurRadius: 10)
        ],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.black12,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    product.images[0],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    product.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  'USD ${(product.price * product.amount).toString()}',
                  style: const TextStyle(fontSize: 16),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => increment(product),
                      icon: const Icon(Icons.add_circle_outline),
                    ),
                    Text(
                      product.amount.toString(),
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () => decrement(product),
                      icon: const Icon(Icons.remove_circle_outline_outlined),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 25,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () => decrement(product, delete: true),
              child: const Icon(
                Icons.delete,
                size: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
