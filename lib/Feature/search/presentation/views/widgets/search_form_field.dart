import 'package:flutter/material.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: styleBorder(),
        enabledBorder: styleBorder(),
        focusedBorder: styleBorder(),
        hintText: "Search",
        suffixIcon: Icon(Icons.search),
      ),
    );
  }
}

OutlineInputBorder styleBorder() => OutlineInputBorder(
  borderRadius: BorderRadius.circular(13),
  borderSide: BorderSide(color: Colors.white),
);
