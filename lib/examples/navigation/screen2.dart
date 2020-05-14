import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2(this.message, {Key key}) : super(key: key);

  static const String routeName = 'screen2';
  final String message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go to screen 1"),
            ),
          ],
        ),
      ),
    );
  }
}
