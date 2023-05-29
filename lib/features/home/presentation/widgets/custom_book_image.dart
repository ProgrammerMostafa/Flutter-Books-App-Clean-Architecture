import 'package:flutter/material.dart';

import '../../../../core/utils/assest_manager.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(ImageAssets.testImage),
            ),
          ),
        ),
      ),
    );
  }
}
