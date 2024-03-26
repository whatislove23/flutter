import 'package:flutter/material.dart';
import 'package:flutter_3/models/product.dart';
import 'package:flutter_3/widgets/product_card_main.dart';

class FutureProductsBuilder extends StatelessWidget {
  late Future<List<Product>> products;
  late Function addToCartAction;
  FutureProductsBuilder({
    super.key,
    required this.products,
    required this.addToCartAction,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: products,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return ListView.builder(
          itemCount: snapshot.data?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            if (snapshot.data == null || snapshot.hasError) {
              return const Center(child: Text("there is no data"));
            } else {
              return ProductCardMain(
                addToCart: addToCartAction,
                product: snapshot.data[index],
              );
            }
          },
        );
      },
    );
  }
}
