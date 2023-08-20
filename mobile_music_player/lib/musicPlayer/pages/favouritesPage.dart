import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class FavouriteAppbar extends StatefulWidget implements PreferredSizeWidget{
  const FavouriteAppbar({super.key});

  @override
  State<FavouriteAppbar> createState() => _FavouriteAppbarState();
  
  @override
  Size get preferredSize => appbarHeight;
}

class _FavouriteAppbarState extends State<FavouriteAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: lightPurple,
    title:const Text(
      "Favourite File",
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

class FavouriteBody extends StatelessWidget {
  const FavouriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
