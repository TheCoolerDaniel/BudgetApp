import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import 'package:budget_app/data/investment.dart';

class InvestmentTile extends StatelessWidget {
  final Investment investment;

  const InvestmentTile({
    Key? key,
    required this.investment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double spaceBetween = constants.separatorMedium;
    const _SubTile emptySpace = _SubTile(
      title: "",
      width: spaceBetween,
      subRows: ["", "", ""],
    );

    return Row(
      children: [
        _SubTile(
          width: 70,
          title: investment.symbol,
          description: investment.name,
          subRows: [
            "12.08.2022",
            "01.09.2022",
            "03.10.2023",
          ],
        ),
        emptySpace,
        _SubTile(
          title: "Total",
          description: "30 Titel",
          subRows: [
            "5",
            "3",
            "22",
          ],
        ),
        emptySpace,
        _SubTile(
          title: "Preis",
          subRows: [
            "60",
            "80",
            "50",
          ],
        ),
      ],
    );
  }
}

class _SubTile extends StatelessWidget {
  final String title;
  final List<String> subRows;
  final String description;
  final double width;
  const _SubTile({
    Key? key,
    required this.title,
    required this.subRows,
    this.description = "",
    this.width = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: brand_fonts.copyDark),
        Text(
          description,
          style: brand_fonts.detailDark,
        ),
        SizedBox(height: constants.separatorSmall),
        Container(
          height: 2,
          width: width,
          color: brand_colors.borderColor,
        ),
        SizedBox(height: constants.separatorSmall),
        Column(
          children: subRows.map((row) => Text(row)).toList(),
        ),
      ],
    );
  }
}
