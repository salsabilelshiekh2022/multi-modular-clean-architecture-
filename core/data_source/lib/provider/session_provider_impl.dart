import 'package:injectable/injectable.dart';

import 'session_provider.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return "prod_access_token";
  }

  @override
  String getClientID() {
    return "prod_client_id";
  }

  @override
  String getRefreshToken() {
    return "prod_refresh_token";
  }

  @override
  String getUserID() {
    return "prod_user_id";
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return "dev_access_token";
  }

  @override
  String getClientID() {
    return "dev_client_id";
  }

  @override
  String getRefreshToken() {
    return "dev_refresh_token";
  }

  @override
  String getUserID() {
    return "dev_user_id";
  }
}
