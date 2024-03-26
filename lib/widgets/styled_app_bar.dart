import 'package:flutter/material.dart';

class StyledAppBar extends StatelessWidget implements PreferredSizeWidget {
  late int cartCount;
  StyledAppBar({super.key, required this.cartCount});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Random products store"),
      leading: Builder(
        builder: (context) => Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
            Positioned(
              right: 12,
              top: 5,
              child: cartCount > 0
                  ? Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        cartCount.toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
