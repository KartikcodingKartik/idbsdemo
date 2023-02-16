
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../screens/home.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case HomeScreen.id:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}