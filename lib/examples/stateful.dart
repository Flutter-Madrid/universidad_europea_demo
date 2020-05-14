import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uedemo/examples/list.dart';

import '../utils.dart';
import '../main.dart';


class StatefulExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ExampleState();
}

class ExampleState extends State<StatefulExample> {
  Color color;

  @override
  void initState() {
    color = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        backgroundColor: color,
      ),
      onTap: () {
        setState(() {
          if (color == Colors.white)
            color = Colors.black;
          else
            color = Colors.white;
        });
      },
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color;

  const CustomContainer({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(20),
    );
  }
}

class NavigationBarExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarExample> {
  int index;
  int sum;

  @override
  void initState() {
    super.initState();
    index = 0;
    sum = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Key('Hola'),
      body: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('$sum'),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() => sum += 1);
                },
              ),
            ],
          ),
        ),
        StatelessPage(sum: sum),
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: [
          BottomNavigationBarItem(
              title: Text('Page 1'), icon: Icon(Icons.access_alarm)),
          BottomNavigationBarItem(
              title: Text('Page 2'), icon: Icon(Icons.update)),
        ],
      ),
    );
  }
}

class StatelessPage extends StatelessWidget {
  final int sum;

  const StatelessPage({Key key, this.sum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Stateless')),
        body: Center(
            child: Text(
          '$sum',
          style: TextStyle(color: Colors.white),
        )));
  }
}
