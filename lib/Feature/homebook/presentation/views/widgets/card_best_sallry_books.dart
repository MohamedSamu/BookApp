import 'package:bookly/Feature/homebook/presentation/views/widgets/card_images_books.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/iteam_card_best_sallry_books.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardBestSalleryBooks extends StatelessWidget {
  const CardBestSalleryBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go(AppRouter.detailsBook);
      },
      child: Row(
        children: [
          SizedBox(
            height: 130.5,
            child: CardImagesBooks(
              imageUrl: 'assets/images/Book2Hightligh.png',
            ),
          ),
          SizedBox(width: 20),
          IteamCardBestSallryBooks(),
        ],
      ),
    );
  }
}
