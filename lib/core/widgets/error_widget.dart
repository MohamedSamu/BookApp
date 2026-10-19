import 'package:bookly/Feature/homebook/presentation/manger/feature_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/button_general.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorsWidget extends StatelessWidget {
  const ErrorsWidget({super.key, required this.erroMessage});
  final String erroMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(erroMessage, style: Styles.textStyle18),
        ButtonGeneral(
          onPressed: () async {
            await BlocProvider.of<FeaturedBooksCubit>(context)
                .fetchFeaturedBooks();
          },
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
          textColor: Colors.white,
          text: "retry",
        ),
      ],
    );
  }
}
