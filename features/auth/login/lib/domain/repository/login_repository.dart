import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:login/data/requst/login_request.dart';
import 'package:login/domain/model/login_model.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoginModel>> login({
    required LoginRequest loginRequest,
  });
}
