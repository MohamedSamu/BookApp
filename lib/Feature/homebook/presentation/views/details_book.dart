import 'package:bookly/Feature/homebook/presentation/views/widgets/details_book_body.dart';
import 'package:flutter/material.dart';

class DetailsBook extends StatelessWidget {
  const DetailsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: DetailsBookBody()));
  }
}
