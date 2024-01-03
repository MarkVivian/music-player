import 'package:flutter/cupertino.dart';
import 'package:untitled/StatelessStatefullWidgets.dart';
import 'package:untitled/buttonsAndIcons.dart';
import 'package:untitled/paddingAndMargin.dart';

class Columns extends StatelessWidget {
  final Widget widgetObject;
  const Columns({super.key, required this.widgetObject});

  @override
  Widget build(BuildContext context) {
    return Center(
        child : Column(
          children: [
            widgetObject,
            const StateLessWidget(),
           const Rows(rowWidgets: [
             PaddingAndMargin(),
             ButtonsAndIcons(),
           ]),
            
          ],
        ),
    );
  }
}

class Rows extends StatelessWidget {
  final List<Widget> rowWidgets;
  const Rows({super.key, required this.rowWidgets});

  @override
  Widget build(BuildContext context) {
    return Row(
      // if called in a row it means its alignment in the horizontail axis and vice versa
      mainAxisAlignment: MainAxisAlignment.center,
      // if called in row, it will align agaisn't the row.
      crossAxisAlignment: CrossAxisAlignment.end,
      children: rowWidgets,
    );
  }
}

