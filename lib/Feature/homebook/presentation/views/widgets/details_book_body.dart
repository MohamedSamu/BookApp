import 'package:bookly/Feature/homebook/presentation/views/widgets/app_bar_details_book.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/details_section.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class DetailsBookBody extends StatelessWidget {
  const DetailsBookBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 10),
      child: Column(
        children: [
          AppBarDetailsBook(),
          SizedBox(height: 25),
          DetailsSection(),
          SizedBox(height: 45),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
