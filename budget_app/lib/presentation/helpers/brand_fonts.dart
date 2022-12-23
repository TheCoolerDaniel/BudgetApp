import 'package:flutter/material.dart';
import './brand_colors.dart' as brand_colors;

const fontFamilyDefault = "Poppins";

const _sizeHuge = 25.0;
const _sizeTitle = 18.0;
const _sizeCopy = 14.0;
const _sizeDetail = 11.0;

const _weightDefault = FontWeight.w400;
const _weightStrong = FontWeight.w800;

const hugeDark = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeHuge,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const titleDark = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeTitle,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const titleLight = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyLight,
  fontSize: _sizeTitle,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const primaryButton = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const copyDark = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightDefault,
  decoration: TextDecoration.none,
);

const copyLight = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyLight,
  fontSize: _sizeCopy,
  fontWeight: _weightDefault,
  decoration: TextDecoration.none,
);

const copyDarkStrong = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeCopy,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const copyLightStrong = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyLight,
  fontSize: _sizeCopy,
  fontWeight: _weightStrong,
  decoration: TextDecoration.none,
);

const copyInactive = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.inactiveColor,
  fontSize: _sizeCopy,
  fontWeight: _weightDefault,
  decoration: TextDecoration.none,
);

const detailDark = TextStyle(
  fontFamily: fontFamilyDefault,
  color: brand_colors.copyDark,
  fontSize: _sizeDetail,
  fontWeight: _weightDefault,
  decoration: TextDecoration.none,
);
