import 'package:e_commerce/app/featcures/auth/domain/entites.dart';

class LoginModel extends LoginEntites {
  const LoginModel({required super.name, required super.email, required super.token});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      name: json['data']['name'],
      email: json['data']['email'],
      token: json['token'],
    );
  }
}
