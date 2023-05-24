import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
