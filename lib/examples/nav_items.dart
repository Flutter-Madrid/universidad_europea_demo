import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drawer and tab bar',
          style: Theme.of(context).primaryTextTheme.headline5,
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => Item(
            index: index,
            key: Key(index.toString()),
          ),
          itemCount: 200,
        ),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index == 0) {
              return UserAccountsDrawerHeader(
                accountName: Text("Jaime"),
                accountEmail: Text("example@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("J", style: TextStyle(fontSize: 40.0)),
                ),
              );
            } else {
              return Item(index: index);
            }
          },
          itemCount: 200,
        ),
      ),
    );
  }
}

class TabBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab bar'),
          bottom: TabBar(tabs: [
            Tab(text: 'Tab 1', icon: Icon(Icons.access_alarm)),
            Tab(text: 'Tab 2', icon: Icon(Icons.update)),
            Tab(text: 'Tab 3', icon: Icon(Icons.av_timer)),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(color: Colors.white),
            Container(color: Colors.green),
            Container(color: Colors.blue),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          //currentIndex: 1,
          items: [
            BottomNavigationBarItem(
                title: Text('Page 1'), icon: Icon(Icons.access_alarm)),
            BottomNavigationBarItem(
                title: Text('Page 2'), icon: Icon(Icons.update)),
            BottomNavigationBarItem(
                title: Text('Page 3'), icon: Icon(Icons.av_timer))
          ],
        ),
      ),
    );
  }
}