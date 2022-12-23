import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/spacing.dart' as spacing;

import '../../core/tertiary_button.dart';
import '../../navigation/home_page.dart';

class ChooseGoalView extends StatelessWidget {
  final VoidCallback continueOnboarding;

  const ChooseGoalView({
    Key? key,
    required this.continueOnboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: spacing.appBarOffsetBottom,
        bottom: spacing.buttonOffsetBottom,
        left: spacing.paddingSide,
        right: spacing.paddingSide,
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
          children: [
            const Text("Willkommen bei Turbo Budget!",
                style: brand_fonts.titleLight),
            const Text(
              "Es ist erwiesen, dass ein konkretes Sparziel dazu motiviert, deine finanziellen Ziele zu erreichen. Bist du bereit?",
              style: brand_fonts.copyLight,
            ),
            const Expanded(child: SizedBox()),
            PrimaryButton(
              text: "Sparziel setzen",
              onPressed: continueOnboarding,
            ),
            TertiaryButton(
              text: "Überspringen",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
