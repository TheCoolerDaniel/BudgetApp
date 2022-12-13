import 'package:flutter/material.dart';

import '../../main.dart';
import 'transactionsTile.dart';

class TransactionsGroup extends StatelessWidget {
  const TransactionsGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MyHomePage.horizontalPadding, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Text"), Text("-CHF 108")],
          ),
          const TransactionTile()
        ],
      ),
    );
  }
}
