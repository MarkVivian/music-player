import 'package:flutter/material.dart';

class LearnLists extends StatelessWidget {
  const LearnLists({super.key});
  static final List<String> quotes = [
    "not everyone loves you some just pretend",
    "every good thing has a bad side",
    "today is a gift that's why its called present"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: quotes.map((e) => Text(
          " > $e.",
        style: const TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.bold
        ),
      )).toList(),
    );
  }
}
