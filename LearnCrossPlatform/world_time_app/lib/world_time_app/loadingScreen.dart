import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WordTime instance = WordTime(location: "Nairobi", flag: "nairobi.png", urlEndPoint: "Africa/Nairobi");
  void setupWorldTime() async {
    await instance.getTime();
    Future.delayed(const Duration(seconds: 1), ()
    {
      Navigator.pushNamed(context, '/home', arguments: {
        'location': "nairobi",
        'time': "12.00",
        'flag': "kenya"
      });
    });
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.0),
          child: Text("this is a loading screen")
      ),
    );
  }
}
