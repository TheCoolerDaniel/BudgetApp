import 'package:budget_app/main.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  static const double _iconDiameter = 30;

  const TransactionTile({
    Key? key,
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
              color: Colors.green,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Category"),
              Text("Comment"),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Text("CHF 108"),
        ],
      ),
    );
  }
}
