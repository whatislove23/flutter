import 'package:flutter/material.dart';

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
        const SizedBox(height: 10),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
            side:
                const BorderSide(width: 0.0, color: Color.fromARGB(0, 3, 3, 3)),
            backgroundColor: const Color.fromARGB(18, 0, 0, 0),
          ),
          onPressed: () => {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "@",
                style: TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 16, color: black),
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
