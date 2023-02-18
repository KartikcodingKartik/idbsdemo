import 'package:flutter/material.dart';
import 'package:idbs/provider/provider.dart';
import 'package:idbs/router/custom_router.dart';
import 'package:idbs/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(

      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => TransactionsViewProvider()),
          ],
          child: const MyApp()));
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


