import 'package:domain/models/localized_message.dart';

class Failure {
  int code; //200, 201, 303, 404, 500, 503 ...etc
  LocalizedMessage message;

  Failure(this.code, this.message);
}
