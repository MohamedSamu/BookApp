import 'package:bookly/Feature/homebook/presentation/views/widgets/card_images_books.dart';
import 'package:flutter/material.dart';

class SimilarImageBooks extends StatelessWidget {
  const SimilarImageBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (contex, i) {
          return CardImagesBooks(imageUrl: 'assets/images/Book2Hightligh.png');
        },
      ),
    );
  }
}
