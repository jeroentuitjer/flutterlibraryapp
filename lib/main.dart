import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/menu.dart';
import 'ui/interaction.dart';
import 'ui/form.dart';

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
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.add_alarm), text: 'Blue'),
              Tab(icon: Icon(Icons.save), text: 'Yellow'),
              Tab(icon: Icon(Icons.add), text: 'Green'),
            ],
          ),
          appBar: AppBar(
            title: Text(
              'Flutter Library App',
              style: TextStyle(
                  color: Colors.amber,
                  fontFamily: 'Open Sans',
                  fontSize: 30,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.pink,
          ),
          body: TabBarView(
            children: <Widget>[
              HomePage(),
              AppTree(),
              InteractionPage(),
              FormPage(),
            ],
          ),
        ),
      ),
    );
  }
}
