// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';


class DeviceSong extends StatefulWidget {
  final String time, album, name, image, index;
  final Function removeFromList;
  const DeviceSong(
      {super.key,
      required this.time,
      required this.index,
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
        index: widget.index,
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
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    widget.time,
                    style: const TextStyle(color: Colors.grey),
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
  final String index;
  final Widget song;
  final Function dismiseFunction;
  const Dismisser(
      {super.key,
      required this.index,
      required this.song,
      required this.dismiseFunction});

  @override
  State<Dismisser> createState() => _DismisserState();
}

class _DismisserState extends State<Dismisser> {
  // function for the two delete icons.
  Widget containerWidget(Alignment alignment) {
    return Container(
        color: const Color.fromARGB(255, 143, 37, 30),
        alignment: alignment,
        child: Icon(
          Icons.delete,
          size: 40.0,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(widget.index),
      background: containerWidget(Alignment.centerLeft),
      secondaryBackground: containerWidget(Alignment.centerRight),
      onDismissed: (dismisableDirection) {
        widget.dismiseFunction(widget.index);
      },
      child: widget.song,
    );
  }
}

// THIS CONTAINS THE DOWNLOAD SONGS LAYOUT.
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
      padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 0),
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
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),

              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                "time : ${widget.time}",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0
                  ),
              ),
            ]),
          ],
        ),
        SizedBox(
          width: 12.0,
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  size: 35.0,
                  color: Colors.black,
                ),
              ),
            ]),
      ]),
    );
  }
}

// THIS WILL CHANGE THE STATE OF THE SONG EITHER FROM PLAY TO PAUSE.
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
