import 'package:flutter/material.dart';
import 'package:uedemo/examples/core_widgets.dart';
import 'package:uedemo/examples/future/giphy_api.dart';

class FutureSampleScreen extends StatefulWidget {
  FutureSampleScreen({Key key}) : super(key: key);

  @override
  _FutureSampleScreenState createState() => _FutureSampleScreenState();
}

class _FutureSampleScreenState extends State<FutureSampleScreen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
        appBar: CustomAppBar(),
        body: _getBody(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () {
                setState(() {
                  number = 1;
                });
              },
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                setState(() {
                  number += 1;
                });
              },
            ),
          ],
        ));
  }

  _getBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FutureBuilder<String>(
            future: GiphyApi.getFirstGif(number),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
              if (snapshot.hasData) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(snapshot.data),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Container();
            },
          ),
          Text(
            "Mostrando imagen $number",
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
