import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/components/coustem_text_field/coustem_text_field.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:emos/view/AuthScreens/LoginVIew/widgets/socialAccounts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/appBarField/appBar_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpeacing(30.0),
                AppBarField(
                  ontap: () {
                    {}
                  },
                ),
                const VerticalSpeacing(32.0),
                Text(
                  "Hello!",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                // const VerticalSpeacing(5.0),
                Text(
                  "Insert your email and password to login",
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
                  icon: Icons.email,
                  maxLines: 1,
                  hintText: "Example@gmail.com",
                ),
                const VerticalSpeacing(20.0),

                const TextFieldCustom(
                  enablePrefixIcon: true,
                  icon: Icons.lock,
                  maxLines: 1,
                  hintText: "******",
                ),
                const VerticalSpeacing(20.0),

                RoundedButton(
                  title: 'Login',
                  onpress: () {},
                  bgColor: AppColor.simpleBgbuttonColor,
                  titleColor: AppColor.simpleBgTextColor,
                ),
                const VerticalSpeacing(20.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or, login with",
                    style: GoogleFonts.getFont(
                      "Roboto",
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor2,
                      ),
                    ),
                  ),
                ),
                const VerticalSpeacing(20.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialAccounts(img: 'images/google.png'),
                    SocialAccounts(img: 'images/fb.png'),
                    SocialAccounts(img: 'images/apple.png'),
                  ],
                ),
                const VerticalSpeacing(20.0),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.registerScreen);
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                          text: "Don't have account?  ",
                          style: GoogleFonts.getFont(
                            "Roboto",
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.textColor2,
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: GoogleFonts.getFont(
                                "Roboto",
                                textStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800,
                                  color: AppColor.simpleBgbuttonColor,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
