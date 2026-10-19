import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlidingImage extends StatelessWidget {
  const SlidingImage({super.key, required this.animationController});
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOutBack,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SvgPicture.asset(Assets.imagesLogo),
      ),
    );
  }
}
