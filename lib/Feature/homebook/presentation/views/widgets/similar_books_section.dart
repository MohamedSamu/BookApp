import 'package:bookly/Feature/homebook/presentation/views/widgets/similar_image_books.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "You can also like",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 18),
          SimilarImageBooks(),
        ],
      ),
    );
  }
}
