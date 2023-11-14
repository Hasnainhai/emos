import 'package:emos/components/RoundedButton/rounded_button.dart';
import 'package:emos/components/VerticalSpacing/vertical_spacing.dart';
import 'package:emos/components/appBarField/appBar_field.dart';
import 'package:emos/components/coustem_text_field/coustem_text_field.dart';
import 'package:emos/res/GlobalColors/colors.dart';
import 'package:emos/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardInfoView extends StatefulWidget {
  const CardInfoView({super.key});

  @override
  State<CardInfoView> createState() => _CardInfoViewState();
}

class _CardInfoViewState extends State<CardInfoView> {
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
          child: SingleChildScrollView(
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
                  "Enter your information",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(24.0),
                CircleAvatar(
                  radius: 36,
                  backgroundColor: AppColor.circularAvatarColor,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: AppColor.bgFillColor,
                        )),
                  ),
                ),
                const VerticalSpeacing(32.0),
                Text(
                  "First Name*",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  maxLines: 1,
                  hintText: "Enter your first name...",
                ),
                const VerticalSpeacing(
                  20,
                ),
                Text(
                  "Last Name*",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  maxLines: 1,
                  hintText: "Enter your last name...",
                ),
                const VerticalSpeacing(
                  20,
                ),
                Text(
                  "Date Of Birth*",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                TextFieldCustom(
                  enableSuffixIcon: true,
                  maxLines: 1,
                  suffixFunction: () {
                    debugPrint("this is clander button");
                  },
                  suffixIcon: Icons.calendar_month_outlined,
                  hintText: "DD/MM/YYYY",
                ),
                const VerticalSpeacing(
                  20,
                ),
                Text(
                  "Email*",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  maxLines: 1,
                  hintText: "Enter your email address...",
                ),
                const VerticalSpeacing(
                  20,
                ),
                Text(
                  "Address*",
                  style: GoogleFonts.getFont(
                    "Roboto",
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                const TextFieldCustom(
                  maxLines: 1,
                  hintText: "Enter your address...",
                ),
                const VerticalSpeacing(
                  20,
                ),
                RoundedButton(
                  title: 'Save',
                  onpress: () {
                    Navigator.pop(context);
                  },
                  bgColor: AppColor.simpleBgbuttonColor,
                  titleColor: AppColor.simpleBgTextColor,
                ),
                const VerticalSpeacing(20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
