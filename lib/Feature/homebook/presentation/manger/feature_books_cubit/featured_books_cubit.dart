import 'package:bloc/bloc.dart';
import 'package:bookly/Feature/homebook/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/homebook/data/repos/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.repo) : super(FeaturedBooksInitial());
  RepoHome repo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await repo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(erroMessage: failure.error));
      },
      (sucessGetFeaturedBooks) {
        emit(FeaturedBooksSucess(book: sucessGetFeaturedBooks));
      },
    );
  }
}
