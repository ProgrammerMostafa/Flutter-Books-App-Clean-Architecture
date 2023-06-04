import 'package:flutter/material.dart';

import 'custom_shimmer_container.dart';
import 'custom_shimmer_image.dart';

class CustomShimmerListItem extends StatelessWidget {
  const CustomShimmerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomShimmerImage(),
        const SizedBox(width: 25.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomShimmerContainer(),
              SizedBox(height: 5),
              CustomShimmerContainer(),
              SizedBox(height: 5),
              CustomShimmerContainer(),
              SizedBox(height: 5),
              CustomShimmerContainer(width: 100),
            ],
          ),
        ),
      ],
    );
  }
}
