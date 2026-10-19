import 'package:dio/dio.dart';

abstract class Failure {
  final String error;

  Failure({required this.error});
}

class ServerFailure extends Failure {
  ServerFailure({required super.error});
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(error: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(error: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(error: 'Receive timeout with ApiServer');

      case DioExceptionType.badCertificate:
        return ServerFailure(
          error: 'Security certificate is invalid or untrusted.',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!,
        );
      case DioExceptionType.cancel:
        return ServerFailure(error: 'Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(error: 'No Internet Connection');
      case DioExceptionType.unknown:
        if (dioError.message != null &&
            dioError.message!.contains('SocketException')) {
          return ServerFailure(error: 'No Internet Connection');
        }
        return ServerFailure(error: 'Unexpected Error, Please try again!');
      case DioExceptionType.transformTimeout:
        return ServerFailure(
          error: 'Data transformation timeout, Please try again',
        );
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(error: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(error: 'Your request not found please try later !');
    } else if (statusCode == 500) {
      return ServerFailure(error: 'Internal ServerError please try later');
    } else if (statusCode == 503) {
      return ServerFailure(error: response.data['error']['message']);
    } else {
      return ServerFailure(
        error: "OPPS, there was an Error , please try again",
      );
    }
  }
}
