import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/assest_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 20, top: 40, bottom: 25),
      child: Row(
        children: [
          Image.asset(ImageAssets.logo, height: 18),
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
