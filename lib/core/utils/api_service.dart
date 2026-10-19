import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String _uriBase = "https://www.googleapis.com/books/v1/";
  final String _apiKey = "AIzaSyAIQkDm9pLvPub39YYANY0fuZaEZhvicdI";
  ApiService({required this._dio});
  Future<List<Map<String, dynamic>>> getNewstBook(String endPoint) async {
    var response = await _dio.get("$_uriBase$endPoint$_apiKey ");
    return response.data["items"];
  }
}
