import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/assest_manager.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
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
