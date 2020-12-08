import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/menu.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Library App',
      theme: ThemeData.light(),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              Tab(
                  icon: Icon(Icons.home),
                  text: 'Red'),
              Tab(
                  icon: Icon(Icons.add_alarm),
                  text: 'Blue'),
              Tab(
                  icon: Icon(Icons.save),
                  text: 'Yellow'),
            ],
          ),
          appBar: AppBar(
              title: Text('Flutter Library App'), backgroundColor: Colors.pink),
          body: TabBarView(
            children: <Widget>[
              AppTree(),
              MenuContainerSecond(),
              MenuContainerThirth(),
            ],
          ),
        ),
      ),
    );
  }
}
