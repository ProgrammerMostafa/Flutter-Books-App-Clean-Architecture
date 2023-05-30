import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;
  const CustomBookImage({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: imageUrl == ''
              ? Container(
                  color: AppColors.shimmerColor,
                  child: const Center(
                    child: Icon(Icons.error),
                  ),
                )
              : CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: imageUrl,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
        ),
      ),
    );
  }
}
