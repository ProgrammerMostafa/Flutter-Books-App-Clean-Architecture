import 'package:flutter/material.dart';
import '../../features/home/domain/entities/book.dart';
import '../../features/home/presentation/screens/book_details_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';

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
        Book bookData = settings.arguments as Book;
        return MaterialPageRoute(
          builder: (con) => BookDetialsScreen(bookData: bookData),
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
