import 'package:bookly/Feature/homebook/data/models/book_model/book_model.dart';
import 'package:bookly/Feature/homebook/data/repos/repo_home.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepoImpHome extends RepoHome {
  final ApiService apiService;

  RepoImpHome({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await apiService.getNewstBook(
        "volumes?Filtering=free-ebooks&q=subject:history&Sorting=newest&key=",
      );
      List<BookModel> dataBookModel = data
          .map((iteam) => BookModel.fromJson(iteam))
          .toList();
      return right(dataBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(
          ServerFailure(error: "OPPS, there was an Error, Please try again"),
        );
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await ApiService(dio: Dio())
          .getNewstBook("volumes?Filtering=free-ebooks&q=history&key=");
      List<BookModel> dataBookModel = data
          .map((iteam) => BookModel.fromJson(iteam))
          .toList();
      return right(dataBookModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(
          ServerFailure(error: "OPPS, there was an Error, Please try again"),
        );
      }
    }
  }
}
