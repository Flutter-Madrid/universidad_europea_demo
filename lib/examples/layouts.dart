import 'package:flutter/material.dart';
import 'package:uedemo/examples/core_widgets.dart';

class RowSample extends StatelessWidget {
  const RowSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          //1
          Row(
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),
          //2
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Container(
            height: 100,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Ejemplo 1"),
                Text("Ejemplo 2"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnSample extends StatelessWidget {
  const ColumnSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Center(
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExpandedSample extends StatelessWidget {
  const ExpandedSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          //1
          Row(
            children: <Widget>[
              Text("Texto"),
              Text("Texto muy largooooooooooooooooooooooooooooooooooooooo"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //2
          Row(
            children: <Widget>[
              Text("Texto"),
              Expanded(
                  child: Text(
                      "Texto muy largooooooooooooooooooooooooooooooooooooooo")),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //3
          Row(
            children: <Widget>[
              Expanded(child: Text("Texto")),
              Expanded(
                  child: Text(
                      "Texto muy largooooooooooooooooooooooooooooooooooooooo")),
            ],
          ),
          //4
          Row(
            children: <Widget>[
              Expanded(
                child: Text("Texto"),
                flex: 1,
              ),
              Expanded(
                  flex: 2,
                  child: Text(
                      "Texto muy largooooooooooooooooooooooooooooooooooooooo")),
            ],
          ),
          //5
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  width: 500, //no afecta, coge todo el espacio disponible
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class FlexibleSample extends StatelessWidget {
  const FlexibleSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          //1
          Row(
            children: <Widget>[
              Text("Texto"),
              Text("Texto muy largooooooooooooooooooooooooooooooooooooooo"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //2
          Row(
            children: <Widget>[
              Text("Texto"),
              Flexible(
                  child: Container(
                color: Colors.pink,
                child: Text(
                    "Texto muy largooooooooooooooooooooooooooooooooooooooooooooo"),
              )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //3
          Row(
            children: <Widget>[
              Flexible(child: Text("dddddddddddddddddddddddddddd")),
              Flexible(
                  child: Container(
                color: Colors.amber,
                child: Text(
                    "Texto muy largooooooooooooooooooooooooooooooooooooooooooooo"),
              )),
            ],
          ),
          //4
          Row(
            children: <Widget>[
              Flexible(
                child: Container(
                    child: Text("Textodddddddddddddd"), color: Colors.red),
                flex: 1,
              ),
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.red,
                    child: Text(
                        "Texto muy largooooooooooooooooooooooooooooooooooooooo"),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpandedFlexibleSample extends StatelessWidget {
  const ExpandedFlexibleSample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: <Widget>[
          //1
          Row(
            children: <Widget>[
              Flexible(
                //flex: 1,
                child: Container(
                  height: 100,
                  width: 50, // Tendrá width <= 50
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 50, //Influirá en el que tendrá el Flexible
                child: Container(
                  height: 100,
                  width: 10, // no afecta
                  color: Colors.amber,
                ),
              ),
            ],
          ),
          //2
          Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight, // == Expanded
                child: Container(height: 100, width: 40, color: Colors.grey),
              ),
              Flexible(
                child: Container(height: 100, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
