import 'package:flutter/material.dart';

double grootte = 100;

class InteractionPage extends StatefulWidget {
  State<StatefulWidget> createState() => _InteractionContainer();
}

class _InteractionContainer extends State<InteractionPage> {
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap:() {
          setState(() {
            grootte -= 10;
          });
        },
        onTap:() {
          setState(() {
            grootte += 10;
          });
        },
        child: Container(
          height: grootte,
          width: grootte,
          color: Colors.teal,
        ),
      ),
    );
  }
}
