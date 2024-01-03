import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muzzColors["deep_purple"]!,
      appBar: AppBar(
        backgroundColor: muzzColors["light_purple"]!,
        title: Text(
          "Music List",
          style: TextStyle(
            fontFamily: "hermeneusOne",
            color: muzzColors["white"]!
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: onPressed, icon: icon)
        ],
      ),
      body: const Column(),
    );
  }
}
