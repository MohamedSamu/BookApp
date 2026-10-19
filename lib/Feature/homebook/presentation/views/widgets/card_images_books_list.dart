import 'package:bookly/Feature/homebook/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/homebook/presentation/manger/feature_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/card_images_books.dart';
import 'package:bookly/core/widgets/error_widget.dart';
import 'package:bookly/core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardImagesBooksList extends StatelessWidget {
  const CardImagesBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucess) {
          List<BookModel> data = state.book;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (contex, i) {
              return CardImagesBooks(
                imageUrl: 'assets/images/Book2Hightligh.png',
              );
            },
          );
        } else if (state is FeaturedBooksFailure) {
          return ErrorsWidget(erroMessage: state.erroMessage);
        } else {
          return LoadingWidget();
        }
      },
    );
  }
}
