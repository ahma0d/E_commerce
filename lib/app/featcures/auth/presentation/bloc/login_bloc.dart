import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_commerce/app/featcures/auth/domain/usecase.dart';
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_event.dart';
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_states.dart';
import 'package:e_commerce/core/enums/state_enums.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';
import 'package:e_commerce/core/utils/constance/strings.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.loginUseCase}) : super(const AuthState()) {
    on<LoginEvent>(_loginEvent);
  }
  // git@github.com:NourAhmadJob/E-commerce.git    

  final LoginUseCase loginUseCase;

  FutureOr<void> _loginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginState: RequestState.loading));
    final result = await loginUseCase.call(LoginParameter(
        email: event.parameter.email, password: event.parameter.password));

    result.fold(
      (l) => emit(
        state.copyWith(
          loginMessage: l.message,
          loginState: RequestState.error,
        ),
      ),
      (r) => emit(
        state.copyWith(
          loginState: RequestState.success,
          loginMessage: AppStrings.LOGIN_SUCCESSFULLY,
        ),
      ),
    );
    print(state);
  }
}
