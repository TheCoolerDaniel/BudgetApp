import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../../core/tertiary_button.dart';
import '../../navigation/home_page.dart';

class OnboardingGradientView extends StatelessWidget {
  final Widget? leadingIcon;
  final String title;
  final String? description;
  final List<Widget> content;
  final MainAxisAlignment mainAxisAlignment;

  const OnboardingGradientView({
    Key? key,
    required this.title,
    this.description,
    required this.content,
    this.leadingIcon,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: constants.appBarOffsetBottom,
        bottom: constants.buttonOffsetBottom,
        left: constants.paddingSide,
        right: constants.paddingSide,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: brand_colors.mainGradient,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Column(
              children: [
                if (leadingIcon != null) leadingIcon!,
                Text(title, style: brand_fonts.titleLight),
                if (description != null)
                  Padding(
                    padding:
                        const EdgeInsets.only(top: constants.separatorSmall),
                    child: Text(
                      description!,
                      style: brand_fonts.copyLight,
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
            Column(
              children: content,
            ),
            if (mainAxisAlignment == MainAxisAlignment.center)
              const SizedBox(
                height: constants.buttonOffsetBottom,
              ),
          ],
        ),
      ),
    );
  }
}
