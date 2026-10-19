import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarHomeBooks extends StatelessWidget {
  const AppBarHomeBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(Assets.imagesLogo, width: 75, height: 16.1),
        IconButton(
          onPressed: () {
            context.go(AppRouter.searchBook);
          },
          icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}
