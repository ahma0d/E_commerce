import 'package:e_commerce/core/enums/state_enums.dart';
import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final String loginMessage;
  final RequestState loginState;

  const AuthState({
    this.loginMessage = '',
    this.loginState = RequestState.initial,
  });

  AuthState copyWith({
    String? loginMessage,
    RequestState? loginState,
  }) {
    return AuthState(
      loginMessage: loginMessage ?? this.loginMessage,
      loginState: loginState ?? this.loginState,
    );
  }

  @override
  List<Object?> get props => [loginMessage, loginState];
}
