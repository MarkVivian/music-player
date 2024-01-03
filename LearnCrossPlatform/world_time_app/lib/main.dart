import 'package:flutter/material.dart';
import 'package:world_time_app/world_time_app/loadingScreen.dart';
import 'package:world_time_app/world_time_app/worldTimeHomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const LoadingScreen(),
        '/home' : (context) => const WorldTimeHomepage()
      },
    );
  }
}
