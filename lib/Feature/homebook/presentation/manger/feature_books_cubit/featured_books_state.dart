part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSucess extends FeaturedBooksState {
  final List<BookModel> book;

  const FeaturedBooksSucess({required this.book});
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String erroMessage;

  const FeaturedBooksFailure({required this.erroMessage});
}
