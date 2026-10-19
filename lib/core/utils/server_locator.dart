import 'package:bookly/Feature/homebook/data/repos/repo_home.dart';
import 'package:bookly/Feature/homebook/data/repos/repo_imp_home.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<ApiService>(ApiService(dio: getIt.get<Dio>()));
  getIt.registerSingleton<RepoHome>(
    RepoImpHome(apiService: getIt.get<ApiService>()),
  );
}
