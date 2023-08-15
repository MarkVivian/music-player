// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mobile_music_player/components/Colors.dart';

TextStyle textStyling = const TextStyle(color: Colors.grey);

class DeviceSong extends StatelessWidget {
  final String time, album, name, image;
  const DeviceSong(
      {super.key,
      required this.time,
      required this.album,
      required this.name,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      decoration: BoxDecoration(color: lightPurple),
      width: 600,
      height: 70,
      child: Row(children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage:
              AssetImage(image == "" ? "assets/randomArtist.jpg" : image),
        ),
        const SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(children: [
              Text(
                "album : $album",
                style: textStyling,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                time,
                style: textStyling,
              ),
            ]),
          ],
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    //print("i have been pressed");
                  },
                  icon: Icon(
                    Icons.menu_outlined,
                    size: 50.0,
                    color: Colors.black,
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}

class DownloadSong extends StatefulWidget {
  final String time, album, name, image, percentage;
  const DownloadSong(
      {super.key,
      required this.time,
      required this.album,
      required this.name,
      required this.image,
      required this.percentage});

  @override
  State<DownloadSong> createState() => _DownloadSongState();
}

class _DownloadSongState extends State<DownloadSong> {
  bool downloadState = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      decoration: BoxDecoration(color: lightPurple),
      width: 600,
      height: 70,
      child: Row(children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage(
              widget.image == "" ? "assets/randomArtist.jpg" : widget.image),
        ),
        const SizedBox(
          width: 15.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 12.0,
                ),
               if(downloadState == true)
                 Text(
                  "downloading: ${widget.percentage}",
                  style: TextStyle(color: Colors.white),
                  ),
              ],
            ),
            Row(children: [
              Text(
                "album : ${widget.album}",
                style: textStyling,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "time : ${widget.time}",
                style: textStyling,
              ),
            ]),
          ],
        ),
        Expanded(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    //print("i have been pressed");
                    setState(() {
                      downloadState = true;
                    });
                  },
                  icon: Icon(
                    downloadState == true ? Icons.downloading : Icons.download,
                    size: 50.0,
                    color: Colors.black,
                  ),
                ),
              ]),
        ),
      ]),
    );
  }
}
