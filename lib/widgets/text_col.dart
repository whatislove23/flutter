import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class TextCol extends StatelessWidget {
  const TextCol({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Vladysalv Tymchenko",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: black),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            color: const Color.fromARGB(18, 0, 0, 0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "@",
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 20, color: black),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "whatislove.23",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, color: black),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "</h1>Hello, world!</h1>",
          style: TextStyle(fontSize: 19),
        ),
      ],
    );
  }
}
