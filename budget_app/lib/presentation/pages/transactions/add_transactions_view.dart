import 'package:budget_app/presentation/app_state.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;
import 'package:budget_app/presentation/core/custom_app_bar.dart';
import 'package:budget_app/presentation/core/primary_button.dart';

import '../../../data/category.dart';
import '../../../data/transaction.dart';

class AddTransactionView extends StatefulWidget {
  final VoidCallback saveAction;
  const AddTransactionView({
    Key? key,
    required this.saveAction,
  }) : super(key: key);

  @override
  State<AddTransactionView> createState() => _AddTransactionViewState();
}

class _AddTransactionViewState extends State<AddTransactionView> {
  double amount = 0;
  TransactionCategory category = TransactionCategory(
      name: "Nahrungsmittel", icon: SizedBox(), color: Colors.red);
  DateTime transactionDate = DateTime.now();
  String comment = "";

  @override
  Widget build(BuildContext context) {
    const double sidePadding = 20;

    return Scaffold(
      appBar: CustomAppBar(title: "Neue Transaktion"),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: brand_colors.backgroundColor,
        padding: const EdgeInsets.only(
            bottom: constants.buttonOffsetBottom,
            left: sidePadding,
            right: sidePadding),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Betrag",
                  style: brand_fonts.copyDark,
                ),
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: brand_fonts.hugeDark,
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Text("CHF", style: brand_fonts.hugeDark),
                    ),
                    prefixIconConstraints:
                        BoxConstraints(minWidth: 0, minHeight: 0),
                    hintText: "0.00",
                  ),
                  onChanged: ((value) {
                    amount = double.parse(value);
                  }),
                ),
              ],
            ),
            _Tile(
              leading: const _TileIcon(),
              title: const Text("Kategorie"),
              ending: Text(
                "Nahrungsmittel",
                style: brand_fonts.copyDark,
              ),
            ),
            _Tile(
              leading: const _TileIcon(),
              title: const Text("Datum"),
              ending: Row(
                children: const [
                  Icon(Icons.arrow_back_ios),
                  Text("Heute"),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            _Tile(
              leading: const _TileIcon(),
              // TODO DANIEL: Increase click area
              title: IntrinsicWidth(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration.collapsed(hintText: "Notiz"),
                  onChanged: (value) {
                    comment = value;
                  },
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            PrimaryButton(
              text: "Speichern",
              onPressed: () {
                state.transactions.add(
                  Transaction(
                    amount: amount,
                    category: category,
                    comment: comment,
                    transactionTime: transactionDate,
                    enteredTime: DateTime.now(),
                  ),
                );
                widget.saveAction();
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget? ending;
  const _Tile({
    Key? key,
    required this.leading,
    required this.title,
    this.ending,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double outerPadding = 10;
    const double innerPadding = 10;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: outerPadding),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: innerPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    leading,
                    const SizedBox(width: 5),
                    title,
                  ],
                ),
                if (ending != null) ending!,
              ],
            ),
          ),
          Container(
            height: 2,
            color: brand_colors.borderColor,
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

class _TileIcon extends StatelessWidget {
  const _TileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 15;

    return Container(
      height: iconSize,
      width: iconSize,
      decoration: const BoxDecoration(
        color: brand_colors.primaryColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
