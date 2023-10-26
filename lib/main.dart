import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.onBoarding1,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
