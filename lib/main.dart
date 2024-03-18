import 'package:emos/routes/routes_name.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      //     options: const FirebaseOptions(
      //   apiKey: 'AIzaSyBHShSXsCiFlV1KKOLCmTKMIao_Dkp6zDY',
      //   appId: '1:840638710221:android:db818b178dc062f5788484',
      //   messagingSenderId: '840638710221',
      //   projectId: 'emos-fe671',
      //   databaseURL: 'LyzMbogfVNQRuumkB4aWEhxI08MRCOhXsA8GXIsi',
      // )
      );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) {
      runApp(
        const MyApp(),
      );
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RouteName.loadingScreen,
    );
  }
}
