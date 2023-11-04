import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/AuthScreens/ForgetPasswordView/forget_password_screen.dart';
import 'package:emos/view/AuthScreens/LoginVIew/login_view.dart';
import 'package:emos/view/AuthScreens/RegisterView/register_view.dart';
import 'package:emos/view/DoctorViews/detail_doctor_view.dart';
import 'package:emos/view/EmergancyView/emergancy_view.dart';
import 'package:emos/view/HomeView/HomeView.dart';
import 'package:emos/view/HosptialView/detail_hosptial_view.dart';
import 'package:emos/view/HosptialView/find_hosptial.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding1.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding2.dart';
import 'package:emos/view/OnBoardingScreens/onBoarding3.dart';
import 'package:emos/view/OnBoardingScreens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../view/DoctorViews/find_doctor_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RouteName.onBoarding1:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen1(),
        );
      case RouteName.onBoarding2:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen2(),
        );
      case RouteName.onBoarding3:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingScreen3(),
        );
      case RouteName.loginView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case RouteName.forgetpasswordscreen:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgetPasswordScreen(),
        );
      case RouteName.registerView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case RouteName.homeView:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeView(),
        );
      case RouteName.finddoctorview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FindDoctorView(),
        );
      case RouteName.findhosptialview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const FindHosptialView(),
        );
      case RouteName.detaildoctorview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DetailDoctorView(),
        );
      case RouteName.detailhosptialview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const DetailHosptialView(),
        );
      case RouteName.emergancyview:
        return MaterialPageRoute(
          builder: (BuildContext context) => const EmergancyView(),
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
