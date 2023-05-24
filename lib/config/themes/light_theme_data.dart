import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

ThemeData lightThemeData() {
  return ThemeData(
    fontFamily: 'Tajawal',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bgLightColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.textLightColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
    ),
  );
}
