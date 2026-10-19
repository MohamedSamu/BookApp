import 'package:bookly/Feature/homebook/presentation/views/widgets/book_price_and_rating.dart';
import 'package:bookly/constans.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class IteamCardBestSallryBooks extends StatelessWidget {
  const IteamCardBestSallryBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 7),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: Text(
              "Harry Potter\nand the Goblet of Fire",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.textStyle20.copyWith(
                fontFamily: kGtSectraFine,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
          SizedBox(height: 3),
          Text(
            "J.K. Rowling",
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w500,
              color: Color(0xff63606e),
            ),
          ),
          BookPriceAndRating(),
        ],
      ),
    );
  }
}
