import 'package:app/core/error/failures.dart';
import 'package:app/core/usecase/usecase.dart';
import 'package:app/feature/auth/domain/repository/auth_repositry.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UserCase<String, UserSignUpParams> {
  final AuthRepositry authRepositry;

  UserSignUp(this.authRepositry);

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepositry.signUpWithEmailpassword(
      name: params.name,
      email: params.email,
      password: params.password,
    );
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams({
    required this.email,
    required this.password,
    required this.name,
  });
}
