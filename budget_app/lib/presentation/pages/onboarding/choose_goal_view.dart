import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../../app_state.dart';
import '../../core/custom_text_field.dart';
import '../../core/tertiary_button.dart';
import '../../navigation/home_page.dart';
import 'onboarding_gradient_view.dart';

class ChooseGoalView extends StatelessWidget {
  final VoidCallback continueOnboarding;

  const ChooseGoalView({
    Key? key,
    required this.continueOnboarding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnboardingGradientView(
      title: "Wofür möchtest du sparen?",
      content: [
        const SizedBox(height: constants.separatorSmall),
        CustomTextField(
          label: "Beschreibung",
          hinttext: "z.B. erstes eigenes Auto",
          labelStyle: brand_fonts.copyLight,
          onChanged: (value) {
            state.savingGoal = value;
          },
        ),
        const SizedBox(height: constants.separatorSmall),
        CustomTextField(
          label: "Notwendiger Betrag",
          hinttext: "z.B. CHF 10'000.-",
          labelStyle: brand_fonts.copyLight,
          onChanged: (value) {
            state.amountNeeded = double.parse(value);
          },
        ),
        const SizedBox(height: constants.separatorMedium),
        PrimaryButton(
          text: "Weiter",
          onPressed: continueOnboarding,
        ),
      ],
    );
  }
}
