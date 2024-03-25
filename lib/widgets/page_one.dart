import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Welcome to Rick & Morty characters".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                width: 300,
                child:
                    Image.network("https://pngimg.com/d/rick_morty_PNG19.png")),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Swipe to get more".toUpperCase(),
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w500),
                ),
                const Icon(Icons.arrow_forward_ios)
              ],
            )
          ],
        ),
      ),
    );
  }
}
