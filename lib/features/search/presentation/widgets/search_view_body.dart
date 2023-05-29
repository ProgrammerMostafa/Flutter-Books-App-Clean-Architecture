import 'package:flutter/material.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../home/presentation/widgets/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstant.horizontalPadd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 10.0),
          Text(
            AppStrings.searchResult,
            style: Styles.defaultTextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10.0),
          const Expanded(child: SearchResultListView()),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(
          right: AppConstant.horizontalPadd,
          bottom: 20,
        ),
        child: BestSellerListViewItem(),
      ),
    );
  }
}
