import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';

abstract class AuthBaseRepository {
  Future<Either<Failure, Unit>> login(LoginParameter parameter);
}
