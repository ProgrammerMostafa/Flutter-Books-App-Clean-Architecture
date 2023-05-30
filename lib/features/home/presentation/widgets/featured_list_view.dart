import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_shimmer_image.dart';
import '../../../../core/widgets/error_widget.dart';
import '../cubit/newset_books_cubit/newset_books_cubit.dart';
import 'custom_book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksErrorState) {
          return ErrorWidgetWhenFetchData(errorMsg: state.errorMessage);
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount:
                  state is NewsetBooksSuccessState ? state.books.length : 10,
              itemBuilder: (context, index) {
                if (state is NewsetBooksSuccessState) {
                  return CustomBookImage(imageUrl: state.books[index].imageUrl);
                } else {
                  return const CustomShimmerImage();
                }
              },
            ),
          );
        }
      },
    );
  }
}
