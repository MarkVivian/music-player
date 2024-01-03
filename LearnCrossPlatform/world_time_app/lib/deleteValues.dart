import 'package:flutter/material.dart';

class Cards extends StatefulWidget {
  final Function function;
  final List<String> value;
  const Cards({super.key, required this.value, required this.function});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        child : Column(
          children: widget.value.map((e) => Card(
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text(e)
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                        onPressed: (){
                          setState(() {
                            widget.function(val : e);
                          });
                        },
                        icon: const Icon(Icons.delete),
                        label: const Text("delete")),
                  ),
                ],
              ),
            ),
          )).toList(),
        ),
    );
  }
}
