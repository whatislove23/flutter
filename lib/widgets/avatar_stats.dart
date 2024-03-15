import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class AvatarStats extends StatelessWidget {
  const AvatarStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipOval(
              child: Image.asset(
                "assets/avatar.jpeg",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              width: 35,
              height: 35,
              bottom: -5,
              right: -5,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  borderRadius: BorderRadius.circular(99),
                  color: Colors.blueAccent,
                ),
                child: const Text(
                  "+",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        const Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "162",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: black),
                    ),
                    Text("posts",
                        style: TextStyle(
                          fontSize: 16,
                          color: black,
                        ))
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "955",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: black),
                    ),
                    Text(
                      "followers",
                      style: TextStyle(fontSize: 16, color: black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "17",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: black),
                    ),
                    Text(
                      "following",
                      style: TextStyle(fontSize: 16, color: black),
                    )
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
