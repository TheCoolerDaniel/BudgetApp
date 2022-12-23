import 'package:budget_app/presentation/app_state.dart';
import 'package:budget_app/presentation/core/custom_text_field.dart';
import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:budget_app/presentation/pages/onboarding/onboarding_gradient_view.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

class EnterSavingsView extends StatelessWidget {
  final VoidCallback continueOnboarding;

  const EnterSavingsView({
    Key? key,
    required this.continueOnboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingGradientView(
      title: "Wie weit bist du schon?",
      description:
          "Gib eine grobe Schätzung ab. Du kannst die Angaben jederzeit anpassen.",
      content: [
        const SizedBox(height: constants.separatorSmall),
        CustomTextField(
          label: "Bisherige Ersparnisse",
          hinttext: "z.B. CHF 1'000.-",
          labelStyle: brand_fonts.copyLight,
          onChanged: (value) {
            state.savingsEstimateTotal = double.parse(value);
          },
        ),
        const SizedBox(height: constants.separatorSmall),
        CustomTextField(
          label: "Wie viel kannst du monatlich sparen?",
          hinttext: "z.B. CHF 200.-",
          labelStyle: brand_fonts.copyLight,
          onChanged: (value) {
            state.savingsMonthlyEstimate = double.parse(value);
          },
        ),
        const SizedBox(height: constants.separatorMedium),
        PrimaryButton(
          text: "Speichern",
          onPressed: continueOnboarding,
        ),
      ],
    );
  }
}
