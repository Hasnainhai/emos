import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../components/RoundedButton/rounded_button.dart';
import '../../../components/VerticalSpacing/vertical_spacing.dart';
import '../../../components/appBarField/appBar_field.dart';
import '../../../components/coustem_text_field/coustem_text_field.dart';
import '../../../res/GlobalColors/colors.dart';
import '../LoginVIew/widgets/socialAccounts.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                  "Register",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                Text(
                  "Register to continue",
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
                  icon: Icons.mail,
                  hintText: 'Enter your email...',
                ),
                const VerticalSpeacing(32.0),
                const TextFieldCustom(
                  enablePrefixIcon: true,
                  maxLines: 1,
                  icon: Icons.lock_outline,
                  enableSuffixIcon: true,
                  suffixIcon: Icons.remove_red_eye_outlined,
                  hintText: 'Enter your password...',
                ),
                const VerticalSpeacing(32.0),
                const TextFieldCustom(
                  enablePrefixIcon: true,
                  maxLines: 1,
                  icon: Icons.lock_outline,
                  hintText: 'Renter your password...',
                ),
                const VerticalSpeacing(32.0),
                RoundedButton(
                  title: 'Register',
                  onpress: () {
                    Navigator.pushNamed(
                      context,
                      RouteName.informationview,
                    );
                  },
                  bgColor: AppColor.simpleBgbuttonColor,
                  titleColor: AppColor.simpleBgTextColor,
                ),
                const VerticalSpeacing(20.0),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Or, register with",
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
                Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: "Already have account?  ",
                        style: GoogleFonts.getFont(
                          "Roboto",
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColor.textColor2,
                          ),
                        ),
                        children: [
                          WidgetSpan(
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColor.simpleBgbuttonColor,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, RouteName.loginView);
                                },
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.getFont(
                                    "Roboto",
                                    textStyle: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                      color: AppColor.simpleBgbuttonColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
