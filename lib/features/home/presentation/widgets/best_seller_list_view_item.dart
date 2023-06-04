import 'package:flutter/material.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/utils/styles.dart';
import '../../domain/entities/book.dart';
import 'book_rating_widget.dart';
import 'custom_book_image.dart';

class BestSellerListViewItem extends StatelessWidget {
  final Book bookData;
  const BestSellerListViewItem({required this.bookData, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.bookDetailsScreen,
          arguments: bookData,
        );
      },
      child: Container(
        width: double.infinity,
        height: 140,
        padding: const EdgeInsets.only(
          right: AppConstant.horizontalPadd * 2,
          left: AppConstant.horizontalPadd,
          bottom: 20,
        ),
        child: Row(
          children: [
            CustomBookImage(imageUrl: bookData.imageUrl),
            const SizedBox(width: 25.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookData.title,
                    style: Styles.defaultTextStyle(fontSize: 20).copyWith(
                      fontFamily: AppStrings.gTSectraFineFontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookData.authors == null ? '7mada' : bookData.authors![0],
                    style: Styles.defaultTextStyle(fontSize: 14).copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.defaultTextStyle(fontSize: 20).copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      if (bookData.averageRating != null &&
                          bookData.ratingsCount != null) ...[
                        BookRatingWidget(
                          averageRating: bookData.averageRating,
                          ratingsCount: bookData.ratingsCount,
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
