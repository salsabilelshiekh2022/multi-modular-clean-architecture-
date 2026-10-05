import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:login/data/remote/login_remote_data_source.dart';
import 'package:login/data/requst/login_request.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/domain/repository/login_repository.dart';

import '../mapper/login_mapper.dart';

class LoginRepoImpl implements LoginRepository {
  final LoginRemoteDataSource loginRemoteDataSource;
  LoginRepoImpl({required this.loginRemoteDataSource});
  @override
  Future<Either<Failure, LoginModel>> login({
    required LoginRequest loginRequest,
  }) async {
    final response = await loginRemoteDataSource.login(loginRequest);
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.toDomain()),
    );
  }
}
