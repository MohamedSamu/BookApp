import 'package:bookly/Feature/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Feature/homebook/presentation/views/details_book.dart';
import 'package:bookly/Feature/homebook/presentation/views/home_books.dart';
import 'package:bookly/Feature/search/presentation/views/search_book.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final splashView = '/';
  static final homeBooks = '/homebooks';
  static final detailsBook = '/detailsBook';
  static final searchBook = '/searchBook';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeBooks,
        builder: (context, state) {
          return const HomeBooks();
        },
      ),
      GoRoute(
        path: detailsBook,
        builder: (context, state) {
          return const DetailsBook();
        },
      ),
      GoRoute(
        path: searchBook,
        builder: (context, state) {
          return const SearchBook();
        },
      ),
    ],
  );
}
