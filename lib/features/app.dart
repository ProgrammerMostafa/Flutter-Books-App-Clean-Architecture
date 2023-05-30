import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../config/routes/routes.dart';
import '../config/themes/dark_theme_data.dart';
import '../config/themes/light_theme_data.dart';
import '../core/services/service_locator.dart';
import '../core/utils/app_strings.dart';
import 'home/domain/usecases/fetch_featured_books_usecase.dart';
import 'home/domain/usecases/fetch_newset_books_usecase.dart';
import 'home/presentation/cubit/featured_books_cubit/featured_books_cubit.dart';
import 'home/presentation/cubit/newset_books_cubit/newset_books_cubit.dart';

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsetBooksCubit>(
          create: (ctx) =>
              NewsetBooksCubit(getIt.get<FetchNewsetBooksUseCase>())
                ..fetchNewsetBooks(),
        ),
        BlocProvider<FeaturedBooksCubit>(
          create: (ctx) =>
              FeaturedBooksCubit(getIt.get<FetchFeaturedBooksUseCase>())
                ..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        themeMode: ThemeMode.dark,
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
