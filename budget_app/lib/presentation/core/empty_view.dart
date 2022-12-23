import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

class EmptyView extends StatelessWidget {
  final String title;
  final String description;
  final String? iconAddress;
  const EmptyView({
    Key? key,
    required this.title,
    required this.description,
    this.iconAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconAddress != null)
          Image(
            height: constants.iconHeight,
            image: AssetImage(iconAddress!),
          ),
        Text(
          title,
          style: brand_fonts.titleDark,
        ),
        Text(
          description,
          style: brand_fonts.copyDark,
        ),
        // Offsetting for button height
        const SizedBox(height: constants.appBarOffsetBottom * 2),
      ],
    );
  }
}
