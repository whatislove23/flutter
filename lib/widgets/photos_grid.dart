import 'package:flutter/material.dart';

const posts = [
  {"url": "assets/post1.jpg", "isMultiple": true},
  {"url": "assets/post2.jpg", "isMultiple": true},
  {"url": "assets/post3.jpg", "isMultiple": false},
  {"url": "assets/post4.jpg", "isMultiple": true},
  {"url": "assets/post5.jpg", "isMultiple": true},
  {"url": "assets/post7.jpg", "isMultiple": false},
  {"url": "assets/post8.jpg", "isMultiple": false},
  {"url": "assets/post9.jpg", "isMultiple": false},
  {"url": "assets/post10.jpg", "isMultiple": false},
];

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var boxsize = (screenSize.width / 3).floor().toDouble();
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 1,
        children: [
          ...posts.map((e) => Stack(
                children: [
                  Image.asset(
                    e["url"] as String,
                    width: boxsize,
                    height: boxsize,
                    fit: BoxFit.cover,
                  ),
                  if (e["isMultiple"] as bool == true)
                    const Positioned(
                      top: 5,
                      right: 5,
                      child: Icon(
                        Icons.layers_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                ],
              )),
        ],
      ),
    );
  }
}
