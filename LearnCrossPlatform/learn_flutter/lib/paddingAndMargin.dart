// padding uses something called EdgeInset.
import 'package:flutter/cupertino.dart';

class PaddingAndMargin extends StatelessWidget {
  const PaddingAndMargin ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 600.0,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      margin: const EdgeInsets.all(10.0),
      color: CupertinoColors.systemPink,
      child: const Text("this is padding and margin "),
    );
  }
}
