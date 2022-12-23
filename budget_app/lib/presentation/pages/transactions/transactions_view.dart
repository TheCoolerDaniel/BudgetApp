import 'package:budget_app/presentation/core/empty_view.dart';
import 'package:budget_app/presentation/app_state.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import 'package:budget_app/presentation/pages/transactions/add_transactions_view.dart';
import '../../core/primary_button.dart';
import 'transactions_group.dart';

class TransactionsView extends StatefulWidget {
  const TransactionsView({Key? key}) : super(key: key);

  @override
  State<TransactionsView> createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        !state.hasTransaction
            ? const EmptyView(
                iconAddress: "assets/icons/lightning.png",
                title: "Noch keine Buchungen",
                description: "Erfasse blitzschnell deine erste Buchung.",
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                    child: Container(
                      decoration:
                          BoxDecoration(color: brand_colors.backgroundColor),
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
                ],
              ),
        Positioned(
          bottom: constants.buttonOffsetBottom,
          child: PrimaryButton(
            text: "Neue Buchung",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddTransactionView(
                    saveAction: () {
                      Navigator.pop(context);
                      setState(() {
                        state.hasTransaction = true;
                      });
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
