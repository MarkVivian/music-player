import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class NowPlayingAppbar extends StatefulWidget implements PreferredSizeWidget{
  const NowPlayingAppbar({super.key});

  @override
  State<NowPlayingAppbar> createState() => _NowPlayingAppbarState();
  
  @override
  Size get preferredSize => appbarHeight;
}

class _NowPlayingAppbarState extends State<NowPlayingAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: lightPurple,
    title:const Text(
      "NowPlaying File",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
      ),
      ),
      centerTitle: true,
    leading: const Image(
      image: AssetImage("assets/headphoneIcon.png"),
      width: 20.0,
      height: 20.0
      ),
    );
  }
}

class NowplayingBody extends StatelessWidget {
  const NowplayingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}