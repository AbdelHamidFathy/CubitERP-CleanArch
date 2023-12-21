import 'package:dexef_task/config/routes/routes.dart';
import 'package:dexef_task/core/utils/app_strings.dart';
import 'package:dexef_task/features/authentication/persentation/screens/login.dart';
import 'package:dexef_task/features/home/persentation/screens/home.dart';
import 'package:dexef_task/features/splash/persentation/screens/splash.dart';
import 'package:flutter/material.dart';


class AppRoutes {
  static Route? onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case (Routes.initialRoute):
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case (Routes.loginRoute):
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case (Routes.homeRoute):
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text(AppStrings.undefinedRoute),
        ),
      ),
    );
  }
}
