import 'package:budget_app/data/transaction.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;

class TransactionTile extends StatelessWidget {
  static const double _iconDiameter = 30;
  final Transaction transaction;

  const TransactionTile({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: _iconDiameter,
            width: _iconDiameter,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: brand_colors.primaryColor,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(transaction.category.name),
              Text(transaction.comment),
            ],
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Text("CHF ${transaction.amount.toString()}"),
        ],
      ),
    );
  }
}
