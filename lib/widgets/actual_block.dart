import 'package:flutter/material.dart';

const black = Color.fromARGB(222, 12, 12, 12);
const items = [
  {"text": "🎳", "url": "assets/actual_1.jpg"},
  {"text": "BMX🚲", "url": "assets/actual_2.jpg"},
  {"text": "🎳", "url": "assets/actual_1.jpg"},
  {"text": "BMX🚲", "url": "assets/actual_2.jpg"},
  {"text": "New", "url": "+"}
];

class Actual extends StatelessWidget {
  const Actual({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.black12,
                    width: 2.0,
                  ),
                ),
                child: index == items.length - 1
                    ? Container(
                        width: 70.0,
                        height: 70.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color.fromARGB(53, 0, 0, 0),
                              offset: Offset(3, 3),
                            )
                          ],
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 4.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 40,
                          color: black,
                        ),
                      )
                    : Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: AssetImage('${items[index]["url"]}'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 4.0,
                          ),
                        ),
                      ),
              ),
              Text(
                '${items[index]["text"]}',
                style: const TextStyle(color: black, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
