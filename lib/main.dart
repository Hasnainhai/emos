import 'package:emos/res/routes/routes.dart';
import 'package:emos/view/OnBoardingScreens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'components/backgroundColor/bgColor.dart';
import 'view/OnBoardingScreens/onBoarding1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      onGenerateRoute: Routes.generateRoute,
      // initialRoute: null,
      home: const SplashScreen(),
    );
  }
}
