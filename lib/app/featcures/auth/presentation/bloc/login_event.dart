import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {}

class LoginEvent extends AuthEvent {
  final LoginParameter parameter;

  LoginEvent({required this.parameter});

  @override
  List<Object?> get props => [parameter];
}
