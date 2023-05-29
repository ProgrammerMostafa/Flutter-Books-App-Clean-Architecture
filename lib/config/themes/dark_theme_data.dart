import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

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
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}
