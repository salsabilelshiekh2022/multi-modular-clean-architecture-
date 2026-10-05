class Failure {
  int code; //200, 201, 303, 404, 500, 503 ...etc
  String message;

  Failure(this.code, this.message);
}
