import 'package:bookly/Feature/homebook/presentation/views/widgets/book_rating.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookPriceAndRating extends StatelessWidget {
  const BookPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Row(
        children: [
          Text(
            "19.99 €",
            style: Styles.textStyle20.copyWith(color: Color(0xffbadefe)),
          ),
          Spacer(),
          BookRating(),
        ],
      ),
    );
  }
}
