import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import 'package:budget_app/presentation/pages/analysis/investment_tile.dart';
import 'package:budget_app/presentation/core/primary_button.dart';
import 'quick_peak.dart';

import 'package:budget_app/data/investment.dart';

class AnalysisView extends StatelessWidget {
  const AnalysisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(
        top: constants.appBarOffsetBottom,
        bottom: constants.buttonOffsetBottom,
        left: constants.paddingSide,
        right: constants.paddingSide,
      ),
      child: _InvestmentView(),
    );
  }
}

class _InvestmentView extends StatelessWidget {
  const _InvestmentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final investment = Investment(
        symbol: "GME", name: "Game Stop", investmentTransactions: []);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickPeek(),
        SizedBox(height: constants.separatorSmall),
        InvestmentTile(investment: investment),
        Expanded(child: SizedBox()),
        Center(
          child: PrimaryButton(
            text: "Symbol hinzufügen",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
