import 'package:flutter/material.dart';
import 'package:flutter_3/widgets/gesture_drawer_btn.dart';

class StyledDrawer extends StatelessWidget {
  late TabController controller;
  late int pageIdx;
  Function setState;

  StyledDrawer(
      {super.key,
      required this.controller,
      required this.pageIdx,
      required this.setState});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
            height: 170,
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://www.diamondartclub.com/cdn/shop/products/rick-and-morty-diamond-art-painting-33240468914369_grande.jpg?v=1667779267"),
                  ),
                ),
                SizedBox(width: 25),
                Expanded(
                  child: Text(
                    "Rick & Morty Characters",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              height: mediaQuery.size.height - 185,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    GestureDrawerBtn(
                        textContent: "Home page",
                        moveToPageIdx: 0,
                        controller: controller,
                        pageIdx: pageIdx,
                        setState: setState),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDrawerBtn(
                        textContent: "Characters page",
                        moveToPageIdx: 1,
                        controller: controller,
                        pageIdx: pageIdx,
                        setState: setState),
                  ]),
                  Column(
                    children: [
                      const Text("Ooops there is nothing more..."),
                      Image.network("https://pngimg.com/d/rick_morty_PNG13.png")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
