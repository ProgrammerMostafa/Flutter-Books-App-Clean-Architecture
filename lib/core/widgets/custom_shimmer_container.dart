import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../utils/app_colors.dart';

class CustomShimmerContainer extends StatelessWidget {
  final double height;
  final double width;
  const CustomShimmerContainer({
    super.key,
    this.height = 15,
    this.width = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.shimmerColor.withOpacity(0.8),
      highlightColor: AppColors.shimmerColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: AppColors.shimmerColor),
      ),
    );
  }
}
