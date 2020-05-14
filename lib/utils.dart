import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'examples/nav_items.dart';
import 'examples/list.dart';
import 'main.dart';

extension on Example {
  bool get isScrollExample => [
        Example.column,
        Example.scrollView,
        Example.listView,
        Example.gridView,
        Example.pageView,
        Example.customScrollView,
      ].contains(this);
}

class Examples extends StatelessWidget {
  final Example example;

  const Examples({Key key, this.example}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (example.isScrollExample)
      return scrollExampleScaffold(context);
    else
      return examples[example](context);
  }

  Widget scrollExampleScaffold(BuildContext context) {
    return Scaffold(
      appBar: example == Example.customScrollView
          ? null
          : AppBar(title: Text('Scroll View Examples')),
      body: examples[example](context),
    );
  }
}

class Box extends StatelessWidget {
  final index;

  const Box({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item'),
            Text('$index'),
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  final index;

  const Item({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isHorizontalMode =
        Scrollable.of(context)?.axisDirection == AxisDirection.left ||
            Scrollable.of(context)?.axisDirection == AxisDirection.right;
    return isHorizontalMode
        ? Container(
            height: double.infinity,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.grey[300]))),
            width: 120,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Item'),
                  Text('$index'),
                ],
              ),
            ),
          )
        : ListTile(
            title: Text('Item $index'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Scaffold(
                        appBar: AppBar(title: Text('New Page')),
                      )));
            });
  }
}
