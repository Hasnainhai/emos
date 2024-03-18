import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "images/bg.png",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalSpeacing(200.0),
                Image.asset(
                  "images/consult.png",
                  height: 75,
                  width: 190,
                ),
                VerticalSpeacing(100.0),
                Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: AppColor.whiteColor,
                  ),
                  child: Center(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border:
                            Border.all(width: 2.0, color: AppColor.textColor2),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset('images/clinic.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                VerticalSpeacing(100.0),
                RoundedButton(
                    title: 'Consultation Done',
                    onpress: () {},
                    bgColor: AppColor.bgFillColor,
                    titleColor: AppColor.whiteColor)
              ],
            )),
      ),
    );
    ;
  }
}
