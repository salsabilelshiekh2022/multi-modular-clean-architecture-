import 'package:data/error_handler/data_source.dart';
import 'package:data/error_handler/response_code.dart';
import 'package:data/error_handler/response_messages.dart';
import 'package:domain/models/failure.dart';

extension DataSourceExtention on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.noContent:
        return Failure(ResponseCode.noContent, ResponseMessages.noContent);
      case DataSource.badRequest:
        return Failure(ResponseCode.badRequest, ResponseMessages.badRequest);
      case DataSource.unauthorized:
        return Failure(
          ResponseCode.unauthorized,
          ResponseMessages.unauthorized,
        );
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessages.forbidden);
      case DataSource.internetServerError:
        return Failure(
          ResponseCode.internetServerError,
          ResponseMessages.internetServerError,
        );
      case DataSource.connectionTimeout:
        return Failure(
          ResponseCode.connectionTimeout,
          ResponseMessages.connectionTimeout,
        );
      case DataSource.cancelled:
        return Failure(ResponseCode.cancelled, ResponseMessages.cancelled);
      case DataSource.receiveTimeout:
        return Failure(
          ResponseCode.receiveTimeout,
          ResponseMessages.receiveTimeout,
        );
      case DataSource.sendTimeout:
        return Failure(ResponseCode.sendTimeout, ResponseMessages.sendTimeout);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessages.cacheError);
      case DataSource.noInternetConnection:
        return Failure(
          ResponseCode.noInternetConnection,
          ResponseMessages.internetServerError,
        );
      default:
        return Failure(
          ResponseCode.defaultError,
          ResponseMessages.defaultError,
        );
    }
  }
}
