import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/styles.dart';

class BookRatingWidget extends StatelessWidget {
  final double? averageRating;
  final int? ratingsCount;

  const BookRatingWidget({super.key, this.averageRating, this.ratingsCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: AppColors.starRatingColor,
          size: 14,
        ),
        const SizedBox(width: 8.0),
        Text(
          '$averageRating',
          style: Styles.defaultTextStyle(fontSize: 16).copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 6.0),
        Text(
          '($ratingsCount)',
          style: Styles.defaultTextStyle(fontSize: 14).copyWith(
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
