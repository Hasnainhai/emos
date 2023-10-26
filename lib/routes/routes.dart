import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/AuthScreens/LoginVIew/login_view.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding1.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.onBoarding1:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen1(),
        );
      case RouteName.loginView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text('No routes define'),
              ),
            );
          },
        );
    }
  }
}
