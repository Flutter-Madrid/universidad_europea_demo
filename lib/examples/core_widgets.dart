import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text("Universidad Europea"));
  }
}

class TextsSample extends StatelessWidget {
  const TextsSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Texto simple',
            ),
            Text(
              "Texto formateado",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.yellow,
                fontWeight: FontWeight.w900,
                backgroundColor: Colors.pink,
              ),
            ),
            Text(
              "Texto formateado demasiado largooooooooooooooooooooooooooooooo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class ContainersSample1 extends StatelessWidget {
  const ContainersSample1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Text("Texto dentro de container"),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(30),
              width: double.infinity,
              child: Text("Texto dentro de container"),
            ),
            Container(
              color: Colors.pink,
              margin: EdgeInsets.all(8),
              width: double.infinity,
              child: Text(
                  "Texto dentro de container muy largooooooo largooooooooooooooo sdasdasad sads sdda d sadasdsadadasdsa"),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(8),
              width: double.infinity,
              height: 30,
              child: Text(
                  "Texto dentro de container muy largoooooooooooooooooooooooooooooooooooooooooooooo sdsasdadsadsdasaddso"),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(50),
              child: Text("Texto dentro de container"),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                  "Texto dentro de container muy largooooooooooooooooooooooooooooooooooooooooooooooo"),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainersSample2 extends StatelessWidget {
  const ContainersSample2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              //color: Colors.blue, // Error
              decoration: BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              transform: Matrix4.rotationZ(1),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Text("Texto not entra"),
            ),
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(100),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Text("Texto entra"),
            ),
          ],
        ),
      ),
    );
  }
}

class PaddingSample extends StatelessWidget {
  const PaddingSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 100,
                color: Colors.blue,
                width: double.infinity,
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("TEXTO"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: RaisedButton(
                onPressed: () => print("press"),
                child: Text("Enabled"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OtherBoxesSample extends StatelessWidget {
  const OtherBoxesSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
              width: 100,
              child: Text("Texto"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: Text("Texto"),
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              child: Container(
                color: Colors.red,
              ),
              constraints: BoxConstraints(
                maxHeight: 200,
                minHeight: 10,
                maxWidth: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonSample1 extends StatelessWidget {
  const ButtonSample1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                onPressed: () => print("press"),
                child: Text("Enabled"),
              ),
              FlatButton(
                child: Text("Disabled"),
              ),
              RaisedButton(
                onPressed: () => print("press"),
                child: Text("Enabled"),
              ),
              RaisedButton(
                child: Text("Disabled"),
              ),
              OutlineButton(
                child: Text("Enabled"),
                onPressed: () => print("press"),
              ),
              OutlineButton(
                child: Text("Disabled"),
              ),
            ],
          ),
        ));
  }
}

class ButtonSample2 extends StatelessWidget {
  const ButtonSample2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            FlatButton(
              onPressed: () => print("press"),
              child: Text("Flat"),
              color: Colors.red,
            ),
            RaisedButton(
              onPressed: () => print("press"),
              child: Text("Raised"),
              color: Colors.red,
            ),
            RaisedButton(
              onPressed: () => print("press"),
              child: Text("Raised"),
              color: Colors.red,
              padding: EdgeInsets.all(10),
            ),
            RaisedButton(
              onPressed: () => print("press"),
              child: Text("Raised"),
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            IconButton(
              icon: Icon(Icons.place),
            ),
            IconButton(
              icon: Icon(Icons.place),
              onPressed: () => print(""),
            ),
            IconButton(
              icon: Icon(Icons.access_alarm),
              color: Colors.red,
              onPressed: () => print(""),
            ),
          ],
        ),
      ),
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        backgroundColor: Colors.blue,
        /*actions: <Widget>[
                IconButton(icon: Icon(Icons.ac_unit)),
              ],*/
      ),
      body: Container(
        height: 200,
        color: Colors.grey.shade300,
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 100,
        color: Colors.blue,
      ),
      drawer: Container(
        color: Colors.amber,
        width: 200,
      ),
      /*endDrawer: Container(
              color: Colors.amber,
              width: 200,
            ),*/
      drawerScrimColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () => print(""),
      ),
    );
  }
}
