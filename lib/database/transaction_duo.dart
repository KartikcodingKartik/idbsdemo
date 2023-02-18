import 'package:floor/floor.dart';
import 'package:idbs/database/transaction_entity.dart';

@dao
abstract class TransactionDao {
  @insert
  Future<void> insertPerson(Transaction transaction);
/*  @insert
  Future<List<int>> insertTransaction(List<Transaction> user);*/

  @Query('SELECT * FROM Transaction')
  Future<List<Transaction>> retrieveTransaction();

  @Query('DELETE FROM Transaction WHERE id = :id')
  Future<Transaction?> deleteTransaction(int id );

}