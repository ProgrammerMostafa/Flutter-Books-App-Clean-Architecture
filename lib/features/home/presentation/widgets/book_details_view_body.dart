import 'package:flutter/material.dart';
import 'book_rating_widget.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_books_list_view.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 40),
                Text(
                  'The Jungle Book',
                  style: Styles.defaultTextStyle(fontSize: 30).copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppStrings.gTSectraFineFontFamily,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Rudyard Kipling',
                  style: Styles.defaultTextStyle(fontSize: 18).copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                const SizedBox(height: 16),
                const BookRatingWidget(),
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
