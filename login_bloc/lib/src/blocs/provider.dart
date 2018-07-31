import 'package:flutter/material.dart';

import './bloc.dart';

// for scoped instances
class Provider extends InheritedWidget {
  final bloc = Bloc();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static Bloc of(BuildContext context) {
    // 1. look up the tree find Provider type
    // 2. as Provider ===> 表示回傳的 widget 必須是一個 Provider 的實體
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}
