import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/components/appBarField/appBar_field.dart';
import 'package:emos/components/coustem_text_field/coustem_text_field.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgFillColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpeacing(30.0),
              AppBarField(
                ontap: () {
                  Navigator.pop(context);
                },
              ),
              const VerticalSpeacing(32.0),
              Text(
                "Forgot password!",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor,
                  ),
                ),
              ),
              // const VerticalSpeacing(5.0),
              Text(
                "Enter your email addreess then we will send you a code to reset your password",
                style: GoogleFonts.getFont(
                  "Roboto",
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.textColor2,
                  ),
                ),
              ),
              const VerticalSpeacing(40.0),
              const TextFieldCustom(
                enablePrefixIcon: true,
                maxLines: 1,
                icon: Icons.email,
                hintText: "Example@gmail.com",
              ),
              const VerticalSpeacing(
                16,
              ),

              RoundedButton(
                title: 'Send',
                onpress: () {},
                bgColor: AppColor.simpleBgbuttonColor,
                titleColor: AppColor.simpleBgTextColor,
              ),
              const VerticalSpeacing(20.0),
            ],
          ),
        ),
      ),
    );
  }
}
