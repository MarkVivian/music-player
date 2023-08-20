import 'package:flutter/material.dart';
import 'package:muzz/components/song.dart';
import 'package:muzz/components/variables.dart';

class SearchAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppbar({super.key});

  @override
  State<SearchAppbar> createState() => _SearchAppbarState();

  @override
  Size get preferredSize => appbarHeight;
}

class _SearchAppbarState extends State<SearchAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: lightPurple,
      title: SizedBox(
        height: 40.0,
        child: TextField(
          onChanged: (text) {
            print(text);
          },
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
              labelText: "Search",
              labelStyle: const TextStyle(
                color: Colors.grey,
              )),
        ),
      ),
    );
  }
}

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  List<String> values = [
    "hello",
    "metro",
    "mark",
    "vivian",
    "hello",
    "metro",
    "mark",
    "vivian",
    "hello",
    "metro",
    "mark",
    "vivian",
    "hello",
    "metro",
    "mark",
    "vivian",
  ];
  List<Map<String, String>> device = [
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": ""},
  ];
    List<Map<String, String>> online = [
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
    {"album": "undefined", "time": "03:14", "name": "mark", "image": "", "percentage" : "10"},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: deepPurple,
      ),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
            child: Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Search History",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Clear",
                            style: TextStyle(color: Colors.yellow),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0,0,0,5.0),
                  height: 70.0,
                  width: 400,
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Wrap(
                      spacing: 10.0,
                      runSpacing: 5.0,
                      children: List.generate(
                        values.length,
                        (index) => GestureDetector(
                          onTap: () {
                            print(values[index]);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: lightPurple,
                                borderRadius: BorderRadius.circular(50.0)),
                            child: Text(
                              values[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            height: 230.0,
            child: ListView.builder(
                itemCount: device.length,
                itemBuilder: (context, index) {
                  return DeviceSong(
                      time: device[index]["time"]!,
                      album: device[index]["album"]!,
                      name: device[index]["name"]!,
                      image: device[index]["image"]!,
                      removeFromList: () => device.removeAt(index));
                }),
          ),
          Container(
            height: 40.0,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: lightPurple,
              border: Border.all(
                color: deepPurple,
                width: 4.0,
              )
            ),
            child: const Text(
              "ONLINE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 230.0,
            child: ListView.builder(
              itemCount: online.length,
              padding: EdgeInsets.all(1.0),
              itemBuilder: (context, index){
                return DownloadSong(
                      time: online[index]["time"]!,
                      album: online[index]["album"]!,
                      name: online[index]["name"]!,
                      image: online[index]["image"]!,
                      percentage: online[index]["percentage"]!);
            })),
        ],
      ),
    );
  }
}
