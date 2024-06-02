import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failure.dart';

abstract class BaseUseCase <T , Parameter>{
  Future<Either<Failure, T>> call(Parameter parameter);
}
