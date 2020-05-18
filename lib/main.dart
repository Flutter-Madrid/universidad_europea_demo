import 'package:flutter/material.dart';
import 'package:uedemo/examples/core_widgets.dart';
import 'package:uedemo/examples/future/future_sample_screen.dart';
import 'package:uedemo/examples/future/stream_sample_screen.dart';
import 'package:uedemo/examples/layouts.dart';
import 'package:uedemo/examples/nav_items.dart';
import 'package:uedemo/examples/list.dart';
import 'package:uedemo/examples/navigation/screen1.dart';

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
      home: Examples(example: Example.stream),
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
  Example.texts: (_) => TextsSample(),
  Example.containers1: (_) => ContainersSample1(),
  Example.containers2: (_) => ContainersSample2(),
  Example.padding: (_) => PaddingSample(),
  Example.otherBoxes: (_) => OtherBoxesSample(),
  Example.buttons1: (_) => ButtonSample1(),
  Example.buttons2: (_) => ButtonSample2(),
  Example.scaffold: (_) => ScaffoldSample(),
  Example.row: (_) => RowSample(),
  Example.columnLayout: (_) => ColumnSample(),
  Example.expanded: (_) => ExpandedSample(),
  Example.flexible: (_) => FlexibleSample(),
  Example.expandedFlexible: (_) => ExpandedFlexibleSample(),
  Example.navigation: (_) => Screen1(),
  Example.future: (_) => FutureSampleScreen(),
  Example.stream: (_) => StreamSampleScreen(),
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
  navBar,
  texts,
  containers1,
  containers2,
  padding,
  otherBoxes,
  buttons1,
  buttons2,
  scaffold,
  row,
  columnLayout,
  expanded,
  flexible,
  expandedFlexible,
  navigation,
  future,
  stream
}
