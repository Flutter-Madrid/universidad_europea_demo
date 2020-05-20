import 'package:flutter/material.dart';
import 'package:uedemo/examples/core_widgets.dart';
import 'package:uedemo/examples/future/gif_box.dart';
import 'package:uedemo/examples/future/giphy_api.dart';

class StreamSampleScreen extends StatefulWidget {
  StreamSampleScreen({Key key}) : super(key: key);

  @override
  _StreamSampleScreenState createState() => _StreamSampleScreenState();
}

class _StreamSampleScreenState extends State<StreamSampleScreen> {
  int selected = INIT;
  static const INIT = 1;

  callStream() => GiphyApi.getFirstGifStream(selected);

  @override
  Widget build(BuildContext context) {
    print("Build"); // Just called to init
    return Scaffold(
        appBar: CustomAppBar(),
        body: _getBody(),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.refresh),
              onPressed: () {
                selected = INIT;
                callStream();
              },
            ),
            SizedBox(
              width: 5,
            ),
            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                selected += 1;
                callStream();
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
          StreamBuilder<String>(
            stream: GiphyApi.gifController.stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                callStream(); //Init
                return Container(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                return Column(
                  children: <Widget>[
                    GifBox(
                      url: snapshot.data,
                    ),
                    Text(
                      "Mostrando imagen $selected",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
