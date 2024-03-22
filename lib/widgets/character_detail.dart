import 'package:flutter/material.dart';
import 'package:flutter_3/models/character_model.dart';

class CharacterDetail extends StatelessWidget {
  late dynamic data;
  CharacterDetail({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var character = Character.fromJson(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("${character.name} from  ${character.origin["name"]}"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 570,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: Colors.deepPurpleAccent),
              boxShadow: const [
                BoxShadow(
                    color: Colors.deepPurple,
                    offset: Offset(0, 0),
                    blurRadius: 15,
                    spreadRadius: 5)
              ],
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: character.id,
                  child: Container(
                    width: 300,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Image.network(
                      character.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    character.name,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        fontSize: 40),
                  ),
                ),
                Text(
                  "Species: ${character.species}",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    "From: ${character.origin["name"]}",
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: const TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w300,
                        fontSize: 20),
                  ),
                ),
                Text(
                  "Status: ${character.status}",
                  style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
