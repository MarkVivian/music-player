import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';
import 'package:muzz/muzz_pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muzz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: muzzColors["deep_purple"]!),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
