import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/screens/home_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
}

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (con) => const SplashScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (con) => const HomeScreen(),
        );

      // case Routes.quoteScreen:
      //   return MaterialPageRoute(
      //     builder: (con) => BlocProvider<QutoesCubit>(
      //       create: (_) => getIt.get<QutoesCubit>()..getRandomQuote(),
      //       child: const QuoteScreen(),
      //     ),
      //   );
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.undefinedRoute),
        ),
      ),
    );
  }
}
