import 'package:bookly/Feature/homebook/presentation/views/widgets/home_books_body.dart';
import 'package:flutter/material.dart';

class HomeBooks extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: HomeBooksBody()));
  }
}
