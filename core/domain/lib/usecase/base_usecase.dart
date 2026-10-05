import 'package:dartz/dartz.dart';

import '../models/failure.dart';

abstract class BaseUsecase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}
