import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/widgets/featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) => const FeaturedListViewItem(),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    );
  }
}
