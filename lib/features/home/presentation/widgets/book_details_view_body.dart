import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/data/models/book_model.dart';
import 'package:flutter_books_app_clean_architecture/features/home/domain/entities/book.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/utils/styles.dart';
import 'book_rating_widget.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  final Book bookData;
  const BookDetailsViewBody({super.key, required this.bookData});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstant.horizontalPadd,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstant.screenWidth(context) * 0.22,
                  ),
                  child: CustomBookImage(imageUrl: bookData.imageUrl),
                ),
                const SizedBox(height: 40),
                Text(
                  bookData.title,
                  style: Styles.defaultTextStyle(fontSize: 30).copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.gTSectraFineFontFamily,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  bookData.authors == null ? '7mada' : bookData.authors![0],
                  style: Styles.defaultTextStyle(fontSize: 18).copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 16),
                if (bookData.averageRating != null &&
                    bookData.ratingsCount != null) ...[
                  BookRatingWidget(
                    averageRating: bookData.averageRating,
                    ratingsCount: bookData.ratingsCount,
                  ),
                ],
                const SizedBox(height: 30),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 30)),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    AppStrings.youCanAlsoLike,
                    style: Styles.defaultTextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
