import 'package:flutter/material.dart';
import './brand_colors.dart' as brand_colors;

const _fontFamilyDefault = "Poppins";

const _sizeTitle = 20.0;
const _sizeCopy = 14.0;
const _sizeDetail = 11.0;

const _weightDefault = FontWeight.w400;
const _weightStrong = FontWeight.w800;

const titleDark = TextStyle(
  fontFamily: _fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const primaryButton = TextStyle(
  fontFamily: _fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const COPY_DARK = TextStyle(
  fontFamily: _fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightDefault,
  decoration: TextDecoration.none,
);
