import 'package:flutter/material.dart';

class GifBox extends StatelessWidget {
  const GifBox({Key key, this.url}) : super(key: key);

  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      margin: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
