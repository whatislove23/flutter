import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      surfaceTintColor: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home_outlined,
            size: 35,
            color: black,
          ),
          Icon(
            Icons.search,
            size: 35,
            color: black,
          ),
          Icon(
            Icons.add_box_outlined,
            size: 35,
            color: black,
          ),
          Icon(
            Icons.slideshow_outlined,
            size: 35,
            color: black,
          ),
          Icon(
            Icons.account_circle,
            size: 35,
            color: black,
          ),
        ],
      ),
    );
  }
}
