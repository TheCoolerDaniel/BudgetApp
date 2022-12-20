import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;

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
          alignment: Alignment.center,
          height: 60,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Container(
            decoration: BoxDecoration(color: brand_colors.secondaryColor),
            alignment: Alignment.center,
            child: const Text("Today"),
          ),
        ),
        TransactionsGroup(),
        TransactionsGroup(),
        Expanded(child: SizedBox()),
        PrimaryButton(
          text: "Neue Transaktion",
          onPressed: () {},
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
