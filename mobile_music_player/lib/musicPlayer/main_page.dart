import 'package:flutter/material.dart';
import 'package:muzz/components/variables.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentValue = 1;
  bool playState = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepPurple,
      resizeToAvoidBottomInset: false,

      
      appBar: pagesAppbar[currentValue],

      // this shows the body. the indexStack makes sure the state is kept in the body widgets.
      body: IndexedStack(
          index: currentValue,
          children: pagesBody,
      ),

      bottomNavigationBar: SizedBox(
        height: 80.0,
        child: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.black,
          backgroundColor: lightPurple,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentValue,
          iconSize: 20.0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Discover"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/randomArtist.jpg"),
                  radius: 22.0,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken), label: "favourites"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "songs"),
          ],
          onTap: (index) {
            setState(() {
              currentValue = index;
            });
          },
        ),
      ),
    );
  }
}
