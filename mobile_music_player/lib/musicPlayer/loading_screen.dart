import 'package:flutter/material.dart';
import 'package:muzz/musicPlayer/main_page.dart';
import 'package:muzz/components/variables.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void switchScreens() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MainPage()));
    });
  }

  @override
  void initState() {
    super.initState();
    switchScreens();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/headphoneIcon.png")),
            Text(
              "MUZZ",
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 300.0,
              child: Text(
                "enjoy your music the way you like it",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromRGBO(250, 255, 6, 1),
                    fontFamily: "jacques"),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
