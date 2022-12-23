import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;

import 'clickable.dart';

class TertiaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLight;

  const TertiaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final minWidth = MediaQuery.of(context).size.width * 0.3;

    return Clickable(
      onPressed: onPressed,
      child: Container(
        constraints: BoxConstraints(
          minWidth: minWidth,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: isLight ? brand_fonts.copyLight : brand_fonts.copyDark,
          ),
        ),
      ),
    );
  }
}
