import 'package:app/core/error/exceptions.dart';
import 'package:app/core/error/failures.dart';
import 'package:app/feature/auth/data/datasources/auth_remote_data_source.dart';
import 'package:app/feature/auth/domain/repository/auth_repositry.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepositry {
  final AuthRemoteDataSourceImpl remoteDataSource;
  const AuthRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> loginWithEmailpassword({
    required String email,
    required String password,
  }) {
    // TODO: implement loginWithEmailpassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailpassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final userId = await remoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
      );
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
