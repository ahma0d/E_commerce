import 'package:equatable/equatable.dart';

class LoginEntites extends Equatable{
  final String name;
  final String email;
  final String token;
  const LoginEntites({required this.name, required this.email , required this.token});
  
  @override
  // TODO: implement props
  List<Object?> get props => [name , email , token];
}
