import 'package:budget_app/data/transaction.dart';
import 'package:flutter/material.dart';
import '../../navigation/home_page.dart';
import 'transactions_tile.dart';

class TransactionsGroup extends StatelessWidget {
  final String date;
  final List<Transaction> transactions;
  const TransactionsGroup({
    Key? key,
    required this.date,
    required this.transactions,
  }) : super(key: key);

  double calulateTotal(List<Transaction> transactions) {
    double total = 0;
    for (Transaction transaction in transactions) {
      total += transaction.amount;
    }
    return total;
  }

  List<Widget> transactionTiles(List<Transaction> transactions) {
    return transactions
        .map((transaction) => TransactionTile(transaction: transaction))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: HomePage.horizontalPadding, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(date),
              Text("CHF ${calulateTotal(transactions).toString()}"),
            ],
          ),
          Column(
            children: transactionTiles(transactions),
          ),
        ],
      ),
    );
  }
}
