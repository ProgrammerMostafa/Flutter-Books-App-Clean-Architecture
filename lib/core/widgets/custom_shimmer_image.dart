import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

class CustomShimmerImage extends StatelessWidget {
  const CustomShimmerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerColor.withOpacity(0.8),
      highlightColor: AppColors.shimmerColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              decoration: BoxDecoration(color: AppColors.shimmerColor),
            ),
          ),
        ),
      ),
    );
  }
}