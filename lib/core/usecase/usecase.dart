import 'package:app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UserCase<SucessType, params> {
  Future<Either<Failure, SucessType>> call(Params params);
}