abstract class SessionProvider {
  String getClientID();
  String getUserID();
  String getAccessToken();
  String getRefreshToken();
}
