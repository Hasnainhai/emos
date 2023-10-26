import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/backgroundColor/bgColor.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: GradientBackground(
            child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Image.asset(
                'images/image1.png',
              ),
              Text(
                "Easy Appointment",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: AppColor.simpleBgTextColor,
                  ),
                ),
              ),
              Text(
                "Experience Medilab's quick and convenient booking service",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.simpleBgTextColor,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.simpleBgTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.grayColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.grayColor,
                    ),
                  ),
                ],
              ),
              RoundedButton(
                  title: 'Login',
                  onpress: () {},
                  bgColor: AppColor.linearBgbuttonColor,
                  titleColor: AppColor.linearBgTextColor),
            ],
          ),
        )),

      ),
    );
  }
}
