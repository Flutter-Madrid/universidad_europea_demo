import 'package:flutter/material.dart';
import 'package:uedemo/examples/nav_items.dart';
import 'package:uedemo/examples/list.dart';

import 'examples/stateful.dart';
import 'utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //
      //
      // Cambia el parámetro [example] para ver otro ejemplo
      home: Examples(example: Example.drawer),
      //
      //
      //
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

final examples = {
  Example.column: (_) => ColumnExample(),
  Example.scrollView: (_) => ScrollViewExample(),
  Example.listView: (_) => ListViewExample(),
  Example.gridView: (_) => GridViewExample(),
  Example.pageView: (_) => PageViewExample(),
  Example.customScrollView: (_) => CustomScrollViewExample(),
  Example.drawer: (_) => ScaffoldExample(),
  Example.stateful: (_) => StatefulExample(),
  Example.tabBar: (_) => TabBarExample(),
  Example.navBar: (_) => NavigationBarExample(),
};

enum Example {
  column,
  scrollView,
  listView,
  gridView,
  customScrollView,
  drawer,
  tabBar,
  pageView,
  stateful,
  navBar
}
