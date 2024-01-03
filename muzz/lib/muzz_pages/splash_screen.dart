import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';
import 'package:muzz/muzz_pages/home_page/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void goToHomePage() {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomePage()),
        ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    goToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: muzzColors["deep_purple"]!,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/headphoneIcon.png"),
            ),
            Text(
              "MUZZ",
              style: TextStyle(
                  color: muzzColors["white"]!,
                  fontSize: 35.0,
                  fontFamily: "hermeneusOne"),
            ),
            Text(
              "play your music your way",
              style: TextStyle(
                  color: muzzColors["white"]!,
                  fontFamily: "hermeneusOne",
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
