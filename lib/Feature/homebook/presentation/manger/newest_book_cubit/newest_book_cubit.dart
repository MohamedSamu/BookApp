import 'package:bloc/bloc.dart';
import 'package:bookly/Feature/homebook/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/homebook/data/repos/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.repo) : super(NewestBookInitial());
  RepoHome repo;
  Future<void> fetchfetchNewstBooks() async {
    var result = await repo.fetchNewstBooks();
    result.fold(
      (failure) {
        emit(NewestBookFailure(errorMessage: failure.error));
      },
      (sucessGetBook) {
        emit(NewestBookSucess(book: sucessGetBook));
      },
    );
  }
}
