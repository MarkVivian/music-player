import 'package:flutter/material.dart';
import 'package:muzz/components/song.dart';
import 'package:muzz/components/variables.dart';

class OnlineSearch extends StatefulWidget {
  final List<Map<String, String>> online;
  const OnlineSearch({super.key, required this.online});

  @override
  State<OnlineSearch> createState() => _OnlineSearchState();
}

class _OnlineSearchState extends State<OnlineSearch> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 40.0,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: lightPurple,
                border: Border.all(
                  color: deepPurple,
                  width: 4.0,
                )),
            child: const Text(
              "ONLINE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: widget.online.length,
                padding: const EdgeInsets.all(1.0),
                itemBuilder: (context, index) {
                  return DownloadSong(
                      time: widget.online[index]["time"]!,
                      album: widget.online[index]["album"]!,
                      name: widget.online[index]["name"]!,
                      image: widget.online[index]["image"]!,
                      percentage: widget.online[index]["percentage"]!);
                }),
          ),
        ],
      ),
    );
  }
}
