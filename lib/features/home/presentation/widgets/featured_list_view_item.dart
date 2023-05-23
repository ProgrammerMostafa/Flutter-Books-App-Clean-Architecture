import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/assest_manager.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImageAssets.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
