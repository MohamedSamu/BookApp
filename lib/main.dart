import 'package:bookly/Feature/homebook/data/repos/repo_home.dart';
import 'package:bookly/Feature/homebook/presentation/manger/feature_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Feature/homebook/presentation/manger/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookly/constans.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/server_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<RepoHome>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBookCubit(getIt.get<RepoHome>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
