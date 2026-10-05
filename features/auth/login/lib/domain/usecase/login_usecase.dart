import 'package:dartz/dartz.dart';
import 'package:domain/models/failure.dart';
import 'package:domain/usecase/base_usecase.dart';
import 'package:login/data/requst/login_request.dart';
import 'package:login/domain/model/login_model.dart';
import 'package:login/domain/repository/login_repository.dart';

class LoginUsecase implements BaseUsecase<LoginRequest, LoginModel> {
  final LoginRepository loginRepository;

  LoginUsecase(this.loginRepository);

  @override
  Future<Either<Failure, LoginModel>> execute(LoginRequest input) {
    return loginRepository.login(loginRequest: input);
  }
}
