import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../../core/tertiary_button.dart';
import '../../navigation/home_page.dart';
import 'onboarding_gradient_view.dart';

class WelcomeView extends StatelessWidget {
  final VoidCallback continueOnboarding;

  const WelcomeView({
    Key? key,
    required this.continueOnboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingGradientView(
      title: "Willkommen bei Turbo Budget!",
      description:
          "Ein konkretes Sparziel motiviert dich dazu, deine finanziellen Ziele zu erreichen. Bist du bereit?",
      content: [
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
    );
  }
}
