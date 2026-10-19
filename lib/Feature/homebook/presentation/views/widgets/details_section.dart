import 'package:bookly/Feature/homebook/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/card_images_books.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/pay_wall.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: CardImagesBooks(
              imageUrl: 'assets/images/Book2Hightligh.png',
            ),
          ),
          SizedBox(height: 10),
          Text(
            "The Jungle Book",
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 5),

          Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),

          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          SizedBox(height: 39),
          PayWall(),
        ],
      ),
    );
  }
}
