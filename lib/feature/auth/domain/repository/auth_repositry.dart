import 'package:app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositry {
  Future<Either<Failure, String>> signUpWithEmailpassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<Failure, String>> loginWithEmailpassword({
    required String email,
    required String password,
  });
}
