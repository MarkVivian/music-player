import 'package:flutter/material.dart';
import 'package:muzz/musicPlayer/loading_screen.dart';
import 'package:muzz/components/variables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muzz',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: deepPurple),
        useMaterial3: true,
      ),
      home: const LoadingScreen(),
    );
  }
}
