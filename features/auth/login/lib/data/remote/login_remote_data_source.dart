import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:login/data/requst/login_request.dart';

import '../response/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<Either<Failure, LoginResponse>> login(LoginRequest loginRequest);
}
