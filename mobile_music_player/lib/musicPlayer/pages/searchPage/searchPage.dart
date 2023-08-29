import 'package:flutter/material.dart';
import 'package:muzz/components/song.dart';
import 'package:muzz/components/variables.dart';
import 'package:muzz/musicPlayer/pages/searchPage/inputManager.dart';
import 'package:muzz/musicPlayer/pages/searchPage/onlineSearch.dart';
// TODO need to learn how provider works
class SearchAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppbar({super.key});
  @override
  State<SearchAppbar> createState() => _SearchAppbarState();

  @override
  Size get preferredSize => appbarHeight;
}

class _SearchAppbarState extends State<SearchAppbar> {
  final InputManager inputManager = InputManager();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: lightPurple,
      title: SizedBox(
        height: 40.0,
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: TextFormField(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 15.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0)),
                    labelText: "Search",
                    labelStyle: const TextStyle(
                      color: Colors.grey,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    inputManager.userInput = "butotn orks";
                  });
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            )
          ],
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
  final InputManager inputManager = InputManager();
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
            child: Visibility(
              visible: values.isNotEmpty,
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
                            onPressed: () {
                              setState(() {
                                values.clear();
                              });
                            },
                            child: const Text(
                              "Clear",
                              style: TextStyle(color: Colors.yellow),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
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
          ),

          // DEVICE SONGS ARE HERE.
          Visibility(
            visible: device.isNotEmpty,
            child: Expanded(
              child: ListView.builder(
                  itemCount: device.length,
                  itemBuilder: (context, index) {
                    return DeviceSong(
                        index: device[index]["index"]!,
                        time: device[index]["time"]!,
                        album: device[index]["album"]!,
                        name: device[index]["name"]!,
                        image: device[index]["image"]!,
                        removeFromList: (String itemIndex) {
                          setState(() {
                            device.removeAt(index);
                          });
                        });
                  }),
            ),
          ),
          Text(
            inputManager.userInput,
            style: const TextStyle(color: Colors.white),
          ),
          // ONLINE SONGS ARE HERE.
          Visibility(
              visible: device.isEmpty, child: OnlineSearch(online: online)),
        ],
      ),
    );
  }
}
