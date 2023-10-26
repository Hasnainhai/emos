import 'package:emos/components/backgroundColor/bgColor.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GradientBackground(
          child: Center(
        child: Text(
          'Testing bg Color...',
          style: TextStyle(color: Colors.black),
        ),
      )),
    );
  }
}
