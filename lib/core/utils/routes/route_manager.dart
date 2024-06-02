import 'package:e_commerce/app/featcures/on_boarding/presentation/page/on_boarding_page.dart';
import 'package:e_commerce/app/featcures/splash_page/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

import '../../../app/featcures/auth/presentation/pages/login.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoardinghRoute = '/onBoarding';
  static const String loginRoute = '/login';
  // static const String registerRoute = '/register';
  // static const String homeRoute = '/home';
  // static const String settingRoute = '/setting';
  // static const String categoryRoute = '/category';
  // static const String detailsRoute = '/details';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  LoginPage());
      case Routes.onBoardinghRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      // add another case of pages here
      default:
        return MaterialPageRoute(builder: (_) =>   SplashPage());
    }
  }
}
