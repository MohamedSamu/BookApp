import 'package:bookly/Feature/homebook/presentation/views/widgets/card_best_sallry_books.dart';
import 'package:flutter/material.dart';

class CardBestSallryBooksList extends StatelessWidget {
  const CardBestSallryBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: CardBestSalleryBooks(),
        );
      },
    );
  }
}
