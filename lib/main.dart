import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyAppState extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<MyAppState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ❤️
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Photos", icon: Icon(Icons.photo))
          ],
        ),
        body: SafeArea(
            top: true,
            bottom: true,
            child: ListView(
              children: [],
            )),
      ),
    );
  }
}
