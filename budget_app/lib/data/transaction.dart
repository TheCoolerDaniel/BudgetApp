import 'package:budget_app/data/category.dart';

class Transaction {
  final int amount;
  final TransactionCategory category;
  final String comment;
  final DateTime transactionTime;
  final DateTime enteredTime;

  Transaction({
    required this.amount,
    required this.category,
    required this.comment,
    required this.transactionTime,
    required this.enteredTime,
  });
}
