import 'package:bookly/Feature/homebook/presentation/views/widgets/app_bar_home_books.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/card_images_books_list.dart';
import 'package:bookly/Feature/homebook/presentation/views/widgets/card_best_sallry_books_list.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeBooksBody extends StatelessWidget {
  const HomeBooksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppBarHomeBooks(),
                SizedBox(height: 36),
                SizedBox(height: 224, child: CardImagesBooksList()),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Text("Best Seller", style: Styles.textStyle18),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20.5)),
          CardBestSallryBooksList(),
        ],
      ),
    );
  }
}
