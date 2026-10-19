import 'package:bookly/Feature/search/presentation/views/widgets/search_book_body.dart';
import 'package:flutter/material.dart';

class SearchBook extends StatelessWidget {
  const SearchBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SearchBookBody()));
  }
}
