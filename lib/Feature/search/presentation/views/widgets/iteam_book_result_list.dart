import 'package:bookly/Feature/search/presentation/views/widgets/iteam_book_result.dart';
import 'package:flutter/material.dart';

class IteamBookResultList extends StatelessWidget {
  const IteamBookResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, i) {
        return IteamBookResult();
      },
    );
  }
}
