import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

import 'package:budget_app/presentation/pages/onboarding/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turbo Budget',
      theme: ThemeData(
        fontFamily: brand_fonts.fontFamilyDefault,
      ),
      home: const OnboardingPage(),
    );
  }
}
