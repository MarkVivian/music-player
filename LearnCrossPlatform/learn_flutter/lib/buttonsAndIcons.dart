import 'package:flutter/material.dart';

class ButtonsAndIcons extends StatelessWidget {
  const ButtonsAndIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed:(){}, icon: const Icon(Icons.car_crash)),
        FloatingActionButton(onPressed: (){}, child: const Text("this is a button with a shadow"),),
        const Icon(Icons.swipe_left_alt),
      ],
    );
  }
}
