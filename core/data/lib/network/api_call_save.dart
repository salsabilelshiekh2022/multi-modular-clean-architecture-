import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:domain/models/localized_message.dart';

Future<Either<Failure, T>> safeApiCall<T>(Future<T> Function() apiCall) async {
  try {
    final response = await apiCall();
    return Right(response);
  } catch (e) {
    return Left(Failure(500, LocalizedMessage(en: "", ar: "")));
  }
}
