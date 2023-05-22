import 'package:flutter/material.dart';

import '../config/routes/routes.dart';
import '../config/themes/dark_theme_data.dart';
import '../config/themes/light_theme_data.dart';
import '../core/utils/app_strings.dart';

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      themeMode: ThemeMode.light,
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}