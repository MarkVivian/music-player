import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninja Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NinjaCard(),
    );
  }
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[800],
      appBar: AppBar(
        title: const Text(
            "Ninja Card App",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent[700],
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/pexels-kelvin-valerio-617278.jpg"),
                radius: 60.0,
              ),
            ),
            const Divider(
              height: 20.0,
              color : Colors.brown
            ),
            const Text(
              "Name",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 18.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Chun-Li",
              style: TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "Current Ninja status",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                  fontSize: 18.0
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                  color: Colors.yellow,
                  letterSpacing: 2.0,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Row(
              children: [
                Icon(
                    Icons.email,
                  size: 50.0,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "meliodasdragonsin008@gmail.com",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.0
                  ),
                ),
              ],
            ),
            const Expanded(
              child:Image(
                  image : AssetImage("assets/pexels-kelvin-valerio-617278.jpg")
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel ++;
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
