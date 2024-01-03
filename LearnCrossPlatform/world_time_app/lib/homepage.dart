import 'package:flutter/material.dart';
import 'package:world_time_app/deleteValues.dart';
import 'package:world_time_app/world_time_app/worldTimeHomepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List<String> values = ["value1", "value2", "value3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: SafeArea(
        top: true,
        child: Column(
          children: [
            const WorldTimeHomepage(),
            Cards(
              value: values,
              function: ({required String val}) {
                for (String content in values) {
                  if (content == val) {
                    values.remove(content);
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
