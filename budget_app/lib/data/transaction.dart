import 'package:budget_app/data/category.dart';
import 'package:intl/intl.dart';

class Transaction {
  final double amount;
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

  String getDate() {
    return DateFormat('dd.M.yyyy').format(transactionTime);
  }
}
