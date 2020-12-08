import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../shared/headerwidget.dart';

class EmbeddedWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("Embedded widget", textDirection: TextDirection.ltr);
  }
}

class AppTree extends StatelessWidget {
  Widget build(BuildContext context) {
     return Container(color:Colors.red);
  }
}

class MenuContainerSecond extends StatelessWidget{
  Widget build(BuildContext context) {
    return Container(color:Colors.blue);
  }
}
