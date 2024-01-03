import 'package:cards_classes/quoteClass.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards ({super.key});
  static List<Quotes> quotesValues = [
    Quotes(author: "Ugue", quote: "yesterday is history, today is a mistery, tomorrow is a gift thats why its called present."),
    Quotes(author: "mark", quote: "Life is too short to care about other peoples oppinions."),
  ];
  Widget quotes({required String author, required String quote}){
      return Card(
        color: Colors.brown,
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                author,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                quote,
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children : quotesValues.map((e) => quotes(author: e.author, quote: e.quote)).toList(),
      ),
    );
  }
}
