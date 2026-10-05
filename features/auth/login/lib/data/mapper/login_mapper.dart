import 'package:extensions/constant/constant.dart';
import 'package:extensions/extensions.dart';

import '../../domain/model/login_model.dart';
import '../response/login_response.dart';

extension LoginResponseMapper on LoginResponse? {
  LoginModel toDomain() {
    return LoginModel(
      name: this?.name.orEmpty() ?? Constants.empty,
      phone: this?.phone.orEmpty() ?? Constants.empty,
      age: this?.age.orZero() ?? Constants.zero,
    );
  }
}
