import 'package:budget_app/presentation/pages/transactions/transactions_add_view.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/spacing.dart' as spacing;

import '../../core/primary_button.dart';
import 'transactions_group.dart';

class TransactionsListView extends StatelessWidget {
  const TransactionsListView({Key? key}) : super(key: key);

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
            decoration: BoxDecoration(color: brand_colors.backgroundColor),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.arrow_back_ios),
                Text("Heute"),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        TransactionsGroup(),
        TransactionsGroup(),
        Expanded(child: SizedBox()),
        PrimaryButton(
          text: "Neue Transaktion",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TransactionsAddView(),
              ),
            );
          },
        ),
        SizedBox(
          height: spacing.buttonOffsetBottom,
        ),
      ],
    );
  }
}
