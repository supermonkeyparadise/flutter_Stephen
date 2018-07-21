// Import flutter helper library
import 'package:flutter/material.dart';

// 只 import get function，不全部載入
import 'package:http/http.dart' show get;
import 'dart:convert';

// 相對於目前檔案的路徑
import 'models/image_model.dart';
import 'widgets/imag_list.dart';

// widget class
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// widget state class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final response =
        await get('https://jsonplaceholder.typicode.com/photos/$counter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    // 重繪
    setState(() {
      images.add(imageModel);
    });
  }

  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
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
