// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muzz/components/Colors.dart';

TextStyle textStyling = const TextStyle(color: Colors.grey);

class DeviceSong extends StatefulWidget {
  final String time, album, name, image;
  final Function removeFromList;
  const DeviceSong(
      {super.key,
      required this.time,
      required this.album,
      required this.name,
      required this.image,
      required this.removeFromList});

  @override
  State<DeviceSong> createState() => _DeviceSongState();
}

class _DeviceSongState extends State<DeviceSong> {
  static bool playStateDevice = false;

  @override
  Widget build(BuildContext context) {
    return Dismisser(
        dismiseFunction: widget.removeFromList,
        word: widget.time,
        song: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          decoration: BoxDecoration(color: lightPurple),
          width: 600,
          height: 70,
          child: Row(children: [
            ArtistImage(
                avatar: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(widget.image == ""
                      ? "assets/randomArtist.jpg"
                      : widget.image),
                ),
                playStateManager: () {
                  setState(() {
                    playStateDevice = !playStateDevice;
                  });
                },
                playState: playStateDevice),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(children: [
                  Text(
                    "album : ${widget.album}",
                    style: textStyling,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    widget.time,
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_outlined,
                        size: 50.0,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }
}

class Dismisser extends StatefulWidget {
  final String word;
  final Widget song;
  final Function dismiseFunction;
  const Dismisser(
      {super.key,
      required this.word,
      required this.song,
      required this.dismiseFunction});

  @override
  State<Dismisser> createState() => _DismisserState();
}

class _DismisserState extends State<Dismisser> {
  Widget containerWidget(Alignment alignment, ) {
    return Container(
      color: const Color.fromARGB(255, 143, 37, 30),
      alignment: alignment,
      child: Icon(
        Icons.delete,
        size: 40.0,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.word),
      background: containerWidget(Alignment.centerLeft),
      secondaryBackground: containerWidget(Alignment.centerRight),
      onDismissed: (value) {
        widget.dismiseFunction();
      },
      child: widget.song,
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
  bool playState = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
      decoration: BoxDecoration(color: lightPurple),
      width: 600,
      height: 70,
      child: Row(children: [
        ArtistImage(
            avatar: CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(widget.image == ""
                  ? "assets/randomArtist.jpg"
                  : widget.image),
            ),
            playStateManager: () {
              setState(() {
                playState = !playState;
              });
            },
            playState: playState),
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
                if (downloadState == true)
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
                    setState(() {
                      downloadState = !downloadState;
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

class ArtistImage extends StatefulWidget {
  final Widget avatar;
  final VoidCallback playStateManager;
  final bool playState;
  const ArtistImage(
      {super.key,
      required this.avatar,
      required this.playStateManager,
      required this.playState});

  @override
  State<ArtistImage> createState() => ArtistImageState();
}

class ArtistImageState extends State<ArtistImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.avatar,
        Positioned(
          top: 5.0,
          child: IconButton(
            onPressed: () {
              widget.playStateManager();
            },
            icon: Icon(
              widget.playState
                  ? Icons.pause_circle_filled
                  : Icons.play_arrow_rounded,
              size: 40.0,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
