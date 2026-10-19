import 'package:bookly/Feature/Splash/presentation/views/widgets/sliding_image.dart';
import 'package:bookly/Feature/Splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBady extends StatefulWidget {
  const SplashViewBady({super.key});

  @override
  State<SplashViewBady> createState() => _SplashViewBadyState();
}

class _SplashViewBadyState extends State<SplashViewBady>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<double> fedaTranscation;

  @override
  void initState() {
    super.initState();

    initalSlideAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlidingImage(animationController: animationController),
        const SizedBox(height: 6),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initalSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        );

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.go(AppRouter.homeBooks);
    });
  }
}
