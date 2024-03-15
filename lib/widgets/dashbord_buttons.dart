import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class DashbordButtons extends StatelessWidget {
  const DashbordButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 10,
                  bottom: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color.fromARGB(18, 0, 0, 0),
                side: const BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Professional dashboard",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: black,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "106 accounts reached in the last 30 days.",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color.fromARGB(18, 0, 0, 0),
                side: const BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              child: const Text(
                "Edit profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 7,
          ),
          Expanded(
            child: OutlinedButton(
              onPressed: () => {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: const Color.fromARGB(18, 0, 0, 0),
                side: const BorderSide(
                  style: BorderStyle.none,
                ),
              ),
              child: const Text(
                "Share profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: black,
                ),
              ),
            ),
          ),
        ],
      )
    ]);
  }
}
