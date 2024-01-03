import 'package:flutter/material.dart';
import 'package:muzz/components/song.dart';
import 'package:muzz/components/variables.dart';

class SongListAppbar extends StatefulWidget implements PreferredSizeWidget {
  const SongListAppbar({super.key});

  @override
  State<SongListAppbar> createState() => _SongListAppbarState();

  @override
  Size get preferredSize => appbarHeight;
}

class _SongListAppbarState extends State<SongListAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: lightPurple,
      title: const Text(
        "SongList File",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      leading: const Image(
          image: AssetImage("assets/headphoneIcon.png"),
          width: 20.0,
          height: 20.0),
    );
  }
}

class SonglistBody extends StatefulWidget {
  const SonglistBody({super.key});

  @override
  State<SonglistBody> createState() => _SonglistBodyState();
}

class _SonglistBodyState extends State<SonglistBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: ListView.builder(
            itemCount: device.length,
            itemBuilder: ((context, index) {
              return DeviceSong(
                  time: device[index]["time"]!,
                  index: device[index]["index"]!,
                  album: device[index]["album"]!,
                  name: device[index]["name"]!,
                  image: device[index]["image"]!,
                  removeFromList: () {
                    setState(() {
                      device.removeAt(index);
                    });
                  });
            })));
  }
}
