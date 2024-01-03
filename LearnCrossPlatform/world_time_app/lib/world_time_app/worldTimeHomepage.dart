import 'package:flutter/material.dart';
import 'package:world_time_app/world_time_app/chooseLocation.dart';

class WorldTimeHomepage extends StatefulWidget {
  const WorldTimeHomepage({super.key});
  @override
  State<WorldTimeHomepage> createState() => _WorldTimeHomepageState();
}

class _WorldTimeHomepageState extends State<WorldTimeHomepage> {
  @override
  Widget build(BuildContext context) {
    final Object? dataValues = ModalRoute.of(context)?.settings.arguments;
    print(dataValues == null ? "value is null " : "not null");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              "current Time : ${dataValues ?? "no value"}",
            style: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
            const SizedBox(
              height: 20.0,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "location data"
               // "Current Location : ${data["location"]!}",
              ),
              const SizedBox(
                width: 20.0,
              ),
              Image.network("https://flagsapi.com/KE/flat/64.png"),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
            ElevatedButton.icon(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const LocationChoice()),
                  );
                },
                icon: const Icon(Icons.location_city),
              label: const Text("edit location"),
            ),
        ],
      ),
    );
  }
}