import 'package:dartz/dartz.dart';
import 'package:data/network/api_call_save.dart';
import 'package:domain/models/failure.dart';

import '../requst/login_request.dart';
import '../response/login_response.dart';
import '../service/login_service.dart';
import 'login_remote_data_source.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginService loginService;

  LoginRemoteDataSourceImpl(this.loginService);

  @override
  Future<Either<Failure, LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    return await safeApiCall(() async {
      final response = await loginService.login(
        loginRequest.email,
        loginRequest.password,
      );
      return response.data;
    });
  }
}
