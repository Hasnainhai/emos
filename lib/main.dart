import 'package:emos/routes/routes/routes.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteName.onBoarding1,
    );
  }
}
