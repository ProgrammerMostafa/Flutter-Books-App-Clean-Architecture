import '../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData darkThemeData() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.bgDarkColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(fontSize: 22),
    ),
  );
}
