import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  int pageIdx;
  TabController controller;
  Function setState;

  BottomNavBar(
      {super.key,
      required this.pageIdx,
      required this.controller,
      required this.setState});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIdx,
      onTap: (index) {
        setState(() {
          pageIdx = index;
          controller.animateTo(pageIdx);
        });
      },
      selectedItemColor: Colors.deepPurpleAccent,
      items: const [
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: "Characters",
          icon: Icon(Icons.list_outlined),
        )
      ],
    );
  }
}
