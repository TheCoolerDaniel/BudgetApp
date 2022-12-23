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
  final Function(String)? onChanged;
  const CustomTextField({
    Key? key,
    this.labelStyle = brand_fonts.copyDark,
    this.textInputType,
    this.label,
    this.hinttext,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double textFieldPadding = 10;
    const double labelPadding = 5;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(constants.borderRadius),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Padding(
            padding: const EdgeInsets.only(bottom: labelPadding),
            child: Text(
              label!,
              style: labelStyle,
            ),
          ),
        TextField(
          keyboardType: textInputType,
          onChanged: onChanged,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: textFieldPadding),
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
