import 'package:bookly/Feature/search/presentation/views/widgets/iteam_book_result_list.dart';
import 'package:bookly/Feature/search/presentation/views/widgets/search_form_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchBookBody extends StatelessWidget {
  const SearchBookBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchFormField(),
          SizedBox(height: 10),
          Text("Result", style: Styles.textStyle18),
          SizedBox(height: 20),
          Expanded(child: IteamBookResultList()),
        ],
      ),
    );
  }
}
