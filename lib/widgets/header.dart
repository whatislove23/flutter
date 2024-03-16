import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class HeaderTile extends StatelessWidget {
  const HeaderTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(children: [
          TextButton(
              onPressed: () => {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(50, 30),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Row(children: [
                Text(
                  "whatislove.23",
                  style: TextStyle(
                      color: Color.fromARGB(222, 12, 12, 12),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: black,
                )
              ])),
        ]),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(30, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Text(
                        "@",
                        style: TextStyle(
                            color: black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                      Positioned(
                          right: -15.0,
                          top: -5.0,
                          child: Container(
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 230, 0, 23),
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: const Text(
                                "9+",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ))),
                    ],
                  )),
              TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(30, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Icon(
                    Icons.add_box_outlined,
                    color: black,
                    size: 30,
                  )),
              TextButton(
                  onPressed: () => {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: const Size(30, 30),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Icon(
                    Icons.menu_rounded,
                    color: black,
                    size: 30,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
