import 'package:equatable/equatable.dart';

class LoginParameter extends Equatable {
  final String email;
  final String password;

  const LoginParameter({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SignupParameter extends Equatable {
  final String name;
  final String email;
  final String password;
  final String passwordConfirm;
  final int phone;

  const SignupParameter({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirm,
    required this.phone,
  });
  @override
  List<Object?> get props => [
        name,
        email,
        password,
        passwordConfirm,
];
}
