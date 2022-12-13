import 'package:flutter/material.dart';

import '../../core/primary_button.dart';
import 'transactions_group.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 100,
          color: Colors.grey,
        ),
        TransactionsGroup(),
        TransactionsGroup(),
        Expanded(child: SizedBox()),
        PrimaryButton(
          text: "Neue Transaktion",
          onPressed: () {},
        ),
      ],
    );
  }
}
