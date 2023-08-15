import 'package:flutter/material.dart';
import 'package:mobile_music_player/components/song.dart';
import 'package:mobile_music_player/components/Colors.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deeppurple,
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        centerTitle: true,
        backgroundColor: lightPurple,
      ),
      body: const Column(children: [
      ]),
      
    );
  }
}
