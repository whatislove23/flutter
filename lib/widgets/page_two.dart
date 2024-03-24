import 'dart:convert';
import 'package:flutter_3/widgets/character_card.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});
  @override
  PageTwoState createState() => PageTwoState();
}

class PageTwoState extends State<PageTwo> {
  dynamic items;
  @override
  void initState() {
    super.initState();
  }

  Future fetchCharacters() async {
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body) as Map<String, dynamic>;
      setState(() {
        items = res["results"];
      });
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: items == null
          ? FloatingActionButton(
              onPressed: fetchCharacters,
              child: const Icon(Icons.refresh),
            )
          : null,
      body: items != null
          ? ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CharacterCard(data: items[index]);
              })
          : Column(
              children: [
                SizedBox(
                  width: 400,
                  child:
                      Image.network("https://pngimg.com/d/rick_morty_PNG1.png"),
                ),
                Center(
                  child: Text(
                    "Click  on the button below to load cards...".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
    );
  }
}
