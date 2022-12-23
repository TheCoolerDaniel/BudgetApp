import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/spacing.dart' as spacing;

import 'package:budget_app/presentation/pages/analysis/investment_tile.dart';
import 'package:budget_app/presentation/core/primary_button.dart';
import 'quick_peak.dart';

import 'package:budget_app/data/investment.dart';

class AnalysisView extends StatelessWidget {
  AnalysisView({Key? key}) : super(key: key);

  final investment =
      Investment(symbol: "GME", name: "Game Stop", investmentTransactions: []);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: spacing.appBarOffsetBottom,
        bottom: spacing.buttonOffsetBottom,
        left: spacing.paddingSide,
        right: spacing.paddingSide,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickPeek(),
          SizedBox(height: spacing.separatorSmall),
          InvestmentTile(investment: investment),
          Expanded(child: SizedBox()),
          Center(
            child: PrimaryButton(
              text: "Symbol hinzufügen",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
