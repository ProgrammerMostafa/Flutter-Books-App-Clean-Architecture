import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/app_strings.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/widgets/custom_app_bar.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedListView(),
          const SizedBox(height: 50),
          Text(
            AppStrings.bestSeller,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
