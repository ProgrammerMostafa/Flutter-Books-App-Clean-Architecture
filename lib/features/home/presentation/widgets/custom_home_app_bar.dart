import 'package:flutter/material.dart';
import '../../../../core/utils/contanst.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/utils/assest_manager.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: AppConstant.horizontalPadd,
        left: AppConstant.horizontalPadd,
        top: 40,
        bottom: 25,
      ),
      child: Row(
        children: [
          Image.asset(ImageAssets.logo, height: 18),
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
