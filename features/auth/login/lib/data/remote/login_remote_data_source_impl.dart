import 'package:retrofit/retrofit.dart';

import '../requst/login_request.dart';
import '../response/login_response.dart';
import '../service/login_service.dart';
import 'login_remote_data_source.dart';

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  final LoginService loginService;

  LoginRemoteDataSourceImpl(this.loginService);

  @override
  Future<HttpResponse<LoginResponse>> login(LoginRequest loginRequest) async {
    return await loginService.login(loginRequest.email, loginRequest.password);
  }
}
