import 'package:flutter/material.dart';
import 'package:flutter_3/widgets/bottom_nav_bar.dart';
import 'package:flutter_3/widgets/drawer.dart';
import 'package:flutter_3/widgets/page_one.dart';
import 'package:flutter_3/widgets/page_two.dart';

void main() {
  runApp(const MainApp()); // const MainApp()
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  late TabController controller;
  int pageIdx = 0;
  List<Widget> pages = [
    const PageOne(),
    const PageTwo(),
  ];
  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: pages.length)
      ..addListener(() {
        setState(() {
          pageIdx = controller.index;
        });
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(),
        drawer: StyledDrawer(
            controller: controller, setState: setState, pageIdx: pageIdx),
        bottomNavigationBar: BottomNavBar(
          controller: controller,
          pageIdx: pageIdx,
          setState: setState,
        ),
        body: SafeArea(
          top: true,
          bottom: true,
          child: TabBarView(
            controller: controller,
            children: pages,
          ),
        ),
      ),
    );
  }
}
