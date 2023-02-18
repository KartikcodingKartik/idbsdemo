import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:idbs/database/transaction_duo.dart';
import 'package:idbs/database/transaction_entity.dart';

import '../database/database.dart';

class TransactionsViewProvider with ChangeNotifier,DiagnosticableTreeMixin {
  late AppDatabase database;
  late Directory directory;

  List<Transaction> _transactionIndex = [];

  List<Transaction> get transactionIndex => _transactionIndex;

  set transactionIndex(List<Transaction> value) {
    _transactionIndex = value;
    notifyListeners();
  }

  bool _isAmountVisible = false;

  bool get isAmountVisible => _isAmountVisible;

  set setIsAmountVisible(bool value) {
    _isAmountVisible = value;
    notifyListeners();
  }

  late TransactionDao _transactionDao;

  TransactionDao get transactionDao => _transactionDao;

  set transactionDao(TransactionDao value) {
    _transactionDao = value;
    notifyListeners();
  }

  int? updatedIndex;
  init() async {
    database =
        await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    _transactionDao = database.transactionDao;
    // transactionIndex = await transactionDao.retrieveTransaction();
    notifyListeners();

  }

  addEntry(int id, String date, String description, String price,
      int passbookRange) async {
    updatedIndex = transactionIndex.length + 1;
    await _transactionDao.insertPerson(
        Transaction(updatedIndex!, date, description, price, passbookRange));
    notifyListeners();

   /* transactionDao = database.transactionDao;
    final transactionData =
        Transaction(id, date, price, description, passbookRange);
    await transactionDao.insertPerson(transactionData);*/
  }
}
