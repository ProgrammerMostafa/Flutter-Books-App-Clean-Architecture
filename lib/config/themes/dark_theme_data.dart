import '../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bgDarkColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 22),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.textDarkColor,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      titleMedium: TextStyle(
        color: AppColors.textDarkColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
    ),
  );
}
