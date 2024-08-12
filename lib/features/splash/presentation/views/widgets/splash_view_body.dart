import 'dart:async';

import 'package:bookly/core/utils/routes.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_image.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textSlidingAnimation;
  late Animation<Offset> imageSlidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(imageSlidingAnimation: imageSlidingAnimation),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: textSlidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    textSlidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    imageSlidingAnimation =
        Tween<Offset>(begin: const Offset(-5, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHome() {
    Timer(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRoutes.kHomeView);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
}
