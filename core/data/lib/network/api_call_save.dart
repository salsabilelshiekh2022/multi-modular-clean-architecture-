import 'package:dartz/dartz.dart';
import 'package:data/network/network_info.dart';
import 'package:domain/models/failure.dart';
import 'package:domain/models/localized_message.dart';

Future<Either<Failure, T>> safeApiCall<T>(
  NetworkInfo networkInfo,
  Future<T> Function() apiCall,
) async {
  if (await networkInfo.isConnected) {
    try {
      final response = await apiCall();
      return Right(response);
    } catch (e) {
      return Left(Failure(500, LocalizedMessage(en: "", ar: "")));
    }
  } else {
    return Left(
      Failure(
        500,
        LocalizedMessage(
          en: "No internet connection",
          ar: "لا يوجد اتصال بالإنترنت",
        ),
      ),
    );
  }
}
