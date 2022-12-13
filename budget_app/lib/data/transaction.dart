import 'package:flutter/foundation.dart';

class Transaction {
  final int amount;
  final Category category;
  final DateTime transactionTime;
  final DateTime enteredTime;

  Transaction({
    required this.amount,
    required this.category,
    required this.transactionTime,
    required this.enteredTime,
  });
}
