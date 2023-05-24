import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/screens/book_details_screen.dart';
import 'package:flutter_books_app_clean_architecture/features/search/presentation/screens/search_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String homeScreen = '/homeScreen';
  static const String bookDetailsScreen = '/bookDetailsScreen';
  static const String searchScreen = '/searchScreen';
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
      case Routes.bookDetailsScreen:
        return MaterialPageRoute(
          builder: (con) => const BookDetialsScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (con) => const SearchScreen(),
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
