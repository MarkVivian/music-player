import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class DiscoverAppbar extends StatefulWidget implements PreferredSizeWidget{
  const DiscoverAppbar({super.key});

  @override
  State<DiscoverAppbar> createState() => _DiscoverAppbarState();
  
  @override
  Size get preferredSize => appbarHeight;
}

class _DiscoverAppbarState extends State<DiscoverAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: lightPurple,
    title:const Text(
      "Discover File",
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

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}