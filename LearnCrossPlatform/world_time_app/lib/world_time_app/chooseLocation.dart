import 'package:flutter/material.dart';

class LocationChoice extends StatefulWidget {
  const LocationChoice({super.key});

  @override
  State<LocationChoice> createState() => _LocationChoiceState();
}

class _LocationChoiceState extends State<LocationChoice> {
  void getData() async {
    await Future.delayed(const Duration(seconds: 3), (){
      print("get data has been caled");
    });
  }
  @override
  void initState() {
    super.initState();
    print("init state function run");
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: const Text("edit location"),
        backgroundColor: Colors.brown[600],
        centerTitle: true,
      ),
      body: Column(

      ),
    );
  }
}
