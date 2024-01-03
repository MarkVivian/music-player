import 'package:flutter/material.dart';
import 'package:untitled/ImageAssests.dart';

// this mean that the widget can't change over time.
class StateLessWidget extends StatelessWidget {
  const StateLessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 400.0,
      width: 400.0,
      child: ImageAssests(),
    );
  }
}
