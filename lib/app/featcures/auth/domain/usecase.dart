import 'package:dartz/dartz.dart';
import 'package:e_commerce/app/featcures/auth/domain/repository.dart';
import 'package:e_commerce/core/base/usecase/base_usecase.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';

class LoginUseCase extends BaseUseCase<Unit, LoginParameter> {
  final AuthBaseRepository authBaseRepository;

  LoginUseCase({required this.authBaseRepository});
  @override
  Future<Either<Failure, Unit>> call(LoginParameter parameter) async {
    return await authBaseRepository.login(parameter);
  }
}
