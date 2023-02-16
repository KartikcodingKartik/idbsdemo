
import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:idbs/database/transaction_entity.dart';
import 'package:provider/provider.dart';

import '../database/database.dart';
import '../database/transaction_duo.dart';

class TransactionsViewProvider with ChangeNotifier , DiagnosticableTreeMixin {
  late AppDatabase database;
  late final transactionDao;

init() async {
  database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
}
addEntry(int id,String date,String description, String price,int passbookRange) async {
   transactionDao = database.transactionDao;
   final transactionData = Transaction(id, date, price, description, passbookRange);
  await transactionDao.insertPerson(transactionData);
  }
}