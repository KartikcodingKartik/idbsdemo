import 'package:flutter/material.dart';
import 'package:idbs/screens/home.dart';
import 'package:idbs/screens/passbook/passbook.dart';

import '../screens/recent_transactions/recent_transaction_screen.dart';
class CustomRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case HomeScreen.id:
        return MaterialPageRoute(builder: (_) {
          return const HomeScreen();
        });
      case RecentTransaction.id:
        return MaterialPageRoute(builder: (_) {
          return const RecentTransaction();
        });
      case PassbookScreen.id:
        return MaterialPageRoute(builder: (_) {
          return const PassbookScreen();
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