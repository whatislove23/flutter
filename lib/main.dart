import 'package:flutter/material.dart';
import 'package:flutter_3/widgets/actual_block.dart';
import 'package:flutter_3/widgets/avatar_stats.dart';
import 'package:flutter_3/widgets/bottom_app_bar.dart';
import 'package:flutter_3/widgets/dashbord_buttons.dart';
import 'package:flutter_3/widgets/header.dart';
import 'package:flutter_3/widgets/photos_grid.dart';
import 'package:flutter_3/widgets/posts_navbar.dart';
import 'package:flutter_3/widgets/text_col.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ❤️
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Scaffold(
        bottomNavigationBar: MyBottomAppBar(),
        body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderTile(),
                      SizedBox(height: 15),
                      AvatarStats(),
                      SizedBox(height: 10),
                      TextCol(),
                      SizedBox(height: 15),
                      DashbordButtons(),
                      SizedBox(height: 15),
                      Actual(),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                SizedBox(height: 1),
                PostNavbar(),
                PhotosGrid()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
