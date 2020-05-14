import 'package:flutter/material.dart';

import 'examples/navigation/screen1.dart';
import 'examples/navigation/screen2.dart';

const String initialRoute = Screen1.routeName;

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Screen1.routeName:
      return MaterialPageRoute(builder: (_) => Screen1());

    case Screen2.routeName:
      {
        return MaterialPageRoute(builder: (_) => Screen2(settings.arguments));
      }

    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ));
  }
}
