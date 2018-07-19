// Import flutter helper library
import 'package:flutter/material.dart';

// 只 import get function，不全部載入
import 'package:http/http.dart' show get;

// widget class
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// widget state class
class AppState extends State<App> {
  int counter = 0;

  void fetchImage() {}

  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          // onPressed: () {
          //   setState(() {
          //     counter += 1;
          //   });
          // },
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text('Let\'s see some images!'),
        ),
      ),
    );
  }
}
