import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class AvatarStats extends StatelessWidget {
  const AvatarStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(clipBehavior: Clip.none, children: [
          ClipOval(
            child: Image.asset(
              "assets/avatar.jpeg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: Material(
                type: MaterialType.transparency,
                child: Ink(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4.0),
                    color: Colors.blueAccent,
                    shape: BoxShape.circle,
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(1000.0),
                    onTap: () => {},
                    child: const Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                )),
          )
        ]),
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
                  children: [
                    Text(
                      "162",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: black),
                    ),
                    Text(
                      "posts",
                      style: TextStyle(
                        fontSize: 16,
                        color: black,
                      ),
                    )
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
