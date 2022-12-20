import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

class AnalysisView extends StatelessWidget {
  const AnalysisView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text("Analyse", style: brand_fonts.hugeDark),
          _StockTile(),
          _StockTile(),
          _StockTile(),
          Expanded(child: SizedBox()),
          PrimaryButton(text: "Symbol hinzufügen", onPressed: () {}),
        ],
      ),
    );
  }
}

class _StockTile extends StatelessWidget {
  const _StockTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color: Colors.red,
    );
  }
}
