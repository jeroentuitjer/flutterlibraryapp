import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../shared/headerwidget.dart';

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
        backgroundColor: Colors.pink,
      ),
      body: Container(
        child: Column( children: <Widget>[
          Expanded(
            child: HeaderWidget(),
          ),
          Expanded(
           child: Container(
            color: Colors.blue,
          ),
          ),
          Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                  ),
                ),
          ],
          ),
        ),
      ],
    ),
      ),
    );
  }

}



String mijnText = 'hoi hoi';