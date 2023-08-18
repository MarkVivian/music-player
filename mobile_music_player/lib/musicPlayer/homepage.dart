import 'package:flutter/material.dart';
import 'package:muzz/components/song.dart';
import 'package:muzz/components/Colors.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});
  static List<Map<String, String>> songInfo = [
    {"time": "03:15", "album": "undefined", "name": "charles", "image": ""},
    {"time": "03:15", "album": "undefined", "name": "charles", "image": ""},
    {"time": "03:15", "album": "undefined", "name": "charles", "image": ""},
    {"time": "03:15", "album": "undefined", "name": "charles", "image": ""}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deeppurple,
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: lightPurple,
      ),
      body: Column(
        children: songInfo
            .map((element) => DeviceSong(
                removeFromList: () {
                  songInfo.remove(element);
                },
                time: element["time"]!,
                album: element["album"]!,
                name: element["name"]!,
                image: element["image"]!))
            .toList(),
        // const DownloadSong(
        //   time: "03.14",
        //   album: "undefined",
        //   name: "charles",
        //   image: "",
        //   percentage: "10",
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.black,
        backgroundColor: lightPurple,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.heart_broken), label: "favourites"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "songs"),
      ]),
    );
  }
}
