part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSucess extends NewestBookState {
  final List<BookModel> book;
  const NewestBookSucess({required this.book});
}

final class NewestBookFailure extends NewestBookState {
  final String errorMessage;
  const NewestBookFailure({required this.errorMessage});
}
