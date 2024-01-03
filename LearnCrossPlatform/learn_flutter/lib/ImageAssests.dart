import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageAssests extends StatelessWidget {
  static const List<String> images = [
    "assets/images/ubuntu2_by_arman1992.jpg",
    "assets/images/ubuntu_by_arman1992.jpg"
  ];
  const ImageAssests({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index){
          return Image(
              height: 200.0,
              image: AssetImage(images[index])
          );
        },
    );
  }
}
