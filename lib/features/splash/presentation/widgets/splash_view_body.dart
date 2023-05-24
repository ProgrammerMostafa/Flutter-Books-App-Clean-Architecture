import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/utils/assest_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slideAnimation;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();

    navigateToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImageAssets.logo),
        const SizedBox(height: 5.0),
        SlideTransition(
          position: slideAnimation,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              'Read Free Books',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  void navigateToHomeScreen() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushNamed(context, Routes.homeScreen),
    );
  }

  void _initSlideAnimation() {
    Tween<Offset> tween = Tween(begin: const Offset(0, 1.0), end: Offset.zero);

    slideAnimation = tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));
  }

  void _initFadeAnimation() {
    Tween<double> tween = Tween(begin: 0.0, end: 1.0);

    fadeAnimation = tween.animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _initSlideAnimation();

    _initFadeAnimation();

    animationController.forward();
  }
}
