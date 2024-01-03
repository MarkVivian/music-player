import 'package:cards_classes/cardListview.dart';
import 'package:cards_classes/cards.dart';
import 'package:cards_classes/lists.dart';
import 'package:cards_classes/quoteClass.dart';
import 'package:flutter/material.dart';

class ClassesListsCards extends StatefulWidget {
  const ClassesListsCards({super.key});

  @override
  State<ClassesListsCards> createState() => _ClassesListsCardsState();
}

class _ClassesListsCardsState extends State<ClassesListsCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("ClassesListsCards"),
        centerTitle: true,
      ),
      body: Column(
        children : [
          const Center(
            child: Text(
                "Lists",
              style: TextStyle(
                fontSize: 28.0
              ),
            ),
          ),
          const LearnLists(),
          const Center(
            child: Text(
                "Cards",
              style: TextStyle(
                  fontSize: 28.0
              ),
            ),
          ),
          const Cards(),
          const Center(
            child: Text(
            "Card Modified",
            style: TextStyle(
            fontSize: 28.0
              ),
            ),
          ),
          Column(
            children: quotesValues.map((e) => ListViewCard(author: e.author, quote: e.quote)).toList(),
          ),
        ],
      ),
    );
  }
}
