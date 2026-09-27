import 'package:login/data/requst/login_request.dart';
import 'package:retrofit/retrofit.dart';

import '../response/login_response.dart';

abstract class LoginRemoteDataSource {
  Future<HttpResponse<LoginResponse>> login(LoginRequest loginRequest);
}
