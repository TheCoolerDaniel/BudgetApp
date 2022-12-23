import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

class EmptyView extends StatelessWidget {
  final String iconAddress;
  final String title;
  final String description;
  const EmptyView({
    Key? key,
    required this.iconAddress,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          height: constants.iconHeight,
          image: AssetImage(iconAddress),
        ),
        Text(
          title,
          style: brand_fonts.titleDark,
        ),
        Text(
          description,
          style: brand_fonts.copyDark,
        ),
      ],
    );
  }
}
