import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/spacing.dart' as spacing;

class QuickPeek extends StatelessWidget {
  const QuickPeek({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double cost = 5000;
    const double value = 7322;

    return Column(
      children: [
        Text("Veränderung", style: brand_fonts.titleDark),
        Text("+ CHF ${value - cost}.-", style: brand_fonts.titleDark),
        SizedBox(height: spacing.separatorSmall),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _QuickPeakSubview(
              label: "Heute",
              value: "+20.05",
            ),
            _QuickPeakSubview(
              label: "Wert",
              value: value.toString(),
            ),
            _QuickPeakSubview(
              label: "Kosten",
              value: cost.toString(),
            ),
          ],
        ),
        SizedBox(
          height: spacing.separatorMedium,
        ),
        Container(
          height: 2,
          color: brand_colors.borderColor,
        ),
      ],
    );
  }
}

class _QuickPeakSubview extends StatelessWidget {
  final String label;
  final String value;
  const _QuickPeakSubview({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: brand_fonts.titleDark),
        Text(value, style: brand_fonts.titleDark),
      ],
    );
  }
}
