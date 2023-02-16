import 'package:floor/floor.dart';

@entity
class Transaction {
  @primaryKey
  final int id;
  final String date;
  final String description;
  final String price;
  final int passbookRange;


  Transaction(this.id,  this.date, this.price,this.description,this.passbookRange );
}
