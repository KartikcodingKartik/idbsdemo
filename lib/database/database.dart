import 'dart:async';
import 'package:floor/floor.dart';
import 'package:idbs/database/transaction_duo.dart';
import 'package:idbs/database/transaction_entity.dart';

import 'package:sqflite/sqflite.dart' as sqflite;
part 'database.g.dart'; // the generated code will be there




@Database(version: 1, entities: [Transaction])
abstract class AppDatabase extends FloorDatabase {
  TransactionDao get transactionDao;
}