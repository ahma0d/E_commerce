import 'package:dartz/dartz.dart';
import 'package:e_commerce/app/featcures/auth/data/datasource.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/network/exception.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';

import '../domain/repository.dart';

class AuthRepository extends AuthBaseRepository {
  final AuthBaseDataSource authBaseDataSource;

  AuthRepository({required this.authBaseDataSource});
  @override
  Future<Either<Failure, Unit>> login(LoginParameter parameter) async {
    try {
      // ignore: unused_local_variable
      var result = await authBaseDataSource.login(parameter);
      return const Right(unit);
    } on AuthException catch (e) {
     
      return Left(
        ServerFailure(
          message: e.errorModel.message,
        ),
      );
    }
  }
}
