import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'view/AuthScreens/LoginVIew/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      onGenerateRoute: Routes.generateRoute,
      // initialRoute: RouteName.loginView,
      home: const LoginView(),
    );
  }
}
