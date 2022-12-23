import 'package:flutter/material.dart';
import 'package:budget_app/presentation/helpers/brand_colors.dart'
    as brand_colors;
import 'package:budget_app/presentation/helpers/brand_fonts.dart'
    as brand_fonts;
import 'package:budget_app/presentation/helpers/constants.dart' as constants;
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextStyle labelStyle;
  final TextInputType? textInputType;
  final String? label;
  final String? hinttext;
  const CustomTextField({
    Key? key,
    this.labelStyle = brand_fonts.copyDark,
    this.textInputType,
    this.label,
    this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(1000),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: labelStyle,
          ),
        TextField(
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintStyle: brand_fonts.copyInactive,
            hintText: hinttext,
            border: border,
            focusedBorder: border,
            enabledBorder: border,
            errorBorder: border,
            disabledBorder: border,
            filled: true,
            fillColor: brand_colors.backgroundColor,
          ),
        ),
      ],
    );
  }
}
