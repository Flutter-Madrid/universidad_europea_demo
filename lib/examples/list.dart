import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';


class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Item(index: 0),
        Item(index: 1),
        Item(index: 2),
        ...List.generate(20, (i) =>  Item(index: i+3)),
      ],
    );
  }
}

class ScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: ClampingScrollPhysics(),
      // scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Item(index: 0),
          Item(index: 1),
          Item(index: 2),
          ...List.generate(10000, (i) => Item(index: i + 3)),
        ],
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     /* children: [
        Item(index: 0),
        Item(index: 1),
        Item(index: 2),
        ...List.generate(10000, (i) => Item(index: i + 3)),
      ],*/
     itemBuilder: (context, index) => Item(index: index),
      itemCount: 100000,
    );
  }
}

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Item(index: 0),
        Item(index: 1),
        Item(index: 2),
        ...List.generate(10, (i) => Item(index: i + 3)),
      ],
      /*  itemBuilder: (context, index) => Item(index: index),
      itemCount: 10000,*/
    );
  }
}

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (context, index) => Box(index: index),
      itemCount: 10000,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 100,
         // maxCrossAxisExtent: 200,
      ),
    );
  }
}

class CustomScrollViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          title: Text('Test'),
          centerTitle: false,
          pinned: true,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Item(index: index),
            childCount: 3,
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
              // maxCrossAxisExtent: 200,
              ),
          delegate: SliverChildBuilderDelegate(
            (context, index) => Box(index: index),
            childCount: 10000,
          ),
        )
      ],
    );
  }
}
