import 'package:flutter/material.dart';
import 'package:flutter_books_app_clean_architecture/features/home/presentation/widgets/custom_app_bar.dart';

import 'custom_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
