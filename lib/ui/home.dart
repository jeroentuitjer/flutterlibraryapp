import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  State<StatefulWidget> createState() => _HomeContainer();
}

class EmbeddedWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Text("Embedded widget", textDirection: TextDirection.ltr);
  }
}

class _HomeContainer extends State<HomePage>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Library App'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: EmbeddedWidget(),
      ),

    );
  }

}



String mijnText = 'hoi hoi';