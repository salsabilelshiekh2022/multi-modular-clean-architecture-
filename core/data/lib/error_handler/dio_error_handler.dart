import 'package:data/error_handler/data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/models/failure.dart';

import 'data_source_extention.dart';

class ErrorHandler implements Exception {
  late Failure failure;
  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = handlerError(error);
    } else {
      failure = DataSource.defultError.getFailure();
    }
  }
}

Failure handlerError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectionTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.receiveTimeout.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.defultError.getFailure();
    case DioExceptionType.badResponse:
      return DataSource.badRequest.getFailure();
    case DioExceptionType.cancel:
      return DataSource.cancelled.getFailure();

    case DioExceptionType.connectionError:
      return DataSource.connectionTimeout.getFailure();

    case DioExceptionType.unknown:
      return DataSource.defultError.getFailure();

    case DioExceptionType.transformTimeout:
      return DataSource.receiveTimeout.getFailure();
  }
}
