import 'package:flutter/material.dart';
import 'package:uedemo/examples/navigation/screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);
  static const String routeName = 'screen1';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Screen 1"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              var message = "Hello from screen 1";
              //Navigator.pushNamed(context, Screen2.routeName, arguments: message);
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return Screen2(message);
              }));
            },
            child: Text("Go to screen 2"),
          ),
        ),
      ),
    );
  }
}
