import 'package:equatable/equatable.dart';

class AuthException implements Exception {
  ErrorModel errorModel;
  AuthException({required this.errorModel});
}

class ServerException implements Exception {}

class ErrorModel extends Equatable {
  final String status;
  final String message;
  const ErrorModel({required this.status, required this.message});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json['status'],
      message: json['message'],
    );
  }
  @override
  // TODO: implement props
  List<Object?> get props => [status, message];
}
