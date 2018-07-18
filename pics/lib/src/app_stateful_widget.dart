// Import flutter helper library
import 'package:flutter/material.dart';

// widget class
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// widget state class
class AppState extends State<App> {
  int counter = 0;

  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
      ),
    );
  }
}
