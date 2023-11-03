import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/AuthScreens/ForgetPasswordView/forget_password_screen.dart';
import 'package:emos/view/AuthScreens/RegisterView/register_view.dart';
import 'package:emos/view/DoctorViews/find_doctor_view.dart';
import 'package:emos/view/InformationView/information_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      const MyApp(),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteName.homeView,
      // home: const RegisterView(),
    );
  }
}
