import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:budget_app/presentation/navigation/home_page.dart';
import 'package:budget_app/presentation/pages/onboarding/choose_goal_view.dart';
import 'package:budget_app/presentation/pages/onboarding/enter_savings_view.dart';
import 'package:budget_app/presentation/pages/onboarding/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../../core/tertiary_button.dart';

class OnboardingPage extends StatefulWidget {
  final int? jumpToIndex;
  const OnboardingPage({
    Key? key,
    this.jumpToIndex,
  }) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int? currentViewIndex;

  Widget getCurrentView(int viewIndex) {
    switch (viewIndex) {
      case 0:
        return WelcomeView(
          continueOnboarding: () {
            setState(() {
              currentViewIndex = currentViewIndex! + 1;
            });
          },
        );
      case 1:
        return ChooseGoalView(
          continueOnboarding: () {
            setState(() {
              currentViewIndex = currentViewIndex! + 1;
            });
          },
        );
      case 2:
        return EnterSavingsView(
          continueOnboarding: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
              (Route<dynamic> route) => false,
            );
          },
        );
      default:
        // Should never occur
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    currentViewIndex ??= widget.jumpToIndex ?? 0;

    return Scaffold(
      body: getCurrentView(currentViewIndex!),
    );
  }
}
