import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class Styles {
  static TextStyle defaultTextStyle({required double fontSize}) {
    return TextStyle(
      fontSize: fontSize,
      color: AppColors.textDarkColor,
      fontWeight: FontWeight.w600,
      height: 1.2,
      fontFamily: AppStrings.mainFontFamily,
    );
  }
}
