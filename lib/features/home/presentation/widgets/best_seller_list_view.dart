import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/widgets/custom_shimmer_list_item.dart';
import '../../../../core/widgets/error_widget.dart';
import '../cubit/featured_books_cubit/featured_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksErrorState) {
          return ErrorWidgetWhenFetchData(errorMsg: state.errorMessage);
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount:
                  state is FeaturedBooksSuccessState ? state.books.length : 10,
              (context, index) {
                if (state is FeaturedBooksSuccessState) {
                  return BestSellerListViewItem(bookData: state.books[index]);
                } else {
                  return Container(
                    width: double.infinity,
                    height: 140,
                    padding: const EdgeInsets.only(
                      right: AppConstant.horizontalPadd * 2,
                      left: AppConstant.horizontalPadd,
                      bottom: 20,
                    ),
                    child: const CustomShimmerListItem(),
                  );
                }
              },
            ),
          );
        }
      },
    );
  }
}
