import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Library App',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}


