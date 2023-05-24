import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/contanst.dart';
import '../../../../core/utils/styles.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const FeaturedListView(),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConstant.horizontalPadd,
                ),
                child: Text(
                  AppStrings.bestSeller,
                  style: Styles.defaultTextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => const BestSellerListViewItem(),
          ),
        ),
      ],
    );
  }
}
