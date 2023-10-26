import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/backgroundColor/bgColor.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GradientBackground(
          child: Center(
              child: RoundedButton(
                  title: 'Login',
                  onpress: () {},
                  bgColor: AppColor.linearBgbuttonColor,
                  titleColor: AppColor.linearBgTextColor))),
    );
  }
}
