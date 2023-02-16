import 'package:flutter/material.dart';
import 'package:idbs/router/custom_router.dart';
import 'package:idbs/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: CustomRouter.generateRoute,
      home: const HomeScreen(),
    );
  }
}


