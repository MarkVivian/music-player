import 'package:flutter/material.dart';
import 'package:untitled/ColumnsAndRow.dart';
//NB: always put a comma after every widget.
class ScaffoldAppBar extends StatelessWidget {
  const ScaffoldAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    // this allows us to specify different things about our app..
    return Scaffold(
      backgroundColor: Colors.purple[800],
      // this is a property that allows us to specify how our app looks at the top.
      appBar: AppBar(
        // this is the text of the title
        title: const Text("learning flutter"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),

      // specify what property goes to the body of the screen
      body: const Columns(widgetObject: Text(
          "hello mark vivian",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
            fontFamily: 'Borel',
            height: 5.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: "this is a tooltip",
        child:const Text("click"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      bottomNavigationBar: const BottomAppBar(
        child: Text("this is the bottom app bar"),
      ),
    );
  }
}
