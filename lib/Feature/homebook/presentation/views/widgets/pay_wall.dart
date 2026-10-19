import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/button_general.dart';
import 'package:flutter/material.dart';

class PayWall extends StatelessWidget {
  const PayWall({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ButtonGeneral(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            color: Color(0xffE5EBF1),
            textColor: Colors.black,
            text: "19.99€",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(
          child: ButtonGeneral(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Color(0xffEF8262),
            textColor: Colors.white,
            text: "Free Preview",
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
