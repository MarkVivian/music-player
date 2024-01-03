import 'package:cards_classes/quoteClass.dart';
import 'package:flutter/material.dart';

class ListViewCard extends StatefulWidget {
  final String author, quote;
  const ListViewCard({super.key, required this.author, required this.quote});

  @override
  State<ListViewCard> createState() => _ListViewCardState();
}

class _ListViewCardState extends State<ListViewCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.brown,
      margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              widget.author,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
                children : [
                  Expanded(
                    flex: 3,
                    child: Text(
                    widget.quote,
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 18.0,
                    ),
                ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            deleteValue(author: widget.author);
                            });
                        },
                        child: const Icon(Icons.delete),),
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
