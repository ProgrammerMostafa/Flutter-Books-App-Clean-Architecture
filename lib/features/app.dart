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
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      themeMode: ThemeMode.dark,
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
