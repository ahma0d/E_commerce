// ignore_for_file: unused_local_variable, must_be_immutable
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_bloc.dart';
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_event.dart';
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_states.dart';
import 'package:e_commerce/core/enums/state_enums.dart';
import 'package:e_commerce/core/parameter/auth/auth_parameter.dart';
import 'package:e_commerce/core/utils/components/customAppButton.dart';
import 'package:e_commerce/core/utils/components/customText.dart';
import 'package:e_commerce/core/utils/components/customTextButton.dart';
import 'package:e_commerce/core/utils/components/customTextFormField.dart';
import 'package:e_commerce/core/utils/constance/strings.dart';
import 'package:e_commerce/core/utils/notification/app_notification.dart';
import 'package:e_commerce/core/utils/theme/styles_manager.dart';
import 'package:e_commerce/core/utils/theme/value_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services_locator/di.dart';
import '../../../../../core/utils/theme/color_manager.dart';

class LoginPage extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (BuildContext context) => sl<AuthBloc>(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Back!',
                  style: getBoldStyle(
                      color: ColorManager.darkGrey, fontSize: 25.0),
                ),
                const SizedBox(height: AppSize.s10),
                Text(
                  'Enter to get unlimited access to data & information',
                  style: getRegularStyle(
                    color: ColorManager.lightGrey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: AppSize.s14),
                CustomText(
                  text: 'Email',
                ),
                const SizedBox(
                  height: AppSize.s4,
                ),
                CustomTextFormField(
                  controller: emailController,
                  hint: 'Email',
                  type: TextInputType.emailAddress,
                ),
                const SizedBox(height: AppSize.s10),
                CustomText(text: 'Password'),
                const SizedBox(height: AppSize.s10),
                CustomTextFormField(
                  controller: passwordController,
                  hint: 'Password',
                  type: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: AppSize.s4,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomAppTextButton(
                    text: 'Forget Password?',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state.loginState == RequestState.loading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (state.loginState == RequestState.success) {
                      AppNotifications.showSuccess(message: state.loginMessage);
                      return Container();
                    } else if (state.loginState == RequestState.error) {
                      AppNotifications.showError(
                        message: state.loginMessage,
                      );
                    }
                    return AppButton(
                      title: "login",
                      onPressed: () {
                        var bloc = BlocProvider.of<AuthBloc>(context);
                        bloc.add(
                          LoginEvent(
                            parameter: LoginParameter(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'Don\'t have an account ?'),
                    CustomAppTextButton(text: 'Signup', onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
