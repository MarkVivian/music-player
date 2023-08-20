import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class SongListAppbar extends StatefulWidget implements PreferredSizeWidget{
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
    title:const Text(
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
      height: 20.0
      ),
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
    return const Placeholder();
  }
}