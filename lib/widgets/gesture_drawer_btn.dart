import 'package:flutter/material.dart';

class GestureDrawerBtn extends StatelessWidget {
  late TabController controller;
  late int pageIdx;
  late int moveToPageIdx;
  late String textContent;
  late Function setState;

  GestureDrawerBtn({
    super.key,
    required this.textContent,
    required this.controller,
    required this.pageIdx,
    required this.setState,
    required this.moveToPageIdx,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.animateTo(moveToPageIdx);
        setState(() {
          pageIdx = moveToPageIdx;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: pageIdx == moveToPageIdx
              ? const Color.fromARGB(124, 124, 77, 255)
              : Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2, color: Colors.black26),
        ),
        child: Text(
          textContent,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: pageIdx == moveToPageIdx ? Colors.white : Colors.black54),
        ),
      ),
    );
  }
}
