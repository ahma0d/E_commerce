import 'package:e_commerce/app/featcures/splash_page/presentation/pages/splash_page.dart';
import 'package:e_commerce/core/services_locator/di.dart';
import 'package:e_commerce/core/utils/routes/route_manager.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      // theme: getApplicationTheme(),
      home:  SplashPage(),
    );
  }
}
