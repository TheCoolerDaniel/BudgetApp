import 'package:budget_app/presentation/core/clickable.dart';
import 'package:budget_app/presentation/core/primary_button.dart';
import 'package:budget_app/presentation/pages/onboarding/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;

import '../../app_state.dart';

class SavingsProgressBox extends StatelessWidget {
  const SavingsProgressBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = state.savingGoal;
    final VoidCallback onPressed = () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingPage(jumpToIndex: 1),
        ),
      );
    };

    return title.isNotEmpty && state.amountNeeded > 0
        ? _ActiveBox(title: title, onPressed: onPressed)
        : _InactiveBox(onPressed: onPressed);
  }
}

class _ActiveBox extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const _ActiveBox({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double progressBarWidth =
        MediaQuery.of(context).size.width - constants.paddingSide * 2;
    final double progress = state.savingsEstimateTotal / state.amountNeeded;

    return Container(
      color: brand_colors.backgroundColorDarkened,
      padding: const EdgeInsets.all(constants.paddingSide),
      child: Clickable(
        onPressed: onPressed,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(constants.borderRadius),
              color: brand_colors.backgroundColor,
            ),
            padding: EdgeInsets.all(constants.paddingSide),
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: brand_fonts.titleDark),
                const SizedBox(height: constants.separatorSmall),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(constants.borderRadius),
                        gradient: LinearGradient(
                          colors: brand_colors.mainGradient,
                        ),
                      ),
                      height: 10,
                      width: progressBarWidth,
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: brand_colors.backgroundColorDarkened,
                            borderRadius: BorderRadius.only(
                                topRight:
                                    Radius.circular(constants.borderRadius),
                                bottomRight: Radius.circular(
                                  constants.borderRadius,
                                ))),
                        height: 10,
                        width: progressBarWidth - progressBarWidth * progress,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${progress * 100}%",
                      style: brand_fonts.detailDark,
                    ),
                    Text(
                      "CHF ${state.amountNeeded.toString()}",
                      style: brand_fonts.detailDark,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

// TODO DANIEL: Reduce duplicate code between active and inactive box
class _InactiveBox extends StatelessWidget {
  final VoidCallback onPressed;

  const _InactiveBox({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: brand_colors.backgroundColorDarkened,
      padding: const EdgeInsets.all(constants.paddingSide),
      child: Clickable(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OnboardingPage(jumpToIndex: 1),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(constants.borderRadius),
            color: brand_colors.backgroundColor,
          ),
          padding: EdgeInsets.all(constants.paddingSide),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text("Noch kein Sparziel erfasst", style: brand_fonts.titleDark),
              const SizedBox(height: constants.separatorSmall),
              PrimaryButton(
                text: "Sparziel setzen",
                onPressed: onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
