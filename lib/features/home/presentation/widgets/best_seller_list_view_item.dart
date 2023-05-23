import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/app_colors.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/app_strings.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/assest_manager.dart';
import 'package:flutter_books_app_clean_architecture/core/utils/styles.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/widgets/book_rating_widget.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(ImageAssets.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.defaultTextStyle(fontSize: 20).copyWith(
                    fontFamily: AppStrings.gTSectraFineFontFamily,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Text(
                  'Rudyard Kipling',
                  style: Styles.defaultTextStyle(fontSize: 14).copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.defaultTextStyle(fontSize: 20).copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const BookRatingWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
