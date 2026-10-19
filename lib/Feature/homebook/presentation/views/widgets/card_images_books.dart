import 'package:flutter/material.dart';

class CardImagesBooks extends StatelessWidget {
  const CardImagesBooks({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(12),
      child: AspectRatio(aspectRatio: 2.8 / 4, child: Image.asset(imageUrl)),
    );
  }
}
