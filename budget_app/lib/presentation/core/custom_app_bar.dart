import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

class CustomAppBar extends AppBar {
  CustomAppBar({Key? key, String? title})
      : super(
          key: key,
          backgroundColor: brand_colors.primaryColor,
          title: title != null
              ? Text(
                  title,
                  style: brand_fonts.titleDark,
                )
              : const SizedBox(),
        );
}
