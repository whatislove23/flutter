import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);

class PostNavbar extends StatelessWidget {
  const PostNavbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: black),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Icon(
                Icons.grid_on_outlined,
                size: 30,
                color: black,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.slideshow_outlined,
              size: 30,
              color: Colors.black54,
            ),
          ),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Icon(
              Icons.assignment_ind_outlined,
              size: 30,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
