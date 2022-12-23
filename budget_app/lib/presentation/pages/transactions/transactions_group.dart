import 'package:flutter/material.dart';
import '../../navigation/main_page.dart';
import 'transactions_tile.dart';

class TransactionsGroup extends StatelessWidget {
  const TransactionsGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MainPage.horizontalPadding, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text("Text"), Text("-CHF 108")],
          ),
          const TransactionTile()
        ],
      ),
    );
  }
}
